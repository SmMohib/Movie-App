
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:watchmovie/Model/color_text.dart';
import 'package:watchmovie/Screen/MovieList/ActionMovie/ActionMovie.dart';
import 'package:watchmovie/Screen/MovieList/ActionMovie/AllActionMovie.dart';
import 'package:watchmovie/Screen/Slidebar.dart';
import 'package:watchmovie/Screen/TvChannel/AllTvChannel.dart';
import 'package:watchmovie/Screen/TvChannel/TvChannel.dart';
import 'package:watchmovie/Screen/populerMovie.dart';
import 'package:watchmovie/widget/appBar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: bgcolor,
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          physics: BouncingScrollPhysics(),
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Slidebar(),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Tv Channel',
                  style: text16(),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => AllTvChannel()));
                  },
                  child: Text(
                    'See More',
                    style: text16(),
                  ),
                ),
              ],
            ),
            TvChannel(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Populer',
                    style: text16(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AllActionMovie()));
                    },
                    child: Text(
                      'See More',
                      style: text16(),
                    ),
                  ),
                ],
              ),
            ),
            PopulerMovie(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Action',
                    style: text16(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AllActionMovie()));
                    },
                    child: Text(
                      'See More',
                      style: text16(),
                    ),
                  ),
                ],
              ),
            ),
            ActionMovie(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Comedy',
                    style: text16(),
                  ),
                  Text(
                    'See More',
                    style: text16(),
                  ),
                ],
              ),
            ),
            ActionMovie(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Thiller',
                    style: text16(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AllTvChannel()));
                    },
                    child: Text(
                      'See More',
                      style: text16(),
                    ),
                  ),
                ],
              ),
            ),
            ActionMovie(),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Romantic',
                    style: text16(),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => AllTvChannel()));
                    },
                    child: Text(
                      'See More',
                      style: text16(),
                    ),
                  ),
                ],
              ),
            ),
            ActionMovie(),
          ],
        ),
      ),
    );
  }
}
