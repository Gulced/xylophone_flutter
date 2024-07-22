import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Xylophone App'),
        ),
        body: SafeArea(
          child: Center(
            child: TextButton(
              onPressed: () async {
                final player = AudioCache();
                await player.play('note1.wav'); // Ses dosyasını çal
              },
              child: Text('Tıkla Beni'),
            ),
          ),
        ),
      ),
    );
  }
}
