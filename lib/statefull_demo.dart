import 'package:flutter/material.dart';
/*

class Lecture3 extends StatefulWidget {
  @override
  State<Lecture3> createState() {
    return Lecture3State();
  }
}

class Lecture3State extends State<Lecture3> {
  int i = 0;

  Color color = Colors.green;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              FloatingActionButton(
                child: Icon(Icons.remove),
                onPressed: () {
                  setState(() {
                    if (i == 0)
                      i = 0;
                    else
                      i--;

                    print(i);
                  });
                },
              ),
              Text(
                i.toString(),
                style: TextStyle(fontSize: 50.0),
              ),
              FloatingActionButton(
                child: Icon(Icons.add),
                onPressed: () {
                  setState(() {
                    i++;
                    print(i);
                  });
                },
              ),
            ],
          ),
          MaterialButton(
            color: color,
            elevation: 20.0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text('SUBMIT'),
            onPressed: () {
              setState(() {
                color = Colors.purple;
              });
            },
          ),
          TextButton(
            onPressed: () {},
            child: Text('Submit'),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.movie),
          ),
          BackButton(
            onPressed: () {},
          ),
          CloseButton(
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('ABC'),
          ),
        ],
      ),
    );
  }
}
*/

// class Lecture3 extends StatelessWidget {
//   Lecture3({Key? key}) : super(key: key);
//
//   int i = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       floatingActionButton: FloatingActionButton(onPressed: () {
//         i++;
//         print(i);
//       }),
//       body: Center(
//         child: Text(i.toString(),style: TextStyle(fontSize: 50.0),),
//       ),
//     );
//   }
// }
