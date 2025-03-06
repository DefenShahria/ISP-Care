import 'package:flutter/material.dart';
import 'package:ispcare/bottomnavbar/homepage/widgets/sliderscreen.dart';
import 'package:ispcare/core/constants/colorPlate.dart';
import '../packages/package/packagecard.dart';

class Myhomepage extends StatefulWidget {
  const Myhomepage({super.key});

  @override
  State<Myhomepage> createState() => _MyhomepageState();
}

class _MyhomepageState extends State<Myhomepage> {
  final List<String> _imageList = [
    'assets/slideimg.png',
    'assets/slideimg1.png',
    'assets/slideimg2.png',
    'assets/slideimg4.png',
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
          SizedBox(height: 10,),
          ProductSlider(imageList: _imageList,),
          SizedBox(height: 5,),
          Text("Offer Package",style: TextStyle(color: Colors.blue,fontWeight: FontWeight.w500,fontSize: 18),),
          SizedBox(height: 5,),
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
