import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({
    super.key,
    required this.path,
  });

  final String path;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          path,
          width: 250,
          height: 250,
          fit: BoxFit.contain,
        ),
      ],
    );
  }
}
