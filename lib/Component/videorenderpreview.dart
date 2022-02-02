import 'package:agoravideocall/Component/hangup.dart';
import 'package:agoravideocall/Component/mute.dart';
import 'package:agoravideocall/Component/switchcamera.dart';
import 'package:agoravideocall/Videocall/Controller/videocallcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;
class Preview extends StatelessWidget {
  VideoCallController  videocontroller = Get.find();
   Preview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _preview());

  }

  Widget _preview()
  {
    if(videocontroller.remoteUid != 0
    )
      {
        return Column(
          children: [
            RtcRemoteView.SurfaceView(
              uid: videocontroller.remoteUid,
              channelId: "chat",
            ),
            SwitchCamera(),
            Hangup(),
            Mute(),
          ],
        );
      }
    else
      {
        return const Center(
          child:  Text("Please wait remote user join"),
        );
      }
  }
}
