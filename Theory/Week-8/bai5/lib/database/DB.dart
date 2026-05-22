import '../model/BaiHat.dart';

class DB {
  static List<BaiHat> getPlaylist(){
    return [
      BaiHat(title: "Radio",
          artist: "THEMÈO",
          coverURL: "https://i.scdn.co/image/ab67616d00001e023f4160f749ad45c7370b8114",
          audioURL: "https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3"
      ),
    ];
  }
}