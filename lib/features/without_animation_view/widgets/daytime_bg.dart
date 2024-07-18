import 'package:flutter/material.dart';
import 'package:intern_online_test/core/themes/color_palette.dart';

class DayTimeBackground extends StatelessWidget {
  final void Function(bool) onToggle;
  const DayTimeBackground({super.key, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        boxShadow: const [
          // inner shadow
          BoxShadow(
            color: ColorPalette.innerShadowColor,
          ),
          BoxShadow(
            color: ColorPalette.daytimeBgColor,
            blurRadius: 9.0,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Positioned(
            top: 1,
            left: -4,
            child: Image.asset(
              'assets/images/full_cloud.png',
              width: 400,
              height: 210,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            left: -91,
            child: Image.asset(
              'assets/images/rays.png',
              width: 328,
              height: 328,
            ),
          ),
          Positioned(
            left: 12,
            child: GestureDetector(
              onTap: () => onToggle(true),
              child: Image.asset('assets/images/sun.png'),
            ),
          ),
        ],
      ),
    );
  }
}
