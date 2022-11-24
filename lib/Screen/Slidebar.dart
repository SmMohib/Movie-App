import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/basic.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:watchmovie/Model/color_text.dart';
import 'package:watchmovie/Screen/AllSlideMovie.dart';

class Slidebar extends StatelessWidget {
  Slidebar({Key? key}) : super(key: key);

  CarouselController buttonCarouselController = CarouselController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            // onPageChanged: (index, reason) {
            //   Navigator.push(context,
            //       MaterialPageRoute(builder: ((context) => AllSmideMovie())));
            // },
            height: 400.0,
            aspectRatio: 12 / 19,
            viewportFraction: 0.7,
            initialPage: 0,
            enableInfiniteScroll: true,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 5),
            autoPlayAnimationDuration: Duration(milliseconds: 200),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            // onPageChanged: callbackFunction,
            scrollDirection: Axis.horizontal,
          ),
          items: [1, 2, 3, 4, 5].map((i) {
            return Builder(
              builder: (BuildContext context) {
                return InkWell(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: ((context) => AllSmideMovie())));
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    margin: EdgeInsets.symmetric(horizontal: 5.0),
                    decoration: BoxDecoration(
                      color: gray,
                      borderRadius: BorderRadius.circular(15),
                      //  color: Colors.amber,
                      image: DecorationImage(
                          image: NetworkImage(
                            'https://assets.gadgets360cdn.com/pricee/assets/product/202205/thor_love_thunder_poster_1653367918.jpeg',
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                );
              },
            );
          }).toList(),
        ),
      ],
    );
  }
}
