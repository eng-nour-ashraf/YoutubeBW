/// kind : "youtube#videoListResponse"
/// etag : "A0n5M3Vi0ehiR9vTEacajZA__9s"
/// items : [{"kind":"youtube#video","etag":"bdxx5jtQDBj63r48Nlt2a0eFALY","id":"citjHEDWcxg","snippet":{"publishedAt":"2023-04-06T17:00:31Z","channelId":"UC9pd5VvcJETJaNGz9_K3Pow","title":"جعفر العمدة | سيف ما بقاش ليه في الدنيا غير جعفر وثريا، كأنهم حاسين إنه إبنهم 😔","description":"اتفرج على مسلسل #جعفر_العمدة على #WATCHIT من هنا https://bit.ly/g3far_el3omda\n\nاشترك الآن في عرض رمضان بأقل من ٩ جنيه في الشهر لباقة الإعلانات أو ٥٠ جنيه في الشهر بدون إعلانات\nهذا العرض متاح فقط على الباقات السنوية watchit.com\n\n#رمضانك_عندنا\nمتوفر في جميع أنحاء العالم عدا دول الخليج\n\nحمل تطبيق WATCH IT\nAndroid: http://bit.ly/2kuSlyc \nIOS: https://apple.co/2mcoLhi \n----------------------------------------------------\nWebsite: www.watchit.com\n\nFacebook : www.facebook.com/WatchiTMENA\nInstagram : @watchit\nTikTok: @watchit\nTwitter : @watchitmena\n\nContact Us: support@watchit.com","thumbnails":{"medium":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/mqdefault.jpg","width":320,"height":180},"high":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/hqdefault.jpg","width":480,"height":360},"standard":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/sddefault.jpg","width":640,"height":480},"maxres":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/maxresdefault.jpg","width":1280,"height":720}},"channelTitle":"WATCH IT","categoryId":"24","liveBroadcastContent":"none","localized":{"title":"جعفر العمدة | سيف ما بقاش ليه في الدنيا غير جعفر وثريا، كأنهم حاسين إنه إبنهم 😔","description":"اتفرج على مسلسل #جعفر_العمدة على #WATCHIT من هنا https://bit.ly/g3far_el3omda\n\nاشترك الآن في عرض رمضان بأقل من ٩ جنيه في الشهر لباقة الإعلانات أو ٥٠ جنيه في الشهر بدون إعلانات\nهذا العرض متاح فقط على الباقات السنوية watchit.com\n\n#رمضانك_عندنا\nمتوفر في جميع أنحاء العالم عدا دول الخليج\n\nحمل تطبيق WATCH IT\nAndroid: http://bit.ly/2kuSlyc \nIOS: https://apple.co/2mcoLhi \n----------------------------------------------------\nWebsite: www.watchit.com\n\nFacebook : www.facebook.com/WatchiTMENA\nInstagram : @watchit\nTikTok: @watchit\nTwitter : @watchitmena\n\nContact Us: support@watchit.com"}}}]
/// nextPageToken : "CAYQAA"
/// prevPageToken : "CAUQAQ"
/// pageInfo : {"totalResults":200,"resultsPerPage":1}

class YoutubeModel {
  YoutubeModel({
      this.kind, 
      this.etag, 
      this.items, 
      this.nextPageToken, 
      this.prevPageToken, 
      this.pageInfo,});

  YoutubeModel.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    if (json['items'] != null) {
      items = [];
      json['items'].forEach((v) {
        items?.add(Items.fromJson(v));
      });
    }
    nextPageToken = json['nextPageToken'];
    prevPageToken = json['prevPageToken'];
    pageInfo = json['pageInfo'] != null ? PageInfo.fromJson(json['pageInfo']) : null;
  }
  String? kind;
  String? etag;
  List<Items>? items;
  String? nextPageToken;
  String? prevPageToken;
  PageInfo? pageInfo;
YoutubeModel copyWith({  String? kind,
  String? etag,
  List<Items>? items,
  String? nextPageToken,
  String? prevPageToken,
  PageInfo? pageInfo,
}) => YoutubeModel(  kind: kind ?? this.kind,
  etag: etag ?? this.etag,
  items: items ?? this.items,
  nextPageToken: nextPageToken ?? this.nextPageToken,
  prevPageToken: prevPageToken ?? this.prevPageToken,
  pageInfo: pageInfo ?? this.pageInfo,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    if (items != null) {
      map['items'] = items?.map((v) => v.toJson()).toList();
    }
    map['nextPageToken'] = nextPageToken;
    map['prevPageToken'] = prevPageToken;
    if (pageInfo != null) {
      map['pageInfo'] = pageInfo?.toJson();
    }
    return map;
  }

}

