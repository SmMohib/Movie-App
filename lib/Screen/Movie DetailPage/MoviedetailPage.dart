import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:watchmovie/Model/color_text.dart';
import 'package:watchmovie/Screen/VideoPlAY/VideoPlay.dart';
import 'package:watchmovie/Screen/populerMovie.dart';

class MovieDetailPage extends StatefulWidget {
  const MovieDetailPage({Key? key}) : super(key: key);

  @override
  State<MovieDetailPage> createState() => _MovieDetailPageState();
}

class _MovieDetailPageState extends State<MovieDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 240,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Image.network(
                  'https://occ-0-116-2433.1.nflxso.net/dnm/api/v6/X194eJsgWBDE2aQbaNdmCXGUP-Y/AAAABQrdG-ekUhMZQZWzKgNuM3BnolKi_LaYn5Fa2jAYgtoooG_YPpcGfELAV9sbIqX4_M1Ckc9qxNFwKr0fj3-iAae8bhyQ8T1CJ-A.jpg?r=69f',
                  height: 230,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
                Positioned(
                    left: 18,
                    bottom: -60,
                    child: Container(
                      height: 150,
                      width: 100,
                      decoration: BoxDecoration(
                          border: Border.all(
                            color: textColor,
                            width: 5,
                          ),
                          image: DecorationImage(
                            image: NetworkImage(
                              'https://i.ytimg.com/vi/MJuFdpVCcsY/movieposter_en.jpg',
                            ),
                            fit: BoxFit.cover,
                          ),
                          color: gray,
                          borderRadius: BorderRadius.circular(10)),
                    )),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 130, right: 11),
            child: Container(
                height: 60,
                width: double.infinity,
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.download),
                              backgroundColor: secondary,
                            ),
                          ),
                          Text(
                            'Download',
                            style: text16(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          VideoPlayerScreen())));
                            },
                            child: CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.movie),
                              backgroundColor: secondary,
                            ),
                          ),
                          Text(
                            'Watching',
                            style: text16(),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10),
                      child: Column(
                        children: [
                          InkWell(
                            onTap: () {},
                            child: CircleAvatar(
                              radius: 20,
                              child: Icon(Icons.favorite),
                              backgroundColor: secondary,
                            ),
                          ),
                          Text(
                            'Favorite',
                            style: text16(),
                          )
                        ],
                      ),
                    ),
                  ],
                )),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 15, left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Movie: Jumanji',
                  style: text30(),
                ),
                Text(
                  'Country: US',
                  style: text20(),
                ),
                Text(
                  'Duration: 100 min',
                  style: text20(),
                ),
                Text(
                  'Released : 2/7/2010',
                  style: text20(),
                ),
                Text(
                  'IDMb: 7.9',
                  style: text20(),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Description',
                  style: text24(),
                ),
                Divider(
                  color: secondary,
                  thickness: 1,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "K.G.F: Chapter 2 is a 2022 Indian Kannada-language period action film written and directed by Prashanth Neel, and produced by Vijay Kiragandur under the banner Hombale Films. The second instalment in a two-part series, it serves as a sequel to the 2018 film K.G.F: Chapter 1. The film stars Yash, Sanjay Dutt, Raveena Tandon, Srinidhi Shetty and Prakash Raj. It follows the assassin Rocky, who after establishing himself as the kingpin of the Kolar Gold Fields, must retain his supremacy over adversaries and government officials, while also coming to terms with his past.Produced on a budget of ₹100 crore (US\$13 million), K.G.F: Chapter 2 is the most expensive Kannada film ever made. Neel retained the technicians from its predecessor with Bhuvan Gowda handling the cinematography and Ravi Basrur composed the film score and songs. Dutt and Tandon joined the cast in early 2019, marking the former's Kannada film debut. Portions of the film were shot back-to-back with Chapter 1. Principal photography for the rest of the sequences commenced in March 2019, but was halted in February 2020 owing to the COVID-19 lockdown in India. Filming resumed five months later and was completed in December 2020. Locations included Bangalore, Hyderabad, Mysore and Kolar.",
                    style: text20(),
                    textAlign: TextAlign.justify,
                  ),
                ),
                Divider(
                  color: secondary,
                  thickness: 1,
                ),
                Text(
                  'Populer',
                  style: text24(),
                ),
                PopulerMovie()
              ],
            ),
          )
        ]),
      ),
    );
  }
}
