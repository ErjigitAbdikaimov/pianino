import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class pinoWhiteButton extends StatelessWidget {
  const pinoWhiteButton({Key? key, required this.nemNota}) : super(key: key);
  final String nemNota;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: SizedBox(
        width: 80,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.resolveWith((states) => Colors.white),
            overlayColor: MaterialStateProperty.resolveWith(
              (states) {
                return states.contains(MaterialState.pressed)
                    ? const Color.fromARGB(255, 189, 186, 186)
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
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
