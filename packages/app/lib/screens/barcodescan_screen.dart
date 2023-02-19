import 'package:app/screens/detail_screen.dart';
import 'package:flutter/material.dart';

import 'package:mobile_scanner/mobile_scanner.dart';

class BarcodescanScreen extends StatelessWidget {
  const BarcodescanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text('Scan Barcode'),
      ),
      body: MobileScanner(
        // fit: BoxFit.contain,
        controller: MobileScannerController(
          facing: CameraFacing.back,
          torchEnabled: false,
          detectionSpeed: DetectionSpeed.normal,
          detectionTimeoutMs: 1000,
        ),
        onDetect: (capture) {
          final List<Barcode> barcodes = capture.barcodes;
          String? barcode = barcodes.elementAt(0).rawValue;
          if (barcode != null) {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => DetailScreen(id: barcode)));
          }
        },
      ),
    );
  }
}
