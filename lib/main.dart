import 'package:flutter/material.dart';
import 'package:music_player/player.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: MusicPlayer()));
}

class MusicPlayer extends StatefulWidget {
  const MusicPlayer({super.key});
  @override
  State<MusicPlayer> createState() => _MusicPlayerState();
}

class _MusicPlayerState extends State<MusicPlayer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Music Player')),
      body: SafeArea(
        child: ListView.builder(
          itemCount: 50,
          itemBuilder: (context, index) {
            return ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Player()),
                );
              },
              leading: Container(
                height: 50.0,
                width: 50.0,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(5.0),
                ),
              ),
              title: Text('Song name'),
              subtitle: Text('Artist'),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.more_vert_rounded),
              ),
            );
          },
        ),
      ),
    );
  }
}
