import 'package:flutter/material.dart';

class InternetPackageCard extends StatelessWidget {
  final String packageName;
  final String speed;
  final String price;

  const InternetPackageCard({
    Key? key,
    required this.packageName,
    required this.speed,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16),
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        gradient: LinearGradient(
          colors: [Colors.blue.shade700, Colors.blue.shade400],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.blue.shade900.withOpacity(0.3),
            blurRadius: 8,
            spreadRadius: 2,
            offset: Offset(2, 4),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                packageName,
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              Icon(Icons.wifi, color: Colors.white, size: 28),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.speed, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Text(
                speed,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            children: [
              Icon(Icons.monetization_on, color: Colors.white, size: 20),
              SizedBox(width: 8),
              Text(
                price,
                style: TextStyle(fontSize: 18, color: Colors.white70),
              ),
            ],
          ),
          SizedBox(height: 12),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: Colors.blue.shade800,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            child: Text("Subscribe Now"),
          ),
        ],
      ),
    );
  }
}
