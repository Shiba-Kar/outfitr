import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/screens/registration/LoginScreen.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/DelayedAnimation.dart';
import 'package:outfitr/widgets/Iconsiconapple.dart';
import 'package:outfitr/widgets/Iconsiconcheckmark.dart';
import 'package:outfitr/widgets/Iconsiconemail.dart';
import 'package:outfitr/widgets/Iconsiconfacebook.dart';
import 'package:outfitr/widgets/Iconsicongoogle.dart';
import 'package:outfitr/widgets/Iconsiconlock.dart';

const String _svg_i6fju5 =
    '<svg viewBox="0.0 -20.0 375.0 650.0" ><path transform="matrix(-1.0, 0.0, 0.0, -1.0, 375.0, 630.0)" d="M 0 60 C 0 26.8629150390625 26.8629150390625 0 60 0 L 315 0 C 348.1370849609375 0 375 26.8629150390625 375 60 L 375 395.074462890625 C 375 439.2572631835938 339.1827697753906 475.074462890625 295 475.074462890625 L 80 475.074462890625 C 35.81721878051758 475.074462890625 0 510.8916931152344 0 555.074462890625 L 0 650 L 0 60 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

class CreateAccountScreen extends StatelessWidget {
  CreateAccountScreen({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0xff0c0d34),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: height / 3,
              width: width,
              child: Image.asset(
                'assets/images/bg-pattern1.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: height / 9,
            left: 0.0,
            child: Container(
              height: height,
              width: width,
              child: SvgPicture.string(_svg_i6fju5, fit: BoxFit.contain),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              //color: Colors.red,
              height: height / 8,
              width: width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      SizedBox(width: width / 4),
                      DelayedAnimation(child: Iconsiconfacebook()),
                      DelayedAnimation(
                        delay: 500,
                        child: Iconsicongoogle()),
                      DelayedAnimation(
                        delay: 1000,
                        child: Iconsiconapple()),
                      SizedBox(width: width / 4),
                    ],
                  ),
                  Container(
                    width: width,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => LoginScreeen())),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Medium',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                          ),
                          children: [
                            TextSpan(
                              text: 'Already have an account? ',
                            ),
                            TextSpan(
                              text: 'Login here',
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
          Positioned(
            top: height / 4.8,
            left: 0.0,
            child: Container(
              width: width,
              height: height / 1.9,
              //color: Colors.red,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    'Create account',
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
                      'Let’s us know what your name, email, and your password',
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
                         hintText: "Enter an Email",
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
                  Container(
                    width: width / 1.2,
                    height: height / 14,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                         hintText: "Enter a Password",
                        prefixIcon: Iconsiconlock(),
                        // suffixIcon: Iconsiconcheckmark(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 1.2,
                    height: height / 14,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
                          hintText: "Re-Enter the Password",
                        prefixIcon: Iconsiconlock(),
                        // suffixIcon: Iconsiconcheckmark(),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(
                            Radius.circular(6.0),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: width / 1.1,
                    height: height / 14,
                    margin: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Text(""),
                  ),
                  ButtonsPrimarybutton(text: "Create",onTap: (){},),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
