import 'dart:io';

import 'package:firebase_storage/firebase_storage.dart';
import 'package:first/database.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class FireBaseDemo extends StatefulWidget {
  FireBaseDemo({Key? key}) : super(key: key);

  @override
  State<FireBaseDemo> createState() => _FireBaseDemoState();
}

class _FireBaseDemoState extends State<FireBaseDemo> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  String selectedDataKey = '';
  FirebaseStorage storage = FirebaseStorage.instance;
  String imageURL = '';

  uploadImage() async {

    /// PICK IMAGE FROM GALLERY
    final ImagePicker _picker = ImagePicker();
    XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    /// CREATE FOLDER and FILE
    Reference reference =
        storage.ref().child("images/${DateTime.now().toString()}");

    /// UPLOAD IMAGE
    UploadTask uploadTask = reference.putFile(File(image!.path));

    /// GET URL
    await (await uploadTask).ref.getDownloadURL().then((value) {
      print('========$value');
      imageURL = value;
    });

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            TextField(controller: emailController),
            TextField(controller: passController),
            MaterialButton(
                onPressed: () {
                  uploadImage();
                },
                child: Text('UPLOAD IMAGE')),
            MaterialButton(
                onPressed: () {
                  MyDataBase.insertData(
                    emailController.text,
                    passController.text,
                      imageURL,
                  ).then((value) {
                    setState(() {});
                  });
                },
                child: Text('Insert')),
            MaterialButton(
                onPressed: () {
                  MyDataBase.updateDate(
                    emailController.text,
                    passController.text,
                    selectedDataKey,
                  ).then((value) {
                    setState(() {});
                  });
                },
                child: Text('Update')),
            MaterialButton(onPressed: () {}, child: Text('Delete')),
            MaterialButton(
                onPressed: () {
                  MyDataBase.selectData().then((value) {
                    setState(() {});
                  });
                },
                child: Text('Select')),
            Expanded(
              child: ListView.builder(
                itemCount: MyDataBase.data.length,
                itemBuilder: (context, index) => ListTile(
                  leading: CircleAvatar(backgroundImage: NetworkImage(MyDataBase.data[index]['image']),),
                  onTap: () {
                    setState(() {
                      emailController.text = MyDataBase.data[index]['email'];
                      passController.text = MyDataBase.data[index]['pass'];
                      selectedDataKey = MyDataBase.data[index]['key'];
                    });
                  },
                  title: Text(MyDataBase.data[index]['email']),
                  subtitle: Text(MyDataBase.data[index]['pass']),
                  trailing: IconButton(
                    onPressed: () {
                      MyDataBase.deleteData(MyDataBase.data[index]['key']);
                    },
                    icon: Icon(Icons.delete),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
