import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}


class _ChooseLocationState extends State<ChooseLocation> {
  //#25 ASYNCHRONOUS CODE
  //Async code represents action that starts now and finishes sometimes in the future
  void getData() async {
    //simulate network request for a username
    String username =  await Future.delayed(Duration(seconds: 3),(){
      print('1. With 3 seconds delay');
      return 'Username = Prasad';
    });

    //simulate network request to get bio of the username
    String bio = await Future.delayed(Duration(seconds: 2),(){
      return 'Bio = Musician And egg collector';
    });

    print('$username - $bio');





  }
  //ASYNCHRONOUS CODE


  //#24 WIDGET LIFECYCLE
  // initState() RUNS ONCE buildState() IS THE ONE KEEPS UPDATING
  int counter=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init state Function Ran');

    getData();
    print('Hey there');



  }
  //WIDGET LIFECYCLE



  @override
  Widget build(BuildContext context) {
    print('build Funcation Ran');
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ElevatedButton(

      //WIDGET LIFECYCLE

      child: Text('Counter is $counter'),
        onPressed: (){
          setState(() {
            counter += 1;
          });

      //WIDGET LIFECYCLE

        },
      ),
    );
  }
}
