import 'package:flutter/material.dart';
import 'package:intern_online_test/core/themes/color_palette.dart';
import 'package:intern_online_test/features/without_animation_view/widgets/daytime_bg.dart';
import 'package:intern_online_test/features/without_animation_view/widgets/night_bg.dart';

class SunMoonSwitch extends StatefulWidget {
  const SunMoonSwitch({super.key});

  @override
  State<SunMoonSwitch> createState() => _SunMoonSwitchState();
}

class _SunMoonSwitchState extends State<SunMoonSwitch> {
  bool _isToggle = false;
  void _setToggle(bool value) {
    setState(() {
      _isToggle = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 369,
      height: 145,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        boxShadow: const [
          BoxShadow(
            color: ColorPalette.shadowColor1,
            offset: Offset(0, 4),
            blurRadius: 2,
            spreadRadius: 0,
          ),
          BoxShadow(
            color: ColorPalette.shadowColor2,
            offset: Offset(0, -3),
            blurRadius: 4,
            spreadRadius: 0,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(200),
        child: (_isToggle)
            ? NightBackground(
                onToggle: _setToggle,
              )
            : DayTimeBackground(
                onToggle: _setToggle,
              ),
      ),
    );
  }
}
