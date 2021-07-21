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

    // set background image
    // String bgImage = data['isDaytime'] ? 'day.png' : 'night.png';
    String bgImage = 'night.png';


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text('Home'),
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/$bgImage'),
              fit: BoxFit.cover,
            )
          ),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(0, 120, 0, 0),
            child: Column(children: [
              TextButton(
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

              Text(
                  data['time'],
                  style: TextStyle(
                    fontSize: 66,
                  ),
              ),

            ]),
          ),
        ),
      ),
    );
  }
}
