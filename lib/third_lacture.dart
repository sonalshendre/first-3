import 'package:flutter/material.dart';

class Third extends StatelessWidget {
  const Third({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircleAvatar(
          radius: 200,
          backgroundColor: Colors.yellow,
          backgroundImage: AssetImage('asset/image1.png'),

          // backgroundImage: NetworkImage(
          //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEpOB50Gf-839DMNoHRlYYBAWP0TN73RHsGg&usqp=CAU',
          // ),

          // child: Image.network(
          //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEpOB50Gf-839DMNoHRlYYBAWP0TN73RHsGg&usqp=CAU',
          //   fit: BoxFit.cover,
          // ),
        ),
        // child: Container(
        //   height: 300,
        //   width: 300,
        //   // child: Image.asset('asset/image2.png'),
        //   // child: Image.network(
        //   //   'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTEpOB50Gf-839DMNoHRlYYBAWP0TN73RHsGg&usqp=CAU',
        //   // fit: BoxFit.cover,
        //   // ),
        // ),
      ),
    );
  }
}

// ASSET IMAGE
// NETWORK IMAGE
// FILE IMAGE
