import 'package:flutter/material.dart';

import '../compenents/black_button.dart';
import '../compenents/white_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: const Text('Flutter piano'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Stack(
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: const [
                      pinoWhiteButton(
                        nemNota: 'do',
                      ),
                      pinoWhiteButton(
                        nemNota: 're',
                      ),
                      pinoWhiteButton(
                        nemNota: 'mi',
                      ),
                      pinoWhiteButton(
                        nemNota: 'fa',
                      ),
                      pinoWhiteButton(
                        nemNota: 'sol',
                      ),
                      pinoWhiteButton(
                        nemNota: 'lya',
                      ),
                      pinoWhiteButton(
                        nemNota: 'si',
                      ),
                      pinoWhiteButton(
                        nemNota: 'do2',
                      ),
                    ],
                  ),
                  Positioned(
                    left: 40,
                    child: Row(
                      children: const [
                        pianoBlackButton(
                          nemNota: 'do',
                        ),
                        pianoBlackButton(
                          nemNota: 're',
                        ),
                        pianoBlackButton(
                          nemNota: 'mi',
                          visible: false,
                        ),
                        pianoBlackButton(
                          nemNota: 'fa',
                        ),
                        pianoBlackButton(
                          nemNota: 'sol',
                        ),
                        pianoBlackButton(
                          nemNota: 'lya',
                        ),
                        pianoBlackButton(
                          nemNota: 'si',
                        ),
                      ],
                    ),
                  ),
                ],
              );
            },
          )),
        ],
      ),
    );
  }
}
