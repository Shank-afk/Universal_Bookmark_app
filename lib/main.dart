import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.amber)),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),

      body: Stack(
        children: [
          // Background content
          Positioned(
            bottom: 25, // Adjust as needed
            left: 0,
            right: 0,
            child: Row(
              children: [
                SizedBox(width: 20),
                //Rextange
                ElevatedButton(
                  onPressed: () {
                    // Optional: Handle tap on the entire button
                  },
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 6),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {
                          print('Favorite pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.share),
                        onPressed: () {
                          print('Share pressed');
                        },
                      ),
                      IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          print('Delete pressed');
                        },
                      ),
                    ],
                  ),
                ),
                Spacer(),
                //circular button
                ElevatedButton(
                  onPressed: () {
                    // Your button action
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), // Makes the button circular
                    padding: EdgeInsets.all(
                      20,
                    ), // Adjust padding to control the size
                  ),
                  child: Icon(Icons.add), // Use an icon for a circular button
                ),
                SizedBox(width: 10),
                //circular button
                ElevatedButton(
                  onPressed: () {
                    // Your button action
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(), // Makes the button circular
                    padding: EdgeInsets.all(
                      20,
                    ), // Adjust padding to control the size
                  ),
                  child: Icon(
                    Icons.search,
                  ), // Use an icon for a circular button
                ),
                SizedBox(width: 20),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
