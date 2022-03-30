import 'package:flutter/material.dart';

class Second extends StatelessWidget {
  const Second({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconTextContainer(
                  topLeftRadius: 20.0,
                  bottomRightRadius: 20.0,
                  label: 'ABC',
                  icon: Icons.code,
                  color: Colors.blue,
                  image: 'asset/image1.png',
                ),
                iconTextContainer(
                  topRightRadius: 20.0,
                  bottomLeftRadius: 20.0,
                  label: 'XYZ',
                  icon: Icons.star,
                  color: Colors.deepPurple,
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                iconTextContainer(
                  topRightRadius: 20.0,
                  bottomLeftRadius: 20.0,
                  label: 'MNO',
                  icon: Icons.zoom_out_map_sharp,
                  color: Colors.purple,
                ),
                iconTextContainer(
                  topLeftRadius: 20.0,
                  bottomRightRadius: 20.0,
                  label: 'Search',
                  image: 'asset/image2.png',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Widget iconTextContainer({
  double topLeftRadius = 0,
  double topRightRadius = 0,
  double bottomRightRadius = 0,
  double bottomLeftRadius = 0,
  Color color = Colors.green,
  String label = '',
  String image = '',
  IconData icon = Icons.search,
}) {
  return Card(
    // height: 150,
    // width: 150,
    elevation: 20.0,
    shadowColor: Colors.red,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeftRadius),
        topRight: Radius.circular(topRightRadius),
        bottomLeft: Radius.circular(bottomLeftRadius),
        bottomRight: Radius.circular(bottomRightRadius),
      ),
    ),
    color: color,
    child: Container(
      height: 150,
      width: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          image == '' ? Icon(icon, size: 50.0) : Image.asset(image),

          // if (image != '') Image.asset(image),
          // if (image == '') Icon(icon, size: 50),
          Text(
            label,
            style: TextStyle(fontSize: 20.0),
          ),
        ],
      ),
    ),
  );
}
