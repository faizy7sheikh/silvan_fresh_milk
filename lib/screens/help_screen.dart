import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

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
          centerTitle: true,
          title: Text("Need Help?"),
          leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios_new_outlined)),
          actions: [
              IconButton(onPressed: () {
                // open live chart with bot
              }, icon: Icon(Icons.support_agent_outlined))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20)
                ),
                child: Lottie.asset("assets/page_banner/support.json",height: 200),
              ),
              Text("Recent Order",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),
              ),
              SizedBox(height: 15,),
              Text("No order found in last 3 days"),
              SizedBox(height: 10,),
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
                    InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      child: ListTile(
                        title: Text("Profile and Address"),
                        subtitle: Text("update your profile information like address"),
                        trailing: Icon(Icons.forward_10_outlined),
                      ),
                    ),
                    ListTile(
                      title: Text("App Guide"),
                      subtitle: Text("Troubleshooting"),
                      trailing: Icon(Icons.forward_10_outlined),
                    ),
                  ],
                ),
              ),
              Text("VIP Support",style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    child: Row(
                      children: [
                        Column(
                          children: [
                            IconButton(onPressed: () {
                              // call to customer use launcher
                            }, icon: Icon(Icons.email_outlined)),
                            Text("Support Email")
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            IconButton(onPressed: () {
                              // call to customer
                            }, icon: Icon(Icons.call_end_outlined)),
                            Text("Customer care")
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 35,
              )
            ],
          ),
        ),
      ),
    );
  }
}