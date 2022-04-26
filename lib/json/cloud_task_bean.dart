import 'package:todo_list/json/task_bean.dart';

class CloudTaskBean {



  String description;
  int status;
  List<TaskBean> taskList;

  static CloudTaskBean fromMap(Map<String, dynamic> map) {
    CloudTaskBean cloudTaskBean = new CloudTaskBean();
    cloudTaskBean.description = map['description'];
    cloudTaskBean.status = map['status'];
    cloudTaskBean.taskList = TaskBean.fromNetMapList(map['taskList']);
    return cloudTaskBean;
  }

  static List<CloudTaskBean> fromMapList(dynamic mapList) {
    List<CloudTaskBean> list =  List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

}
