import 'package:flutter/material.dart';
import 'package:watchmovie/Model/color_text.dart';
import 'package:watchmovie/Screen/Movie%20DetailPage/MoviedetailPage.dart';

class PopulerMovie extends StatelessWidget {
  const PopulerMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: Padding(
        padding: const EdgeInsets.only(top: 10),
        child: ListView.builder(
            physics: BouncingScrollPhysics(),
            itemCount: 10,
            scrollDirection: Axis.horizontal,
            itemBuilder: ((context, index) {
              return Padding(
                padding: const EdgeInsets.only(right: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => MovieDetailPage())));
                  },
                  child: Container(
                    height: 140,
                    width: 270,
                    // ignore: sort_child_properties_last
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSC33ZsJUx0BdkEh9wx1UQF67WHcLJGtMsvgg&usqp=CAU',
                        ),
                        fit: BoxFit.cover,
                      ),
                      color: gray,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: gray.withOpacity(0.4),
                          spreadRadius: 2,
                          blurRadius: 4,
                          blurStyle: BlurStyle.inner,
                          offset: Offset(
                            0,
                            0,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              );
            })),
      ),
    );
  }
}