/// totalResults : 200
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

/// kind : "youtube#video"
/// etag : "bdxx5jtQDBj63r48Nlt2a0eFALY"
/// id : "citjHEDWcxg"
/// snippet : {"publishedAt":"2023-04-06T17:00:31Z","channelId":"UC9pd5VvcJETJaNGz9_K3Pow","title":"جعفر العمدة | سيف ما بقاش ليه في الدنيا غير جعفر وثريا، كأنهم حاسين إنه إبنهم 😔","description":"اتفرج على مسلسل #جعفر_العمدة على #WATCHIT من هنا https://bit.ly/g3far_el3omda\n\nاشترك الآن في عرض رمضان بأقل من ٩ جنيه في الشهر لباقة الإعلانات أو ٥٠ جنيه في الشهر بدون إعلانات\nهذا العرض متاح فقط على الباقات السنوية watchit.com\n\n#رمضانك_عندنا\nمتوفر في جميع أنحاء العالم عدا دول الخليج\n\nحمل تطبيق WATCH IT\nAndroid: http://bit.ly/2kuSlyc \nIOS: https://apple.co/2mcoLhi \n----------------------------------------------------\nWebsite: www.watchit.com\n\nFacebook : www.facebook.com/WatchiTMENA\nInstagram : @watchit\nTikTok: @watchit\nTwitter : @watchitmena\n\nContact Us: support@watchit.com","thumbnails":{"medium":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/mqdefault.jpg","width":320,"height":180},"high":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/hqdefault.jpg","width":480,"height":360},"standard":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/sddefault.jpg","width":640,"height":480},"maxres":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/maxresdefault.jpg","width":1280,"height":720}},"channelTitle":"WATCH IT","categoryId":"24","liveBroadcastContent":"none","localized":{"title":"جعفر العمدة | سيف ما بقاش ليه في الدنيا غير جعفر وثريا، كأنهم حاسين إنه إبنهم 😔","description":"اتفرج على مسلسل #جعفر_العمدة على #WATCHIT من هنا https://bit.ly/g3far_el3omda\n\nاشترك الآن في عرض رمضان بأقل من ٩ جنيه في الشهر لباقة الإعلانات أو ٥٠ جنيه في الشهر بدون إعلانات\nهذا العرض متاح فقط على الباقات السنوية watchit.com\n\n#رمضانك_عندنا\nمتوفر في جميع أنحاء العالم عدا دول الخليج\n\nحمل تطبيق WATCH IT\nAndroid: http://bit.ly/2kuSlyc \nIOS: https://apple.co/2mcoLhi \n----------------------------------------------------\nWebsite: www.watchit.com\n\nFacebook : www.facebook.com/WatchiTMENA\nInstagram : @watchit\nTikTok: @watchit\nTwitter : @watchitmena\n\nContact Us: support@watchit.com"}}

class Items {
  Items({
      this.kind, 
      this.etag, 
      this.id, 
      this.snippet,});

  Items.fromJson(dynamic json) {
    kind = json['kind'];
    etag = json['etag'];
    id = json['id'];
    snippet = json['snippet'] != null ? Snippet.fromJson(json['snippet']) : null;
  }
  String? kind;
  String? etag;
  String? id;
  Snippet? snippet;
Items copyWith({  String? kind,
  String? etag,
  String? id,
  Snippet? snippet,
}) => Items(  kind: kind ?? this.kind,
  etag: etag ?? this.etag,
  id: id ?? this.id,
  snippet: snippet ?? this.snippet,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['kind'] = kind;
    map['etag'] = etag;
    map['id'] = id;
    if (snippet != null) {
      map['snippet'] = snippet?.toJson();
    }
    return map;
  }

}

