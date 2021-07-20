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
  void getData() async {

    // Get API Response
    Response response = await get(Uri.parse('https://jsonplaceholder.typicode.com/todos/1'));
    Map jsonData= jsonDecode(response.body);
    print(jsonData);
    print(jsonData['title']);

  }
  //#26 HTTP



  // initState() RUNS ONCE buildState() IS THE ONE KEEPS UPDATING
  @override
  void initState() {
    super.initState();
    getData();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Text('Loading Screen')),
    );
  }
}