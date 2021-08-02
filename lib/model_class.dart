

class DropDownModelClass {
  int? code;
  bool? success;
  String? message;
  Data? data;

  DropDownModelClass({this.code, this.success, this.message, this.data});

  DropDownModelClass.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    success = json['success'];
    message = json['message'];
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['success'] = this.success;
    data['message'] = this.message;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Data {
  int? courseId;
  int? userId;
  String? title;
  String? description;
  int? status;
  String? genre;
  String? createdAt;
  String? updatedAt;
  String? image;
  String? coverUrl;
  String? sessionCount;
  Sessions? sessions;
  List<SessionLevels>? sessionLevels;

  Data(
      {this.courseId,
      this.userId,
      this.title,
      this.description,
      this.status,
      this.genre,
      this.createdAt,
      this.updatedAt,
      this.image,
      this.coverUrl,
      this.sessionCount,
      this.sessions,
      this.sessionLevels});

  Data.fromJson(Map<String, dynamic> json) {
    courseId = json['course_id'];
    userId = json['user_id'];
    title = json['title'];
    description = json['description'];
    status = json['status'];
    genre = json['genre'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    image = json['image'];
    coverUrl = json['cover_url'];
    sessionCount = json['sessionCount'];
    sessions = json['sessions'] != null
        ? new Sessions.fromJson(json['sessions'])
        : null;
    if (json['session_levels'] != null) {
      sessionLevels = [];
      json['session_levels'].forEach((v) {
        sessionLevels!.add(new SessionLevels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['course_id'] = this.courseId;
    data['user_id'] = this.userId;
    data['title'] = this.title;
    data['description'] = this.description;
    data['status'] = this.status;
    data['genre'] = this.genre;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    data['image'] = this.image;
    data['cover_url'] = this.coverUrl;
    data['sessionCount'] = this.sessionCount;
    if (this.sessions != null) {
      data['sessions'] = this.sessions!.toJson();
    }
    if (this.sessionLevels != null) {
      data['session_levels'] =
          this.sessionLevels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Sessions {
  List<StandardLevel>? beginners;
  List<StandardLevel>? intermediate;
  List<StandardLevel>? advanced;

  Sessions({this.beginners, this.intermediate, this.advanced});

  Sessions.fromJson(Map<String, dynamic> json) {
    if (json['Beginners'] != null) {
      beginners = [];
      json['Beginners'].forEach((v) {
        beginners!.add(new StandardLevel.fromJson(v));
      });
    }
    if (json['Intermediate'] != null) {
      intermediate = [];
      json['Intermediate'].forEach((v) {
        intermediate!.add(new StandardLevel.fromJson(v));
      });
    }
    if (json['Advanced'] != null) {
      advanced = [];
      json['Advanced'].forEach((v) {
        advanced!.add(new StandardLevel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.beginners != null) {
      data['Beginners'] = this.beginners!.map((v) => v.toJson()).toList();
    }
    if (this.intermediate != null) {
      data['Intermediate'] = this.intermediate!.map((v) => v.toJson()).toList();
    }
    if (this.advanced != null) {
      data['Advanced'] = this.advanced!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class StandardLevel {
  int? sessionId;
  int? courseId;
  int? categoryType;
  String? title;
  String? description;
  int? status;
  String? image;
  Null video;
  Null link;
  Null videoImage;
  Null linkImage;
  String? url;
  Null videoLink;
  String? coverUrl;
  bool? isYoutubeLink;
  int? mediaType;
  String? filename;
  String? createdAt;
  String? updatedAt;
  Course? course;

  StandardLevel(
      {this.sessionId,
      this.courseId,
      this.categoryType,
      this.title,
      this.description,
      this.status,
      this.image,
      this.video,
      this.link,
      this.videoImage,
      this.linkImage,
      this.url,
      this.videoLink,
      this.coverUrl,
      this.isYoutubeLink,
      this.mediaType,
      this.filename,
      this.createdAt,
      this.updatedAt,
      this.course});

  StandardLevel.fromJson(Map<String, dynamic> json) {
    sessionId = json['session_id'];
    courseId = json['course_id'];
    categoryType = json['category_type'];
    title = json['title'];
    description = json['description'];
    status = json['status'];
    image = json['image'];
    video = json['video'];
    link = json['link'];
    videoImage = json['video_image'];
    linkImage = json['link_image'];
    url = json['url'];
    videoLink = json['video_link'];
    coverUrl = json['cover_url'];
    isYoutubeLink = json['is_youtube_link'];
    mediaType = json['media_type'];
    filename = json['filename'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    course =
        json['course'] != null ? new Course.fromJson(json['course']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['session_id'] = this.sessionId;
    data['course_id'] = this.courseId;
    data['category_type'] = this.categoryType;
    data['title'] = this.title;
    data['description'] = this.description;
    data['status'] = this.status;
    data['image'] = this.image;
    data['video'] = this.video;
    data['link'] = this.link;
    data['video_image'] = this.videoImage;
    data['link_image'] = this.linkImage;
    data['url'] = this.url;
    data['video_link'] = this.videoLink;
    data['cover_url'] = this.coverUrl;
    data['is_youtube_link'] = this.isYoutubeLink;
    data['media_type'] = this.mediaType;
    data['filename'] = this.filename;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    if (this.course != null) {
      data['course'] = this.course!.toJson();
    }
    return data;
  }
}

class Course {
  String? title;
  String? description;
  String? featuredImage;
  String? genre;

  Course({this.title, this.description, this.featuredImage, this.genre});

  Course.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    featuredImage = json['featured_image'];
    genre = json['genre'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['title'] = this.title;
    data['description'] = this.description;
    data['featured_image'] = this.featuredImage;
    data['genre'] = this.genre;
    return data;
  }
}

class SessionLevels {
  int? id;
  String? desc;
  int? count;

  SessionLevels({this.id, this.desc, this.count});

  SessionLevels.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    desc = json['desc'];
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['desc'] = this.desc;
    data['count'] = this.count;
    return data;
  }
}
