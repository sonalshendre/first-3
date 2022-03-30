import 'package:first/whats_up.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PayTmDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 5,
              child: SliderWidget(),
            ),
            Expanded(
              flex: 8,
              child: GridView.builder(
                itemCount: data.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 20.0,
                  crossAxisSpacing: 20.0,
                  childAspectRatio: 1.5,
                ),
                itemBuilder: (context, index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: GestureDetector(
                    onTap: () {
                      /// SNACKBAR
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text('This is my Snackbar'),
                        elevation: 20.0,
                        duration: Duration(seconds: 10),
                      ));

                      /// BOTTOM SHEET
                      // showModalBottomSheet(
                      //   context: context,
                      //   builder: (context) => Container(
                      //     height: 300,
                      //     child: Center(
                      //       child: CircleAvatar(
                      //         radius: 200,
                      //         backgroundColor: Colors.yellow,
                      //         backgroundImage: AssetImage('asset/image1.png'),
                      //       ),
                      //     ),
                      //     decoration: BoxDecoration(
                      //         color: Colors.yellow,
                      //         borderRadius: BorderRadius.circular(50.0)),
                      //   ),
                      // );

                      /// DIALOG BOX
                      // showCupertinoDialog(
                      //   context: context,
                      //   barrierDismissible: false,
                      //   builder: (context) {
                      //     // return SimpleDialog(
                      //     //
                      //     //   title:  Text('Delete Account'),
                      //     //   children: [
                      //     //     Text('Are tou sure to delete this account?'),
                      //     //     TextField(),
                      //     //     Icon(Icons.confirmation_num_outlined),
                      //     //     TextButton(
                      //     //       onPressed: () {
                      //     //         Navigator.pop(context);
                      //     //       },
                      //     //       child: Text('CANCEL'),
                      //     //     ), Switch(
                      //     //       onChanged: (val) {
                      //     //
                      //     //       },
                      //     //       value: false,
                      //     //     ),
                      //     //     CupertinoSwitch(
                      //     //       onChanged: (val) {
                      //     //
                      //     //       },
                      //     //       value: false,
                      //     //     ),
                      //     //     Slider(
                      //     //       value: 0.5,
                      //     //       onChanged: (val) {
                      //     //
                      //     //       },
                      //     //     ),
                      //     //     TextButton(
                      //     //       onPressed: () {},
                      //     //       child: Text('OK'),
                      //     //     ),
                      //     //   ],
                      //     // );
                      //
                      //     // return CupertinoAlertDialog(
                      //     //   title: Text('Delete Account'),
                      //     //   content:
                      //     //       Text('Are tou sure to delete this account?'),
                      //     //   actions: [
                      //     //     TextButton(
                      //     //       onPressed: () {
                      //     //         Navigator.pop(context);
                      //     //       },
                      //     //       child: Text('CANCEL'),
                      //     //     ),
                      //     //     TextButton(
                      //     //       onPressed: () {},
                      //     //       child: Text('OK'),
                      //     //     ),
                      //     //   ],
                      //     // );
                      //   },
                      // );
                    },
                    child: Container(
                      color: Colors.green,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(Icons.add),
                          Text(data[index]['name'].toString()),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class SliderWidget extends StatefulWidget {
  const SliderWidget({Key? key}) : super(key: key);

  @override
  _SliderWidgetState createState() => _SliderWidgetState();
}

class _SliderWidgetState extends State<SliderWidget> {
  double sliderValue = 0.5;

  bool switchValue = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Switch(
          onChanged: (val) {
            setState(() {
              switchValue = val;
            });
          },
          value: switchValue,
        ),
        CupertinoSwitch(
          onChanged: (val) {
            setState(() {
              switchValue = val;
            });
          },
          value: switchValue,
        ),
        Slider(
          value: sliderValue,
          onChanged: (val) {
            setState(() {
              print(val);
              sliderValue = val;
            });
          },
        ),
        Stack(
          children: [
            Container(
              child: Image.asset('asset/image1.png'),
              height: 160,
              width: 160,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 100,
                width: 100,
                color: Colors.deepPurple,
              ),
            ),
            Container(
              height: 80,
              width: 80,
              color: Colors.amber,
            ),
          ],
        ),
      ],
    );
  }
}