/// publishedAt : "2023-04-06T17:00:31Z"
/// channelId : "UC9pd5VvcJETJaNGz9_K3Pow"
/// title : "جعفر العمدة | سيف ما بقاش ليه في الدنيا غير جعفر وثريا، كأنهم حاسين إنه إبنهم 😔"
/// description : "اتفرج على مسلسل #جعفر_العمدة على #WATCHIT من هنا https://bit.ly/g3far_el3omda\n\nاشترك الآن في عرض رمضان بأقل من ٩ جنيه في الشهر لباقة الإعلانات أو ٥٠ جنيه في الشهر بدون إعلانات\nهذا العرض متاح فقط على الباقات السنوية watchit.com\n\n#رمضانك_عندنا\nمتوفر في جميع أنحاء العالم عدا دول الخليج\n\nحمل تطبيق WATCH IT\nAndroid: http://bit.ly/2kuSlyc \nIOS: https://apple.co/2mcoLhi \n----------------------------------------------------\nWebsite: www.watchit.com\n\nFacebook : www.facebook.com/WatchiTMENA\nInstagram : @watchit\nTikTok: @watchit\nTwitter : @watchitmena\n\nContact Us: support@watchit.com"
/// thumbnails : {"medium":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/mqdefault.jpg","width":320,"height":180},"high":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/hqdefault.jpg","width":480,"height":360},"standard":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/sddefault.jpg","width":640,"height":480},"maxres":{"url":"https://i.ytimg.com/vi/citjHEDWcxg/maxresdefault.jpg","width":1280,"height":720}}
/// channelTitle : "WATCH IT"
/// categoryId : "24"
/// liveBroadcastContent : "none"
/// localized : {"title":"جعفر العمدة | سيف ما بقاش ليه في الدنيا غير جعفر وثريا، كأنهم حاسين إنه إبنهم 😔","description":"اتفرج على مسلسل #جعفر_العمدة على #WATCHIT من هنا https://bit.ly/g3far_el3omda\n\nاشترك الآن في عرض رمضان بأقل من ٩ جنيه في الشهر لباقة الإعلانات أو ٥٠ جنيه في الشهر بدون إعلانات\nهذا العرض متاح فقط على الباقات السنوية watchit.com\n\n#رمضانك_عندنا\nمتوفر في جميع أنحاء العالم عدا دول الخليج\n\nحمل تطبيق WATCH IT\nAndroid: http://bit.ly/2kuSlyc \nIOS: https://apple.co/2mcoLhi \n----------------------------------------------------\nWebsite: www.watchit.com\n\nFacebook : www.facebook.com/WatchiTMENA\nInstagram : @watchit\nTikTok: @watchit\nTwitter : @watchitmena\n\nContact Us: support@watchit.com"}

class Snippet {
  Snippet({
      this.publishedAt, 
      this.channelId, 
      this.title, 
      this.description, 
      this.thumbnails, 
      this.channelTitle, 
      this.categoryId, 
      this.liveBroadcastContent, 
      this.localized,});

  Snippet.fromJson(dynamic json) {
    publishedAt = json['publishedAt'];
    channelId = json['channelId'];
    title = json['title'];
    description = json['description'];
    thumbnails = json['thumbnails'] != null ? Thumbnails.fromJson(json['thumbnails']) : null;
    channelTitle = json['channelTitle'];
    categoryId = json['categoryId'];
    liveBroadcastContent = json['liveBroadcastContent'];
    localized = json['localized'] != null ? Localized.fromJson(json['localized']) : null;
  }
  String? publishedAt;
  String? channelId;
  String? title;
  String? description;
  Thumbnails? thumbnails;
  String? channelTitle;
  String? categoryId;
  String? liveBroadcastContent;
  Localized? localized;
Snippet copyWith({  String? publishedAt,
  String? channelId,
  String? title,
  String? description,
  Thumbnails? thumbnails,
  String? channelTitle,
  String? categoryId,
  String? liveBroadcastContent,
  Localized? localized,
}) => Snippet(  publishedAt: publishedAt ?? this.publishedAt,
  channelId: channelId ?? this.channelId,
  title: title ?? this.title,
  description: description ?? this.description,
  thumbnails: thumbnails ?? this.thumbnails,
  channelTitle: channelTitle ?? this.channelTitle,
  categoryId: categoryId ?? this.categoryId,
  liveBroadcastContent: liveBroadcastContent ?? this.liveBroadcastContent,
  localized: localized ?? this.localized,
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
    map['categoryId'] = categoryId;
    map['liveBroadcastContent'] = liveBroadcastContent;
    if (localized != null) {
      map['localized'] = localized?.toJson();
    }
    return map;
  }

}

