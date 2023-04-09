import 'package:dio/dio.dart';
import 'network_config.dart';

class ApiController {
  NetworkConfig? _networkConfig;

  ApiController() {
    _networkConfig = NetworkConfig();
  }

  Future<Response> onPopularVideos({
    String? pageToken,
    required String regionCode,
    required String key,
  }) {
    var header = <String, String>{
      'Accept':'application/json'
    };
    var query = <String, dynamic>{
      'part': 'snippet',
      'chart': 'mostPopular',
      'maxResults': '20',
      'regionCode': regionCode,
      'key': key
    };

    if (pageToken != null) {
      query['pageToken'] = pageToken;
    }

    return _networkConfig!.get(
      url: 'videos',
      headers: header,
      query: query,
    );
  }


  Future<Response> onSearchVideos({
    String? pageToken,
    required String key,
    required String searchWord,
  }) {
    var header = <String, String>{
      'Accept':'application/json'
    };
    var query = <String, dynamic>{
      'part': 'snippet',
      'type':'video',
      'q':searchWord,
      'maxResults': '20',
      'key': key
    };

    if (pageToken != null) {
      query['pageToken'] = pageToken;
    }

    return _networkConfig!.get(
      url: 'search',
      headers: header,
      query: query,
    );
  }
}
