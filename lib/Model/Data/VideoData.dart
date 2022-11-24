import 'package:flutter/material.dart';

class VideoData {
  VideoData({this.name, this.id, this.thumbnail, this.videourl});
  String? name, id, thumbnail, videourl;

  List<VideoData> Videodata = [
    VideoData(
      id: "1",
      name: "Elephant Dream",
      videourl:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      thumbnail:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
    ),
    VideoData(
      id: "2",
      name: "Elephant Dream",
      videourl:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      thumbnail:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
    ),
    VideoData(
      id: "3",
      name: "Elephant Dream",
      videourl:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/ElephantsDream.mp4",
      thumbnail:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/ElephantsDream.jpg",
    ),
    VideoData(
      id: "4",
      name: "Elephant Dream",
      videourl:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/BigBuckBunny.mp4",
      thumbnail:
          "https://commondatastorage.googleapis.com/gtv-videos-bucket/sample/images/BigBuckBunny.jpg",
    ),
  ];
}
//
 