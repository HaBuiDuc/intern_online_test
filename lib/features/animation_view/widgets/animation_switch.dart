import 'package:flutter/material.dart';
import 'package:intern_online_test/core/themes/color_palette.dart';

class AnimationSwitch extends StatefulWidget {
  const AnimationSwitch({super.key});

  @override
  State<AnimationSwitch> createState() => _AnimationSwitchState();
}

class _AnimationSwitchState extends State<AnimationSwitch> {
  bool _isToggle = false;
  final _animationDuration = const Duration(milliseconds: 800);

  @override
  Widget build(BuildContext context) {
    // animated container for color transition animation
    return AnimatedContainer(
      duration: _animationDuration,
      width: 369,
      height: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        boxShadow: [
          const BoxShadow(
            color: ColorPalette.shadowColor1,
            offset: Offset(0, 4),
            blurRadius: 2,
          ),
          const BoxShadow(
            color: ColorPalette.shadowColor2,
            offset: Offset(0, -3),
            blurRadius: 4,
          ),
          // inner shadow
          const BoxShadow(
            color: ColorPalette.innerShadowColor,
          ),
          BoxShadow(
            color: (_isToggle)
                ? ColorPalette.nightBgColor
                : ColorPalette.daytimeBgColor,
            blurRadius: 9.0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: Stack(
          alignment: Alignment.centerLeft,
          children: [
            AnimatedPositioned(
              duration: _animationDuration,
              top: (_isToggle) ? 200 : 1,
              left: -4,
              child: Image.asset(
                'assets/images/full_cloud.png',
                width: 400,
                height: 210,
                fit: BoxFit.cover,
              ),
            ),
            AnimatedPositioned(
              duration: _animationDuration,
              left: 43,
              top: (_isToggle) ? 23 : -120,
              child: Image.asset(
                'assets/images/stars.png',
                width: 142,
                height: 93,
              ),
            ),
            AnimatedPositioned(
              duration: _animationDuration,
              left: (_isToggle) ? 115 : -91,
              child: Image.asset(
                'assets/images/rays.png',
              ),
            ),
            AnimatedPositioned(
              duration: _animationDuration,
              left: (_isToggle) ? 235 : 12,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _isToggle = !_isToggle;
                  });
                },
                child: Image.asset(
                  (_isToggle)
                      ? 'assets/images/moon.png'
                      : 'assets/images/sun.png',
                  width: 120,
                  height: 120,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
