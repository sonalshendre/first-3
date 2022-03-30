// import 'package:flutter/material.dart';
//
// class DropDownDemo extends StatefulWidget {
//   const DropDownDemo({Key? key}) : super(key: key);
//
//   @override
//   _DropDownDemoState createState() => _DropDownDemoState();
// }
//
// class _DropDownDemoState extends State<DropDownDemo> {
//   String dValue = 'A+';
//
//   bool cb = false;
//
//   String r1 = 'Male';
//   String r2 = 'Female';
//   String r3 = 'Other';
//   String r4 = 'Other1';
//   String r5 = 'Other2';
//   String r6 = 'Other3';
//
//   String gender = 'Male';
//   String group2 = 'Other1';
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Row(
//             children: [
//               Checkbox(
//                 value: cb,
//                 onChanged: (val) {
//                   setState(() {
//                     cb = val!;
//                   });
//                 },
//               ),
//               GestureDetector(
//                 onTap: () {
//                   setState(() {
//                     cb = !cb;
//                   });
//                 },
//                 child: Container(
//                   width: 200,
//                   child: Text(
//                     '123456798',
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//               ),
//               Radio(
//                 value: r1,
//                 groupValue: gender,
//                 onChanged: (val) {
//                   setState(() {
//                     gender = val.toString();
//                   });
//                 },
//               ),
//               Radio(
//                 value: r2,
//                 groupValue: gender,
//                 onChanged: (val) {
//                   setState(() {
//                     gender = val.toString();
//                   });
//                 },
//               ),
//               Radio(
//                 value: r3,
//                 groupValue: gender,
//                 onChanged: (val) {
//                   setState(() {
//                     gender = val.toString();
//                   });
//                 },
//               ),
//             ],
//           ),
//           Row(
//             children: [
//               Radio(
//                 value: r4,
//                 groupValue: group2,
//                 onChanged: (val) {
//                   setState(() {
//                     group2 = val.toString();
//                   });
//                 },
//               ),
//               Radio(
//                 value: r5,
//                 groupValue: group2,
//                 onChanged: (val) {
//                   setState(() {
//                     group2 = val.toString();
//                   });
//                 },
//               ),
//               Radio(
//                 value: r6,
//                 groupValue: group2,
//                 onChanged: (val) {
//                   setState(() {
//                     group2 = val.toString();
//                   });
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }
