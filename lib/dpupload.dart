import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:hpdeterminer/drawer.dart';
import 'package:hpdeterminer/main.dart';
import 'package:hpdeterminer/profile.dart';
import 'package:image_picker/image_picker.dart';
import 'package:firebase_storage/firebase_storage.dart' as firebase_storage;
import 'dart:io' as io;

import 'package:shared_preferences/shared_preferences.dart';
selector(){
  if(photoUrl==null){
    return 'https://icons.veryicon.com/png/o/miscellaneous/two-color-webpage-small-icon/user-244.png';
  }
  else {
    return photoUrl;
  }
}
class upload extends StatefulWidget {
  const upload({Key? key}) : super(key: key);

  @override
  _uploadState createState() => _uploadState();
}

class _uploadState extends State<upload> {


  // selector(){
  //   if(photoUrl==null){
  //     return 'https://icons.veryicon.com/png/o/miscellaneous/two-color-webpage-small-icon/user-244.png';
  //   }
  //   else {
  //     return photoUrl;
  //   }
  // }


  File? _imageFile=null;
  final picker = ImagePicker();
  Future pickImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);

    setState(() {
      _imageFile = File(pickedFile!.path);
    });
  }
  Future uploadImageToFirebase(BuildContext context) async {
    fileName = the_email;
    firebase_storage.Reference ref =
    firebase_storage.FirebaseStorage.instance
        .ref().child('Profile Pictures').child('/$fileName');

    final metadata = firebase_storage.SettableMetadata(
        contentType: 'image/jpeg',
        customMetadata: {'picked-file-path': fileName});
    firebase_storage.UploadTask uploadTask;
    //late StorageUploadTask uploadTask = firebaseStorageRef.putFile(_imageFile);
    uploadTask = ref.putFile(io.File(_imageFile!.path)!, metadata);

    firebase_storage.UploadTask task = await Future.value(uploadTask);
    Future.value(uploadTask).then((value) =>
    {
      print("Upload file path ${value.ref.fullPath}")
    }).onError((error, stackTrace) =>
    {
      print("Upload file path error ${error.toString()} ")
    });
    task.whenComplete(() async {

      photoUrl =
      await FirebaseStorage.instance.ref().child('Profile Pictures').child(
          fileName).getDownloadURL();
       // final prefs = await SharedPreferences.getInstance();
       // prefs.setString('save_dp_url', photoUrl);

      FirebaseFirestore.instance.collection('UserData').doc(the_email).update({
        'dp_url': photoUrl
      });
    });
    Navigator.push(context, MaterialPageRoute(builder: (context)=>profile()));
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 360,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(250.0),
                    bottomRight: Radius.circular(10.0)),
                gradient: LinearGradient(

                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight, colors: [Colors.cyan, Colors.pink])),
          ),
          Container(
            margin: const EdgeInsets.only(top: 80),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Center(
                    child: Text(
                      "Upload Profile Picture",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontStyle: FontStyle.italic),
                    ),
                  ),
                ),
                SizedBox(height: 20.0),
                Expanded(
                  child: Stack(
                    children: [
                      Container(
                        height: double.infinity,
                        margin: const EdgeInsets.only(
                            left: 30.0, right: 30.0, top: 10.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(30.0),
                          child: _imageFile != null
                              ? Image.file(_imageFile!)
                              : FlatButton(
                            child: Icon(
                              Icons.add_a_photo,
                              color: Colors.blue,
                              size: 50,
                            ),
                            onPressed: pickImage,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Stack(
                    children: [
                      Container(
                        padding:
                        const EdgeInsets.symmetric(vertical: 5.0, horizontal: 16.0),
                        margin: const EdgeInsets.only(
                            top: 30, left: 20.0, right: 20.0, bottom: 20.0),
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [Colors.cyan,Colors.pink],
                            ),
                            borderRadius: BorderRadius.circular(30.0)),
                        child: FlatButton(
                          onPressed: () => uploadImageToFirebase(context),
                          child: Text(
                            "Upload Image",
                            style: TextStyle(fontSize: 20,color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  }
