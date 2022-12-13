import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class pianoBlackButton extends StatelessWidget {
  const pianoBlackButton({
    this.visible = true,
    required this.nemNota,
    Key? key,
  }) : super(key: key);
  final bool visible;
  final String nemNota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: SizedBox(
        width: 65,
        height: 250,
        child: Visibility(
          visible: visible,
          child: ElevatedButton(
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.resolveWith(
                (states) => Colors.black,
              ),
              overlayColor: MaterialStateProperty.resolveWith(
                (states) {
                  return states.contains(MaterialState.pressed)
                      ? Color.fromARGB(255, 71, 70, 70)
                      : null;
                },
              ),
            ),
            onPressed: () {
              AudioPlayer().play(
                AssetSource('notes/$nemNota.mp3'),
              );
            },
            onLongPress: () {
              AudioPlayer().play(
                AssetSource('notes/$nemNota.mp3'),
              );
            },
            child: const Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Text(
                  '',
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
