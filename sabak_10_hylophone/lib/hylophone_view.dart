import 'package:flutter/material.dart';
import 'package:sabak_10_hylophone/components/piano_keys.dart';
import 'package:audioplayers/audioplayers.dart';

class HulophoneView extends StatefulWidget {
  const HulophoneView({super.key});

  @override
  State<HulophoneView> createState() => _HulophoneViewState();
}

class _HulophoneViewState extends State<HulophoneView> {
  final audioPlayers = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color(0xff363636),
        ),
        body: Column(
          children: [
            PianoKeys(
              color: Colors.green,
              text: 'Do',
              onTap: () => audioPlayers.play(
                AssetSource('nota1.mp3'),
              ),
            ),
            PianoKeys(
              color: Colors.yellow,
              text: 'Re',
              onTap: () {
                audioPlayers.play(AssetSource('nota2.mp3'));
                print('on tap ishtedi');
              },
            ),
            PianoKeys(
              color: Colors.brown,
              text: 'Me',
              onTap: () {
                audioPlayers.play(AssetSource('nota3.mp3'));
              },
            ),
            PianoKeys(
              color: Colors.orange,
              text: 'Fa',
              onTap: () {
                audioPlayers.play(AssetSource('nota4.mp3'));
              },
            ),
            PianoKeys(
              color: Colors.red,
              text: 'Sol',
              onTap: () {
                audioPlayers.play(AssetSource('nota5.mp3'));
              },
            ),
            PianoKeys(
              color: Colors.indigoAccent,
              text: 'La',
              onTap: () {
                audioPlayers.play(AssetSource('nota6.mp3'));
              },
            ),
            PianoKeys(
              color: Colors.pink,
              text: 'Si',
              onTap: () {
                audioPlayers.play(AssetSource('nota7.mp3'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
