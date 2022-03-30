import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

final FirebaseAuth auth = FirebaseAuth.instance;

class FirebaseAuthDemo extends StatefulWidget {
  FirebaseAuthDemo({Key? key}) : super(key: key);

  @override
  State<FirebaseAuthDemo> createState() => _FirebaseAuthDemoState();
}

class _FirebaseAuthDemoState extends State<FirebaseAuthDemo> {
  TextEditingController emailController = TextEditingController();

  TextEditingController passController = TextEditingController();

  String email = '';

  create() async {
    User? user = (await auth.createUserWithEmailAndPassword(
            email: emailController.text, password: passController.text))
        .user;

    email = user!.email!;
    setState(() {});
    print(user.email);
    print(user.uid);
  }

  @override
  void dispose() {
    emailController.dispose();
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: () {
              if (auth.currentUser != null) {
                auth.signOut();
              } else {
                ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                  content: Text('No one has signed in.'),
                ));
              }
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: [
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
                fillColor: Colors.black26,
                filled: true,
                prefixIcon: Icon(Icons.email, size: 30.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: passController,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'Enter your email',
                fillColor: Colors.black26,
                filled: true,
                prefixIcon: Icon(Icons.email, size: 30.0),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            MaterialButton(
              color: Colors.green,
              elevation: 20.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: const Text('LOGIN'),
              onPressed: () {
                create();
              },
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(email),
          ],
        ),
      ),
    );
  }
}
