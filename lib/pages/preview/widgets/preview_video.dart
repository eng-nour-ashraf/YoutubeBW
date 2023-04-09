import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';
import 'package:youtube_preview/base/controllers/theme/theme_controller.dart';
import '../../../base/resources/assets.dart';
import '../../../base/resources/colors.dart';

class PreviewVideo extends StatelessWidget {
  final Widget player;
  final ThemeController themeController;
  const PreviewVideo({Key? key, required this.player, required this.themeController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 26.h,
        left: 21.w,
        right: 21.w,
      ),
      child: Stack(
        children: [
          ClipRRect(borderRadius: BorderRadius.circular(28).w,child: player),
          Positioned.fill(
            bottom: 10,
            left: 10,
            right: 10,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    YoutubeValueBuilder(
                      builder: (context, value) {
                        return GestureDetector(
                          onTap: () {
                            value.playerState == PlayerState.playing
                                ? context.ytController.pauseVideo()
                                : context.ytController.playVideo();
                          },
                          child: Image.asset(
                            value.playerState == PlayerState.playing
                                ? ProjectAssets.pause
                                : ProjectAssets.play,
                            width: 25,
                            height: 25,
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 5.w,),
                    Expanded(
                      child: StreamBuilder<YoutubeVideoState>(
                        stream: context.ytController.videoStateStream,
                        initialData: const YoutubeVideoState(),
                        builder: (context, snapshot) {
                          final position =
                              snapshot.data?.position.inSeconds ?? 0;
                          final duration =
                              context.ytController.metadata.duration.inSeconds;
                          var value = 0.0;
                          value = position == 0 || duration == 0
                              ? 0
                              : position / duration;

                          return StatefulBuilder(
                            builder: (context, setState) {
                              return SliderTheme(
                                data: SliderThemeData(
                                  // here
                                  overlayShape: SliderComponentShape.noThumb,
                                  thumbShape: SliderComponentShape.noThumb,
                                ),
                                child: Slider(
                                  value: value,
                                  activeColor: ProjectColors.colorWhite,
                                  inactiveColor:
                                  ProjectColors.colorWhite.withAlpha(50),
                                  onChanged: (positionFraction) {
                                    value = positionFraction;
                                    setState(() {});
                                    context.ytController.seekTo(
                                      seconds: (value * duration).toDouble(),
                                      allowSeekAhead: true,
                                    );
                                  },
                                  min: 0,
                                  max: 1,
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                    SizedBox(width: 5.w,),
                    YoutubeValueBuilder(
                      builder: (context, value) {
                        return GestureDetector(
                          onTap: () {
                            context.ytController.toggleFullScreen();
                          },
                          child: Image.asset(
                            ProjectAssets.full,
                            width: 21,
                            height: 21,
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
