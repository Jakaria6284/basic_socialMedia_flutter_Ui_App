import 'package:flutter/material.dart';
class storyTile extends StatelessWidget {
  final String imagePath;

  const storyTile({
    Key? key,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: 35,
      backgroundImage: AssetImage(imagePath),
    );
  }
}