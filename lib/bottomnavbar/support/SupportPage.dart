import 'package:flutter/material.dart';
import 'package:ispcare/bottomnavbar/support/report/repostcart.dart';
import '../../core/constants/colorPlate.dart';

class Supportpage extends StatefulWidget {
  const Supportpage({super.key});

  @override
  State<Supportpage> createState() => _SupportpageState();
}

class _SupportpageState extends State<Supportpage> {
  int selectedIndex = 0; // Make sure this is an integer
  final List<String> categories = [
    'All',
    'New Tickets',
    'Expires',
    'Completed'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Appcolor.primarycolor.withOpacity(.2),
      appBar: AppBar(
        backgroundColor: Appcolor.primarycolor.withOpacity(.1),
        leading: Padding(
          padding: EdgeInsets.all(8.0),
          child: Image.asset('assets/logo.png'),
        ),
        title: Row(
          children: [
            Container(
              height: 40,
              width: 100,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Colors.grey.shade200, width: 2),
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Center(
                child: Text(
                  "18 days",
                  style: TextStyle(
                    color: Appcolor.primarycolor,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                  ),
                ),
              ),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              // Handle profile tap
            },
            child: const CircleAvatar(
              radius: 18,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
          ),
          IconButton(
            icon: const Icon(Icons.notifications, size: 30),
            onPressed: () {
              // Handle notification tap
            },
          ),
        ],
      ),
      body: Column(
        children: [
          // Image with overlay and button
          Container(
            height: 120,
            padding: EdgeInsets.all(10),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Stack(
                children: [
                  // Background image
                  Image.asset(
                    "assets/image2.png",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  // Content overlay (Text and Button)
                  Padding(
                    padding: EdgeInsets.all(16), // Fixed padding
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "24/7 Support",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "But onsite support available",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              "from 12 AM to 06 PM",
                              style: TextStyle(
                                fontWeight: FontWeight.w400,
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        Spacer(),
                        // Create Now button
                        SizedBox(
                          height: 40,
                          child: ElevatedButton(
                            onPressed: () {
                              // Handle Create Now button tap
                            },
                            style: ButtonStyle(
                              padding: MaterialStateProperty.all(EdgeInsets.zero),
                              backgroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 8),
                                Text(
                                  "Create Now",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Appcolor.primarycolor,
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 50, // Fixed height
            child: ListView.builder(
              itemCount: categories.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return InkWell(
                  borderRadius: BorderRadius.circular(4),
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 8), // Fixed margin
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent),
                      borderRadius: BorderRadius.circular(10),
                      color: index == selectedIndex ? Appcolor.primarycolor : Colors.grey.shade100,
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16), // Fixed padding
                      child: Text(
                        categories[index],
                        style: TextStyle(
                          color: index == selectedIndex ? Colors.white : Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16, // Fixed font size
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemCount:10,
                itemBuilder: (context, index){
                  return ReportContainer(issueName: 'Speed Slow', reportDate: '5/2/2025', status: 'Pending', solveDate: '6/2/2025',);
                }),
          )
        ],
      ),
    );
  }
}
