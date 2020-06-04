import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconcheckmarkbig.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/Iconsiconclose.dart';

class SuccessPopup extends StatelessWidget {
  SuccessPopup({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    /*  return Scaffold(
      backgroundColor: const Color(0xff0c0d34),
      body: Stack(
        children: <Widget>[
          Transform(
            transform: Matrix4(0.0, -1.0, 0.0, 0.0, 1.0, 0.0, 0.0, 0.0, 0.0,
                0.0, 1.0, 0.0, 375.5, 249.5, 0.0, 1.0),
            child:
                // Adobe XD layer: 'bg-pattern' (group)
                Stack(
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0.72, -375.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 249.0,
                    height: 375.0,
                    color: const Color(0xff0c0d34),
                  ),
                ),
                Transform.translate(
                  offset: Offset(124.72, -63.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff111747),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -63.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff111747),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -188.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff111747),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -250.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xffffc641),
                  ),
                ),
                Transform.translate(
                  offset: Offset(186.72, -188.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff06818e),
                  ),
                ),
                Transform.translate(
                  offset: Offset(124.72, -188.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff06818e),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -375.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xffffc641),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -188.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff111747),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -312.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xffffffff),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -126.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff2cb9b0),
                  ),
                ),
                Transform.translate(
                  offset: Offset(124.72, -188.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(540.0),
                        bottomRight: Radius.circular(540.0),
                      ),
                      color: const Color(0xff111747),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(124.72, -375.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(540.0),
                        bottomRight: Radius.circular(540.0),
                      ),
                      color: const Color(0xfffe5e33),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(124.72, -312.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(540.0),
                        bottomRight: Radius.circular(540.0),
                      ),
                      color: const Color(0xff2cb9b0),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -63.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10000.0),
                        bottomLeft: Radius.circular(10000.0),
                      ),
                      color: const Color(0xff2cb9b0),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(124.72, -126.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10000.0),
                        bottomLeft: Radius.circular(10000.0),
                      ),
                      color: const Color(0xfffe5e33),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -126.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6000.0),
                        bottomRight: Radius.circular(1000000.0),
                        bottomLeft: Radius.circular(1000000.0),
                      ),
                      color: const Color(0xffff87a2),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -375.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(1000000.0),
                        bottomLeft: Radius.circular(1000000.0),
                      ),
                      color: const Color(0xffff87a2),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -156.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_6p0z32,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(124.72, -250.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(1000000.0),
                        bottomRight: Radius.circular(10000.0),
                        bottomLeft: Radius.circular(10000.0),
                      ),
                      color: const Color(0xff2cb9b0),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -250.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_mgscvd,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -250.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xffffc641),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -312.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6000.0),
                        topRight: Radius.circular(6000.0),
                      ),
                      color: const Color(0xffffc641),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -32.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_pt3o8k,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(186.72, -63.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    color: const Color(0xff06818e),
                  ),
                ),
                Transform.translate(
                  offset: Offset(218.72, -188.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_3o1ehg,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(186.72, -312.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100000.0),
                      color: const Color(0xffffc641),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(186.72, -250.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(540.0),
                        bottomLeft: Radius.circular(540.0),
                      ),
                      color: const Color(0xffff87a2),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(62.72, -308.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_m5hh7l,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -312.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100000.0),
                      color: const Color(0xff2cb9b0),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -250.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100000.0),
                      color: const Color(0xfffe5e33),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(16.72, -343.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_2d8wwy,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -63.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      Container(
                    width: 63.0,
                    height: 63.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(6000.0),
                        topRight: Radius.circular(6000.0),
                      ),
                      color: const Color(0xff06818e),
                    ),
                  ),
                ),
                Transform.translate(
                  offset: Offset(0.72, -282.0),
                  child:
                      // Adobe XD layer: 'Shape' (shape)
                      SvgPicture.string(
                    _svg_80jvky,
                    allowDrawingOutsideViewBox: true,
                  ),
                ),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, -10.0),
            child:
                // Adobe XD layer: 'bg' (shape)
                SvgPicture.string(
              _svg_pvccyq,
              allowDrawingOutsideViewBox: true,
            ),
          ),
          Transform.translate(
            offset: Offset(158.0, 702.0),
            child:
                // Adobe XD layer: 'Icons/icon-close' (component)
                Container(),
          ),
          Transform.translate(
            offset: Offset(35.0, 439.0),
            child:
                // Adobe XD layer: 'Close this window an' (text)
                SizedBox(
              width: 305.0,
              height: 24.0,
              child: Text(
                'Close this window and login again',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Regular',
                  fontSize: 16,
                  color: const Color(0xb20c0d34),
                  height: 1.5,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(28.5, 356.0),
            child:
                // Adobe XD layer: 'Your password was su' (text)
                SizedBox(
              width: 320.0,
              child: Text(
                'Your password was\nsuccessfully changed',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Semibold',
                  fontSize: 28,
                  color: const Color(0xff0c0d34),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(148.0, 246.0),
            child:
                // Adobe XD layer: 'Icons/icon-check-ma…' (component)
                Iconsiconcheckmarkbig(),
          ),
          Transform.translate(
            offset: Offset(65.0, 504.0),
            child:
                // Adobe XD layer: 'Buttons/Primary-but…' (component)
                ButtonsPrimarybutton(text: "Login again",),
          ),
        ],
      ),
    ); */
   const String _svg_zaidlg =
        '<svg viewBox="0.0 -10.0 375.0 634.0" ><path transform="translate(0.0, 624.0)" d="M 0 -60 C 0 -26.8629150390625 26.8629150390625 1.319777620523155e-14 60 1.319777620523155e-14 L 315 1.319777620523155e-14 C 348.1370849609375 1.319777620523155e-14 375 -26.8629150390625 375 -60 L 375 -381.7907104492188 C 375 -425.9734802246094 339.1827697753906 -461.7907104492188 295 -461.7907104492188 L 80 -461.7907104492188 C 35.81721878051758 -461.7907104492188 0 -497.60791015625 0 -541.7907104492188 L 0 -634 L 0 -60 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
  final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
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
              child: SvgPicture.string(
                _svg_zaidlg,
                fit: BoxFit.contain,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
                padding: EdgeInsets.all(width/15), child: Iconsiconclose()),
          )
        ],
      ),
    );
  }
}
