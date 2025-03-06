import 'package:flutter/material.dart';

class PayBillButton extends StatelessWidget {
  final Function onPressed;

  PayBillButton({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPressed(), // Handle the button tap
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: 70,  // Set width to 40
        height: 40, // Set height to 40
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.green[400]!, Colors.green[700]!], // Green gradient for the button
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20), // Rounded corners for the button
          boxShadow: [
            BoxShadow(
              color: Colors.green.withOpacity(0.4),
              spreadRadius: 2,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Center( // Center the content inside the button
          child: Icon(
            Icons.payment, // Payment icon for Pay Bill
            color: Colors.white,
            size: 20, // Icon size
          ),
        ),
      ),
    );
  }
}
