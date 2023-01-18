
import 'dart:convert';

SearchRepositor? SearchRepositorFromJson(String str) => SearchRepositor.fromJson(json.decode(str));

String SearchRepositorToJson(SearchRepositor? data) => json.encode(data!.toJson());

class SearchRepositor {
  SearchRepositor({
    required this.contents,
    required  this.cursorNext,
    required this.didYouMean,
    required this.estimatedResults,
    required this.filterGroups,
    required this.refinements,
  });

  List<Content?>? contents;
  String? cursorNext;
  dynamic didYouMean;
  int? estimatedResults;
  List<FilterGroup?>? filterGroups;
  List<String?>? refinements;

  factory SearchRepositor.fromJson(Map<String, dynamic> json) => SearchRepositor(
    contents: json["contents"] == null ? [] : List<Content?>.from(json["contents"]!.map((x) => Content.fromJson(x))),
    cursorNext: json["cursorNext"],
    didYouMean: json["didYouMean"],
    estimatedResults: json["estimatedResults"],
    filterGroups: json["filterGroups"] == null ? [] : List<FilterGroup?>.from(json["filterGroups"]!.map((x) => FilterGroup.fromJson(x))),
    refinements: json["refinements"] == null ? [] : List<String?>.from(json["refinements"]!.map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "contents": contents == null ? [] : List<dynamic>.from(contents!.map((x) => x!.toJson())),
    "cursorNext": cursorNext,
    "didYouMean": didYouMean,
    "estimatedResults": estimatedResults,
    "filterGroups": filterGroups == null ? [] : List<dynamic>.from(filterGroups!.map((x) => x!.toJson())),
    "refinements": refinements == null ? [] : List<dynamic>.from(refinements!.map((x) => x)),
  };
}

class Content {
  Content({
    this.channel,
    this.type,
    this.video,
  });

  Channel? channel;
  ContentType? type;
  Video? video;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
    channel: json["channel"] != null ? Channel.fromJson(json["channel"]) : null,
    type: contentTypeValues.map[ json["type"]],
    video: json["video"] != null ? Video.fromJson( json["video"]) : null,
  );

  Map<String, dynamic> toJson() => {
    "channel": channel,
    "type": contentTypeValues.reverse![type],
    "video": video,
  };
}

class Channel {
  Channel({
    this.avatar,
    this.badges,
    this.canonicalBaseUrl,
    this.channelId,
    this.descriptionSnippet,
    this.stats,
    this.title,
    this.username,
  });

  List<Avatar?>? avatar;
  List<BadgeClass?>? badges;
  String? canonicalBaseUrl;
  String? channelId;
  String? descriptionSnippet;
  ChannelStats? stats;
  String? title;
  String? username;

  factory Channel.fromJson(Map<String, dynamic> json) => Channel(
    avatar: json["avatar"] == null ? [] : List<Avatar?>.from(json["avatar"]!.map((x) => Avatar.fromJson(x))),
    badges: json["badges"] == null ? [] : List<BadgeClass?>.from(json["badges"]!.map((x) => BadgeClass.fromJson(x))),
    canonicalBaseUrl: json["canonicalBaseUrl"],
    channelId: json["channelId"],
    descriptionSnippet: json["descriptionSnippet"],
    stats: ChannelStats.fromJson(json["stats"]),
    title: json["title"],
    username: json["username"],
  );

  Map<String, dynamic> toJson() => {
    "avatar": avatar == null ? [] : List<dynamic>.from(avatar!.map((x) => x!.toJson())),
    "badges": badges == null ? [] : List<dynamic>.from(badges!.map((x) => x!.toJson())),
    "canonicalBaseUrl": canonicalBaseUrl,
    "channelId": channelId,
    "descriptionSnippet": descriptionSnippet,
    "stats": stats!.toJson(),
    "title": title,
    "username": username,
  };
}

class Avatar {
  Avatar({
    this.height,
    this.url,
    this.width,
  });

  int? height;
  String? url;
  int? width;

  factory Avatar.fromJson(Map<String, dynamic> json) => Avatar(
    height: json["height"],
    url: json["url"],
    width: json["width"],
  );

  Map<String, dynamic> toJson() => {
    "height": height,
    "url": url,
    "width": width,
  };
}

class BadgeClass {
  BadgeClass({
    this.text,
    this.type,
  });

  TextModel? text;
  BadgeType? type;

  factory BadgeClass.fromJson(Map<String, dynamic> json) => BadgeClass(
    text: textValues!.map[json["text"]],
    type: badgeTypeValues!.map[json["type"]],
  );

  Map<String, dynamic> toJson() => {
    "text": textValues.reverse![text],
    "type": badgeTypeValues.reverse![type],
  };
}

enum TextModel { VERIFIED }

final textValues = EnumValues({
  "Verified": TextModel.VERIFIED
});

enum BadgeType { VERIFIED_CHANNEL }

final badgeTypeValues = EnumValues({
  "VERIFIED_CHANNEL": BadgeType.VERIFIED_CHANNEL
});

class ChannelStats {
  ChannelStats({
    this.subscribers,
    this.subscribersText,
  });

  int? subscribers;
  String? subscribersText;

  factory ChannelStats.fromJson(Map<String, dynamic> json) => ChannelStats(
    subscribers: json["subscribers"],
    subscribersText: json["subscribersText"],
  );

