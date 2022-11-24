import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:watchmovie/Model/color_text.dart';

class AllTvChannel extends StatelessWidget {
  const AllTvChannel({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Container(
            child: GridView.builder(
          itemCount: 30,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisExtent: 90,
          ),
          itemBuilder: (BuildContext context, int index) {
            return InkWell(
              onTap: () {},
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR6hJgKcVwtuYavoeIDpGvyKoyPx10XUWEEyQ&usqp=CAU",
                  //fit: BoxFit.cover,
                  width: double.infinity,
                  height: 100,
                ),
              ),
            );
          },
        )));
  }
}
