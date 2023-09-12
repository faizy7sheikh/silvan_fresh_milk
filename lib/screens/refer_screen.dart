import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ReferFriendScreen extends StatefulWidget {
  @override
  _ReferFriendScreenState createState() => _ReferFriendScreenState();
}

class _ReferFriendScreenState extends State<ReferFriendScreen> {
  final String appLink = "https://your-app-link.com"; // Replace with your app's actual link

  void _shareAppLinkOnWhatsApp() async {
    String message = "Check out this amazing app: $appLink";
    String whatsappUrl = "whatsapp://send?text=${Uri.encodeFull(message)}";
    Uri uri = Uri.parse(whatsappUrl);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Could not launch WhatsApp';
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
        title: Text(
          "Refer your friend",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 160,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 2,
                      blurRadius: 10,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  child: Image.asset("assets/image/login.jpg",fit: BoxFit.cover,),
                ),
              ),
            ),
            SizedBox(height: 20), // Add some spacing
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  height: 200,
                  decoration: BoxDecoration(
                    color: Colors.grey.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 10,
                        offset: Offset(0, 3),
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(top: 140),
                    child: Text(
                      "Customers earned 2lac by introducing their frieds and family ",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 20
                      ),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                                Column(
                                  children: [
                                    Icon(Icons.pending_actions_rounded,color: Colors.yellow,),
                                    SizedBox(height: 2),
                                    Text("Pending")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.check_circle_outline_rounded,color: Colors.green,),
                                    SizedBox(height: 2),
                                    Text("Successful")
                                  ],
                                ),
                                Column(
                                  children: [
                                    Icon(Icons.currency_exchange_rounded,color: Colors.yellowAccent[400],),
                                    SizedBox(height: 2),
                                    Text("Earned")
                                  ],
                                )
                            ],
                          ),
                           Padding(
                            padding: EdgeInsets.symmetric(
                              vertical: 10
                            ),
                             child: LinearProgressIndicator(
                              color: Colors.yellow,
                              backgroundColor: Colors.blue,
                              
                              value: 2,
                            ),
                           ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.double_arrow_rounded,color: Colors.blue,),
                  SizedBox(width: 3),
                  Text("Recommend love ones to Silvan fresh milk app",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.double_arrow_rounded,color: Colors.blue,),
                  SizedBox(width: 3),
                  Text("Friends do their first 2 orders",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              child: Row(
                children: [
                  Icon(Icons.double_arrow_rounded,color: Colors.blue,),
                  SizedBox(width: 3),
                  Text("Win upto Rs. 100 on every recommendation",style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 0),
              child: Container(
                height: 50,

                width: MediaQuery.of(context).size.width, // 15 padding on each side
                child: Column(
                  children: [
                    // Row(
                    //   children: [
                    //     Text("235 contact are waiting for an invite")
                    //   ],
                    // ),
                    ElevatedButton.icon(
                      onPressed: 
                        // Add your button's onPressed logic here
                        _shareAppLinkOnWhatsApp
                      ,
                      icon: Icon(Icons.share),
                      label: Text('Refer Now'),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

