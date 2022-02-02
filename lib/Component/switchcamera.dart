import 'package:agoravideocall/Videocall/Controller/videocallcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
class SwitchCamera extends StatelessWidget {
  VideoCallController  videocontrollerCamra = Get.find();
   SwitchCamera({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _switchCamera();
  }

  Widget _switchCamera() {
    return IconButton(
      icon: Icon(Icons.switch_camera),
      onPressed: () {
        videocontrollerCamra.engine!.switchCamera();
      },
    );
  }
}
