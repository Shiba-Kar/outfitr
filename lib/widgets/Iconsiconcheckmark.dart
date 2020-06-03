import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconcheckmark extends StatelessWidget {
  Iconsiconcheckmark({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
     
      height: height/40,
      width: width/40,
      margin: const EdgeInsets.all(10.0),
      child: Stack(
        children: <Widget>[
          // Adobe XD layer: 'bg' (shape)
          Align(
            alignment: Alignment.centerRight,
            child: Container(
              width: width / 16,
              height: height / 30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(100.0, 100.0)),
                color: const Color(0xff2cb9b0),
              ),
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: height / 40,
              width: width / 40,
              child: SvgPicture.string(
                _svg_ftic2j,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_ftic2j =
    '<svg viewBox="7.0 8.0 6.0 4.3" ><path transform="translate(7.0, 8.0)" d="M 5.441146373748779 1.384160399436951 L 3.746606349945068 3.063529014587402 C 3.391299724578857 3.415132522583008 3.037326097488403 3.766735792160034 2.684019088745117 4.117678165435791 C 2.458036184310913 4.341726303100586 2.073398113250732 4.341726303100586 1.846081852912903 4.117678165435791 C 1.776753664016724 4.048283100128174 1.707425475120544 3.979548454284668 1.639430522918701 3.910813808441162 C 1.148800611495972 3.423724174499512 0.6595037579536438 2.937956571578979 0.1695403903722763 2.45020604133606 C -0.06444212049245834 2.2188880443573 -0.04844331741333008 1.854727268218994 0.1695403903722763 1.620104789733887 C 0.3855242729187012 1.386143088340759 0.7881608605384827 1.402665853500366 1.007477760314941 1.620104789733887 C 1.077472567558289 1.688839197158813 1.146800756454468 1.75757372379303 1.214795589447021 1.826308250427246 C 1.565436124801636 2.173946142196655 1.91607654094696 2.523566722869873 2.265383720397949 2.871204614639282 C 2.820675611495972 2.320667743682861 3.374634265899658 1.772113680839539 3.929259538650513 1.221576929092407 L 4.991846561431885 0.1680886149406433 C 5.225829124450684 -0.06389030069112778 5.593135356903076 -0.04802849516272545 5.829783916473389 0.1680886149406433 C 6.065099716186523 0.3842057287693024 6.048434257507324 0.7820726633071899 5.829117298126221 0.9995115995407104 C 5.700460433959961 1.127066969871521 5.569803714752197 1.25660502910614 5.441146373748779 1.384160399436951 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';
