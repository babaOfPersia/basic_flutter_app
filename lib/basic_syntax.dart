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
          child: new Column(
            children: [
              new Container(
                  child: Text(
                    // The string is a property itself
                    'Test',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2.0,
                      color: Colors.green[600],
                      fontFamily: 'Titillium',
                    ),
                  )),
              new Container(
                  child: Image.network(
                      'https://images.unsplash.com/photo-1657302457405-fa9e4a2698af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80'))
              ,
              new Container(
                child: Icon(
                  Icons.airplane_ticket,
                  color: Colors.amberAccent,
                  size: 50,
                ),
              ),
              // new Container(
              //   child: RaisedButton(
              //     onPressed: (){
              //       print('You Clicked me');
              //     },
              //     child: Text('Clicky'),
              //     color: Colors.blue,
              //   ),
              // ),
              // new Container(
              //   child: FlatButton(
              //     onPressed: (){},
              //     child: Text('Clicky'),
              //     color: Colors.green,
              //   ),
              // ),
              new Container(
                child: RaisedButton.icon(
                  onPressed: (){
                    print('You Clicked mail');
                  },
                  icon: Icon(
                      Icons.mail
                  ),
                  label: Text('Clicky mail'),
                  color: Colors.green,
                ),
              ),
              new Container(
                child: IconButton(
                  onPressed: (){
                    print('You Clicked email');
                  },
                  icon: Icon(
                      Icons.alternate_email
                  ),
                  color: Colors.green,
                ),
              ),
              new Container(
                padding: EdgeInsets.all(20),
                margin: EdgeInsets.all(30),
                color: Colors.grey[400],
                child: Text("hello"),
              ),
              Padding(
                padding: EdgeInsets.all(90),
                child: Text("hello"),
              ),
            ],
          )),
      // Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.center,
      //   children: [
      //     Text("hello world"),
      //     FlatButton(
      //         onPressed: (){},
      //         color: Colors.amberAccent,
      //         child: Text('Click me!')
      //     ),
      //     Container(
      //       color: Colors.green,
      //       padding: EdgeInsets.all(30),
      //       child: Text('Container is here'),
      //     )
      //   ],
      // ),
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.center,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Text("hello world"),
      //     FlatButton(
      //         onPressed: () {},
      //         color: Colors.amberAccent,
      //         child: Text('Click me!')),
      //     Container(
      //       color: Colors.green,
      //       padding: EdgeInsets.all(30),
      //       child: Text('Container is here'),
      //     )
      //   ],
      // ),

      // Row and column system
      // Column(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   crossAxisAlignment: CrossAxisAlignment.start,
      //   children: [
      //     Row(
      //         children: [
      //           Text("hello world"),
      //           FlatButton(
      //               onPressed: () {},
      //               color: Colors.amberAccent,
      //               child: Text('Click me!')),
      //           Container(
      //             color: Colors.green,
      //             padding: EdgeInsets.all(30),
      //             child: Text('Container is here'),
      //           )
      //         ]),
      //     Row(
      //         children: [
      //           Text("hello world"),
      //           FlatButton(
      //               onPressed: () {},
      //               color: Colors.amberAccent,
      //               child: Text('Click me!')),
      //           Container(
      //             color: Colors.green,
      //             padding: EdgeInsets.all(30),
      //             child: Text('Container is here'),
      //           )
      //         ])
      //   ],
      // ),

      // Flex widgets (Expanding widgets)

      // Row(
      //   children: [
      //     Expanded(
      //         flex: 1,
      //         child: Image.network('https://images.unsplash.com/photo-1657302457405-fa9e4a2698af?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=715&q=80')),
      //     Expanded(
      //       flex: 3,
      //       child: Container(
      //         padding: EdgeInsets.all(30),
      //         color: Colors.green,
      //         child: const Text('1'),
      //       ),
      //     ),
      //     Expanded(
      //         flex: 2,
      //         child: Container(
      //           padding: EdgeInsets.all(30),
      //           color: Colors.red,
      //           child: Text('2'),
      //         )),
      //     Expanded(
      //         flex: 1,
      //         child: Container(
      //           padding: EdgeInsets.all(30),
      //           color: Colors.blue,
      //           child: Text('3'),
      //         )),
      //   ],
      // ),

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Text('Click'),
        backgroundColor: Colors.amber[600],
      ),
    );
  }
}
