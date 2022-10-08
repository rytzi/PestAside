import 'package:flutter/material.dart';
import 'package:pestasidecapstoneproj/widgets/cameraScanner.dart';
// import 'package:camera/camera.dart';
// import 'package:pestaside/controller/takePictureScreen.dart';
// import 'package:pestaside/widget/cameraScanner.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  //
  // Future<Widget> main() async {
  //   WidgetsFlutterBinding.ensureInitialized();
  //   final cameras = await availableCameras();
  //   final firstCamera = cameras.first;
  //   return TakePictureScreen(
  //     camera: firstCamera,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.jpg'),
            fit: BoxFit.fill,
          )),
      // child: const CameraScanner(),
    );
  }
}
