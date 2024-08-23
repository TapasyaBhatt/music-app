import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:music_playlist/display_music.dart';
import 'package:music_playlist/music_add.dart';
import 'package:music_playlist/music_class.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.appTitle,
  });
  final Widget appTitle;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // backgroundColor: Color.fromARGB(255, 236, 194, 255),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 255, 204, 0),
          centerTitle: true,
          title: widget.appTitle,
          leading: IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              setState(() {});
            },
          ),
          actions: [
            const Icon(CupertinoIcons.profile_circled),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.1,
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => AddMusic())),
          child: const Icon(Icons.add),
          backgroundColor: Color.fromARGB(255, 255, 204, 0),
        ),
        body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
              Color.fromARGB(255, 255, 247, 1),
              Color.fromARGB(255, 255, 237, 149),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
          child: ListView.builder(
            itemCount: musicList.length,
            itemBuilder: (context, index) {
              return DisplayMusic(music: musicList[index]);
            },
          ),
        ));
  }
}
