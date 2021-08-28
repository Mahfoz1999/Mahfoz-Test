import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_assignment/api%20services/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sizer/sizer.dart';

class ImagePage extends StatefulWidget {
  late String name, email, password;

  ImagePage({required this.name, required this.email, required this.password});

  @override
  _ImagePageState createState() => _ImagePageState();
}

class _ImagePageState extends State<ImagePage> {
  List _image = [];
  late File imageFile;
  final picker = ImagePicker();

  chooseImage() async {
    final pickedFile = await picker.getImage(source: ImageSource.gallery);
    if (pickedFile != null) {
      setState(() {
        _image.add(File(pickedFile.path));
        imageFile = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    var _phone = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.grey,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 10.h),
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom: 3.h),
                  child: Text('Upload Your Image'),
                ),
                _image.isEmpty
                    ? InkWell(
                        onTap: () {
                          chooseImage();
                        },
                        child: Container(
                          alignment: Alignment.centerRight,
                          width: 30.h,
                          height: 30.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.blueAccent),
                            borderRadius: BorderRadius.circular(15.0),
                            color: const Color.fromRGBO(236, 236, 236, 1),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: SvgPicture.string(
                              '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 183.6 142.8"><defs><style>.cls-1{opacity:0.2;}</style></defs><title>add photo</title><g id="Layer_2" data-name="Layer 2"><g id="Layer_1-2" data-name="Layer 1"><g class="cls-1"><path d="M171.94,0H11.66A11.66,11.66,0,0,0,0,11.66V131.14A11.66,11.66,0,0,0,11.66,142.8H171.94a11.66,11.66,0,0,0,11.66-11.66V11.66A11.66,11.66,0,0,0,171.94,0Zm0,11.66V96.44L149,75.55a8.74,8.74,0,0,0-12.06.29L113.66,99.09,67.81,44.33a8.74,8.74,0,0,0-13.33-.09L11.66,94V11.66ZM122.4,42.26a16,16,0,1,1,16,16A16,16,0,0,1,122.4,42.26Z"/></g></g></g></svg>',
                              width: 50,
                              height: 50,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    : Stack(
                        children: [
                          Container(
                            alignment: Alignment.centerRight,
                            width: 30.h,
                            height: 30.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.blueAccent),
                              borderRadius: BorderRadius.circular(15.0),
                              color: const Color.fromRGBO(236, 236, 236, 1),
                              image: DecorationImage(
                                  image: FileImage(_image[0]), fit: BoxFit.fill),
                            ),
                          ),
                          Positioned(
                            right: 5,
                            top: 5,
                            child: InkWell(
                              child: Icon(
                                Icons.remove_circle,
                                size: 20,
                                color: Colors.red,
                              ),
                              onTap: () {
                                setState(() {
                                  _image.remove(_image[0]);
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                Padding(
                  padding: EdgeInsets.only(top: 8.h),
                  child: Container(
                    width: 70.w,
                    child: TextField(
                      controller: _phone,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold)),
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 18,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 18.h, left: 25.h),
                  child: InkWell(
                    onTap: () {
                      Services.signUp(
                          name: widget.name,
                          password: widget.password,
                          email: widget.email,
                          phone: _phone.text,
                          img: imageFile);
                    },
                    child: Text(
                      'Register',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 35,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
