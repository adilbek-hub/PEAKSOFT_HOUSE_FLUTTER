import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class PianoView extends StatelessWidget {
  PianoView({super.key});
  final player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    List<String> alisher = [
      'f1',
      'f2',
      'f3',
      'f4',
      'f5',
      'f6',
      'f7',
      'f1',
      'f2',
      'f3',
      'f4',
      'f5',
      'f6',
      'f7'
    ];
    final List<String> notes = [
      'do',
      're',
      'mi',
      'fa',
      'sol',
      'lya',
      'si',
      'do',
      're',
      'mi',
      'fa',
      'sol',
      'lya',
      'si',
    ];
    return Scaffold(
      appBar: myAppBar(),
      body: Column(
        children: [
          Expanded(child: Container()),
          Expanded(
            flex: 2,
            child: Stack(children: [
              ListView.builder(
                  itemCount: notes.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, san) {
                    return InkWell(
                      onTap: () async {
                        await player.play(
                          AssetSource('${notes[san]}.mp3'),
                        );
                      },
                      child: Container(
                        margin: const EdgeInsets.all(2),
                        width: 58,
                        height: 200,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.4),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              alisher[san],
                              style: const TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            const SizedBox(height: 10),
                          ],
                        ),
                      ),
                    );
                  }),
              Positioned(
                left: 35,
                child: InkWell(
                  splashColor: Colors.white,
                  onTap: () {
                    player.play(AssetSource('${notes[0]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[0],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 100,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[1]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[1],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 220,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[2]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[2],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 285,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[3]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[3],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 346,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[4]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[4],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 346,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[5]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[5],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 283,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[6]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[6],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 160,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[7]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[7],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 100,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[8]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[8],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
              Positioned(
                right: 35,
                child: InkWell(
                  onTap: () {
                    player.play(AssetSource('${notes[9]}.mp3'));
                  },
                  child: Container(
                    width: 50,
                    height: 160,
                    decoration: const BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        )),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          alisher[9],
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        ),
                        SizedBox(height: 15),
                      ],
                    ),
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }

  AppBar myAppBar() {
    return AppBar(
      backgroundColor: Colors.black,
      // ignore: prefer_const_constructors
      title: Center(
        child: const Text(
          'My Piano App',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
