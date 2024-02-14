import 'package:basic_socailmedia_ui/Tile/postTile.dart';
import 'package:flutter/material.dart';
import 'Tile/storyTie.dart'; // Make sure the import is correct and the file is available

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<String> list = [
    "assets/images/day1.jpg",
    "assets/images/day2.jpg",
    "assets/images/day3.jpg",
    "assets/images/day4.jpg",
    "assets/images/day5.jpg",
    "assets/images/day6.jpg",
    "assets/images/day1.jpg",
    "assets/images/day2.jpg",
    "assets/images/day3.jpg",
    "assets/images/day4.jpg",
    "assets/images/day5.jpg",
    "assets/images/day6.jpg",
    "assets/images/day1.jpg",
    "assets/images/day2.jpg",
    "assets/images/day3.jpg",
    "assets/images/day4.jpg",
    "assets/images/day5.jpg",
    "assets/images/day6.jpg",
    "assets/images/day1.jpg",
    "assets/images/day2.jpg",
    "assets/images/day3.jpg",
    "assets/images/day4.jpg",
    "assets/images/day5.jpg",
    "assets/images/day6.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Basic Social Media",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.apartment),
            onPressed: () {
              // Add functionality for the leading icon here
            },
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.notifications_active),
              onPressed: () {
                // Add functionality for the notification icon here
              },
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0), // Adjust padding as needed
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 0),
                child: Text("Story",style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
              ),
              SizedBox(
                height: 100, // Set a fixed height for the story tiles list
                child: ListView.builder(
                  itemCount: list.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: storyTile(imagePath: list[index]), // Ensure the StoryTile widget is correctly implemented
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    return PostTile();




                  },
                  separatorBuilder: (context, index) => SizedBox(height: 8), // Adjust the height as needed
                 itemCount: 10,
                )

              ),
            ],
          ),
        ),
      ),
    );
  }
}
