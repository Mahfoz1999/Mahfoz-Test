import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_assignment/SignUp.dart';
import 'package:flutter_assignment/api%20services/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';

class LogIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _email=TextEditingController();
    var _password=TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.1, -2.6, 376.0, 404.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(-0.1, -0.1, 376.1, 403.9),
                  size: Size(376.0, 404.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(58.0, 93.2, 317.1, 310.6),
                        size: Size(376.1, 403.9),
                        pinRight: true,
                        pinBottom: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_bdw00z,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 2.9, 197.1, 113.0),
                        size: Size(376.1, 403.9),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_8hqo69,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.1, 0.0, 376.0, 272.4),
                        size: Size(376.1, 403.9),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_drjkan,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(51.0, 86.0, 114.0, 106.0),
                  size: Size(376.0, 404.0),
                  child: Text(
                    'Hello\nAgain!',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 40,
                      color: const Color(0xffffffff),
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(93.0, 403.0, 240.0, 24.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: TextField(
              controller: _email,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                  hintText: 'Email',
                  hintStyle: TextStyle(color: Color(0xff949191))),
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 18,
                color: const Color(0xff949191),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(93.0, 477.0, 240.0, 24.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            pinTop: true,
            fixedHeight: true,
            child: TextField(
              controller: _password,
              decoration: InputDecoration(
                  hintText: 'Password',
                  hintStyle: TextStyle(color: Color(0xff949191))),
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 18,
                color: const Color(0xff949191),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(228.0, 537.0, 121.0, 71.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            fixedWidth: true,
            fixedHeight: true,
            child: InkWell(
              onTap: ()async{
                if(_email.text.isNotEmpty && _password.text.isNotEmpty){
                Services.logIn(_email.text, _password.text);}
              },
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(49.0, 0.0, 72.0, 71.0),
                    size: Size(121.0, 71.0),
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    fixedWidth: true,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius:
                            BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                        color: const Color(0xfffae685),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 7.0, 116.0, 51.0),
                    size: Size(121.0, 71.0),
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontFamily: 'Segoe UI',
                        fontSize: 38,
                        color: const Color(0xff000000),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(45.0, 746.0, 70.0, 24.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: InkWell(
              onTap: () {
                Get.to(SignUp());
              },
              child: Text(
                'Register',
                style: TextStyle(
                  fontFamily: 'Segoe UI',
                  fontSize: 18,
                  color: const Color(0xff000000),
                  fontWeight: FontWeight.w700,
                  decoration: TextDecoration.underline,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(216.0, 746.0, 142.0, 24.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Text(
              'Forgot Password',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 18,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_bdw00z =
    '<svg viewBox="58.0 90.6 317.1 310.6" ><path transform="translate(-90.27, -48.54)" d="M 465.34228515625 139.0868988037109 L 148.2256469726563 285.215576171875 L 465.34228515625 449.7148132324219 L 465.34228515625 139.0868988037109 Z" fill="#3ec1c9" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_8hqo69 =
    '<svg viewBox="0.0 0.3 197.1 113.0" ><path transform="translate(2.15, 0.25)" d="M 195.0007629394531 0 L -2.148867130279541 112.9645843505859 L -2.148867130279541 0 L 195.0007629394531 0 Z" fill="#fd5286" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_drjkan =
    '<svg viewBox="0.1 -2.7 376.0 272.4" ><path transform="translate(0.15, -3.75)" d="M 0 105.2426834106445 L 188 1.07443368434906 L 376 1.07443368434906 L 376 142.1356048583984 L 0 273.4309997558594 L 0 105.2426834106445 Z" fill="#36506b" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
