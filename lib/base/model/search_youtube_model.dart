/// kind : "youtube#searchListResponse"
/// etag : "5-JOWwRGB_Ca0oz07OA_00_ATp4"
/// nextPageToken : "CAIQAA"
/// prevPageToken : "CAEQAQ"
/// regionCode : "EG"
/// pageInfo : {"totalResults":1000000,"resultsPerPage":1}
/// items : [{"kind":"youtube#searchResult","etag":"ypTzoi42fgAWzFGGpN-zSoKQZ18","id":{"kind":"youtube#video","videoId":"7eoYdhgYBN8"},"snippet":{"publishedAt":"2023-04-08T12:56:16Z","channelId":"UCrfnNPLMIHZI-wDupFVPcBA","title":"They Made My Dream Yu-Gi-Oh! Card","description":"Want to Support me on TCGPlayer, just click the link to start shopping! https://bit.ly/2Y7Z4jk This is CRAZY! Enjoy The Video?","thumbnails":{"medium":{"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/mqdefault.jpg","width":320,"height":180},"high":{"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/hqdefault.jpg","width":480,"height":360}},"channelTitle":"MKohl40","liveBroadcastContent":"none","publishTime":"2023-04-08T12:56:16Z"}}]

class SearchYoutubeModel {
  SearchYoutubeModel({
      this.kind, 
      this.etag, 
      this.nextPageToken, 
      this.prevPageToken, 
      this.regionCode, 
      this.pageInfo, 
      this.items,});

  SearchYoutubeModel.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    nextPageToken = json['nextPageToken'];
    prevPageToken = json['prevPageToken'];
    regionCode = json['regionCode'];
    pageInfo = json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(SearchItems.fromJson(v));
      });
    }
  }
  String? kind;
  String? etag;
  String? nextPageToken;
  String? prevPageToken;
  String? regionCode;
  PageInfo? pageInfo;
  List<SearchItems>? items;
SearchYoutubeModel copyWith({  String? kind,
  String? etag,
  String? nextPageToken,
  String? prevPageToken,
  String? regionCode,
  PageInfo? pageInfo,
  List<SearchItems>? items,
}) => SearchYoutubeModel(  kind: kind ?? this.kind,
  etag: etag ?? this.etag,
  nextPageToken: nextPageToken ?? this.nextPageToken,
  prevPageToken: prevPageToken ?? this.prevPageToken,
  regionCode: regionCode ?? this.regionCode,
  pageInfo: pageInfo ?? this.pageInfo,
  items: items ?? this.items,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    map['nextPageToken'] = nextPageToken;
    map['prevPageToken'] = prevPageToken;
    map['regionCode'] = regionCode;
    if (pageInfo != null) {
      map['pageInfo'] = pageInfo?.toJson();
    }
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// kind : "youtube#searchResult"
/// etag : "ypTzoi42fgAWzFGGpN-zSoKQZ18"
/// id : {"kind":"youtube#video","videoId":"7eoYdhgYBN8"}
/// snippet : {"publishedAt":"2023-04-08T12:56:16Z","channelId":"UCrfnNPLMIHZI-wDupFVPcBA","title":"They Made My Dream Yu-Gi-Oh! Card","description":"Want to Support me on TCGPlayer, just click the link to start shopping! https://bit.ly/2Y7Z4jk This is CRAZY! Enjoy The Video?","thumbnails":{"medium":{"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/mqdefault.jpg","width":320,"height":180},"high":{"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/hqdefault.jpg","width":480,"height":360}},"channelTitle":"MKohl40","liveBroadcastContent":"none","publishTime":"2023-04-08T12:56:16Z"}

class SearchItems {
  SearchItems({
      this.kind, 
      this.etag, 
      this.id, 
      this.snippet,});

  SearchItems.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'] != null ? Id.fromJson(json['id']) : null;
    snippet = json['snippet'] != null ? Snippet.fromJson(json['snippet']) : null;
  }
  String? kind;
  String? etag;
  Id? id;
  Snippet? snippet;
  SearchItems copyWith({  String? kind,
  String? etag,
  Id? id,
  Snippet? snippet,
}) => SearchItems(  kind: kind ?? this.kind,
  etag: etag ?? this.etag,
  id: id ?? this.id,
  snippet: snippet ?? this.snippet,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    if (id != null) {
      map['id'] = id?.toJson();
    }
    if (snippet != null) {
      map['snippet'] = snippet?.toJson();
    }
    return map;
  }

}

/// publishedAt : "2023-04-08T12:56:16Z"
/// channelId : "UCrfnNPLMIHZI-wDupFVPcBA"
/// title : "They Made My Dream Yu-Gi-Oh! Card"
/// description : "Want to Support me on TCGPlayer, just click the link to start shopping! https://bit.ly/2Y7Z4jk This is CRAZY! Enjoy The Video?"
/// thumbnails : {"medium":{"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/mqdefault.jpg","width":320,"height":180},"high":{"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/hqdefault.jpg","width":480,"height":360}}
/// channelTitle : "MKohl40"
/// liveBroadcastContent : "none"
/// publishTime : "2023-04-08T12:56:16Z"

