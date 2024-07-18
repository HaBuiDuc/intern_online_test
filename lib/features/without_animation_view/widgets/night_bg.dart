import 'package:flutter/material.dart';
import 'package:intern_online_test/core/themes/color_palette.dart';

class NightBackground extends StatelessWidget {
  final void Function(bool) onToggle;
  const NightBackground({super.key, required this.onToggle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        boxShadow: const [
          // inner shadow
          BoxShadow(
            color: ColorPalette.innerShadowColor,
          ),
          BoxShadow(
            color: ColorPalette.nightBgColor,
            blurRadius: 12.0,
          ),
        ],
      ),
      child: Stack(
        alignment: Alignment.centerRight,
        children: [
          Positioned(
            top: 23,
            left: 43,
            child: Image.asset(
              'assets/images/stars.png',
              width: 142,
              height: 93,
            ),
          ),
          Positioned(
            right: -94,
            child: Image.asset(
              'assets/images/rays.png',
              width: 328,
              height: 328,
            ),
          ),
          Positioned(
            right: 10,
            child: GestureDetector(
              onTap: () => onToggle(false),
              child: Image.asset(
                'assets/images/moon.png',
                width: 120,
                height: 120,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
