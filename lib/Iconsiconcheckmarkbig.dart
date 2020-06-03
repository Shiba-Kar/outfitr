import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconcheckmarkbig extends StatelessWidget {
  Iconsiconcheckmarkbig({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'bg' (shape)
        Container(
          width: 80.0,
          height: 80.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(40.0, 40.0)),
            color: const Color(0x1a2cb9b0),
          ),
        ),
        Transform.translate(
          offset: Offset(29.0, 32.0),
          child:
              // Adobe XD layer: 'icon-check-mark' (shape)
              SvgPicture.string(
            _svg_5inyw1,
            allowDrawingOutsideViewBox: true,
          ),
        ),
      ],
    );
  }
}

const String _svg_5inyw1 =
    '<svg viewBox="29.0 32.0 22.0 16.5" ><path transform="translate(29.0, 32.0)" d="M 19.95087051391602 5.329017639160156 L 13.73755741119385 11.79458713531494 C 12.43476581573486 13.14826011657715 11.13686275482178 14.50193309783936 9.841403961181641 15.85306167602539 C 9.012799263000488 16.71564674377441 7.602459907531738 16.71564674377441 6.768966674804688 15.85306167602539 C 6.514763355255127 15.58588886260986 6.260560035705566 15.32126140594482 6.011245250701904 15.05663394927979 C 4.212268829345703 13.1813383102417 2.418180465698242 11.31113243103027 0.6216481328010559 9.433292388916016 C -0.2362877726554871 8.542718887329102 -0.1776254922151566 7.140700340270996 0.6216481328010559 6.237403392791748 C 1.413589000701904 5.336650848388672 2.889923095703125 5.40026330947876 3.694085121154785 6.237403392791748 C 3.950732707977295 6.502031326293945 4.204936027526855 6.766658782958984 4.454250812530518 7.031286716461182 C 5.739932537078857 8.369692802429199 7.025614261627197 9.715732574462891 8.30640697479248 11.05413818359375 C 10.34247779846191 8.934571266174316 12.37365913391113 6.822638034820557 14.4072847366333 4.703071117401123 L 18.30343818664551 0.64714115858078 C 19.16137313842773 -0.2459776550531387 20.5081615447998 -0.1849097013473511 21.37587547302246 0.64714115858078 C 22.23869895935059 1.479192018508911 22.17759323120117 3.010979890823364 21.3734302520752 3.848119735717773 C 20.90168762207031 4.339207649230957 20.4226131439209 4.837929248809814 19.95087051391602 5.329017639160156 Z" fill="#2cb9b0" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';