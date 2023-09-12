import 'package:flutter/material.dart';

class NeedHelp extends StatefulWidget {
  const NeedHelp({super.key});

  @override
  State<NeedHelp> createState() => _NeedHelpState();
}

class _NeedHelpState extends State<NeedHelp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Need Help?"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
            Text("FAQ's")
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Text("Recent Order"),
              // animation image if no order
              Text("No order found in last 3 days"),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white
                ),
                child: Column(
                  children: [
                    ListTile(
                      title: Text("Payment and cashback"),
                      subtitle: Text("cashback payment and referal related issues"),
                      trailing: Icon(Icons.forward_10_outlined),
                    ),
                    ListTile(
                      title: Text("Membership"),
                      subtitle: Text("view your"),
                      trailing: Icon(Icons.forward_10_outlined),
                    ),
                    ListTile(
                      title: Text("Profile and Address"),
                      subtitle: Text("update your profile information like address"),
                      trailing: Icon(Icons.forward_10_outlined),
                    ),
                    ListTile(
                      title: Text("App Guide"),
                      subtitle: Text("Troubleshooting"),
                      trailing: Icon(Icons.forward_10_outlined),
                    ),
                  ],
                ),
              ),
              Text("VIP Support"),
              Row(
                children: [
                  Container(
                    child: Text("icon and call"),
                  ),
                  Container(
                    child: Text("icon and call"),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}