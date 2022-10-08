import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:flutter/material.dart';

class CameraScanner extends StatefulWidget {
  const CameraScanner({Key? key}) : super(key: key);

  @override
  _CameraScannerState createState() => _CameraScannerState();
}

// class _CameraScannerState extends State<CameraScanner> {
//   @override
//   Widget build(BuildContext context) {
//     return MobileScanner(
//         allowDuplicates: false,
//         onDetect: (barcode, args) {
//           if (barcode.rawValue == null) {
//             debugPrint('Failed to scan Barcode');
//           } else {
//             final String code = barcode.rawValue!;
//             debugPrint('Barcode found! $code');
//           }
//         });
//   }

class _CameraScannerState extends State<CameraScanner> {
  @override
  Widget build(BuildContext context) {
    return MobileScanner(
        allowDuplicates: false,
        onDetect: (barcode, args) {
          if (barcode.rawValue == null) {
            debugPrint('Failed to scan Barcode');
          } else {
            final String code = barcode.rawValue!;
            debugPrint('Barcode found! $code');
          }
        });
  }
}
