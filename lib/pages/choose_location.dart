import 'package:flutter/material.dart';

class ChooseLocation extends StatefulWidget {

  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}


class _ChooseLocationState extends State<ChooseLocation> {




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

      // child: Text('Counter is $counter'),
      child: Text('Counter is'),

        onPressed: (){
          setState(() {
            // counter += 1;
          });

      //WIDGET LIFECYCLE

        },
      ),
    );
  }
}
