import 'package:dairy_app/screens/category_screen.dart';
import 'package:dairy_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

import '../widgets/appbarwidget.dart';

class HomeMainPage extends StatefulWidget {
  const HomeMainPage({super.key});

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
    List categoryList = ['coconut', 'coffee', 'icecream', 'milk bottle','milk','shake','strawberry'];
    List colorList = [Colors.pink, Colors.blue,Colors.cyan,Colors.deepPurple,Colors.greenAccent,Colors.primaries,Colors.teal,Colors.orange];

  List foods2 = ['chicken burger', 'biryani', 'pizza', 'smackiss'];

  List ProductList = [
    // producct name, color, description, price
    ['Cow Milk','strawberry',Colors.blueAccent,65,'Cow milk is a nutritious and widely consumed beverage that comes from cows. It is rich in essential nutrients such as calcium, vitamin D, protein, and various vitamins and minerals.'],
    ['Fresh milk','bottle3',Colors.purpleAccent,85,'Fresh buffalo milk packed in bottle'],
    ['Fresh Bread','bread',Colors.brown,35,'Bread is a staple food that has been a fundamental part of human diets for centuries'],
    ['Veg Burger','burger',Colors.deepOrange,35,'Veg  burger container ...'],
    ['Fresh Coconut','coconut',Colors.greenAccent,45,'Veg  burger container ...'],
    ['Milk Shake','juice',Colors.purpleAccent,45,'Veg  burger container ...'],
    ['Egg Puff','puff',Colors.deepPurpleAccent,45,'Veg  burger container ...']
  ];
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListView(
          children: [
            // appbar
            AppBarWidget(),
    
            // search
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Container(
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 2,
                          blurRadius: 10,
                          offset: Offset(0, 3))
                    ]),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.blue,
                      ),
                      Container(
                        width: 300,
                        height: 50,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 15),
                          child: TextFormField(
                            decoration: InputDecoration(
                                hintText: "What would you like to have!",
                                border: InputBorder.none),
                          ),
                        ),
                      ),
    
                    ],
                  ),
                ),
              ),
            ),
            // banner
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset("assets/banner/banner.jpg"),
              ),
            ),
            // category
            Padding(
                padding: EdgeInsets.only(top: 20, left: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Categories",
                      style: TextStyle(fontSize: 22, fontWeight: FontWeight.w500),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListPage()));
                      },
                      child: Text(
                        "See All",
                        style: TextStyle(
                            fontSize: 17,
                            color: Colors.blue.withOpacity(0.5),
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                )),
            SizedBox(
                  height: 120,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: categoryList.length,
                    reverse: true, // Set this property to true for right-to-left scrolling
                    itemBuilder: (context, index) {
                      return Container(
                        width: 100,
                        margin: EdgeInsets.symmetric(horizontal: 15), // Add horizontal margin
                        padding: EdgeInsets.symmetric(vertical: 5),
                        decoration: BoxDecoration(
                          color: colorList[index][200],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Image.asset(
                              "assets/category/${categoryList[index]}.jpg",
                              height: 80,
                              width: 80,
                              fit: BoxFit.cover,
                            ),
                            Text(
                              categoryList[index],
                              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ),
    
    
            // another section
            Padding(padding: EdgeInsets.symmetric(
              horizontal: 15,
              vertical: 5
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Popular",style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500
                ),
                ),
                TextButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListPage()));
                }, child: Text("See All",
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue.withOpacity(0.5)
                ),
                ),
                ),
    
              ],
            ),
            ),
    
            // item list of popular
            SizedBox(
              height: 220,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: ProductList.length,
                itemBuilder: (context,index){
                  return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
                        productname: ProductList[index][0],
                        imageName: ProductList[index][1],
                        colorcode: ProductList[index][2],
                        productPrice: ProductList[index][3],
                        productDescription: ProductList[index][4],
                      )));
                    },
                    child: Container(
                      width: MediaQuery.of(context).size.width/1.4,
                      margin: EdgeInsets.only(
                        left: 15,top: 5,bottom: 5,right: 5
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 4,
                            spreadRadius: 2 
                          )
                        ]
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10)
                            ),
                            child: Image.asset("assets/product/${ProductList[index][1]}.jpg",
                            height: 120,
                            width: MediaQuery.of(context).size.width/1.4,
                            fit: BoxFit.cover,),
                          ),
                          Padding(padding: EdgeInsets.only(left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(ProductList[index][0],
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontWeight: FontWeight.bold
                                  ),
                                  ),
                                  SizedBox(height: 5),
                                  Text('${ProductList[index][4].toString().substring(0,15)}',style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.black45
                                  ),
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: [
                                      Icon(Icons.star,color: Colors.blue,),
                                      SizedBox(width: 2),
                                      Text("4.7",style: TextStyle(fontWeight: FontWeight.bold),),
                                      SizedBox(width: 5),
                                      Text("941 Ratings",style: TextStyle(
                                        color: Colors.black45
                                      ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              Column(
                                children: [
                                  Padding(padding: EdgeInsets.all(8),
                                  child: Row(
                                    children: [
                                      Icon(Icons.location_on,color: Colors.red, size: 20,),
                                      SizedBox(
                                        width: 2,
                                      ),
                                      Text("2 KM",style: TextStyle(
                                        color: Colors.black45,
                                        fontWeight: FontWeight.w500
                                      ),
                                      ),
                                    ],
                                  ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 26, 13, 216),
                                      borderRadius: BorderRadius.only(topLeft: Radius.circular(10))
                                    ),
                                    child: Text("\u{20B9} ${ProductList[index][3]}",style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white
                                    ),),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                        ],
                      ),
                    ),
                  );
                }),
            ),
    
            // grieview item start
            Flexible(
              child: SizedBox(
                height: 200,
                child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns
                  // mainAxisSpacing: 10.0, // Spacing between rows
                  // crossAxisSpacing: 10.0, // Spacing between columns
                ),
                itemCount: ProductList.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(15),
                    child: Container(
                      child: Card(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 120,
                                child: Image.asset('assets/product/${ProductList[index][1]}.jpg',fit: BoxFit.cover,)
                                ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('${ProductList[index][0]}',style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 2),
                                    child: Text('\u{20B9} ${ProductList[index][3]}',style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.amber[800]
                                    ),),
                                  ),
                                  ElevatedButton(onPressed: () {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(content: Text("under development"))
                                    );
                                  }, child: Text('place order'))
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
                ),
              ),
            ),
            // end of grieview item
            SizedBox(
              height: 50,
            ),
          
          ],
        ),
    );
  }
}