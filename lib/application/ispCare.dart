import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ispcare/bottomnavbar/main_bottom_navbar.dart';

import 'controllerbinding.dart';

class ISPCare extends StatelessWidget {
  const ISPCare({super.key});


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialBinding: ControllerBinder(),
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MainBottomNavScreen(),

    );
  }
}
