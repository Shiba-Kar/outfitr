import 'package:flutter/material.dart';
import 'package:swipe_stack/swipe_stack.dart';

class SwipeCards extends StatefulWidget {
  const SwipeCards({Key key}) : super(key: key);

  @override
  _SwipeCardsState createState() => _SwipeCardsState();
}

class _SwipeCardsState extends State<SwipeCards> {
    GlobalKey<SwipeStackState> _key = GlobalKey<SwipeStackState>(debugLabel: 's');
  @override
  void initState() {
      _key=widget.key;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SwipeStack(
      key: _key,
      children: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10].map((int index) {
        return SwiperItem(
            builder: (SwiperPosition position, double progress) {
          return Material(
              elevation: 9,
              borderRadius: BorderRadius.all(Radius.circular(6)),
              child: Container(
                  decoration: BoxDecoration(
                    color:
                        index.isEven ? Color(0xffBEECC4) : Color(0xffF1E0FF),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Item $index",
                          style:
                              TextStyle(color: Colors.black, fontSize: 20)),
                      Text("Progress $progress",
                          style: TextStyle(color: Colors.blue, fontSize: 12)),
                    ],
                  )));
        });
      }).toList(),
      visibleCount: 3,
      stackFrom: StackFrom.Top,
      translationInterval: 6,
      scaleInterval: 0.03,
      onEnd: () => debugPrint("onEnd"),
      onSwipe: (int index, SwiperPosition position) =>
          debugPrint("onSwipe $index $position"),
      onRewind: (int index, SwiperPosition position) =>
          debugPrint("onRewind $index $position"),
    );
  }
}
