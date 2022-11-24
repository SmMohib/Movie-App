import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:better_player/better_player.dart';
import 'package:watchmovie/Model/Data/VideoData.dart';

class BetterPlayer extends StatefulWidget {
  BetterPlayer({Key? key,}) : super(key: key);
  
 String uri='';
  @override
  State<BetterPlayer> createState() => _BetterPlayerState();
}

class _BetterPlayerState extends State<BetterPlayer> {
 
 
  BetterPlayerController? _betterPlayerController;
  GlobalKey _globalKey = GlobalKey();
  @override
  void initState() {
    BetterPlayerConfiguration betterPlayerConfiguration =
        BetterPlayerConfiguration(
      aspectRatio: 16 / 9,
      fit: BoxFit.cover,
    );
    BetterPlayerDataSource uri;
    _betterPlayerController = BetterPlayerController(betterPlayerConfiguration);
    
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
