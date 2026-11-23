import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:providerapp/provider/slider_provider.dart';

class SliderScreenProvider extends StatefulWidget {
  const SliderScreenProvider({super.key});

  @override
  State<SliderScreenProvider> createState() => _SliderScreenProviderState();
}

class _SliderScreenProviderState extends State<SliderScreenProvider> {
  @override
  Widget build(BuildContext context) {
    final sliderprovier = Provider.of<SliderProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.grey[800],
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Consumer<SliderProvider>(
            builder: (context, value, child) {
              return Slider(
                activeColor: Colors.red,
                thumbColor: Colors.green,
                value: value.slidervalue,
                min: 0.0,
                max: 1.0,
                onChanged: (value) {
                  sliderprovier.setValue(value);
                },
              );
            },
          ),

          Consumer<SliderProvider>(
            builder: (context, value, child) {
              return Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 80,
                      color: Colors.green.withOpacity(value.slidervalue),
                      child: Center(
                        child: Text(
                          'Column 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      height: 80,
                      color: Colors.red.withOpacity(value.slidervalue),
                      child: Center(
                        child: Text(
                          'Column 1',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
