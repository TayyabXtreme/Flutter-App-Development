import 'package:flutter/material.dart';

class RoundedBtn extends StatelessWidget {
  final String btname;
  final Icon? icon;
  final Color? bgcolor;
  final VoidCallback? callback;
  final TextStyle? textStyle;

  RoundedBtn(
      {required this.btname,
      this.icon,
      this.bgcolor = Colors.blue,
      this.callback,
      this.textStyle});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: bgcolor,
                shadowColor: bgcolor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50))),
            onPressed: () {
              callback!();
            },
            child: icon != null
                ? Row(
                    children: [icon!, Text(btname, style: textStyle)],
                  )
                : Text(btname, style: textStyle)));
  }
}
