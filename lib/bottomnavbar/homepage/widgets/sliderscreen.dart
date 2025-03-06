import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import '../../../../../core/constants/colorPlate.dart';

class ProductSlider extends StatefulWidget {
  final List<String> imageList;
  const ProductSlider({super.key, required this.imageList});

  @override
  State<ProductSlider> createState() => _ProductSliderState();
}

class _ProductSliderState extends State<ProductSlider> {
  final ValueNotifier<int> _selectedSlider = ValueNotifier(0);

  // Helper function to determine if the device is a smartphone
  bool _isSmartphone(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    // Common breakpoint for smartphones is 600 pixels or less
    return screenWidth <= 600;
  }

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child: CarouselSlider(
            options: CarouselOptions(
              height: 200.0,
              viewportFraction: 0.8,
              autoPlayAnimationDuration: const Duration(seconds: 3),
              onPageChanged: (int page, _) {
                _selectedSlider.value = page;
              },
            ),
            items: widget.imageList.map((imageUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Appcolor.primarycolor.withOpacity(.1),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      image: DecorationImage(
                        // Use BoxFit.fill for smartphones, otherwise use BoxFit.fitHeight
                        fit: _isSmartphone(context) ? BoxFit.fill : BoxFit.fitHeight,
                        image: AssetImage(imageUrl),
                      ),
                    ),
                    alignment: Alignment.center,
                  );
                },
              );
            }).toList(),
          ),
        ),
        const SizedBox(height: 8),
        Positioned(
          top: 210,
          left: 0,
          right: 0,
          child: ValueListenableBuilder(
            valueListenable: _selectedSlider,
            builder: (context, value, _) {
              List<Widget> list = [];
              for (int i = 0; i < widget.imageList.length; i++) {
                list.add(
                  Container(
                    width: 10,
                    height: 10,
                    margin: const EdgeInsets.symmetric(horizontal: 4),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: value == i ? Appcolor.primarycolor : Colors.grey,
                    ),
                  ),
                );
              }
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: list,
              );
            },
          ),
        ),
      ],
    );
  }
}