import 'package:firebase_database/firebase_database.dart';

class MyDataBase {
  static List<Map> data = [];
  static List<Map> searchData = [];

  static DatabaseReference db = FirebaseDatabase.instance.ref('students');

  static Future insertData(String email, String pass, String imageURl) async {
    String key = db.push().key!;

    db.child(key).set({
      'email': email,
      'pass': pass,
      'image': imageURl,
      'key': key,
    }).then((value) {
      selectData();
    });
  }

  static Future updateDate(String email, String pass, String key) async {
    db.child(key).update({
      'email': email,
      'pass': pass,
      'key': key,
    }).then((value) {
      selectData();
    });
  }
  

  static deleteData(String key) {
    db.child(key).remove();
  }

  static Future selectData() async {
    Map temp = {};
    db.once().then((value) {
      temp = value.snapshot.value as Map;
      data.clear();
      temp.forEach((key, value) {
        data.add(value);
      });
    });
  }
}

static SreachSelect(String text){
 Map result = {};
    db.child(key).once().then((value) {
      result = value.snapshot.value as Map;
      result.clear();
      result.forEach((key, value) {
      
        if()
        
        }
      });
    }); 
}