import 'package:flutter/material.dart';

void main() {
  // Everything is a widget
  // Widget tree structure
  // Nesting widgets
  // Something like html
  runApp(MaterialApp(
    home: Home(),
  ));
}

// In a Stateless widget the state of te widget cannot change over time
// Eg. Layout, colour, data
// Data cannot be changed once finalised
// Helps with re usability (Same widget can be called in different places)
class Home extends StatelessWidget {
  @override
  // Whenever change is made to the code flutter would detect it and would make the build function to rerun
  // Auto Hot restart
  // We are redefining/overriding the build function from the basic stateless widget
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      // How the appbar is going to look like (App bar widget)
      appBar: AppBar(
        // What text is going to be shown (Text widget)
        title: Text('ID Card'),
        // Option / properties
        centerTitle: true,
        backgroundColor: Colors.grey[600],
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.all(40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/ID-Pic.JPG'),
                  fit: BoxFit.cover,
                )),
              ),
            ),
            Divider(
              height: 60,
              color: Colors.grey[500],
            ),
            Text('NAME: ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 2,
                )),
            SizedBox(height: 10),
            Text('Baba',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Text('ID Number: ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  letterSpacing: 2,
                )),
            SizedBox(height: 10),
            Text('200015852',
                style: TextStyle(
                    color: Colors.amberAccent,
                    letterSpacing: 2,
                    fontSize: 32,
                    fontWeight: FontWeight.bold)),
            SizedBox(height: 30),
            Row(
              children: [
                Icon(
                  Icons.calendar_month,
                  color: Colors.white,
                ),
                SizedBox(width: 10),
                Text('11-Apr-2002',
                    style: TextStyle(
                        color: Colors.amberAccent,
                        letterSpacing: 2,
                        fontSize: 32,
                        fontWeight: FontWeight.bold)),
              ],
            ),
          ],
        ),
      ),
      // Anything under the appbar
    );
  }
}
