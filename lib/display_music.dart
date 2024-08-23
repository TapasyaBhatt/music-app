import 'package:flutter/material.dart';
import 'package:music_playlist/music_class.dart';

class DisplayMusic extends StatelessWidget {
  const DisplayMusic({super.key, required this.music});
  final Music music;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Color.fromARGB(255, 255, 204, 0),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 38, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Music name: " + music.musicName),
              Text("Artist name: " + music.artistName),
              // const SizedBox(
              //   height: 30,
              // )
            ],
          ),
        ),
      ),
    );
  }
}