class Snippet {
  Snippet({
      this.publishedAt, 
      this.channelId, 
      this.title, 
      this.description, 
      this.thumbnails, 
      this.channelTitle, 
      this.liveBroadcastContent, 
      this.publishTime,});

  Snippet.fromJson(dynamic json) {
    publishedAt = json['publishedAt'];
    channelId = json['channelId'];
    title = json['title'];
    description = json['description'];
    thumbnails = json['thumbnails'] != null ? Thumbnails.fromJson(json['thumbnails']) : null;
    channelTitle = json['channelTitle'];
    liveBroadcastContent = json['liveBroadcastContent'];
    publishTime = json['publishTime'];
  }
  String? publishedAt;
  String? channelId;
  String? title;
  String? description;
  Thumbnails? thumbnails;
  String? channelTitle;
  String? liveBroadcastContent;
  String? publishTime;
Snippet copyWith({  String? publishedAt,
  String? channelId,
  String? title,
  String? description,
  Thumbnails? thumbnails,
  String? channelTitle,
  String? liveBroadcastContent,
  String? publishTime,
}) => Snippet(  publishedAt: publishedAt ?? this.publishedAt,
  channelId: channelId ?? this.channelId,
  title: title ?? this.title,
  description: description ?? this.description,
  thumbnails: thumbnails ?? this.thumbnails,
  channelTitle: channelTitle ?? this.channelTitle,
  liveBroadcastContent: liveBroadcastContent ?? this.liveBroadcastContent,
  publishTime: publishTime ?? this.publishTime,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['publishedAt'] = publishedAt;
    map['channelId'] = channelId;
    map['title'] = title;
    map['description'] = description;
    if (thumbnails != null) {
      map['thumbnails'] = thumbnails?.toJson();
    }
    map['channelTitle'] = channelTitle;
    map['liveBroadcastContent'] = liveBroadcastContent;
    map['publishTime'] = publishTime;
    return map;
  }

}

/// medium : {"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/mqdefault.jpg","width":320,"height":180}
/// high : {"url":"https://i.ytimg.com/vi/7eoYdhgYBN8/hqdefault.jpg","width":480,"height":360}

class Thumbnails {
  Thumbnails({
      this.medium, 
      this.high,});

  Thumbnails.fromJson(dynamic json) {
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    high = json['high'] != null ? High.fromJson(json['high']) : null;
  }
  Medium? medium;
  High? high;
Thumbnails copyWith({  Medium? medium,
  High? high,
}) => Thumbnails(  medium: medium ?? this.medium,
  high: high ?? this.high,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (medium != null) {
      map['medium'] = medium?.toJson();
    }
    if (high != null) {
      map['high'] = high?.toJson();
    }
    return map;
  }

}

/// url : "https://i.ytimg.com/vi/7eoYdhgYBN8/hqdefault.jpg"
/// width : 480
/// height : 360

class High {
  High({
      this.url, 
      this.width, 
      this.height,});

  High.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  num? width;
  num? height;
High copyWith({  String? url,
  num? width,
  num? height,
}) => High(  url: url ?? this.url,
  width: width ?? this.width,
  height: height ?? this.height,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }

}

/// url : "https://i.ytimg.com/vi/7eoYdhgYBN8/mqdefault.jpg"
/// width : 320
/// height : 180

class Medium {
  Medium({
      this.url, 
      this.width, 
      this.height,});

  Medium.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  num? width;
  num? height;
Medium copyWith({  String? url,
  num? width,
  num? height,
}) => Medium(  url: url ?? this.url,
  width: width ?? this.width,
  height: height ?? this.height,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['url'] = url;
    map['width'] = width;
    map['height'] = height;
    return map;
  }

}

/// kind : "youtube#video"
/// videoId : "7eoYdhgYBN8"

class Id {
  Id({
      this.kind, 
      this.videoId,});

  Id.fromJson(dynamic json) {
    kind = json['kind'];
    videoId = json['videoId'];
  }
  String? kind;
  String? videoId;
Id copyWith({  String? kind,
  String? videoId,
}) => Id(  kind: kind ?? this.kind,
  videoId: videoId ?? this.videoId,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['videoId'] = videoId;
    return map;
  }

}

/// totalResults : 1000000
/// resultsPerPage : 1

class PageInfo {
  PageInfo({
      this.totalResults, 
      this.resultsPerPage,});

  PageInfo.fromJson(dynamic json) {
    totalResults = json['totalResults'];
    resultsPerPage = json['resultsPerPage'];
  }
  num? totalResults;
  num? resultsPerPage;
PageInfo copyWith({  num? totalResults,
  num? resultsPerPage,
}) => PageInfo(  totalResults: totalResults ?? this.totalResults,
  resultsPerPage: resultsPerPage ?? this.resultsPerPage,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['totalResults'] = totalResults;
    map['resultsPerPage'] = resultsPerPage;
    return map;
  }

}