import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:watchmovie/Model/color_text.dart';

class AppbarWidget extends StatelessWidget {
  const AppbarWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              child: Icon(Icons.menu),
              decoration: BoxDecoration(
                color:gray,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: gray.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ],
              ),
            ),
          ),
          InkWell(
            onTap: () {},
            child: Container(
              height: 40,
              width: 40,
              child: Icon(Icons.notifications),
              decoration: BoxDecoration(
                color: textColor,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: gray.withOpacity(0.5),
                    spreadRadius: 4,
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
