import 'package:flutter/material.dart';
import 'package:pestasidecapstoneproj/components/homeScreen.dart';
import 'package:pestasidecapstoneproj/widgets/errorBox.dart';

class ScanResult extends StatelessWidget {
  const ScanResult({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData queryData = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: Colors.white70,
      body: Stack(
        children: [
          // Container(
          //   height: queryData.size.height * .45,
          //   decoration: BoxDecoration(color: Colors.black,
          //       borderRadius: BorderRadius.only(
          //         bottomRight: Radius.circular(15.0),
          //         bottomLeft: Radius.circular(15.0),
          //       )),
          // ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: [
                  Align(
                      alignment: Alignment.topLeft,
                      child: RawMaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HomeScreen(
                                      widget: ErrorBox(),
                                    )),
                          );
                        },
                        fillColor: Colors.white,
                        child: Icon(
                          Icons.arrow_back,
                          size: 25.0,
                        ),
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                      )),
                  // Text(
                  //   "test",
                  //   style: TextStyle(
                  //       fontSize: 50,
                  //       fontWeight: FontWeight.bold,
                  //       color: Colors.white),
                  // ),
                  // SizedBox(
                  //   height: 50,
                  // ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: GridView.count(
                        crossAxisCount: 1,
                        childAspectRatio: .85,
                        crossAxisSpacing: 20,
                        mainAxisSpacing: 20,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(13),
                              boxShadow: [
                                BoxShadow(
                                  offset: Offset(-16, 0),
                                  blurRadius: 20,
                                  spreadRadius: -20,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(13),
                              child: Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Column(
                                      children: [
                                        Spacer(),
                                        // Image.asset(
                                        //   "",
                                        //   width: 100,
                                        //   height: 100,
                                        // ),
                                        Spacer(),
                                        Text(
                                          "test",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              fontStyle: FontStyle.italic,
                                              fontSize: 15),
                                        ),
                                        Spacer(),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
