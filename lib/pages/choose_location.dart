import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}


class _ChooseLocationState extends State<ChooseLocation> {
  //WIDGET LIFECYCLE
  // initState() RUNS ONCE buildState() IS THE ONE KEEPS UPDATING
  int counter=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print('init state Funcation Ran');
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
