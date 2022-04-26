class UploadAvatarBean {



  String description;
  String filePath;
  int status;

  static UploadAvatarBean fromMap(Map<String, dynamic> map) {
    UploadAvatarBean uploadAvatarBean = new UploadAvatarBean();
    uploadAvatarBean.description = map['description'];
    uploadAvatarBean.filePath = map['filePath'];
    uploadAvatarBean.status = map['status'];
    return uploadAvatarBean;
  }

  static List<UploadAvatarBean> fromMapList(dynamic mapList) {
    List<UploadAvatarBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

}
