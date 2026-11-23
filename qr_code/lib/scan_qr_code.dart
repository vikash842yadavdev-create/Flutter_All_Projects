import 'package:flutter/material.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

class ScanQrCode extends StatefulWidget {
  const ScanQrCode({super.key});

  @override
  State<ScanQrCode> createState() => _ScanQrCodeState();
}

class _ScanQrCodeState extends State<ScanQrCode> {
  String scannedData = 'Scanned QR Code data will appear here.';

  MobileScannerController controller = MobileScannerController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Scan QR Code'),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          /// Scanner Camera
          Expanded(
            flex: 4,
            child: MobileScanner(
              controller: controller,
              onDetect: (BarcodeCapture capture) {
                final List<Barcode> barcodes = capture.barcodes;

                for (final barcode in barcodes) {
                  final String? code = barcode.rawValue;

                  if (code != null) {
                    setState(() {
                      scannedData = code;
                    });
                  }
                }
              },
            ),
          ),

          /// Result
          Expanded(
            child: Center(
              child: Text(
                scannedData,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

          const SizedBox(height: 10),

          /// Scan Button
          ElevatedButton(
            onPressed: () {
              controller.start();
            },
            child: const Text('Start Scanning'),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
