import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    // debugShowCheckedModeBanner: false,
    title: 'Awesome Apps',
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Awesome Appp'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Align(
          // alignment: Alignment
          child: Container(
            color: Colors.black,
            width: 200,
            height: 400,
            child: Column(  
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.red,
                ),
                Container(
                  padding: const EdgeInsets.all(9),
                  width: 100,
                  height: 100,
                  color: Colors.yellow,
                ),
                Container(
                  padding: const EdgeInsets.all(8),
                  width: 100,
                  height: 100,
                  color: Colors.blue,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
 /// Video freeCodeCamp timeStamp : 47:41 ( 25-07-22 ) 8:14 PM 