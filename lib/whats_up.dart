import 'package:first/textfield.dart';
import 'package:first/third_lacture.dart';
import 'package:flutter/material.dart';

class WhatsUpUI extends StatefulWidget {
  const WhatsUpUI({Key? key}) : super(key: key);

  @override
  State<WhatsUpUI> createState() => _WhatsUpUIState();
}

class _WhatsUpUIState extends State<WhatsUpUI> with TickerProviderStateMixin{

  TabController? tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 50,
          color: Colors.grey,
          child: TabBar(
            controller: tabController,
            tabs: [
              Icon(Icons.email),
              Icon(Icons.confirmation_num_outlined),
              Icon(Icons.notifications),
            ],
          ),
        ),
        body: TabBarView(
          // physics: NeverScrollableScrollPhysics(),
          controller: tabController,
          children: [
            ListView.builder(
              itemCount: data.length,
              // physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => item(
                data[index]['name'],
                data[index]['lastChat'],
                data[index]['image'],
                data[index]['pickTime'],
                data[index]['onClick'],
                () async {
                  TimeOfDay? time = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );

                  String amPm = time!.periodOffset == 0 ? 'AM' : 'PM';
                  int hour = amPm == 'PM' ? time.hour - 12 : time.hour;

                  String selectedTime = hour.toString() +
                      ' : ' +
                      time.minute.toString() +
                      ' ' +
                      amPm;

                  data[index]['pickTime'] = selectedTime;
                  setState(() {});
                },
              ),
            ),
            TextFieldDemo(),
            Third(),
          ],
        ),
      ),
    );
  }
}

Widget item(
  String name,
  String lastChat,
  String image,
  String time,
  Function() onTap,
  Function() pickTime,
) {
  print('*** $time');
  return ListTile(
    onTap: onTap,
    leading: CircleAvatar(
      radius: 25,
      backgroundImage: NetworkImage(image),
    ),
    trailing: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        GestureDetector(
          child: Icon(Icons.timelapse),
          onTap: pickTime,
        ),
        Text(time),
      ],
    ),
    title: Text(name),
    subtitle: Text(lastChat),
  );
}

List<Map> data = [
  {
    'name': 'ABC',
    'lastChat': 'Hello',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('ABC'),
    'pickTime': '',
  },
  {
    'name': 'XYZ',
    'lastChat': 'Hiii',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('XYZ'),
    'pickTime': '',
  },
  {
    'name': 'PQR',
    'lastChat': 'How are you?',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('PQR'),
    'pickTime': '',
  },
  {
    'name': 'XYZ',
    'lastChat': 'Hiii',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('XYZ'),
    'pickTime': '',
  },
  {
    'name': 'PQR',
    'lastChat': 'How are you?',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('PQR'),
    'pickTime': '',
  },
  {
    'name': 'PQR',
    'lastChat': 'How are you?',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('PQR'),
    'pickTime': '',
  },
  {
    'name': 'XYZ',
    'lastChat': 'Hiii',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('XYZ'),
    'pickTime': '',
  },
  {
    'name': 'PQR',
    'lastChat': 'How are you?',
    'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVGHL9r9OucwArH8yO3rEDPryG4V3tSCBw-w&usqp=CAU',
    'onClick': () => print('PQR'),
    'pickTime': '',
  },
];
