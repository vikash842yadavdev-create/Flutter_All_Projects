import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class GenerateQrCode extends StatefulWidget {
  const GenerateQrCode({super.key});

  @override
  State<GenerateQrCode> createState() => _GenerateQrCodeState();
}

class _GenerateQrCodeState extends State<GenerateQrCode> {
  TextEditingController qrDataController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Generate QR Code'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (qrDataController.text.isNotEmpty)
                QrImageView(
                  data: qrDataController.text,
                  size: 200,
                  backgroundColor: Colors.white,
                ),
              SizedBox(height: 20),
              Text(
                qrDataController.text,
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: TextField(
                  controller: qrDataController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Enter data to generate QR Code',
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  setState(() {});
                },
                child: Text('Generate QR Code'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
