import 'package:flutter/material.dart';
import 'package:flutter_advanced_drawer/flutter_advanced_drawer.dart';
import 'package:image_picker/image_picker.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class PackageDemo extends StatelessWidget {
  const PackageDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                      'https://wallpapershome.com/images/wallpapers/love-image-2160x3840-8k-21486.jpg',
                    ),
                    fit: BoxFit.cover,
                    colorFilter:
                        ColorFilter.mode(Colors.black54, BlendMode.dstATop)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      fillColor: Colors.white60,
                      filled: true,
                      prefixIcon: Icon(Icons.email, size: 30.0),
                    ),
                  ),
                  SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Enter your email',
                      label: Text(
                        'Email',
                        style: TextStyle(color: Colors.red),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      errorBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                        borderSide: BorderSide(color: Colors.purple, width: 2),
                      ),
                      fillColor: Colors.white60,
                      filled: true,
                      prefixIcon: Icon(Icons.email, size: 30.0),
                    ),
                  ),
                  SizedBox(height: 20),
                  Stack(
                    children: [
                      Container(
                        height: 100,
                        width: 100,
                        color: Colors.yellow,
                        margin: EdgeInsets.all(20.0),
                      ),
                      MaterialButton(
                        color: Colors.green,
                        elevation: 20.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Text('SUBMIT'),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/*

class PackegesDemo extends StatefulWidget {
  PackegesDemo({Key? key}) : super(key: key);

  @override
  State<PackegesDemo> createState() => _PackegesDemoState();
}

class _PackegesDemoState extends State<PackegesDemo> {
  File? file;

  getImage() async {
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    file = File(image!.path);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return AdvancedDrawer(
      drawer: Container(
        height: 100,
        width: 50,
        color: Colors.yellow,
      ),
      child: Scaffold(
        backgroundColor: Colors.green,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(
              radius: 100,
              backgroundImage: file == null
                  ? NetworkImage(
                  'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg')
                  : FileImage(file!) as ImageProvider,
            ),
            Center(
              child: MaterialButton(
                onPressed: () {
                  getImage();
                },
                child: Text('Pic Image'),
              ),
            ),
          ],
        ),
      ),
    );
    // return Scaffold(
    //   // body: Column(
    //   //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   //   children: [
    //   //     CircleAvatar(
    //   //       radius: 100,
    //   //       backgroundImage: file == null
    //   //           ? NetworkImage(
    //   //               'https://miro.medium.com/max/1200/1*mk1-6aYaf_Bes1E3Imhc0A.jpeg')
    //   //           : FileImage(file!) as ImageProvider,
    //   //     ),
    //   //     Center(
    //   //       child: MaterialButton(
    //   //         onPressed: () {
    //   //           getImage();
    //   //         },
    //   //         child: Text('Pic Image'),
    //   //       ),
    //   //     ),
    //   //   ],
    //   // ),
    // );
  }
}
*/
