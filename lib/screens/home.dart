import 'package:flutter/material.dart';
import 'package:testapp/constants/app_colors.dart';
import 'package:testapp/constants/app_styles.dart';
import 'package:testapp/services/color_controller.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({required this.title, super.key});

  final String title;

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ColorController colorController = ColorController();
  Color backgroundColor = AppColors.defaultBackground;

  void _changeBackground() {
    setState(() {
      colorController.setRandomColor();
      backgroundColor = colorController.color;
    });
  }

  void _resetBackground() {
    setState(() {
      backgroundColor = AppColors.defaultBackground;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Colors"),
        centerTitle: true,
        titleTextStyle: AppStyles.appBarText,
        backgroundColor: AppColors.appbar,
      ),
      backgroundColor: backgroundColor,
      body: GestureDetector(
        onTap: _changeBackground,
        behavior: HitTestBehavior.opaque,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Hello there", style: AppStyles.plainText),
              const SizedBox(height: 20),
              Tooltip(
                message: 'Reset the background color',
                child: ElevatedButton(
                  onPressed: _resetBackground,
                  child: const Icon(Icons.redo, size: 36),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
