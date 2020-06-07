import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Iconsiconheart extends StatelessWidget {
  Iconsiconheart({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        // Adobe XD layer: 'NoPath_-_Copy_18_' (shape)
        Container(
          width: 36.0,
          height: 36.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.elliptical(18.0, 18.0)),
            color: const Color(0xfffe5e33),
          ),
        ),
        Transform.translate(
          offset: Offset(10.0, 11.0),
          child:
              // Adobe XD layer: 'icon-heart' (group)
              Stack(
            children: <Widget>[
              Transform.translate(
                offset: Offset(0.0, 0.17),
                child:
                    // Adobe XD layer: 'Path' (shape)
                    SvgPicture.string(
                  _svg_ae3yum,
                  allowDrawingOutsideViewBox: true,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

const String _svg_ae3yum =
    '<svg viewBox="0.0 0.2 17.0 14.8" ><path transform="translate(0.0, 0.17)" d="M 16.76843643188477 3.00284743309021 C 16.20623779296875 1.207656860351563 14.64210796356201 0.0007481391658075154 12.87728214263916 0.0007481391658075154 C 11.75290489196777 0.0007481391658075154 10.61893272399902 0.4398600161075592 9.765228271484375 1.206244587898254 C 9.016386032104492 1.877947568893433 8.547886848449707 3.006664514541626 8.522068023681641 3.06928277015686 C 8.514690399169922 3.090158224105835 8.507312774658203 3.109541177749634 8.499934196472168 3.125942945480347 C 8.491081237792969 3.10581374168396 8.481490135192871 3.081957340240479 8.471898078918457 3.054373502731323 C 8.451977729797363 3.006660461425781 7.983492374420166 1.877943754196167 7.234631061553955 1.205496430397034 C 6.381021499633789 0.4391118884086609 5.247124195098877 0 4.122576713562012 0 C 2.357052087783813 0 0.7944520115852356 1.206240773200989 0.2321781516075134 3.002099275588989 C -0.7623496055603027 6.17882776260376 1.476074457168579 10.08670997619629 6.218496322631836 13.45562648773193 C 6.860361099243164 13.9118766784668 7.984021186828613 14.61340999603271 8.031975746154785 14.64398384094238 C 8.161087036132813 14.72450065612793 8.327089309692383 14.76923084259033 8.499737739562988 14.76923084259033 C 8.672378540039063 14.76923084259033 8.838386535644531 14.7244987487793 8.968236923217773 14.64398384094238 C 9.016193389892578 14.61416339874268 10.13909530639648 13.91189575195313 10.78097915649414 13.45562648773193 C 15.52413749694824 10.08747291564941 17.76190185546875 6.179400444030762 16.76805305480957 3.002671718597412 L 16.76843643188477 3.00284743309021 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="10" stroke-linecap="butt" /></svg>';