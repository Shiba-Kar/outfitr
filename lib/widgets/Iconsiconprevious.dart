import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconprevious extends StatelessWidget {
  final VoidCallback onTap;
  final Color color;
  final Color iconColor;
  Iconsiconprevious({
    @required this.iconColor,
    @required this.onTap,
@required  this.color,
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: onTap,
      child: Stack(
        children: <Widget>[
          Container(
            width: width / 10,
            height: width / 10,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(width / 2),
              color: color,
            ),
            child: Center(
              child: SvgPicture.string(
                _svg_obdavc,
                color: iconColor,
                height: 15,
                width: 15,
                allowDrawingOutsideViewBox: true,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_obdavc ='<svg viewBox="0.0 0.0 16.0 10.0" ><path transform="translate(0.0, 0.0)" d="M 0.2922942042350769 5.600072383880615 L 4.369946002960205 9.773072242736816 C 4.438346862792969 9.844072341918945 4.518473148345947 9.90107250213623 4.608371257781982 9.940072059631348 C 4.697291851043701 9.979072570800781 4.793052673339844 9.999072074890137 4.890768051147461 10.00007247924805 C 4.987505912780762 10.00107192993164 5.084243774414063 9.982071876525879 5.174141883850098 9.944072723388672 C 5.264039516448975 9.906072616577148 5.34514331817627 9.851072311401367 5.414520740509033 9.780072212219238 C 5.482921600341797 9.71007251739502 5.536664962768555 9.627072334289551 5.57379674911499 9.535072326660156 C 5.610928058624268 9.443072319030762 5.629494190216064 9.344072341918945 5.628517150878906 9.245072364807129 C 5.628517150878906 9.145071983337402 5.607996940612793 9.047072410583496 5.569888114929199 8.956072807312012 C 5.531778812408447 8.864072799682617 5.476081371307373 8.781072616577148 5.406703472137451 8.712072372436523 L 2.512381792068481 5.750072479248047 L 15.25247955322266 5.750072479248047 C 15.35019397735596 5.752072334289551 15.44693279266357 5.734072208404541 15.53780746459961 5.697072505950928 C 15.62770557403564 5.660072326660156 15.7107629776001 5.605072498321533 15.78014087677002 5.535072326660156 C 15.84951877593994 5.465072154998779 15.90521621704102 5.382072448730469 15.94234848022461 5.290072441101074 C 15.9804573059082 5.19807243347168 16 5.100072383880615 16 5.000072479248047 C 16 4.90007209777832 15.9804573059082 4.801072120666504 15.94234848022461 4.71007251739502 C 15.90521621704102 4.618072509765625 15.84951877593994 4.534072399139404 15.78014087677002 4.464072227478027 C 15.7107629776001 4.395072460174561 15.62770557403564 4.340072154998779 15.53780746459961 4.303072452545166 C 15.44693279266357 4.266072273254395 15.35019397735596 4.248072147369385 15.25247955322266 4.250072479248047 L 2.512381792068481 4.250072479248047 L 5.406703472137451 1.288072347640991 C 5.476081371307373 1.218072295188904 5.531778812408447 1.136072278022766 5.569888114929199 1.044072389602661 C 5.607996940612793 0.9530723094940186 5.628517150878906 0.8540723323822021 5.628517150878906 0.7550723552703857 C 5.629494190216064 0.6560723185539246 5.610928058624268 0.5570723414421082 5.57379674911499 0.4650723338127136 C 5.536664962768555 0.3730723261833191 5.482921600341797 0.2900723218917847 5.414520740509033 0.2190723270177841 C 5.34514331817627 0.1490723341703415 5.264039516448975 0.09307233244180679 5.174141883850098 0.05607233196496964 C 5.084243774414063 0.01807233318686485 4.987505912780762 -0.0009276664932258427 4.890768051147461 7.233352516777813e-05 C 4.793052673339844 7.233352516777813e-05 4.697291851043701 0.02107233367860317 4.608371257781982 0.06007233262062073 C 4.518473148345947 0.09907233715057373 4.438346862792969 0.1560723334550858 4.369946002960205 0.2270723283290863 L 0.2903399169445038 4.402072429656982 C 0.2053277492523193 4.468072414398193 0.1359500139951706 4.552072525024414 0.08513814955949783 4.648072242736816 C 0.03530343621969223 4.744072437286377 0.006966049317270517 4.851072311401367 0.001103142276406288 4.96007251739502 C -0.004759765230119228 5.068072319030762 0.01282895728945732 5.177072525024414 0.0519150048494339 5.278072357177734 C 0.09197820723056793 5.380072116851807 0.1525615751743317 5.471072196960449 0.2297565340995789 5.546072483062744 C 0.249299556016922 5.565072536468506 0.2707968652248383 5.583072185516357 0.2922942042350769 5.600072383880615 Z" fill="#0c0d34" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';