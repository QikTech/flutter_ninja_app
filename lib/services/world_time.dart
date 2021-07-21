import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldTime {

  String location; // location name for the ui
  String time; // time in that location
  String flag; // url to asset flag icon
  String url; // location url for api endpoint

  WorldTime({this.location, this.flag, this.url});

   Future<void> getTime() async {

     try {
       print('Api Fetch Begins');
       //Make Api request
       Response response = await get(Uri.parse('https://worldtimeapi.org/api/timezone/$url'));
       Map jsonData = jsonDecode(response.body);
       // print('from Api Full Response = $jsonData');

       // get properties from jsonData
       String datetime = jsonData['utc_datetime'];
       String offset = jsonData['utc_offset'].substring(1,3);
       // print('From offset $offset, $datetime');

       //Create Date time object
       DateTime now = DateTime.parse(datetime);
       now = now.add(Duration(hours: int.parse(offset)));
       // print ('from now $now');

       // set time property
       time = DateFormat.jm().format(now);
     }

     catch(e){
       print('caught error: $e');
       time='could not get time data';
     }


  }

}

// WorldTime instance = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin');
