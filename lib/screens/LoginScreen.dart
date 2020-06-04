import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/screens/ForgotPasswordScreen.dart';
import 'package:outfitr/screens/CreateAccountScreen.dart';
import 'package:outfitr/widgets/Iconsiconemail.dart';
import 'package:outfitr/widgets/Iconsiconlock.dart';
import 'package:outfitr/widgets/iconsiconcheckmark.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/Iconsiconapple.dart';
import 'package:outfitr/widgets/Iconsicongoogle.dart';
import 'package:outfitr/widgets/Iconsiconfacebook.dart';

class LoginScreeen extends StatefulWidget {
  LoginScreeen({
    Key key,
  }) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<LoginScreeen> {
  bool checkbox = true;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const String _svg_zaidlg =
        '<svg viewBox="0.0 -10.0 375.0 634.0" ><path transform="translate(0.0, 624.0)" d="M 0 -60 C 0 -26.8629150390625 26.8629150390625 1.319777620523155e-14 60 1.319777620523155e-14 L 315 1.319777620523155e-14 C 348.1370849609375 1.319777620523155e-14 375 -26.8629150390625 375 -60 L 375 -381.7907104492188 C 375 -425.9734802246094 339.1827697753906 -461.7907104492188 295 -461.7907104492188 L 80 -461.7907104492188 C 35.81721878051758 -461.7907104492188 0 -497.60791015625 0 -541.7907104492188 L 0 -634 L 0 -60 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: const Color(0xff0c0d34),
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              color: Colors.red,
              height: height / 2.67,
              width: width,
              child: Image.asset(
                'assets/images/bg-pattern.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            bottom: height / 10,
            left: 0.0,
            child: Container(
              // padding: const EdgeInsets.only(bottom: 150),
              //color: Colors.red,
              height: height,
              width: width,
              child: SvgPicture.string(
                _svg_zaidlg,
                fit: BoxFit.contain,
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
                    'Welcome back',
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
                      'Use your credentials below and login to your account',
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
                  Container(
                    width: width / 1.2,
                    height: height / 14,
                    child: TextFormField(
                      obscureText: true,
                      decoration: InputDecoration(
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
                    child: CheckboxListTile(
                      value: checkbox,
                      controlAffinity: ListTileControlAffinity.leading,
                      secondary: GestureDetector(
                        onTap: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => ForgotPasswordScreen())),
                        child: Text(
                          'Forgot password',
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Medium',
                            fontSize: 15,
                            color: const Color(0xff2cb9b0),
                          ),
                          textAlign: TextAlign.right,
                        ),
                      ),
                      onChanged: (value) {
                        print(value);
                        setState(() {
                          checkbox = value;
                        });
                      },
                      title: Text(
                        'Remember me',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Regular',
                          fontSize: 15,
                          color: const Color(0xff0c0d34),
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
                  ),
                  ButtonsPrimarybutton(text: "Log into your account"),
                ],
              ),
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
                      Iconsiconfacebook(),
                      Iconsicongoogle(),
                      Iconsiconapple(),
                      SizedBox(width: width / 4),
                    ],
                  ),
                  Container(
                    width: width,
                    child: GestureDetector(
                      onTap: () => Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => CreateAccountScreen())),
                      child: Text.rich(
                        TextSpan(
                          style: TextStyle(
                            fontFamily: 'SFProDisplay-Medium',
                            fontSize: 15,
                            color: const Color(0xffffffff),
                          ),
                          children: [
                            TextSpan(
                              text: 'Don’t have an account? ',
                            ),
                            TextSpan(
                              text: 'Sign Up here',
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
