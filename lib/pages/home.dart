import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: ElevatedButton(
                onPressed: () {
                  //ROUTING
                  Navigator.pushNamed(context, '/location');
                  //ROUTING
                },
                child: Text('Choose Location'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
