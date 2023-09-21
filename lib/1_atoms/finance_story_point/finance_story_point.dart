import 'package:flutter/material.dart';

class FinanceStoryPoint extends StatelessWidget {
  final dynamic child;
  const FinanceStoryPoint(
    this.child, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var paddingHoriz = MediaQuery.of(context).size.width * 0.1;
    var paddingTop = MediaQuery.of(context).padding.top + 27;
    return Stack(
      children: [
        // Logo AppBar
        // Positioned.fill(
        //   child: Align(
        //     alignment: Alignment.topCenter,
        //     child: Padding(
        //       padding:
        //           EdgeInsets.only(top: MediaQuery.of(context).padding.top + 4),
        //       child: MagnumImage(
        //         image: MagnumImages.logo_horizontal_light,
        //         height: 40,
        //       ),
        //     ),
        //   ),
        // ),

        // Body
        Positioned(
          top: paddingTop,
          child: SizedBox(
            height: MediaQuery.of(context).size.height - paddingTop,
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: paddingHoriz),
                  child: child['title'],
                ),
                Container(
                    height: MediaQuery.of(context).size.height * 0.16,
                    width: MediaQuery.of(context).size.width,
                    color: child['card'] ? Colors.white : Colors.transparent,
                    padding: const EdgeInsets.only(left: 16, right: 16, top: 4),
                    child: child['text']),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
