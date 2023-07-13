class Overview {
  String? coverPhoto;
  String? seriesName;
  List<String>? coachesNames;
  String? description;
  String? overviewVideoUrl;
  List<Coaches>? coaches;
  List<Classes>? classes;
  List<SocialFeed>? socialFeed;

  Overview(
      {this.coverPhoto,
        this.seriesName,
        this.coachesNames,
        this.description,
        this.overviewVideoUrl,
        this.coaches,
        this.classes,
        this.socialFeed});

  Overview.fromJson(Map<String, dynamic> json) {
    coverPhoto = json['coverPhoto'];
    seriesName = json['seriesName'];
    coachesNames = json['coachesNames'].cast<String>();
    description = json['description'];
    overviewVideoUrl = json['overviewVideoUrl'];
    if (json['coaches'] != null) {
      coaches = <Coaches>[];
      json['coaches'].forEach((v) {
        coaches!.add(new Coaches.fromJson(v));
      });
    }
    if (json['classes'] != null) {
      classes = <Classes>[];
      json['classes'].forEach((v) {
        classes!.add(new Classes.fromJson(v));
      });
    }
    if (json['socialFeed'] != null) {
      socialFeed = <SocialFeed>[];
      json['socialFeed'].forEach((v) {
        socialFeed!.add(new SocialFeed.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['coverPhoto'] = this.coverPhoto;
    data['seriesName'] = this.seriesName;
    data['coachesNames'] = this.coachesNames;
    data['description'] = this.description;
    data['overviewVideoUrl'] = this.overviewVideoUrl;
    if (this.coaches != null) {
      data['coaches'] = this.coaches!.map((v) => v.toJson()).toList();
    }
    if (this.classes != null) {
      data['classes'] = this.classes!.map((v) => v.toJson()).toList();
    }
    if (this.socialFeed != null) {
      data['socialFeed'] = this.socialFeed!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Coaches {
  String? name;
  String? bio;

  Coaches({this.name, this.bio});

  Coaches.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    bio = json['bio'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['bio'] = this.bio;
    return data;
  }
}

class Classes {
  String? className;
  String? classDescription;

  Classes({this.className, this.classDescription});

  Classes.fromJson(Map<String, dynamic> json) {
    className = json['className'];
    classDescription = json['classDescription'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['className'] = this.className;
    data['classDescription'] = this.classDescription;
    return data;
  }
}

class SocialFeed {
  String? author;
  String? postContent;

  SocialFeed({this.author, this.postContent});

  SocialFeed.fromJson(Map<String, dynamic> json) {
    author = json['author'];
    postContent = json['postContent'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['author'] = this.author;
    data['postContent'] = this.postContent;
    return data;
  }
}