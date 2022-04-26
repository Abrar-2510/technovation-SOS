
import 'package:flutter/cupertino.dart';
import 'package:todo_list/speciality.dart';

List<SpecialityModel> getSpeciality(){

  List<SpecialityModel> specialities = new List<SpecialityModel>();
  SpecialityModel specialityModel = new SpecialityModel();

  //1
  specialityModel.noOfDoctors = 10;
  specialityModel.speciality = "Health";
  specialityModel.imgAssetPath = "images/health.png";
  specialityModel.backgroundColor = Color(0xffFBB97C);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //2
  specialityModel.noOfDoctors = 17;
  specialityModel.speciality = "Fun";
  specialityModel.imgAssetPath = "images/fun.png";
  specialityModel.backgroundColor = Color(0xfff6e783);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();

  //3
  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Study";
  specialityModel.imgAssetPath = "images/study.png";
  specialityModel.backgroundColor = Color(0xff945ba3);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();
  //4
  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Family";
  specialityModel.imgAssetPath = "images/family.png";
  specialityModel.backgroundColor = Color(0xff7b4f4f);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();
//5
  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Social life";
  specialityModel.imgAssetPath = "images/Social life";
  specialityModel.backgroundColor = Color(0xff6eb4ae);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();
  //6
  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Personal Development";
  specialityModel.imgAssetPath = "images/personal development.png";
  specialityModel.backgroundColor = Color(0xff926262);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();  specialityModel.noOfDoctors = 27;
  specialityModel.speciality = "Spirtiual";
  specialityModel.imgAssetPath = "images/spirtual.png";
  specialityModel.backgroundColor = Color(0xff51bf8d);
  specialities.add(specialityModel);

  specialityModel = new SpecialityModel();
  return specialities;
}