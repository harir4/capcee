import 'package:capcee/widgettwo.dart';
import 'package:flutter/material.dart';

class Widgetone extends StatefulWidget {
  const Widgetone({super.key});

  @override
  State<Widgetone> createState() => _WidgetoneState();
}

class _WidgetoneState extends State<Widgetone> {
  bool fullScreen = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final widgetHeight = fullScreen ? screenHeight : screenHeight / 2;

    return Container(
      height: widgetHeight,
      color: widgetHeight < (screenHeight * 0.6) ? Colors.blue : Colors.black,
      child: Center(
        child: fullScreen
            ? ElevatedButton(
                onPressed: () {
                  setState(() {
                    fullScreen = false;
                  });
                },
                child: const Text('Close Widget'),
              )
            : ElevatedButton(
                onPressed: () {
                  setState(() {
                    fullScreen = true;
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Widgettwo(),
                        ));
                  });
                },
                child: const Text('Open Widget Two'),
              ),
      ),
    );
  }
}
