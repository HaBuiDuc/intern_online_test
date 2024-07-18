import 'package:flutter/material.dart';
import 'package:intern_online_test/core/themes/app_theme.dart';
import 'package:intern_online_test/features/animation_view/widgets/animation_switch.dart';
import 'package:intern_online_test/features/without_animation_view/widgets/sun_moon_switch.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  final _titleStyle = const TextStyle(
    fontSize: 26,
    fontWeight: FontWeight.w700,
  );
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Intern Test',
      theme: AppTheme.appTheme,
      home: Scaffold(
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Without animation',
                style: _titleStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              const SunMoonSwitch(),
              const SizedBox(
                height: 30,
              ),
              Text(
                'With animation',
                style: _titleStyle,
              ),
              const SizedBox(
                height: 10,
              ),
              const AnimationSwitch(),
            ],
          ),
        ),
      ),
    );
  }
}
