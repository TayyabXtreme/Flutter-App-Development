import 'package:databaseinflutter/data/local/dbhelper.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController titleController = TextEditingController();
  TextEditingController descController = TextEditingController();
  List<Map<String, dynamic>> allNotes = [];
  DBHelper? dbRef;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    dbRef = DBHelper.getInstance();
    getNodes();
  }

  void getNodes() async {
    allNotes = await dbRef!.getAllNodes();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Note'),
      ),
      body: allNotes.isNotEmpty
          ? ListView.builder(
              itemCount: allNotes.length,
              itemBuilder: (_, index) {
                return ListTile(
                    leading:
                        Text('${allNotes[index][DBHelper.COLUMN_NOTE_SNO]}'),
                    title: Text(allNotes[index][DBHelper.COLUMN_NOTE_TITLE]),
                    subtitle: Text(allNotes[index][DBHelper.COLUMN_NOTE_DESC]),
                    trailing: SizedBox(
                      width: 100,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          IconButton(
                              onPressed: () {
                                showModalBottomSheet(
                                    context: context,
                                    builder: (context) {
                                      titleController.text = allNotes[index]
                                          [DBHelper.COLUMN_NOTE_TITLE];
                                      descController.text = allNotes[index]
                                          [DBHelper.COLUMN_NOTE_DESC];
                                      return getBottomSheet(
                                          isUpdate: true,
                                          sno: allNotes[index]
                                              [DBHelper.COLUMN_NOTE_SNO]);
                                    });
                              },
                              icon: Icon(Icons.edit)),
                          IconButton(
                              onPressed: () async {
                                bool check = await dbRef!.deleteNode(
                                    sno: allNotes[index]
                                        [DBHelper.COLUMN_NOTE_SNO]);
                                if (check) {
                                  getNodes();
                                }
                              },
                              icon: Icon(Icons.delete, color: Colors.red)),
                        ],
                      ),
                    ));
              })
          : Center(
              child: Text('No notes yet'),
            ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          showModalBottomSheet(
              context: context,
              builder: (context) {
                return getBottomSheet();
              });
        },
        child: Icon(Icons.add),
      ),
    );
  }

  Widget getBottomSheet({bool isUpdate = false, int sno = 0}) {
    return Container(
      padding: EdgeInsets.all(11),
      width: double.infinity,
      child: Column(
        children: [
          Text(
            isUpdate ? 'Update note' : 'Add note',
            style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 21,
          ),
          TextField(
            controller: titleController,
            decoration: InputDecoration(
                hintText: 'Enter title here',
                label: Text('Title'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                )),
          ),
          SizedBox(
            height: 21,
          ),
          TextField(
            maxLines: 4,
            controller: descController,
            decoration: InputDecoration(
                hintText: 'Enter decription here',
                label: Text('Description'),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                )),
          ),
          ElevatedButton(
              onPressed: () async {
                var title = titleController.text;
                var desc = descController.text;
                if (title.isNotEmpty && desc.isNotEmpty) {
                  bool check = isUpdate
                      ? await dbRef!
                          .updateNode(mTitle: title, mDesc: desc, sno: sno)
                      : await dbRef!.addNote(mTitle: title, mDesc: desc);
                  if (check) {
                    getNodes();
                    titleController.text = '';
                    descController.text = '';
                  }
                }
                Navigator.pop(context);
              },
              child: Text(isUpdate ? 'Update' : 'Add'))
        ],
      ),
    );
  }
}
