import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  final String names; // Changed type to String for better usage.
  ProfileScreen(this.names);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  RangeValues values = RangeValues(0, 100);

  @override
  Widget build(BuildContext context) {
    RangeLabels labels =
        RangeLabels(values.start.toString(), values.end.toString());

    return Scaffold(
      appBar: AppBar(
        title: Text('Profile Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Selected Range: ${values.start.toStringAsFixed(1)} - ${values.end.toStringAsFixed(1)}',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 20),
            RangeSlider(
              values: values,
              divisions: 10,
              min: 0,
              max: 100,
              labels: labels,
              onChanged: (newValue) {
                setState(() {
                  values = newValue; // Update and trigger rebuild.
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
