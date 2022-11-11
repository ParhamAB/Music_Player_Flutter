import 'package:http/http.dart' as http;
import 'api_url.dart';

class MusicService {
  Future<http.Response> GetMusicDetails() async {
    String Url = ApiUrl().BaseDetailMusicUrl + ApiUrl().EndPointDetailMusic;
    Map<String, String> headers = {'Content-Type': 'application/json'};
    return await http.get(Uri.parse(Url));
  }

  Future<http.Response> GetLiveMusic() async {
    String Url = ApiUrl().BaseLiveMusicUrl + ApiUrl().EndPointLiveMusic;
    Map<String, String> headers = {'Content-Type': 'application/json'};
    return await http.get(Uri.parse(Url));
  }
}
