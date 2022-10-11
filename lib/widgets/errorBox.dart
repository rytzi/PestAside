import 'package:flutter/material.dart';
import 'package:pestasidecapstoneproj/components/homeScreen.dart';
import 'package:pestasidecapstoneproj/widgets/scanResult.dart';

class ErrorBox extends StatelessWidget {
  const ErrorBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Center(
      child: Container(
        padding: EdgeInsets.all(30.0),
        width: queryData.size.width * .5,
        height: queryData.size.width * .5,
        decoration: BoxDecoration(
            border: Border.all(width: 2),
            borderRadius: BorderRadius.circular(13)),
        child: Column(
          children: [
            Image.asset(
              'assets/errorIcon.png',
              height: queryData.size.width * .15,
              width: queryData.size.width * .15,
            ),
            Spacer(),
            const Text(
              "No Pest Detected",
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 20),
            ),
            Spacer(),
            const Text(
              "The system cannot detect the pest. Please try again.",
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  color: Colors.black,
                  fontSize: 15),
            ),
            Spacer(),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.black),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  PageRouteBuilder(
                    pageBuilder: (context, animation1, animation2) =>
                        const HomeScreen(widget: ScanResult()),
                    transitionDuration: Duration.zero,
                    reverseTransitionDuration: Duration.zero,
                  ),
                );
                // Navigator.push(context,
                //     MaterialPageRoute(builder: (context) => TakePictureScreen(camera: firstCamera)));
              },
              child: Text('OK'),
            ),
          ],
        ),
      ),
    );
  }
}
