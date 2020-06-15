import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

const String _svg_wo8q26 =
    '<svg viewBox="31.0 25.0 18.0 31.0" ><path transform="translate(31.0, 25.0)" d="M 7.586100101470947 30.41370010375977 C 7.013700008392334 29.84130096435547 6.842700004577637 28.9818000793457 7.153200149536133 28.23390007019043 C 7.460999965667725 27.48600006103516 8.191800117492676 27 9 27 C 9.531000137329102 27 10.03950023651123 27.21059989929199 10.41390037536621 27.58590126037598 C 10.78919982910156 27.96120071411133 10.99980068206787 28.46880149841309 10.99980068206787 28.99980163574219 C 10.99980068206787 29.8080005645752 10.51380062103271 30.5388011932373 9.765900611877441 30.84749984741211 C 9.518213272094727 30.95033073425293 9.258378028869629 31.00025367736816 9.000692367553711 31.00024032592773 C 8.480288505554199 31.00021553039551 7.968934535980225 30.79653549194336 7.586100101470947 30.41370010375977 Z M 7.416900157928467 21.40920066833496 C 6.993000030517578 21.01049995422363 6.751800060272217 20.46059989929199 6.747300148010254 19.88459968566895 C 6.742800235748291 18.40500068664551 7.155900001525879 16.95330047607422 7.935300350189209 15.68880081176758 C 8.71560001373291 14.42339992523193 9.835200309753418 13.39380073547363 11.17260074615479 12.71250057220459 C 12.87540054321289 11.78910064697266 13.78260040283203 9.90000057220459 13.4217004776001 8.023500442504883 C 13.06620025634766 6.238800048828125 11.64510059356689 4.843800067901611 9.828900337219238 4.494600296020508 C 8.513100624084473 4.250699996948242 7.153200149536133 4.598100185394287 6.123600006103516 5.43690013885498 C 5.093100070953369 6.27839994430542 4.496399879455566 7.524899959564209 4.498199939727783 8.840700149536133 C 4.498199939727783 10.06110000610352 3.492000102996826 11.04930019378662 2.249099969863892 11.04930019378662 C 1.006200075149536 11.04930019378662 0 10.06110000610352 0 8.840700149536133 C -0.001800000085495412 6.219900131225586 1.181699991226196 3.732300043106079 3.231000185012817 2.052000045776367 C 5.280300140380859 0.3717000186443329 7.98390007019043 -0.3267000019550323 10.61100006103516 0.1431000083684921 L 10.61009979248047 0.13230000436306 C 13.06350040435791 0.5706000328063965 15.22259998321533 1.987200021743774 16.57170104980469 4.050000190734863 C 17.91990089416504 6.110100269317627 18.33749961853027 8.627400398254395 17.72280120849609 11.00160026550293 C 17.10720062255859 13.37670040130615 15.51690006256104 15.39360046386719 13.33170032501221 16.57170104980469 C 12.10410022735596 17.15579986572266 11.30220031738281 18.3528003692627 11.2455005645752 19.69020080566406 C 11.25180053710938 20.93040084838867 10.25730037689209 21.95100021362305 8.996399879455566 21.99870109558105 C 8.969359397888184 21.99969673156738 8.942429542541504 22.00018882751465 8.915477752685547 22.00018692016602 C 8.35755729675293 22.00016975402832 7.821266174316406 21.78781127929688 7.416900157928467 21.40920066833496 Z" fill="#2cb9b0" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';

class Iconsiconquestionmark extends StatelessWidget {
  Iconsiconquestionmark({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      height: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(width/2)),
        color: const Color(0x1a2cb9b0),
      ),
      child: Center(
        child: SvgPicture.string(
          _svg_wo8q26,
          allowDrawingOutsideViewBox: true,
        ),
      ),
    );
  }
}