import 'package:flutter/material.dart';

import '../../core/constants/colorPlate.dart';
import 'mypackage/mypackageinfo.dart';
import 'package/packagecard.dart';

class Packagespage extends StatefulWidget {
  const Packagespage({super.key});

  @override
  State<Packagespage> createState() => _PackagespageState();
}

class _PackagespageState extends State<Packagespage> {
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
                          fontSize: 18),
                    )),
              )
            ],
          ),
          actions: [
            GestureDetector(
              onTap: () {

              },
              child: const CircleAvatar(
                radius: 18,
                backgroundImage: AssetImage('assets/profile.png'),
              ),
            ),
            IconButton(
              icon: const Icon(Icons.notifications, size: 30),
              onPressed: () {
              },
            ),
          ]),
      body: Column(
        children: [
          PackageInfoContainer(
            packageName: 'Premium Package',
            uploadSpeed: '100 Mbps',
            downloadSpeed: '200 Mbps',
            expireDate: '2025-06-01',
            expireHour: '11:59 PM',
          ),
          Expanded(
            child: ListView.builder(
                shrinkWrap: true,
                //physics: NeverScrollableScrollPhysics(),
                itemCount:10,
                itemBuilder: (context, index){
                  return InternetPackageCard(packageName: 'Basic', speed: '20 Mbps', price: '500',);
                }),
          )
        ],
      ),
    );
  }
}
