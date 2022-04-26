class UploadTaskBean {



  String description;
  String uniqueId;
  int status;

  static UploadTaskBean fromMap(Map<String, dynamic> map) {
    UploadTaskBean uploadTaskBean = new UploadTaskBean();
    uploadTaskBean.description = map['description'];
    uploadTaskBean.uniqueId = map['uniqueId'];
    uploadTaskBean.status = map['status'];
    return uploadTaskBean;
  }

  static List<UploadTaskBean> fromMapList(dynamic mapList) {
    List<UploadTaskBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  @override
  String toString() {
    return 'UploadTaskBean{description: $description, uniqueId: $uniqueId, status: $status}';
  }


}
