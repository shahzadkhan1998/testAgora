import 'package:agoravideocall/Videocall/Controller/videocallcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Mute extends StatelessWidget {
  VideoCallController _videoCallControllermute = Get.find();
   Mute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _mute();
  }

  Widget _mute() {
    return IconButton(
      icon: _videoCallControllermute.isMute ? const Icon(Icons.mic_off) : const Icon(Icons.mic),
      onPressed: () {
        _videoCallControllermute.engine!.muteLocalAudioStream(
          _videoCallControllermute.isMute,
        );

        _videoCallControllermute.isMute
        != _videoCallControllermute.isMute;

      },
    );
  }
}
