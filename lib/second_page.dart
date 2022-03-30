import 'package:first/textfield.dart';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  SecondPage();

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  Map data = {};

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Email : ${data['email']}',
            style: TextStyle(fontSize: 30.0),
          ),
          Text(
            'Pass : ${data['pass']}',
            style: TextStyle(fontSize: 30.0),
          ),
          MaterialButton(
            onPressed: () async {
              print('*****');
              data = await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => TextFieldDemo(),
                ),
              );
              print('------');
              setState(() {});
            },
            child: Text('Move to Next'),
          )
        ],
      ),
    );
  }
}

