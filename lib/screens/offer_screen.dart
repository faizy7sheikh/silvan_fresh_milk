import 'package:flutter/material.dart';

class OfferZone extends StatefulWidget {
  const OfferZone({super.key});

  @override
  State<OfferZone> createState() => _OfferZoneState();
}

class _OfferZoneState extends State<OfferZone> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(child: Scaffold(
        appBar: AppBar(
          title: Text("Offer Zone"),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              
            ],
          ),
        ),
      ),
      ),
    );
  }
}