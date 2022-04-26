class PhotoBean {



  String id;
  String createdAt;
  String updatedAt;
  String color;
  bool sponsored;
  bool likedByUser;
  int width;
  int height;
  int likes;
  LinksBean links;
  UrlsBean urls;

  static PhotoBean fromMap(Map<String, dynamic> map) {
    PhotoBean photoBean = new PhotoBean();
    photoBean.id = map['id'];
    photoBean.createdAt = map['created_at'];
    photoBean.updatedAt = map['updated_at'];
    photoBean.color = map['color'];
    photoBean.sponsored = map['sponsored'];
    photoBean.likedByUser = map['liked_by_user'];
    photoBean.width = map['width'];
    photoBean.height = map['height'];
    photoBean.likes = map['likes'];
    photoBean.links = LinksBean.fromMap(map['links']);
    photoBean.urls = UrlsBean.fromMap(map['urls']);
    return photoBean;
  }

   Map<String, dynamic> tpMap(){
    return {
      'id':id,
      'created_at':createdAt,
      'updated_at':updatedAt,
      'color':color,
      'sponsored':sponsored,
      'liked_by_user':likedByUser,
      'width':width,
      'height':height,
      'likes':likes,
      'links':links.toMap(),
      'urls':urls.toMap()
    };
  }

  static List<PhotoBean> fromMapList(dynamic mapList) {
    List<PhotoBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

}

class LinksBean {



  String self;
  String html;
  String photos;
  String likes;
  String portfolio;
  String following;
  String followers;

  static LinksBean fromMap(Map<String, dynamic> map) {
    LinksBean linksBean = new LinksBean();
    linksBean.self = map['self'];
    linksBean.html = map['html'];
    linksBean.photos = map['photos'];
    linksBean.likes = map['likes'];
    linksBean.portfolio = map['portfolio'];
    linksBean.following = map['following'];
    linksBean.followers = map['followers'];
    return linksBean;
  }

  static List<LinksBean> fromMapList(dynamic mapList) {
    List<LinksBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  Map<String, dynamic> toMap(){
    return {
      'self':self,
      'html':html,
      'photos':photos,
      'likes':likes,
      'portfolio':portfolio,
      'following':following,
      'followers':followers
    };
  }
}

class UrlsBean {


  String raw;
  String full;
  String regular;
  String small;
  String thumb;

  static UrlsBean fromMap(Map<String, dynamic> map) {
    UrlsBean urlsBean = new UrlsBean();
    urlsBean.raw = map['raw'];
    urlsBean.full = map['full'];
    urlsBean.regular = map['regular'];
    urlsBean.small = map['small'];
    urlsBean.thumb = map['thumb'];
    return urlsBean;
  }

  static List<UrlsBean> fromMapList(dynamic mapList) {
    List<UrlsBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }


  Map<String, dynamic> toMap(){
    return {
      'raw':raw,
      'full':full,
      'regular':regular,
      'small':small,
      'thumb':thumb
    };
  }
}

class UserBean {



  String id;
  String updatedAt;
  String username;
  String name;
  String firstName;
  String lastName;
  String portfolioUrl;
  String bio;
  String instagramUsername;
  bool acceptedTos;
  int totalCollections;
  int totalLikes;
  int totalPhotos;
  LinksBean links;
  ProfileImageBean profileImage;

  static UserBean fromMap(Map<String, dynamic> map) {
    UserBean userBean = new UserBean();
    userBean.id = map['id'];
    userBean.updatedAt = map['updated_at'];
    userBean.username = map['username'];
    userBean.name = map['name'];
    userBean.firstName = map['first_name'];
    userBean.lastName = map['last_name'];
    userBean.portfolioUrl = map['portfolio_url'];
    userBean.bio = map['bio'];
    userBean.instagramUsername = map['instagram_username'];
    userBean.acceptedTos = map['accepted_tos'];
    userBean.totalCollections = map['total_collections'];
    userBean.totalLikes = map['total_likes'];
    userBean.totalPhotos = map['total_photos'];
    userBean.links = LinksBean.fromMap(map['links']);
    userBean.profileImage = ProfileImageBean.fromMap(map['profile_image']);
    return userBean;
  }

  static List<UserBean> fromMapList(dynamic mapList) {
    List<UserBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}

class ProfileImageBean {



  String small;
  String medium;
  String large;

  static ProfileImageBean fromMap(Map<String, dynamic> map) {
    ProfileImageBean profileImageBean = new ProfileImageBean();
    profileImageBean.small = map['small'];
    profileImageBean.medium = map['medium'];
    profileImageBean.large = map['large'];
    return profileImageBean;
  }

  static List<ProfileImageBean> fromMapList(dynamic mapList) {
    List<ProfileImageBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }
}
