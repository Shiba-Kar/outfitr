import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:outfitr/Iconsiconbag.dart';
import 'package:outfitr/screens/configurations/ConfigurationMain.dart';
import 'package:outfitr/widgets/ButtonsPrimarybutton.dart';
import 'package:outfitr/widgets/ButtonsSecondarybutton.dart';
import 'package:outfitr/widgets/CustomChip.dart';
import 'package:outfitr/widgets/CustomIndicator.dart';
import 'package:outfitr/widgets/Iconsiconcheckmark.dart';
import 'package:outfitr/widgets/Iconsiconemail.dart';
import 'package:outfitr/widgets/Iconsiconprevious.dart';
import 'package:outfitr/widgets/ShirtSize.dart';
import 'package:outfitr/widgets/SliderButtonCus.dart';

class MyProfileConfiguration extends StatefulWidget {
  const MyProfileConfiguration({Key key}) : super(key: key);

  @override
  _MyProfileConfigurationState createState() => _MyProfileConfigurationState();
}

class _MyProfileConfigurationState extends State<MyProfileConfiguration>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      body: ListView(padding: EdgeInsets.all(0.0), children: [
        Container(
          height: height / 2.5,
          width: width,
          child: Stack(
            children: <Widget>[
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  width: width,
                  height: height / 4,
                  //color: Colors.red,
                  child: SvgPicture.asset(
                    'assets/svg/drawer_bg.svg',
                    allowDrawingOutsideViewBox: true,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  margin: EdgeInsets.all(width / 40),
                  height: width / 10,
                  width: width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Iconsiconprevious(
                        color: Colors.transparent,
                        iconColor: Colors.white,
                        onTap: () => Navigator.of(context).pop(),
                      ),
                      Text(
                        'EDIT PROFILE',
                        style: TextStyle(
                          fontFamily: 'SFProDisplay-Semibold',
                          fontSize: width / 40,
                          color: Colors.white,
                          letterSpacing: 1.5,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      Container(
                        width: width / 10,
                      )
                    ],
                  ),
                ),
              ),
              Positioned(
                top: width / 2.5,
                left: width / 3.1,
                child: Column(
                  children: <Widget>[
                    Text(
                      'Mike Peter',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Semibold',
                        fontSize: 28,
                        color: const Color(0xff0c0d34),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'mike@flexinstudio.com',
                      style: TextStyle(
                        fontFamily: 'SFProDisplay-Regular',
                        fontSize: 16,
                        color: const Color(0x800c0d34),
                        height: 1.5,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: width / 7,
                left: width / 2.7,
                child: Container(
                  height: width / 4,
                  width: width / 4,
                  decoration: BoxDecoration(
                    color: Color(0xffFFDDDD),
                    borderRadius: BorderRadius.all(
                      Radius.circular(width / 2),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: width / 1.8,
                left: 0.0,
                child: Container(
                  height: width / 9,
                  width: width,
                  child: TabBar(
                    indicator: CusTabIndicator(
                        insets: EdgeInsets.all(0.0),
                        borderSide:
                            BorderSide(color: Color(0xFF2CB9B0), width: 5.0)),
                    controller: _tabController,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: Text("Configuration"),
                      ),
                      Tab(
                        child: Text("Personal Info"),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          width: width,
          height: height / 1.3,
          child: TabBarView(
              controller: _tabController,
              children: [Configurations(), PersonalInfo()]),
        )
      ]),
    );
  }
}

class Configurations extends StatelessWidget {
  const Configurations({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.all(width/20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          
          Container(
            //color: Colors.red,
            
            height: height / 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'What type of outfit you usually wear?',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Regular',
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomChip(
                      title: "For Man",
                      isActive: false,
                    ),
                    CustomChip(
                      title: "For Women",
                      isActive: true,
                    ),
                    CustomChip(
                      title: "Both",
                      isActive: false,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            //color: Colors.red,
            height: height / 8,
            child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'What typme of outfit you usually wear?',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Regular',
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    CustomChip(
                      title: "Sports",
                      isActive: false,
                    ),
                    CustomChip(
                      title: "Smart Casual",
                      isActive: true,
                    ),
                    CustomChip(
                      title: "Casual",
                      isActive: false,
                    )
                  ],
                )
              ],
            ),
          ),
          Container(
            //color: Colors.red,
            height: height / 8,
            child: Column(
             mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'What is your size?',
                  style: TextStyle(
                    fontFamily: 'SFProDisplay-Regular',
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Shirtsize(
                      size: 'S',
                      isActive: false,
                    ),
                    Shirtsize(
                      size: 'M',
                      isActive: true,
                    ),
                    Shirtsize(
                      size: 'L',
                      isActive: true,
                    ),
                    Shirtsize(
                      size: 'XL',
                      isActive: false,
                    ),
                    Shirtsize(
                      size: 'XXL',
                      isActive: false,
                    )
                  ],
                ),
              ],
            ),
          ),
          Container(
            // color: Colors.red,
            padding: EdgeInsets.all(width / 15),
            child: SliderButtonCus(
              text: "Save changes",
              action: () => {},
            ),
          )
        ],
      ),
    );
  }
}

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      width: width,
      //color: Colors.red,
      margin: EdgeInsets.all(width / 20),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              Text(
                'Account information',
                style: TextStyle(
                  fontFamily: 'SFProDisplay-Regular',
                  fontSize: 14,
                  color: const Color(0x800c0d34),
                  height: 1.4285714285714286,
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(
                width: width / 2,
              )
            ],
          ),
          SizedBox(
            height: width / 20,
          ),
          Container(
            width: width / 1.2,
            height: height / 14,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter your Email",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: width / 20,
          ),
          Container(
            width: width / 1.2,
            height: height / 14,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Password",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: width / 20,
          ),
          Container(
            width: width / 1.2,
            height: height / 14,
            child: TextFormField(
              decoration: InputDecoration(
                hintText: "Enter Address",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(6.0),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: width / 20,
          ),
          Container(
            width: width,
            height: height / 14,
            //  color: Colors.red,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                    width: width / 3,
                    child: ButtonsSecondarybutton(text: "Female")),
                Container(
                  width: width / 3,
                  child: ButtonsPrimarybutton(onTap: () {}, text: "Male"),
                )
              ],
            ),
          ),
          SizedBox(
            height: width / 20,
          ),
          Container(
            // color: Colors.red,
            padding: EdgeInsets.all(width / 15),
            child: SliderButtonCus(
              text: "Save changes",
              action: () => {},
            ),
          )
        ],
      ),
    );
  }
}