  Map<String, dynamic> toJson() => {
    "subscribers": subscribers,
    "subscribersText": subscribersText,
  };
}

enum ContentType { CHANNEL, VIDEO }

final contentTypeValues = EnumValues({
  "channel": ContentType.CHANNEL,
  "video": ContentType.VIDEO
});

class Video {
  Video({
    this.author,
    this.badges,
    this.descriptionSnippet,
    this.isLiveNow,
    this.lengthSeconds,
    this.movingThumbnails,
    this.publishedTimeText,
    this.stats,
    this.thumbnails,
    this.title,
    this.videoId,
  });

  Author? author;
  List<BadgeEnum?>? badges;
  String? descriptionSnippet;
  bool? isLiveNow;
  int? lengthSeconds;
  List<Avatar?>? movingThumbnails;
  String? publishedTimeText;
  VideoStats? stats;
  List<Avatar?>? thumbnails;
  String? title;
  String? videoId;

  factory Video.fromJson(Map<String, dynamic> json) => Video(
    author: Author.fromJson(json["author"]),
    badges: json["badges"] == null ? [] : List<BadgeEnum?>.from(json["badges"]!.map((x) => badgeEnumValues!.map[x])),
    descriptionSnippet: json["descriptionSnippet"],
    isLiveNow: json["isLiveNow"],
    lengthSeconds: json["lengthSeconds"],
    movingThumbnails: json["movingThumbnails"] == null ? [] : json["movingThumbnails"] == null ? [] : List<Avatar?>.from(json["movingThumbnails"]!.map((x) => Avatar.fromJson(x))),
    publishedTimeText: json["publishedTimeText"],
    stats: VideoStats.fromJson(json["stats"]),
    thumbnails: json["thumbnails"] == null ? [] : List<Avatar?>.from(json["thumbnails"]!.map((x) => Avatar.fromJson(x))),
    title: json["title"],
    videoId: json["videoId"],
  );

  Map<String, dynamic> toJson() => {
    "author": author!.toJson(),
    "badges": badges == null ? [] : List<dynamic>.from(badges!.map((x) => badgeEnumValues.reverse![x])),
    "descriptionSnippet": descriptionSnippet,
    "isLiveNow": isLiveNow,
    "lengthSeconds": lengthSeconds,
    "movingThumbnails": movingThumbnails == null ? [] : movingThumbnails == null ? [] : List<dynamic>.from(movingThumbnails!.map((x) => x!.toJson())),
    "publishedTimeText": publishedTimeText,
    "stats": stats!.toJson(),
    "thumbnails": thumbnails == null ? [] : List<dynamic>.from(thumbnails!.map((x) => x!.toJson())),
    "title": title,
    "videoId": videoId,
  };
}

class Author {
  Author({
    this.avatar,
    this.badges,
    this.canonicalBaseUrl,
    this.channelId,
    this.title,
  });

  List<Avatar?>? avatar;
  List<BadgeClass?>? badges;
  String? canonicalBaseUrl;
  String? channelId;
  String? title;

  factory Author.fromJson(Map<String, dynamic> json) => Author(
    avatar: json["avatar"] == null ? [] : List<Avatar?>.from(json["avatar"]!.map((x) => Avatar.fromJson(x))),
    badges: json["badges"] == null ? [] : List<BadgeClass?>.from(json["badges"]!.map((x) => BadgeClass.fromJson(x))),
    canonicalBaseUrl: json["canonicalBaseUrl"],
    channelId: json["channelId"],
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "avatar": avatar == null ? [] : List<dynamic>.from(avatar!.map((x) => x!.toJson())),
    "badges": badges == null ? [] : List<dynamic>.from(badges!.map((x) => x!.toJson())),
    "canonicalBaseUrl": canonicalBaseUrl,
    "channelId": channelId,
    "title": title,
  };
}

enum BadgeEnum { NEW, THE_4_K }

final badgeEnumValues = EnumValues({
  "New": BadgeEnum.NEW,
  "4K": BadgeEnum.THE_4_K
});

class VideoStats {
  VideoStats({
    this.views,
  });

  int? views;

  factory VideoStats.fromJson(Map<String, dynamic> json) => VideoStats(
    views: json["views"],
  );

  Map<String, dynamic> toJson() => {
    "views": views,
  };
}

class FilterGroup {
  FilterGroup({
    this.filters,
    this.title,
  });

  List<Filter?>? filters;
  String? title;

  factory FilterGroup.fromJson(Map<String, dynamic> json) => FilterGroup(
    filters: json["filters"] == null ? [] : List<Filter?>.from(json["filters"]!.map((x) => Filter.fromJson(x))),
    title: json["title"],
  );

  Map<String, dynamic> toJson() => {
    "filters": filters == null ? [] : List<dynamic>.from(filters!.map((x) => x!.toJson())),
    "title": title,
  };
}

class Filter {
  Filter({
    this.cursorSelect,
    this.label,
    this.selected,
  });

  String? cursorSelect;
  String? label;
  bool? selected;

  factory Filter.fromJson(Map<String, dynamic> json) => Filter(
    cursorSelect: json["cursorSelect"],
    label: json["label"],
    selected: json["selected"],
  );

  Map<String, dynamic> toJson() => {
    "cursorSelect": cursorSelect,
    "label": label,
    "selected": selected,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String>? reverseMap;

  EnumValues(this.map);

  Map<T, String>? get reverse {
    reverseMap ??= map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}