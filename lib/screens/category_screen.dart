import 'package:dairy_app/screens/product_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(ProductListPage());
}

class ProductListPage extends StatefulWidget {
  @override
  State<ProductListPage> createState() => _ProductListPageState();
}

class _ProductListPageState extends State<ProductListPage> {
  @override

  List ProductList = [
    // producct name, color, description, price
    ['Cow Milk','strawberry',Colors.blueAccent,65,'Cow milk is a nutritious and widely consumed beverage that comes from cows. It is rich in essential nutrients such as calcium, vitamin D, protein, and various vitamins and minerals.'],
    ['Fresh milk','bottle3',Colors.purpleAccent,85,'Fresh buffalo milk packed in bottle'],
    ['Fresh Bread','bread',Colors.brown,35,'Bread is a staple food that has been a fundamental part of human diets for centuries'],
    ['Veg Burger','burger',Colors.deepOrange,35,'Veg  burger container ...'],
    ['Butter','butter',Colors.teal,35,'Veg  burger container ...'],
    ['Cheese','cheese',Colors.redAccent,35,'Veg  burger container ...'],
    ['Cheese','cheese1',Colors.brown,35,'Veg  burger container ...'],
    ['Fresh Coconut','coconut',Colors.greenAccent,45,'Veg  burger container ...'],
    ['Milk Shake','juice',Colors.purpleAccent,45,'Veg  burger container ...'],
    ['Egg Puff','puff',Colors.deepPurpleAccent,45,'Veg  burger container ...'],
    ['Juice','shake',Colors.red,45,'Veg  burger container ...'],
   
  ];

  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          body: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
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
                      ]
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(Icons.search),
                      SizedBox(width: 10,),
                      Text("Search by category")
                    ],
                  ),
                ),
              ),
              Flexible(
                child: ListView.builder(
                  itemCount: ProductList.length, // Replace with the actual number of products
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                      child: ProductCard(data: ProductList,index: index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final data;
  final int index;
  ProductCard({required this.data,required this.index});
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/product/${data[index][1]}.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8.0),
                  bottomLeft: Radius.circular(8.0),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data[index][0],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8.0),
                  Text(data[index][4],maxLines: 2,),
                  SizedBox(height: 8.0),
                  Text("Price: \u{20B9}${data[index][3]}"),
                  Row(
                    children: [
                      TextButton(onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductScreen(
                          productname: data[index][0],
                          imageName: data[index][1],
                          colorcode: data[index][2],
                          productPrice: data[index][3],
                          productDescription: data[index][4],
                        )));
                      }, child: ElevatedButton(onPressed: null, child: Text("add to cart")))
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
