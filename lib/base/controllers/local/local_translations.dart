import 'package:get/get.dart';

class LocalTranslations extends Translations {
  final enMap = {
    'success': 'Done Successfully',
    'error': 'An Error Occurred',
    'errorMsg': 'An Error Occurred \n Please Try Again',
    'tryAgain': 'Try Again',
    'loading': 'Loading...',
    'helloName': 'Hello @name!',
    'results': 'Results',
    'vfy': 'Videos for you',
    'noVideos':'there is no popular videos \n right now',
    'searchFV':'search for video',
    'noSearchResult':'No Search Results \n For @search',
    'searching':'Searching...',
    'review':'Review'
  };

  // final arMap = {
  // };

  @override
  Map<String, Map<String, String>> get keys => {
        'en': enMap,
      };
}
