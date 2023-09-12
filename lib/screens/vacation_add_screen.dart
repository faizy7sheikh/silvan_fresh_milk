import 'package:flutter/material.dart';

class AddVacation extends StatefulWidget {
  const AddVacation({super.key});

  @override
  State<AddVacation> createState() => _AddVacationState();
}

class _AddVacationState extends State<AddVacation> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_outlined),
          title: Text("Add Vacation"),
        ),
        body: Column(
          children: [
            Row(
              children: [
                Text("Start Date"),
                Text("datetime picker")
              ],
            ),
            Row(
              children: [
                Text("End Date"),
                Text("date time picker")
              ],
            ),
            ElevatedButton(onPressed: () {
              
            }, child: Text("Add vacation"))
          ],
        ),
      ),
    );
  }
}