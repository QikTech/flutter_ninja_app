// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class Loading extends StatefulWidget {

  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  //#26 HTTP
  //Async code represents action that starts now and finishes sometimes in the future
  void getTime() async {
    print('Api Fetch Begins');
    //Make Api request
    Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/Asia/Kolkata'));
    Map jsonData= jsonDecode(response.body);
    print('from jsonData $jsonData');

    // get properties from jsonData
    String datetime = jsonData['utc_datetime'];
    String offset = jsonData['utc_offset'].substring(1,3);
    print('From offset $offset, $datetime');

    //Create Date time object
    DateTime now = DateTime.parse(datetime);
    now = now.add(Duration(hours: int.parse(offset)));

    print ('from now $now');

  }
  //#26 HTTP



  // initState() RUNS ONCE buildState() IS THE ONE KEEPS UPDATING
  @override
  void initState() {
    super.initState();
    getTime();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Loading Screen')),
    );
  }
}