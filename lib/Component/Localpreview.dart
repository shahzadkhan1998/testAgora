import 'package:agoravideocall/Component/videorenderpreview.dart';
import 'package:agoravideocall/Videocall/Controller/videocallcontroller.dart';
import 'package:agoravideocall/Videocall/View/videocall.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agora_rtc_engine/rtc_local_view.dart' as RtcLocalView;

class LocalPreview extends StatelessWidget {
  VideoCallController controllerlocalpreview = Get.find();
  LocalPreview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return renderLocalPreview();
  }

  Widget renderLocalPreview() {
    if (controllerlocalpreview.joined) {
      return RtcLocalView.SurfaceView();
    } else {
      return Center(
        child:Container(),

      );
    }
  }
}
