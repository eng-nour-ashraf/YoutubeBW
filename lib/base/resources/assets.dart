class ProjectAssets {
  // font family
  static String fontFamily = 'Poppins'.png;

  // icons
  static String error = 'error'.png;
  static String errorWhite = 'error_white'.png;
  static String clear = 'clear'.png;
  static String notification = 'notification'.png;
  static String search = 'search'.png;
  static String play = 'play'.png;
  static String full = 'full'.png;
  static String pause = 'pause'.png;

  // design
  static String homeScreen = 'assets/design/Home.png';
  static String searchScreen = 'assets/design/search.png';
  static String previewScreen = 'assets/design/preview.png';

  // keys
  static String ytKey = 'AIzaSyBgZGx5fiz_ijCYyFTnAuUaM5VcA-WeQWM';


}

extension ImageExt on String {
  String get png => 'assets/icons/$this.png';
  String get svg => 'assets/icons/$this.svg';
  String get jpeg => 'assets/icons/$this.jpeg';
}