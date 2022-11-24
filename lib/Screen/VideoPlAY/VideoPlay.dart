import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:video_player/video_player.dart';
import 'dart:async';

import 'package:watchmovie/Model/Data/VideoData.dart';
import 'package:watchmovie/Model/color_text.dart';

class VideoPlayerScreen extends StatefulWidget {
  const VideoPlayerScreen({super.key});
  @override
  State<VideoPlayerScreen> createState() => _VideoPlayerScreenState();
}

class _VideoPlayerScreenState extends State<VideoPlayerScreen> {
  String daataSource =
      'https://www.pexels.com/video/a-house-in-a-tropical-rainforest-12717007/';
  VideoPlayerController? controller;
  @override
  void initState() {
    super.initState();
    controller = VideoPlayerController.network('dataSource')
      ..initialize().then((_) {
        setState(() {
          initState();
        });
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Play Video'),
      ),
      body: Column(
        children: [
          controller!.value.isInitialized
              ? Container(
                  child: AspectRatio(
                    aspectRatio: controller!.value.aspectRatio,
                    child: VideoPlayer(controller!),
                  ),
                )
              : Container(),
          SizedBox(
            height: 10,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_previous,
                      size: 40,
                      color: primary,
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.play_circle,
                        size: 40,
                        color: primary,
                      )),
                ),
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.skip_next,
                      size: 40,
                      color: primary,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
