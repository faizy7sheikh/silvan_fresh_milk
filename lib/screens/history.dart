import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HistoryPage(),
    );
  }
}

class OrderHistoryItem {
  final String productName;
  final String orderDate;
  final double totalAmount;

  OrderHistoryItem({
    required this.productName,
    required this.orderDate,
    required this.totalAmount,
  });
}

class HistoryPage extends StatefulWidget {
  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  final List<OrderHistoryItem> orderHistory = [
    OrderHistoryItem(
      productName: 'Product 1',
      orderDate: '2023-08-25',
      totalAmount: 50.00,
    ),
    OrderHistoryItem(
      productName: 'Product 2',
      orderDate: '2023-08-20',
      totalAmount: 30.00,
    ),
    // Add more items here
  ];

  late DateTime _startDate = DateTime.now();
  late DateTime _endDate = DateTime.now();

  Future<void> _selectDate(BuildContext context, bool isStartDate) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: isStartDate ? _startDate : _endDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null) {
      setState(() {
        if (isStartDate) {
          _startDate = picked;
        } else {
          _endDate = picked;
        }
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order History'),
        actions: [
          IconButton(
            icon: Icon(Icons.download),
            onPressed: () {
              // Logic for downloading
            },
          ),
        ],
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextButton(
                onPressed: () => _selectDate(context, true),
                child: Text("Start Date: ${_startDate.toString().split(' ')[0]}"),
              ),
              TextButton(
                onPressed: () => _selectDate(context, false),
                child: Text("End Date: ${_endDate.toString().split(' ')[0]}"),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemCount: orderHistory.length,
              itemBuilder: (context, index) {
                final item = orderHistory[index];
                return ListTile(
                  title: Text(item.productName),
                  subtitle: Text('Order Date: ${item.orderDate}'),
                  trailing: Text('\$${item.totalAmount.toStringAsFixed(2)}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
