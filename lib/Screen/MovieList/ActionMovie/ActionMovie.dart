import 'package:flutter/material.dart';
import 'package:watchmovie/Model/color_text.dart';

class ActionMovie extends StatelessWidget {
  const ActionMovie({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 180,
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
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //         builder: ((context) => AddDetailPage())));
                  },
                  child: Container(
                    width: 110,
                    // ignore: sort_child_properties_last
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          'https://i.ibb.co/JkyNG8N/93-A3-F119-EB67-4793-89-E7-D9-FA4-FA801-C0.jpg',
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
