import 'package:flutter/material.dart';

class PostTile extends StatefulWidget {
  const PostTile({Key? key}) : super(key: key);

  @override
  _PostTileState createState() => _PostTileState();
}

class _PostTileState extends State<PostTile> {
  bool isPressed = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 500, // Adjust width as needed
          height: 500, // Adjust height as needed
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
              image: AssetImage("assets/images/day2.jpg"),
              fit: BoxFit.cover, // Adjust the fit as needed
            ),
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  isPressed = !isPressed;
                });
                // Define your onPressed functionality here
              },
              icon: Icon(
                Icons.thumb_up_off_alt_outlined,
                color: isPressed ? Colors.blue : null,
              ),
            ),
            IconButton(
              onPressed: () {
                // Define your onPressed functionality here
              },
              icon: Icon(Icons.mode_comment_outlined),
            ),
            IconButton(
              onPressed: () {
                // Define your onPressed functionality here
              },
              icon: Icon(Icons.share),
            ),
            // Add more IconButton widgets as needed
          ],
        ),
      ],
    );
  }
}
