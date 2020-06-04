import 'package:flutter/material.dart';

class Iconsiconclose extends StatelessWidget {
  const Iconsiconclose({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
   
    return Container(
     
      width: width/7,
      height: height/13,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(width/2)),
        color: const Color(0xffffffff),
      ),
      child: Icon(Icons.close,size: width/15,),
    );
    
  }
}
