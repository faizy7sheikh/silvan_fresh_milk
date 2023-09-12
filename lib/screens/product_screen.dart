import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ProductScreen extends StatefulWidget {
  final String productname;
  final num productPrice;
  final String productDescription;
  final String imageName;
  final colorcode;

  ProductScreen({
    super.key,
    required this.productname,
    this.productDescription = '',
    required this.productPrice,
    required this.imageName,
    this.colorcode,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {

  String selectedOption = 'daily';

  // Define a list of available options.
  List<String> options = ['daily', 'monthly', 'custom'];

  late DateTime selectedDate = DateTime.now();

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime.now(),
      lastDate: DateTime(2024),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }

// slider image
final List<String> imageList = [
    'assets/category/burger.jpg',
    'assets/category/coconut.jpg',
    'assets/category/coffee.jpg',
    'assets/category/icecream.jpg',
    // Add more image paths here
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.black45,
          ),
        ),
        title: Text(
          widget.productname,
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 10),
            child: Icon(
              Icons.favorite,
              color: Colors.black38,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.star,
                        color: Color(0xFFFF2F08),
                        size: 22,
                      ),
                      SizedBox(
                        width: 2,
                      ),
                      Text(
                        "4.7",
                        style: TextStyle(color: Colors.black45, fontSize: 16),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.all(25),
                    // child: Image.asset("assets/product/${widget.imageName}.jpg"),
                    child: CarouselSlider(
                      items: imageList.map((imagepath){
                        return Builder(builder: ((context) {
                          return Container(
                            width: MediaQuery.of(context).size.width,
                            margin: EdgeInsets.symmetric(horizontal: 5.0),
                            decoration: BoxDecoration(
                              color: Colors.amber,
                            ),
                            child: Image.asset(imagepath, fit: BoxFit.cover),
                          );
                        }));
                      }).toList(),
                      options: CarouselOptions(
                        height: 200,
                        aspectRatio: 16/9,
                        viewportFraction: 1,
                        initialPage: 0,
                        enableInfiniteScroll: true,
                        reverse: false,
                        autoPlay: false,
                        autoPlayInterval: Duration(seconds: 3),
                        autoPlayAnimationDuration: Duration(milliseconds: 800),
                        autoPlayCurve: Curves.fastOutSlowIn,
                        enlargeCenterPage: true,
                        scrollDirection: Axis.horizontal,
                        enlargeStrategy: CenterPageEnlargeStrategy.zoom,
                        enlargeFactor: 0.4,
                        
                      ),
                      ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("Subscription type",style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold
                            ),),
                            DropdownButton<String>(
                              value: selectedOption,
                              items: options.map((String option) {
                                return DropdownMenuItem<String>(
                                  value: option,
                                  child: Text(option),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  selectedOption = newValue!;
                                });
                              },
                            ),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text("start Date",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
                            ElevatedButton(
                              onPressed: () => _selectDate(context),
                              child: Icon(Icons.calendar_month_rounded),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Text(
                      widget.productDescription,
                      style: TextStyle(fontSize: 17, color: Colors.black45),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: [
                          Text(
                            "categories",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black45,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            '${widget.productPrice}',
                            style:
                                TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Container(
                        height: 30,
                        width: 2,
                        color: Colors.black45,
                      ),
                      Column(
                        children: [
                          Text(
                            "Volume",
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.black45,
                                fontWeight: FontWeight.w500),
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Text(
                            "120 inch",
                            style:
                                TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 40),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              "Order",
                              style: TextStyle(
                                  fontSize: 17,
                                  color: Colors.black45,
                                  fontWeight: FontWeight.w500),
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Icon(
                                  Icons.add_circle_outline_rounded,
                                  color: Colors.black45,
                                ),
                                SizedBox(width: 2),
                                Text(
                                  "01",
                                  style: TextStyle(
                                      fontSize: 17,
                                      color: Colors.black45,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(width: 2),
                                Icon(
                                  Icons.animation_sharp,
                                  color: Colors.black45,
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "Delivery",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "Express",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              "price",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black45),
                            ),
                            SizedBox(height: 8),
                            Text(
                              "\u{20B9} ${widget.productPrice}",
                              style: TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black45),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 50,
              width: double.infinity,
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Text(
                "Place order",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      ),
    );
  }
}