/// title : "جعفر العمدة | سيف ما بقاش ليه في الدنيا غير جعفر وثريا، كأنهم حاسين إنه إبنهم 😔"
/// description : "اتفرج على مسلسل #جعفر_العمدة على #WATCHIT من هنا https://bit.ly/g3far_el3omda\n\nاشترك الآن في عرض رمضان بأقل من ٩ جنيه في الشهر لباقة الإعلانات أو ٥٠ جنيه في الشهر بدون إعلانات\nهذا العرض متاح فقط على الباقات السنوية watchit.com\n\n#رمضانك_عندنا\nمتوفر في جميع أنحاء العالم عدا دول الخليج\n\nحمل تطبيق WATCH IT\nAndroid: http://bit.ly/2kuSlyc \nIOS: https://apple.co/2mcoLhi \n----------------------------------------------------\nWebsite: www.watchit.com\n\nFacebook : www.facebook.com/WatchiTMENA\nInstagram : @watchit\nTikTok: @watchit\nTwitter : @watchitmena\n\nContact Us: support@watchit.com"

class Localized {
  Localized({
      this.title, 
      this.description,});

  Localized.fromJson(dynamic json) {
    title = json['title'];
    description = json['description'];
  }
  String? title;
  String? description;
Localized copyWith({  String? title,
  String? description,
}) => Localized(  title: title ?? this.title,
  description: description ?? this.description,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['title'] = title;
    map['description'] = description;
    return map;
  }

}

/// medium : {"url":"https://i.ytimg.com/vi/citjHEDWcxg/mqdefault.jpg","width":320,"height":180}
/// high : {"url":"https://i.ytimg.com/vi/citjHEDWcxg/hqdefault.jpg","width":480,"height":360}
/// standard : {"url":"https://i.ytimg.com/vi/citjHEDWcxg/sddefault.jpg","width":640,"height":480}
/// maxres : {"url":"https://i.ytimg.com/vi/citjHEDWcxg/maxresdefault.jpg","width":1280,"height":720}

class Thumbnails {
  Thumbnails({
      this.medium, 
      this.high, 
      this.standard, 
      this.maxres,});

  Thumbnails.fromJson(dynamic json) {
    medium = json['medium'] != null ? Medium.fromJson(json['medium']) : null;
    high = json['high'] != null ? High.fromJson(json['high']) : null;
    standard = json['standard'] != null ? Standard.fromJson(json['standard']) : null;
    maxres = json['maxres'] != null ? Maxres.fromJson(json['maxres']) : null;
  }
  Medium? medium;
  High? high;
  Standard? standard;
  Maxres? maxres;
Thumbnails copyWith({  Medium? medium,
  High? high,
  Standard? standard,
  Maxres? maxres,
}) => Thumbnails(  medium: medium ?? this.medium,
  high: high ?? this.high,
  standard: standard ?? this.standard,
  maxres: maxres ?? this.maxres,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (medium != null) {
      map['medium'] = medium?.toJson();
    }
    if (high != null) {
      map['high'] = high?.toJson();
    }
    if (standard != null) {
      map['standard'] = standard?.toJson();
    }
    if (maxres != null) {
      map['maxres'] = maxres?.toJson();
    }
    return map;
  }

}

/// url : "https://i.ytimg.com/vi/citjHEDWcxg/maxresdefault.jpg"
/// width : 1280
/// height : 720

class Maxres {
  Maxres({
      this.url, 
      this.width, 
      this.height,});

  Maxres.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  num? width;
  num? height;
Maxres copyWith({  String? url,
  num? width,
  num? height,
}) => Maxres(  url: url ?? this.url,
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

/// url : "https://i.ytimg.com/vi/citjHEDWcxg/sddefault.jpg"
/// width : 640
/// height : 480

class Standard {
  Standard({
      this.url, 
      this.width, 
      this.height,});

  Standard.fromJson(dynamic json) {
    url = json['url'];
    width = json['width'];
    height = json['height'];
  }
  String? url;
  num? width;
  num? height;
Standard copyWith({  String? url,
  num? width,
  num? height,
}) => Standard(  url: url ?? this.url,
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

/// url : "https://i.ytimg.com/vi/citjHEDWcxg/hqdefault.jpg"
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

/// url : "https://i.ytimg.com/vi/citjHEDWcxg/mqdefault.jpg"
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