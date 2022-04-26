import 'dart:convert';

import 'package:todo_list/json/task_icon_bean.dart';


class TaskBean {
  int id;
  String taskName;
  String taskType;
  String account;
  int taskStatus;
  int taskDetailNum = 0;
  double overallProgress;


  String uniqueId;


  String needUpdateToCloud;

  int changeTimes;

  String createDate;

  String finishDate;


  String startDate;

  String deadLine;


  TaskIconBean taskIconBean;
  List<TaskDetailBean> detailList = [];



  ColorBean textColor;

  String backgroundUrl;

  TaskBean(
      {this.taskName = "",
      this.taskType = "",
      this.taskStatus = TaskStatus.todo,
      this.taskDetailNum,
      this.overallProgress = 0.0,
      this.uniqueId,
      this.needUpdateToCloud = 'true',
      this.changeTimes = 0,
      this.createDate = "",
      this.finishDate = "",
      this.account = "default",
      this.startDate = "",
      this.deadLine = "",
      this.taskIconBean,
      this.detailList,
      this.textColor,
      this.backgroundUrl,
      });

  static TaskBean fromMap(Map<String, dynamic> map) {
    TaskBean taskBean = new TaskBean();
    taskBean.id = map['id'];
    taskBean.taskName = map['taskName'];
    taskBean.taskType = map['taskType'];
    taskBean.taskDetailNum = map['taskDetailNum'];
    taskBean.taskStatus = map['taskStatus'];
    taskBean.account = map['account'];
    taskBean.uniqueId = map['uniqueId'];
    taskBean.needUpdateToCloud = map['needUpdateToCloud'] ?? 'false';
    taskBean.changeTimes = map['changeTimes'] ?? 0;
    taskBean.overallProgress = double.parse(map['overallProgress']);
    taskBean.createDate = map['createDate'];
    taskBean.finishDate = map['finishDate'];
    taskBean.startDate = map['startDate'];
    taskBean.deadLine = map['deadLine'];
    if(map['taskIconBean'] is String){
      var taskIconBean = jsonDecode(map['taskIconBean']);
      taskBean.taskIconBean = TaskIconBean.fromMap(taskIconBean);
    } else {
      taskBean.taskIconBean = TaskIconBean.fromMap(map['taskIconBean']);
    }
    if (map['detailList'] is String) {
      var detailList = jsonDecode(map['detailList']);
      taskBean.detailList = TaskDetailBean.fromMapList(detailList);
    } else {
      taskBean.detailList = TaskDetailBean.fromMapList(map['detailList']);
    }
    if (map['textColor'] is String){
      var textColor = jsonDecode(map['textColor']);
      taskBean.textColor = ColorBean.fromMap(textColor);
    } else {
      taskBean.textColor = ColorBean.fromMap(map['textColor']);
    }
    taskBean.backgroundUrl = map['backgroundUrl'];
    return taskBean;
  }

  static TaskBean fromNetMap(Map<String, dynamic> map) {
    TaskBean taskBean = new TaskBean();
    taskBean.taskName = map['taskName'];
    taskBean.taskType = map['taskType'];
    taskBean.taskDetailNum = int.parse(map['taskDetailNum'] ?? '0');
    taskBean.taskStatus = int.parse(map['taskStatus'] ?? '0');
    taskBean.account = map['account'];
    taskBean.uniqueId = map['uniqueId'];
    taskBean.needUpdateToCloud = map['needUpdateToCloud'] ?? 'false';
    taskBean.changeTimes = int.parse(map['changeTimes'] ?? '0');
    taskBean.overallProgress = double.parse(map['overallProgress']);
    taskBean.createDate = map['createDate'];
    taskBean.finishDate = map['finishDate'];
    taskBean.startDate = map['startDate'];
    taskBean.deadLine = map['deadLine'];
    if(map['taskIconBean'] is String){
      var taskIconBean = jsonDecode(map['taskIconBean']);
      taskBean.taskIconBean = TaskIconBean.fromMap(taskIconBean);
    } else {
      taskBean.taskIconBean = TaskIconBean.fromMap(map['taskIconBean']);
    }
    if (map['detailList'] is String) {
      var detailList = jsonDecode(map['detailList']);
      taskBean.detailList = TaskDetailBean.fromMapList(detailList);
    } else {
      taskBean.detailList = TaskDetailBean.fromMapList(map['detailList']);
    }
    return taskBean;
  }

  static List<TaskBean> fromMapList(dynamic mapList) {
    List<TaskBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  static List<TaskBean> fromNetMapList(dynamic mapList) {
    List<TaskBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromNetMap(mapList[i]);
    }
    return list;
  }

  Map<String, dynamic> toMap() {
    return {
      'taskName': taskName,
      'taskType': taskType,
      'taskStatus': taskStatus,
      'taskDetailNum': taskDetailNum,
      'overallProgress': (overallProgress >= 1.0 ? 1.0 : overallProgress).toString(),
      'createDate': createDate,
      'account': account,
      'uniqueId': uniqueId,
      'needUpdateToCloud': needUpdateToCloud,
      'changeTimes': changeTimes ?? 0,
      'finishDate': finishDate,
      'startDate': startDate,
      'deadLine': deadLine,
      'taskIconBean': jsonEncode(taskIconBean.toMap()),
      'textColor': jsonEncode(textColor?.toMap()),
      'backgroundUrl': backgroundUrl,
      'detailList': jsonEncode(List.generate(detailList.length, (index) {
        return detailList[index].toMap();
      }))
    };

  }


  @override
  String toString() {
    return 'TaskBean{id: $id, taskName: $taskName, taskType: $taskType, account: $account, taskStatus: $taskStatus, taskDetailNum: $taskDetailNum, overallProgress: $overallProgress, uniqueId: $uniqueId, needUpdateToCloud: $needUpdateToCloud, changeTimes: $changeTimes, createDate: $createDate, finishDate: $finishDate, startDate: $startDate, deadLine: $deadLine, taskIconBean: $taskIconBean, detailList: $detailList, textColor: $textColor, backgroundUrl: $backgroundUrl}';
  }


  bool getNeedUpdateToCloud(TaskBean taskBean){
    final uniqueId = taskBean.uniqueId;
    final account = taskBean.account;
    if(account == 'default') return false;
    if(uniqueId == null){
      taskBean.needUpdateToCloud = 'true';
      return true;
    }
    if(taskBean.needUpdateToCloud == null){
      taskBean.needUpdateToCloud = 'true';
      return true;
    }
    return taskBean.needUpdateToCloud == 'true';
  }


}


class TaskDetailBean {
  String taskDetailName;
  double itemProgress;

  TaskDetailBean({this.taskDetailName = "", this.itemProgress = 0.0});

  static TaskDetailBean fromMap(Map<String, dynamic> map) {
    TaskDetailBean taskDetailBean = new TaskDetailBean();
    taskDetailBean.taskDetailName = map['taskDetailName'];
    taskDetailBean.itemProgress = map['itemProgress'] is double ? map['itemProgress'] : double.parse(map['itemProgress']);
    return taskDetailBean;
  }

  static List<TaskDetailBean> fromMapList(dynamic mapList) {
    List<TaskDetailBean> list = List.filled(mapList.length, null);
    for (int i = 0; i < mapList.length; i++) {
      list[i] = fromMap(mapList[i]);
    }
    return list;
  }

  Map<dynamic, dynamic> toMap() {
    return {
      'taskDetailName': taskDetailName,
      'itemProgress': itemProgress.toString()
    };
  }
}

class TaskStatus {
  static const int todo = 0;
  static const int doing = 1;
  static const int done = 2;
}
