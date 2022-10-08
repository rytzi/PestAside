import 'package:flutter/material.dart';
import 'package:pestasidecapstoneproj/widgets/errorBox.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import 'homeScreen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);

    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/background.jpg'),
        fit: BoxFit.fill,
      )),
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: queryData.size.width * .7,
          height: queryData.size.height * .1,
          decoration: BoxDecoration(
            color: Theme.of(context).backgroundColor,
            boxShadow: const [
              BoxShadow(color: Colors.white, spreadRadius: 8),
              BoxShadow(color: Colors.black, spreadRadius: 5),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation1, animation2) =>
                          HomeScreen(widget: const ErrorBox(),),
                      transitionDuration: Duration.zero,
                      reverseTransitionDuration: Duration.zero,
                    ),
                  );
                  // Navigator.push(context,
                  //     MaterialPageRoute(builder: (context) => TakePictureScreen(camera: firstCamera)));
                },
                splashColor: Theme.of(context).primaryColorDark,
                child: const FittedBox(
                  child: Text(
                    "PEST ASIDE",
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
