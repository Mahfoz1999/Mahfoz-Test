import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_assignment/imagePage.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _email = TextEditingController();
    var _name = TextEditingController();
    var _password = TextEditingController();
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromSize(
            bounds: Rect.fromLTWH(54.0, 743.0, 52.0, 27.0),
            size: Size(375.0, 812.0),
            pinRight: true,
            pinTop: true,
            pinBottom: true,
            child: Text(
              'Login',
              style: TextStyle(
                fontFamily: 'Segoe UI',
                fontSize: 20,
                color: const Color(0xff000000),
                fontWeight: FontWeight.w700,
                decoration: TextDecoration.underline,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(0.0, 0.0, 375.9, 654.0),
            size: Size(375.0, 812.0),
            pinLeft: true,
            pinRight: true,
            fixedHeight: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 376.0, 640.0),
                  size: Size(375.9, 654.0),
                  pinLeft: true,
                  pinRight: true,
                  pinTop: true,
                  pinBottom: true,
                  child: Stack(
                    children: <Widget>[
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.0, 0.0, 82.7, 183.7),
                        size: Size(376.0, 640.0),
                        pinLeft: true,
                        pinTop: true,
                        fixedWidth: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_u3jley,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.3, 0.0, 375.7, 459.3),
                        size: Size(376.0, 640.0),
                        pinLeft: true,
                        pinRight: true,
                        pinTop: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_vzzqiq,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Pinned.fromSize(
                        bounds: Rect.fromLTWH(0.3, 275.1, 375.7, 364.9),
                        size: Size(376.0, 640.0),
                        pinLeft: true,
                        pinRight: true,
                        pinBottom: true,
                        fixedHeight: true,
                        child: SvgPicture.string(
                          _svg_b0tjbb,
                          allowDrawingOutsideViewBox: true,
                          fit: BoxFit.fill,
                        ),
                      ),
                    ],
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(195.9, 583.0, 162.0, 71.0),
                  size: Size(375.9, 654.0),
                  pinRight: true,
                  pinBottom: true,
                  fixedWidth: true,
                  fixedHeight: true,
                  child: InkWell(
                    onTap: () {
                      Get.to(ImagePage(name: _name.text, email: _email.text, password: _password.text));
                    },
                    child: Stack(
                      children: <Widget>[
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(90.0, 0.0, 72.0, 71.0),
                          size: Size(162.0, 71.0),
                          pinRight: true,
                          pinTop: true,
                          pinBottom: true,
                          fixedWidth: true,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.all(
                                  Radius.elliptical(9999.0, 9999.0)),
                              color: const Color(0xfffae685),
                            ),
                          ),
                        ),
                        Pinned.fromSize(
                          bounds: Rect.fromLTWH(0.0, 12.0, 160.0, 47.0),
                          size: Size(162.0, 71.0),
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
                      ],
                    ),
                  ),
                ),
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(57.0, 114.0, 163.0, 112.0),
                  size: Size(375.9, 654.0),
                  child: Text(
                    'Create\nAccount',
                    style: TextStyle(
                      fontFamily: 'Segoe UI',
                      fontSize: 42,
                      color: const Color(0xffffffff),
                      fontWeight: FontWeight.w700,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromSize(
            bounds: Rect.fromLTWH(65.0, 318.0, 100.0, 176.0),
            size: Size(375.0, 812.0),
            fixedWidth: true,
            fixedHeight: true,
            pinTop: true,
            child: Stack(
              children: <Widget>[
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 77.0, 260.0, 24.0),
                  size: Size(100.0, 176.0),
                  child: TextField(
                    controller: _email,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        hintText: 'Email',
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
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 0.0, 260.0, 24.0),
                  size: Size(100.0, 176.0),
                  child: TextField(
                    controller: _name,
                    decoration: InputDecoration(
                        hintText: 'Name',
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
                Pinned.fromSize(
                  bounds: Rect.fromLTWH(0.0, 152.0, 260.0, 24.0),
                  size: Size(100.0, 176.0),
                  child: TextField(
                    controller: _password,
                    decoration: InputDecoration(
                        hintText: 'Password',
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_u3jley =
    '<svg viewBox="-1.1 0.0 82.7 183.7" ><path  d="M 81.65662384033203 0 L -1.074413061141968 183.7274475097656 L -1.074413061141968 0 L 81.65662384033203 0 Z" fill="#fe5187" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_vzzqiq =
    '<svg viewBox="-0.8 0.0 375.7 459.3" ><path  d="M 74.85797119140625 0 L 374.9255981445313 0 L 374.9255981445313 276.2362060546875 L -0.7946956753730774 459.3341064453125 L -0.7946956753730774 179.6012268066406 L 74.85797119140625 0 Z" fill="#36506b" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_b0tjbb =
    '<svg viewBox="-0.8 275.1 375.7 364.9" ><path transform="translate(0.0, -0.52)" d="M 374.9255981445313 275.6004333496094 L -0.7946956753730774 458.6983642578125 L -0.7946956753730774 559.1478271484375 L 374.9255981445313 640.5247192382813 L 374.9255981445313 275.6004333496094 Z" fill="#3ec1c9" stroke="#707070" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
