import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:provider/provider.dart';
import '../model/BaiHat.dart';
import '../database/DB.dart';

class MusicProvider with ChangeNotifier {
  final AudioPlayer _audioPlayer = AudioPlayer();

  List<BaiHat> playlist = [];
  BaiHat? currentSong;

  bool isPlaying = false;
  Duration currentPosition = Duration.zero;
  Duration totalDuration = Duration.zero;

  MusicProvider() {
    // Load data từ Database ảo lên
    playlist = DB.getPlaylist();
    if (playlist.isNotEmpty) {
      currentSong = playlist[0];
    }

    _audioPlayer.onDurationChanged.listen((Duration d) {
      totalDuration = d;
      notifyListeners();
    });

    _audioPlayer.onPositionChanged.listen((Duration p) {
      currentPosition = p;
      notifyListeners();
    });

    _audioPlayer.onPlayerStateChanged.listen((PlayerState s) {
      isPlaying = s == PlayerState.playing;
      notifyListeners();
    });
  }

  void playPauseMusic() async {
    if (currentSong == null) return;

    if (isPlaying) {
      await _audioPlayer.pause();
    } else {
      await _audioPlayer.play(UrlSource(currentSong!.audioURL));
    }
  }

  void seekTo(double seconds) {
    _audioPlayer.seek(Duration(seconds: seconds.toInt()));
  }

  //Giải phóng bộ nhớ
  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}

class MusicPlayerScreen extends StatelessWidget {
  const MusicPlayerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MusicProvider>(context);
    final song = provider.currentSong;

    if (song == null) {
      return const Scaffold(
        body: Center(child: Text("No Song Selected")),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: const Text("Music Player"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Cover Image
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                song.coverURL,
                height: 300,
                width: double.infinity,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const Icon(Icons.music_note, size: 100),
              ),
            ),
            const SizedBox(height: 32),
            // Song Info
            Text(
              song.title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
            Text(
              song.artist,
              style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            // Progress Bar
            Slider(
              value: provider.currentPosition.inSeconds.toDouble().clamp(
                  0.0,
                  provider.totalDuration.inSeconds.toDouble() < 1.0
                      ? 1.0
                      : provider.totalDuration.inSeconds.toDouble()),
              max: provider.totalDuration.inSeconds.toDouble() < 1.0
                  ? 1.0
                  : provider.totalDuration.inSeconds.toDouble(),
              onChanged: (value) {
                provider.seekTo(value);
              },
              activeColor: Colors.blue,
              inactiveColor: Colors.grey[400],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(_formatDuration(provider.currentPosition)),
                  Text(_formatDuration(provider.totalDuration)),
                ],
              ),
            ),
            const SizedBox(height: 24),
            // Controls
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                  iconSize: 48,
                  icon: const Icon(Icons.skip_previous),
                  onPressed: () {}, // Implement skip if needed
                ),
                const SizedBox(width: 16),
                Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    iconSize: 64,
                    color: Colors.white,
                    icon: Icon(
                        provider.isPlaying ? Icons.pause : Icons.play_arrow),
                    onPressed: provider.playPauseMusic,
                  ),
                ),
                const SizedBox(width: 16),
                IconButton(
                  iconSize: 48,
                  icon: const Icon(Icons.skip_next),
                  onPressed: () {}, // Implement skip if needed
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  String _formatDuration(Duration duration) {
    String twoDigits(int n) => n.toString().padLeft(2, "0");
    String minutes = twoDigits(duration.inMinutes.remainder(60));
    String seconds = twoDigits(duration.inSeconds.remainder(60));
    return "$minutes:$seconds";
  }
}
