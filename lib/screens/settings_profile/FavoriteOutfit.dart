import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconbag.dart';
import 'package:outfitr/screens/settings_profile/PopupRemove.dart';

import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/GridCard.dart';
import 'package:outfitr/widgets/Iconicontick.dart';
import 'package:outfitr/widgets/Iconsiconcloseflat.dart';
import 'package:outfitr/widgets/Iconsiconedit.dart';
import 'package:outfitr/widgets/Iconsiconprevious.dart';

class FavoriteOutfit extends StatefulWidget {
  const FavoriteOutfit({Key key}) : super(key: key);

  @override
  _FavoriteOutfitState createState() => _FavoriteOutfitState();
}

class _FavoriteOutfitState extends State<FavoriteOutfit> {
  List<Color> colorList = [
    Color(0xFFBFEAF5),
    Color(0xFFBEECC4),
    Color(0xFFFFE4D9),
    Color(0xFFFFDDDD),
    Color(0xFFBFEAF5),
    Color(0xFFBEECC4),
    Color(0xFFFFE4D9),
    Color(0xFFFFDDDD),
    Color(0xFFFFE4D9),
  ];
  bool isEditMode = false;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              margin: EdgeInsets.all(width / 40),
              height: width / 10,
              width: width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  isEditMode
                      ? Iconsicontick(onTap: () {
                          setState(() {
                            isEditMode = false;
                          });
                        })
                      : Iconsiconprevious(
                         iconColor: Colors.black,
                        color: Colors.white,
                          onTap: () => Navigator.of(context).pop(),
                        ),
                  Text(
                    'FAVORITE OUTFIT',
                    style: TextStyle(
                      fontFamily: 'SFProDisplay-Semibold',
                      fontSize: width / 40,
                      color: Colors.black,
                      letterSpacing: 1.5,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  isEditMode
                      ? Iconsiconcloseflat(onTap: () {
                          setState(() {
                            isEditMode = false;
                          });
                        })
                      : Iconsiconedit(onTap: () {
                          setState(() {
                            isEditMode = true;
                          });
                        })
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // color: Colors.red,
              width: width,
              height: height / 1.09,
              child: Padding(
                padding: EdgeInsets.only(left: width / 30, right: width / 30),
                child: StaggeredGridView.countBuilder(
                  crossAxisCount: 4,
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return GridCard(
                      index: index,
                      color: colorList[index],
                      isEditMode: isEditMode,
                      onTap: () => {},
                    );
                  },
                  staggeredTileBuilder: (int index) => StaggeredTile.count(
                      2, index.isEven ? 2 : index % 3 == 1 ? 2.4 : 1),
                  mainAxisSpacing: width / 30,
                  crossAxisSpacing: width / 30,
                ),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: width,
              child: SvgPicture.asset(
                'assets/svg/blue_bg.svg',
                fit: BoxFit.fill,
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              margin: EdgeInsets.all(width / 30),
              width: width / 2,
              child: isEditMode
                  ? Hero(
                      tag: 'remove',
                      child: ButtonsPrimarybutton(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (_) => PopupRemove(),
                            ),
                          );
                        },
                        text: "Remove from favorites",
                      ),
                    )
                  : ButtonsPrimarybutton(
                      onTap: () {},
                      text: "Add more to favorites",
                    ),
            ),
          )
        ],
      ),
    );
  }
}
