import 'package:flutter/material.dart';
import 'package:music_playlist/music_class.dart';

class AddMusic extends StatelessWidget {
  AddMusic({super.key});
  final TextEditingController musicController = TextEditingController();
  final TextEditingController artistController = TextEditingController();

  void storeMusic() {
    Music music = Music();
    music.musicName = musicController.text.toString();
    music.artistName = artistController.text.toString();
    musicList.add(music);
    print(musicList);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 255, 204, 0),
        centerTitle: true,
        title: const Text("Add Music"),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromARGB(255, 255, 247, 1),
              Color.fromARGB(255, 255, 237, 149),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text("Music Name"),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: musicController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 18),
              child: Text("Artist Name"),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: artistController,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 255, 204, 0),
                ),
                onPressed: storeMusic,
                icon: const Icon(Icons.done),
                label: const Text("Done"),
              ),
            ),
          ],
        ),
      ),
    );
  }

  // func({int a = 5, required int b}) {return a + b + 1;}

  // int sum = func(b = 3);
}
