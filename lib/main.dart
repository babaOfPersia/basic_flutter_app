import 'package:flutter/material.dart';

void main() {
  // Everything is a widget
  // Widget tree structure
  // Nesting widgets
  // Something like html
  runApp(MaterialApp(
    home : Home(),
  ));
}

// In a Stateless widget the state of te widget cannot change over time
// Eg. Layout, colour, data
// Data cannot be changed once finalised
// Helps with re usability (Same widget can be called in different places)
class Home extends StatelessWidget{
  @override
  // Whenever change is made to the code flutter would detect it and would make the build function to rerun
  // Auto Hot restart
  // We are redefining/overriding the build function from the basic stateless widget
  Widget build(BuildContext context) {
    return Scaffold(
      // How the appbar is going to look like (App bar widget)
      appBar: AppBar(
        // What text is going to be shown (Text widget)
        title: Text('Basic app'),
        // Option / properties
        centerTitle: true,
        backgroundColor: Colors.red[600],
      ),
      // Anything under the appbar
      // We could centralise the wrap the elements inside a center widget
      body: Center(
        // Child property
        child : Text(
          // The string is a property itself
          'Test',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 2.0,
            color: Colors.green[600],
            fontFamily: 'Titillium',
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        child: Text('Click'),
        backgroundColor: Colors.amber[600],
      ),
    );
  }
}

