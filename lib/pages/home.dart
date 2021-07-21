import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map data = {};

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    print(data);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
          child: Column(children: [
            ElevatedButton(
              onPressed: () {
                //ROUTING
                Navigator.pushNamed(context, '/location');
                //ROUTING
              },
              child: Text('Choose Location'),
            ),

            SizedBox(height: 20),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                data['location'],
                style: TextStyle(
                  fontSize: 28,
                  letterSpacing: 2,
                ),
              ),
            ]),

            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                // data['time'],
                "Time: $data['flag']",
                style: TextStyle(
                  fontSize: 26,
                ),
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
