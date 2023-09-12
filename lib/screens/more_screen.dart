import 'package:flutter/material.dart';
import 'package:dairy_app/services/appservices.dart';

class ProductSubscriptionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Products and Subscription",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, '/category');
                        },
                        child: Container(
                          width: 70,
                          margin: EdgeInsets.only(left: 5),
                          padding: EdgeInsets.symmetric(vertical: 5),
                          decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.5),
                              borderRadius: BorderRadius.circular(8)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Icon(Icons.production_quantity_limits_rounded,color: Colors.blueAccent,),
                              SizedBox(height: 2,),
                              Text(
                                "Products",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.w500),
                              )
                            ],
                          ),
                        ),
                      ),
                      Container(
                        width: 70,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/subscription');
                              },
                              child: Icon(Icons.subscriptions_rounded,color: Colors.blueAccent,)),
                            SizedBox(height: 2,),
                            Text(
                              "Subscriptions",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, '/vacation');
                              },
                              child: Icon(Icons.travel_explore_rounded,color: Colors.blueAccent,)),
                            SizedBox(height: 2,),
                            Text(
                              "Set vacation",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Order and Billing",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 70,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, '/history');
                            },
                            child: Icon(Icons.history_rounded,color: Colors.blueAccent,)),
                           SizedBox(height: 2,),
                            Text(
                              "Order History",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.attach_money_rounded,color: Colors.blueAccent,),
                            SizedBox(height: 2,),
                            Text(
                              "Transaction",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      Container(
                        width: 70,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           Icon(Icons.calendar_month_rounded,color: Colors.blueAccent,),
                           SizedBox(height: 2,),
                            Text(
                              "Monthly Bill",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, left: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Rewards",
                        style:
                            TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 80,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(width: 40,),
                      Container(
                        width: 70,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                           Icon(Icons.verified_user_rounded,color: Colors.blueAccent,),
                           SizedBox(height: 2,),
                            Text(
                              "Refer",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      SizedBox(width: 75,),
                      Container(
                        width: 70,
                        margin: EdgeInsets.only(left: 5),
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.5),
                            borderRadius: BorderRadius.circular(8)),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.discount_rounded,color: Colors.blueAccent,),
                            SizedBox(height: 2,),
                            Text(
                              "Offer Zone",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.w500),
                            )
                          ],
                        ),
                      ),
                      
                    ],
                  ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5
                ),
                child: Card(
                  color: Colors.white,
                  child: Column(
                    children: [
                      ListTile(
                        leading: Icon(Icons.account_box_rounded,color: Colors.blueAccent,),
                        title: Text("Account & Preferences"),
                        subtitle: Text("Edit Address,Delivery Preferences"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      Divider(
                        color: Colors.grey,      
                        thickness: 0.5,         
                        indent: 60,           
                        endIndent: 60,        
                      ),
                      ListTile(
                        leading: Icon(Icons.wallet_membership_rounded,color: Colors.blueAccent,),
                        title: Text("Wallet & Payment Modes"),
                        subtitle: Text("Add money,remove save card"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                      Divider(
                        color: Colors.grey,      
                        thickness: 0.5,         
                        indent: 60,           
                        endIndent: 60,        
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, '/help');
                        },
                        child: ListTile(
                          leading: Icon(Icons.support_agent_rounded,color: Colors.blueAccent),
                          title: Text("Need Help?"),
                          subtitle: Text("Call or Chat with us"),
                          trailing: Icon(Icons.arrow_forward_ios_rounded),
                        ),
                      ),
                      Divider(
                        color: Colors.grey,      
                        thickness: 0.5,         
                        indent: 60,           
                        endIndent: 60,        
                      ),
                      ListTile(
                        leading: Icon(Icons.legend_toggle_rounded,color: Colors.blueAccent),
                        title: Text("Legal"),
                        subtitle: Text("Privacy,Terms & Conditions"),
                        trailing: Icon(Icons.arrow_forward_ios_rounded),
                      ),
                    ],
                  ),
                ),
                ),
                Padding(padding: EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 5
                ),
                child: Text("Version:pilot",style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: Colors.black38
                ),
                textAlign: TextAlign.center,
                ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
