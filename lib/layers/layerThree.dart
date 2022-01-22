import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayerThree extends StatefulWidget {
  const LayerThree({Key? key}) : super(key: key);

  @override
  _LayerThreeState createState() => _LayerThreeState();
}

class _LayerThreeState extends State<LayerThree> {
  bool isChecked = false;
  bool isHidden=false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(

        height: 584,
        width: MediaQuery.of(context).size.width,
        child: Stack(

          children: <Widget>[
            Positioned(
              left: 59,
              top: 99,
              child: Text(
                'Username',
                style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
                left: 59,
                top: 129,
                child: Container(
                  width: 310,
                  child: TextField(
                    decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'Enter User ID or Email',
                        hintStyle: TextStyle(color: Color(0xFFB4B4B4)),
                        prefixIcon: Icon(Icons.email)

                    ),
                  ),
                )),
            Positioned(
              left: 59,
              top: 199,
              child: Text(
                'Password',
                style: TextStyle(
                    fontFamily: 'Poppins-Medium',
                    fontSize: 24,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Positioned(
                left: 59,
                top: 229,
                child: Container(
                  width: 310,
                  child: TextField(
                    obscureText:  !isHidden,
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Enter Password',
                      hintStyle: TextStyle(color: Color(0xFFB4B4B4)),
                      prefixIcon: Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: isHidden ? Icon(Icons.visibility) : Icon(Icons.visibility_off),
                        onPressed: togglePasswordVisibility,
                      ),
                    ),

                  ),
                )),
            Positioned(
                right: 60,
                top: 296,
                child: Text(
                  'Forgot Password',
                  style: TextStyle(
                      color: Color(0xFF024335),
                      fontSize: 16,
                      fontFamily: 'Poppins-Medium',
                      fontWeight: FontWeight.w600),
                )),
            Positioned(
                left: 46,
                top: 361,
                child: Checkbox(
                  checkColor: Colors.black,
                  activeColor: Color(0xFF024335),
                  value: isChecked,
                  onChanged: (bool? value) {
                    isChecked = value!;
                  },
                )),
            Positioned(
                left: 87,
                top: 375,
                child: Text(
                  'Remember Me',
                  style: TextStyle(
                      color: Color(0xFF024335),
                      fontSize: 16,
                      fontFamily: 'Poppins-Medium',
                      fontWeight: FontWeight.w500),
                )),
            Positioned(
                top: 365,
                right: 60,
                child: Container(
                  width: 99,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Color(0xFF024335),
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20)),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 6.0),
                    child: Text(
                      'Sign In',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontFamily: 'Poppins-Medium',
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                )),
            Positioned(
                top: 432,
                left: 59,
                child: Container(
                  height: 0.5,
                  width: 310,
                  color: Color(0xFF707070),
                )),
          ],
        ),
      ),
    );
  }

  void togglePasswordVisibility()=> setState(()=>isHidden =! isHidden);
}