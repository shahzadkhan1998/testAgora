import 'package:agoravideocall/Component/Localpreview.dart';
import 'package:agoravideocall/Component/videorenderpreview.dart';
import 'package:agoravideocall/Videocall/Controller/videocallcontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Videocall extends StatelessWidget {
  const Videocall({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    VideoCallController videoCallController = Get.put(VideoCallController());
    return GetMaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            Center(
              child: ElevatedButton(onPressed: () {
                print(videoCallController.remoteUid);
              }, child: const Text("Testng")),
            )
          ],
        ),
      ),
    );
  }
}
