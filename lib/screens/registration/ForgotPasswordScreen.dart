import 'package:flutter/material.dart';

import 'package:outfitr/screens/registration/SuccessPopupScreen.dart';

import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/Iconsiconcheckmark.dart';
import 'package:outfitr/widgets/Iconsiconemail.dart';

class ForgotPasswordScreen extends StatelessWidget {
  ForgotPasswordScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xff0c0d34),
      resizeToAvoidBottomPadding: false,
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 3,
              width: width,
              child: Image.asset(
                'assets/images/bg-pattern2.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            left: 0.0,
            bottom: 1,
            child: Container(
              width: width,
              height: height / 1.3,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(60.0),
                  topRight: Radius.circular(60.0),
                ),
                color: const Color(0xffffffff),
              ),
            ),
          ),
          Positioned(
            top: height / 3.5,
            left: 0.0,
            child: Container(
              width: width,
              height: height / 1.9,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Forgot password?',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold',
                      fontSize: 28,
                      color: const Color(0xff0c0d34),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  Container(
                    width: width / 1.6,
                    child: Text(
                      'Enter the email address associated with your account',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 16,
                        color: const Color(0x800c0d34),
                        height: height / 600,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: width / 1.2,
                    height: height / 14,
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Iconsiconemail(),
                        suffixIcon: Iconsiconcheckmark(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  ButtonsPrimarybutton(text: "Reset Password", onTap: () {}),
                  SizedBox(
                    width: width,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SuccessPopupScreen())),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Medium',
                            fontSize: 15,
                            color: const Color(0xff0c0d34),
                          ),
                          children: [
                            TextSpan(
                              text: 'Don’t work? ',
                            ),
                            TextSpan(
                              text: 'Try another way',
                              style: TextStyle(
                                color: const Color(0xff2cb9b0),
                              ),
                            ),
                          ],
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
