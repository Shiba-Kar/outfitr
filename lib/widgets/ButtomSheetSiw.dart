import 'package:flutter/material.dart';
import 'package:snapping_sheet/snapping_sheet.dart';

class ButtomSheetSie extends StatefulWidget {
  final PersistentBottomSheetController controller;

  const ButtomSheetSie({
    Key key,
    @required this.controller,
  }) : super(key: key);

  @override
  _ButtomSheetSieState createState() => _ButtomSheetSieState();
}

class _ButtomSheetSieState extends State<ButtomSheetSie> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Container(height: height / 2, width: width, child: Text("shiva"));
  }
}


