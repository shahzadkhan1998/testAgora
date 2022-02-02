import 'package:agora_rtc_engine/rtc_engine.dart';
import 'package:agoravideocall/Component/config.dart';
import 'package:get/get.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:agora_rtc_engine/rtc_remote_view.dart' as RtcRemoteView;

class VideoCallController extends GetxController {
  bool joined = false;
  int remoteUid = 0;
  bool witch = false;
  bool isMute = false;
  // ignore: prefer_typing_uninitialized_variables
    RtcEngine? engine;

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    initPlatformState();
  }

  @override
  void onReady() {
    // TODO: implement onReady
    super.onReady();
    initPlatformState();

  }

  @override
  void onClose() {
    // TODO: implement onClose
    super.onClose();

  }

  Future<void> initPlatformState() async {
    try {
      await [Permission.camera, Permission.microphone].request();

      // Create RTC client instance
      RtcEngineContext context = RtcEngineContext(Config.APP_ID);
      engine = await RtcEngine.createWithContext(context);
         await engine!.setChannelProfile(ChannelProfile.Communication);
      await engine!.enableAudio();
      // Enable video
      await engine!.enableVideo();

      // Join channel with channel name as 123
      await engine!.joinChannel(Config.Token, 'chat', null, 0);

      // Define event handling logic
      engine!.setEventHandler(
        RtcEngineEventHandler(
          joinChannelSuccess: (String channel, int uid, int elapsed) {
            print('joinChannelSuccess ${channel} ${uid}');

            joined = true;
          },
          userJoined: (int uid, int elapsed) {
            print('userJoined ${uid}');

            remoteUid = uid;
            print("*****RemoteUId is****************8**$remoteUid");

          },
          userOffline: (int uid, UserOfflineReason reason) {
            print('userOffline ${uid}');

            remoteUid = 0;
          },
          leaveChannel: (RtcStats stats) {
            print('leaveChannel ${stats}');

            joined = false;
          },
        ),
      );
    } on Exception catch (err) {
      print("Error is : $err");
    }

  }
}
