import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SubscriptionPage(),
    );
  }
}

class SubscriptionOption {
  final String title;
  final String description;
  final double price;

  SubscriptionOption({
    required this.title,
    required this.description,
    required this.price,
  });
}

class SubscriptionPage extends StatelessWidget {
  final List<SubscriptionOption> subscriptionOptions = [
    SubscriptionOption(
      title: 'Monthly Plan',
      description: 'Get fresh dairy milk delivered every month',
      price: 15.00,
    ),
    SubscriptionOption(
      title: 'Quarterly Plan',
      description: 'Save more with a quarterly dairy milk plan',
      price: 40.00,
    ),
    SubscriptionOption(
      title: 'Yearly Plan',
      description: 'Enjoy dairy milk for the whole year at a great price',
      price: 150.00,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (var option in subscriptionOptions)
              SubscriptionCard(option: option),
          ],
        ),
      ),
    );
  }
}

class SubscriptionCard extends StatelessWidget {
  final SubscriptionOption? option;

  SubscriptionCard({this.option});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(16.0),
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              option!.title,
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8.0),
            Text(option!.description),
            SizedBox(height: 8.0),
            Text(
              '\$${option!.price.toStringAsFixed(2)} / month',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Logic for subscription
              },
              child: Text('Subscribe'),
            ),
          ],
        ),
      ),
    );
  }
}
