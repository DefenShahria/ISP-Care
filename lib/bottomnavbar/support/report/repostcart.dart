import 'package:flutter/material.dart';

class ReportContainer extends StatelessWidget {
  final String issueName;
  final String reportDate;
  final String status;
  final String solveDate;

  ReportContainer({
    required this.issueName,
    required this.reportDate,
    required this.status,
    required this.solveDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            issueName,
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Report Date: $reportDate',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                'Status: $status',
                style: TextStyle(
                  fontSize: 14,
                  color: _getStatusColor(status),
                ),
              ),
            ],
          ),
          if (status == 'Solved') ...[
            SizedBox(height: 8),
            Text(
              'Solve Date: $solveDate',
              style: TextStyle(
                fontSize: 14,
                color: Colors.green[700],
              ),
            ),
          ],
        ],
      ),
    );
  }

  Color _getStatusColor(String status) {
    switch (status.toLowerCase()) {
      case 'solved':
        return Colors.green;
      case 'in progress':
        return Colors.orange;
      case 'pending':
        return Colors.red;
      default:
        return Colors.black;
    }
  }
}
