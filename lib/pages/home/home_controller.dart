import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart' as gt;
import 'package:youtube_preview/base/controllers/utils/utils_controller.dart';
import 'package:youtube_preview/base/model/search_youtube_model.dart';
import 'package:youtube_preview/base/model/youtube_model.dart';
import 'package:youtube_preview/base/resources/assets.dart';
import '../../base/app_status/app_status.dart';
import '../../base/controllers/log/log_controller.dart';
import '../../base/controllers/network/api_controller.dart';

class HomeController extends gt.GetxController {
  //  controllers

  LogController logController = gt.Get.find();
  UtilsController utilsController = gt.Get.find();
  ApiController apiController = gt.Get.find();

  //***************************************************************************************************************

  //  variables

  AppStatus appStatus = AppStatus.init;
  bool isLoadingMore = false;

  List<Items>? popularVideos = [];
  String? nextPageTokenPopular;
  num? totalResultsPopular;

  TextEditingController searchTextEditingController = TextEditingController();
  String searchKeyword = '';
  bool isSearching = false;
  List<SearchItems>? searchResults = [];
  String? nextPageTokenSearch;
  num? totalResultsSearch;
  Timer? searchOnStoppedTyping;

  //***************************************************************************************************************

  //  status

  @override
  void onInit() {
    logController.red(msg: 'init Home controller');
    onLoadVideos();
    super.onInit();
  }

  @override
  void onReady() {
    logController.red(msg: 'ready Home controller');
    super.onReady();
  }

  @override
  void onClose() {
    logController.red(msg: 'close Home controller');
    super.onClose();
  }

//***************************************************************************************************************

//  methods

  void onLoadVideos({bool loadMore = false}) async {
    if (!loadMore) {
      appStatus = AppStatus.loading;
    }
    update();
    await apiController
        .onPopularVideos(
            regionCode: 'EG',
            key: ProjectAssets.ytKey,
            pageToken: nextPageTokenPopular)
        .then(
      (Response response) {
        YoutubeModel youtubeModel = YoutubeModel.fromJson(response.data);
        if (loadMore) {
          isLoadingMore = false;
          popularVideos!.addAll(youtubeModel.items!);
        } else {
          popularVideos = youtubeModel.items;
          appStatus = AppStatus.success;
        }
        nextPageTokenPopular = youtubeModel.nextPageToken;
        totalResultsPopular = youtubeModel.pageInfo!.totalResults!;
        update();
      },
    ).catchError((error) {
      isLoadingMore = false;
      appStatus = AppStatus.failed;
      update();
    }).timeout(const Duration(seconds: 10), onTimeout: () {
      isLoadingMore = false;
      appStatus = AppStatus.failed;
      update();
    });
  }

  void onLoadSearchResults({bool loadMore = false}) async {
    await apiController
        .onSearchVideos(
            key: ProjectAssets.ytKey,
            pageToken: nextPageTokenSearch,
            searchWord: searchKeyword)
        .then(
      (Response response) {
        SearchYoutubeModel searchYoutubeModel =
            SearchYoutubeModel.fromJson(response.data);
        if (loadMore) {
          isLoadingMore = false;
          searchResults!.addAll(searchYoutubeModel.items!);
        } else {
          searchResults = searchYoutubeModel.items;
          appStatus = AppStatus.success;
        }
        nextPageTokenSearch = searchYoutubeModel.nextPageToken;
        totalResultsSearch = searchYoutubeModel.pageInfo!.totalResults!;
        update();
      },
    ).catchError((error) {
      isLoadingMore = false;
      appStatus = AppStatus.failed;
      update();
    }).timeout(const Duration(seconds: 10), onTimeout: () {
      isLoadingMore = false;
      appStatus = AppStatus.failed;
      update();
    });
  }

  void onNotification() {}

  void onSearch({required String search}) {
    if (search == '') {
      onClearSearch();
    } else if (search != searchKeyword) {
      searchKeyword = search;
      isSearching = true;
      appStatus = AppStatus.loading;
      update();
      _onTimer();
    }
  }

  void onClearSearch() {
    isSearching = false;
    searchResults!.clear();
    totalResultsSearch = null;
    nextPageTokenSearch = null;
    if (searchOnStoppedTyping != null) {
      searchOnStoppedTyping!.cancel();
    }
    searchTextEditingController.text = '';
    searchKeyword = '';
    utilsController.clearFocus();
    appStatus = AppStatus.success;
    update();
  }

  void onLoadMore() {
    if (isSearching) {
      if (totalResultsSearch! > searchResults!.length) {
        isLoadingMore = true;
        update();
        onLoadSearchResults(loadMore: true);
      }
    } else {
      if (totalResultsPopular! > popularVideos!.length) {
        isLoadingMore = true;
        update();
        onLoadVideos(loadMore: true);
      }
    }
  }

  void _onTimer() {
    if (searchOnStoppedTyping != null) {
      searchOnStoppedTyping!.cancel();
    }
    const duration = Duration(seconds: 2);
    searchOnStoppedTyping = Timer.periodic(duration, (timer) {
      utilsController.clearFocus();
      onLoadSearchResults();
      timer.cancel();
    });
  }

  void onPopularPress({required int index}) {
    var id = popularVideos![index].id;
    var name = popularVideos![index].snippet!.title!;
    var des = popularVideos![index].snippet!.description!;
    gt.Get.toNamed('/preview', parameters: {'videoId': id.toString(),'videoName':name,'videoDes':des});
  }

  void onSearchPress({required int index}) {
    var id = searchResults![index].id!.videoId!;
    var name = searchResults![index].snippet!.title!;
    var des = searchResults![index].snippet!.description!;
    gt.Get.toNamed('/preview', parameters: {'videoId': id.toString(),'videoName':name,'videoDes':des});
  }
}
