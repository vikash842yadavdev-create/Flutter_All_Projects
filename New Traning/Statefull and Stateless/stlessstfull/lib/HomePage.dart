import 'package:flutter/material.dart';
import 'package:stlessstfull/components/dialouge.dart';
import 'package:stlessstfull/components/snackbar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                snMassage('This is a snackbar message!');
              },
              child: const Text('Show Snackbar'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                DialougeBox('Dialog Title', 'This is the dialog message.');
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}
