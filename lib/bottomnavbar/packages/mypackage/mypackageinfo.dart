import 'package:flutter/material.dart';

import '../button/changePackageButton.dart';
import '../button/paybillButton.dart';

class PackageInfoContainer extends StatelessWidget {
  final String packageName;
  final String uploadSpeed;
  final String downloadSpeed;
  final String expireDate;
  final String expireHour;

  PackageInfoContainer({
    required this.packageName,
    required this.uploadSpeed,
    required this.downloadSpeed,
    required this.expireDate,
    required this.expireHour,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      padding: EdgeInsets.all(12), // Reduced padding for smaller size
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue[200]!, Colors.blue[400]!], // Blue gradient background
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(12), // Smaller border radius
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.3),
            spreadRadius: 3,
            blurRadius: 6,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Package Name
          Text(
            packageName,
            style: TextStyle(
              fontSize: 18, // Reduced font size for smaller design
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 8),
          // Speed Information Row
          Row(

            children: [
              _buildSpeedDetail('Upload Speed', uploadSpeed, Icons.upload),
              SizedBox(width: 6,),
              _buildSpeedDetail('Download Speed', downloadSpeed, Icons.download),
              SizedBox(width: 6,),
              ChangePackageButton(
                onPressed: () {
                  // Handle the package change logic here
                  print("Change Package pressed");
                },
              )

            ],
          ),
          SizedBox(height: 12),
          // Expiry Information Row
          Row(

            children: [
              _buildExpireBox('Expire Date', expireDate, Icons.calendar_today),
              SizedBox(width: 6,),
              _buildExpireBox('Expire Hour', expireHour, Icons.access_time),
              SizedBox(width: 6,),
              PayBillButton(onPressed: (){
                print("Pay bill pressed");
              },)
            ],
          ),
        ],
      ),
    );
  }

  // Widget for Speed Information
  Widget _buildSpeedDetail(String title, String value, IconData icon) {
    return Container(
      width: 122, // Reduced width for smaller size
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Reduced padding
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8), // Semi-transparent white background
        borderRadius: BorderRadius.circular(10), // Reduced border radius
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue[800],
            size: 16, // Smaller icon size
          ),
          SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 10, // Smaller font size
                  color: Colors.blue[700],
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 12, // Smaller font size
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget for Expiry Information
  Widget _buildExpireBox(String title, String value, IconData icon) {
    return Container(
      width: 122, // Reduced width for smaller size
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10), // Reduced padding
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8), // Semi-transparent white background
        borderRadius: BorderRadius.circular(10), // Reduced border radius
        boxShadow: [
          BoxShadow(
            color: Colors.blue.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.blue[800],
            size: 16, // Smaller icon size
          ),
          SizedBox(width: 6),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 10, // Smaller font size
                  color: Colors.blue[700],
                ),
              ),
              Text(
                value,
                style: TextStyle(
                  fontSize: 12, // Smaller font size
                  fontWeight: FontWeight.bold,
                  color: Colors.blue[900],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
