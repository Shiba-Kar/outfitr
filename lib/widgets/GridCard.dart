import 'package:flutter/material.dart';
import 'package:outfitr/Iconsiconcheckmarkbig.dart';
import 'package:outfitr/Iconsiconunselected.dart';
import 'package:outfitr/widgets/DelayedAnimation.dart';
import 'package:outfitr/widgets/Iconsiconcheckmark.dart';

class GridCard extends StatefulWidget {
  final index;
  final bool isEditMode;
  final Color color;
  final VoidCallback onTap;
  GridCard({
    @required this.index,
    @required this.color,
    @required this.isEditMode,
    @required this.onTap,
    Key key,
  }) : super(key: key);

  @override
  _GridCardState createState() => _GridCardState();
}

class _GridCardState extends State<GridCard> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected=isSelected?false:true;
        });
      },
      child: DelayedAnimation(
        delay: widget.index * 300,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(
                  Radius.circular(width / 80),
                ),
                color: widget.color,
              ),
            ),
            Positioned(
              top: width / 50,
              right: width / 50,
              child: widget.isEditMode
                  ? isSelected
                      ? Container(
                       // color: Colors.orange,
                          height: width / 11,
                          width: width / 11,
                          child: Iconsiconcheckmark(),
                        )
                      : Container(
                         // color: Colors.red,
                          height: width / 25,
                          width: width / 25,
                          child: Iconsiconunselected(),
                        )
                  : Container(),
            ),
          ],
        ),
      ),
    );
  }
}
