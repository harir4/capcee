import 'package:capcee/widgetone.dart';
import 'package:flutter/material.dart';

class Widgettwo extends StatefulWidget {
  const Widgettwo({super.key});

  @override
  State<Widgettwo> createState() => _WidgettwoState();
}

class _WidgettwoState extends State<Widgettwo> {
  bool fullScreen = false;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final widgetHeight = fullScreen ? screenHeight : screenHeight / 2;

    return Container(
      height: widgetHeight,
      color: widgetHeight < (screenHeight * 0.6) ? Colors.green : Colors.yellow,
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
                  });
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Widgetone(),
                      ));
                },
                child: const Text('Open Widget One'),
              ),
      ),
    );
  }
}
