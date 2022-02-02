import 'package:agoravideocall/Videocall/Controller/videocallcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class Hangup extends StatelessWidget {
  VideoCallController Hangupcontroller = Get.find();
   Hangup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container();
  }
  Widget _hangup(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.call_end),
      onPressed: () {
        Hangupcontroller.engine!.leaveChannel();
        Get.back();
      },
    );
  }
}
