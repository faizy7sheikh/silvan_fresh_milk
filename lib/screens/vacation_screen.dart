import 'package:flutter/material.dart';

class VacationList extends StatefulWidget {
  const VacationList({super.key});

  @override
  State<VacationList> createState() => _VacationListState();
}

class _VacationListState extends State<VacationList> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Silvan',
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
          leading: Icon(Icons.arrow_back_ios_new_rounded),
          title: Text("Vacations"),
          actions: [
            IconButton(onPressed: () {
              // navigate to add screen button
            }, icon: Icon(Icons.add))
          ],
        ),
        body: SingleChildScrollView(
          child: ListView.builder(
            itemCount: 4,
            itemBuilder: (BuildContext contex,item){
              return Card(
                child: Row(
                  children: [
                    Column(
                      children: [
                        Text("Start Date"),
                        Text("13 Sep,2023")
                      ],
                    ),
                    Column(
                      children: [
                        Text("End Date"),
                        Text("29 Sep,2023")
                      ],
                    )
                  ],
                ),
              );
            }
            ),
        ),
      )),
    );
  }
}