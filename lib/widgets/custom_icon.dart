import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  final String imagePath;
  final double size;

  const CustomIcon({
    required this.imagePath,
    this.size = 24.0,
  });

  @override
  Widget build(BuildContext context) {
    return ImageIcon(
      AssetImage(imagePath),
      size: size,
    );
  }
}
