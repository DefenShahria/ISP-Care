
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ispcare/bottomnavbar/packages/Packagespage.dart';
import 'package:ispcare/bottomnavbar/support/SupportPage.dart';
import 'package:ispcare/bottomnavbar/transection/Transcation_Page.dart';
import '../core/constants/colorPlate.dart';
import 'controller/main_bottom_navbar_controller.dart';
import 'homepage/MyHomepage.dart';
import 'menu/Menupage.dart';

class MainBottomNavScreen extends StatefulWidget {
  const MainBottomNavScreen({super.key});

  @override
  State<MainBottomNavScreen> createState() => _MainBottomNavScreenState();
}

class _MainBottomNavScreenState extends State<MainBottomNavScreen> {
  final PageController _pageController = PageController();

  final List<Widget> _screens = [
    const Myhomepage(),
    const Supportpage(),
    const Packagespage(),
    const TranscationPage(),
    const Menupage(),
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }





  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {

    });
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainBottomNavController>(
      builder: (controller) {
        // Sync the PageController with the currentSelectedIndex
        if (_pageController.hasClients) {
          _pageController.jumpToPage(controller.currentSelectedIndex);
        }

        return Scaffold(
          backgroundColor: Colors.white,
          body: PageView(
            controller: _pageController,
            onPageChanged: (index) {
              controller.changeScreen(index); // Update the index in the controller
            },
            children: _screens,
          ),
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: controller.currentSelectedIndex, // Use the index from the controller
            onTap: (index) {
              controller.changeScreen(index); // Update the index in the controller
              _pageController.jumpToPage(index); // Jump to the selected page
            },
            backgroundColor: Colors.white,
            selectedItemColor: Appcolor.primarycolor,
            unselectedItemColor: Colors.grey,
            showUnselectedLabels: true,
            elevation: 4,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.headset_mic_outlined),
                label: 'Support',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Packages',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.receipt_outlined),
                label: 'Transactions',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.menu),
                label: 'Menu',
              ),
            ],
          ),
        );
      },
    );
  }
}