import 'dart:convert';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:todo_list/config/all_types.dart';
import 'package:todo_list/config/api_service.dart';
import 'package:todo_list/config/custom_image_cache_manager.dart';
import 'package:todo_list/json/theme_bean.dart';
import 'package:todo_list/json/weather_bean.dart';
import 'package:todo_list/model/all_model.dart';
import 'package:todo_list/utils/shared_util.dart';
import 'package:todo_list/utils/theme_util.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:todo_list/widgets/net_loading_widget.dart';

class GlobalLogic{

  final GlobalModel _model;

  GlobalLogic(this._model);

  Color getWhiteInDark(){
    final themeType = _model.currentThemeBean.themeType;
    return themeType == MyTheme.darkTheme ? Colors.grey : Colors.white;
  }

  Color getBgInDark(){
    final themeType = _model.currentThemeBean.themeType;
    return themeType == MyTheme.darkTheme ? Colors.grey[800] : Colors.white;
  }

  Color getPrimaryGreyInDark(BuildContext context){
    final themeType = _model.currentThemeBean.themeType;
    return themeType == MyTheme.darkTheme ? Colors.grey : Theme.of(context).primaryColor;
  }


  Color getPrimaryInDark(BuildContext context){
    final themeType = _model.currentThemeBean.themeType;
    return themeType == MyTheme.darkTheme ? Colors.grey[800] : Theme.of(context).primaryColor;
  }


  Color getbwInDark(){
    final themeType = _model.currentThemeBean.themeType;
    return themeType == MyTheme.darkTheme ? Colors.white : Colors.black;
  }


  Future getCurrentLanguageCode() async{
    final list = await SharedUtil.instance.getStringList(Keys.currentLanguageCode);
    if (list == null) return;
    if (list == _model.currentLanguageCode) return;
    _model.currentLanguageCode = list;
  }


  Future getCurrentLanguage() async{
    final currentLanguage = await SharedUtil.instance.getString(Keys.currentLanguage);
    if (currentLanguage == null) return;
    if (currentLanguage == _model.currentLanguage) return;
    _model.currentLanguage = currentLanguage;
  }


  Future getCurrentTheme() async{
    final theme = await SharedUtil.instance.getString(Keys.currentThemeBean);
    if(theme == null) return;
    ThemeBean themeBean = ThemeBean.fromMap(jsonDecode(theme));
    if(themeBean.themeType == MyTheme.random){
      themeBean.colorBean = ColorBean.fromColor(Colors.primaries[Random().nextInt(Colors.primaries.length)]);
    } else if(themeBean.themeType == _model.currentThemeBean.themeType) return;
    _model.currentThemeBean = themeBean;
  }


  void chooseTheme(){
    if(!_model.enableAutoDarkMode) return;
    if(_model.autoDarkModeTimeRange.isEmpty) return;
    final times = _model.autoDarkModeTimeRange.split('/');
    if(times.length < 2) return;
    final start = int.parse(times[0]);
    final end = int.parse(times[1]);
    final time = DateTime.now();
    if(time.hour < start || time.hour > end){
      final String languageCode = _model.currentLanguageCode[0];
      _model.currentThemeBean = ThemeBean(
        themeName: languageCode == 'zh' ? '不见五指' : 'dark',
        colorBean: ColorBean.fromColor(MyThemeColor.darkColor),
        themeType: MyTheme.darkTheme,
      );
    }

  }


  Future getAppName() async{
    final appName = await SharedUtil.instance.getString(Keys.appName);
    if(appName == null) return;
    if(appName == _model.appName) return;
    _model.appName = appName;
  }



  Future getIsBgGradient()async{
    final isBgGradient = await SharedUtil.instance.getBoolean(Keys.backgroundGradient);
    if(isBgGradient == null) return;
    if(isBgGradient == _model.isBgGradient) return;
    _model.isBgGradient = isBgGradient;
  }


  Future getCurrentNavHeader()async{
    final currentNavHeader = await SharedUtil.instance.getString(Keys.currentNavHeader);
    if(currentNavHeader == null) return;
    if(currentNavHeader == _model.currentNavHeader) return;
    _model.currentNavHeader = currentNavHeader;
  }


  Future getCurrentNetPicUrl()async{
    final currentNetPicUrl = await SharedUtil.instance.getString(Keys.currentNetPicUrl);
    if(currentNetPicUrl == null) return;
    if(currentNetPicUrl == _model.currentNavHeader) return;
    _model.currentNetPicUrl = currentNetPicUrl;
  }


  Future getIsBgChangeWithCard() async {
    final isBgChangeWithCard = await SharedUtil.instance.getBoolean(Keys.backgroundChangeWithCard);
    _model.isBgChangeWithCard = isBgChangeWithCard;
  }


  Future getIsCardChangeWithBg() async {
    final isCardChangeWithBg = await SharedUtil.instance.getBoolean(Keys.cardChangeWithBackground);
    _model.isCardChangeWithBg = isCardChangeWithBg;
  }


  Future getEnableInfiniteScroll() async{
    final enableInfiniteScroll = await SharedUtil.instance.getBoolean(Keys.enableInfiniteScroll);
    _model.enableInfiniteScroll = enableInfiniteScroll;
  }


  Future getEnableSplashAnimation() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String account =  prefs.getString(Keys.account) ?? "default";
    _model.enableSplashAnimation = prefs.getBool(Keys.enableSplashAnimation + account)??true;
  }


  Future getAutoDarkMode() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String account =  prefs.getString(Keys.account) ?? "default";
    _model.enableAutoDarkMode = prefs.getBool(Keys.autoDarkMode + account)??false;
    _model.autoDarkModeTimeRange = prefs.getString(Keys.autoDarkModeTimeRange + account) ?? '';
  }


  Future getCurrentPosition() async{
    final currentPosition = await SharedUtil.instance.getString(Keys.currentPosition);
    if(currentPosition == null) return;
    if(currentPosition == _model.currentPosition) return;
    _model.currentPosition = currentPosition;
  }


  Future getEnableWeatherShow() async{
    final enableWeatherShow = await SharedUtil.instance.getBoolean(Keys.enableWeatherShow);
    _model.enableWeatherShow = enableWeatherShow;
  }


  Future getLoginState() async{
    final hasLogged = await SharedUtil.instance.getBoolean(Keys.hasLogged);
    _model.goToLogin = !hasLogged;
  }


  Future getEnableNetPicBgInMainPage() async{
    final enableNetPicBgInMainPage = await SharedUtil.instance.getBoolean(Keys.enableNetPicBgInMainPage);
    _model.enableNetPicBgInMainPage = enableNetPicBgInMainPage;
  }


  Future getCurrentMainPageBgUrl() async{
    final currentMainPageBgUrl = await SharedUtil.instance.getString(Keys.currentMainPageBackgroundUrl);
    if(currentMainPageBgUrl == null) return;
    if(currentMainPageBgUrl == _model.currentMainPageBgUrl) return;
    _model.currentMainPageBgUrl = currentMainPageBgUrl;
  }


  Future getRefreshDailyPicTime() async{
    final time = await SharedUtil.instance.getString(Keys.everyDayPicRefreshTime);
    final now = DateTime.now();
    if(time == null) {
      SharedUtil.instance.saveString(Keys.everyDayPicRefreshTime, now.toIso8601String());
      return;
    }
    final date = DateTime.parse(time);
    if(date.difference(now).inHours > 12){
      SharedUtil.instance.saveString(Keys.everyDayPicRefreshTime, now.toIso8601String());
      CustomCacheManager().removeFile(NavHeadType.DAILY_PIC_URL);
    }
  }

  void getWeatherNow(String position,{BuildContext context, LoadingController controller}){
    ApiService.instance.getWeatherNow(success : (WeatherBean weatherBean){
      _model.weatherBean = weatherBean;
      _model.enableWeatherShow = true;
      SharedUtil.instance.saveString(Keys.currentPosition, position);
      SharedUtil.instance.saveBoolean(Keys.enableWeatherShow, true);
      _model.refresh();
      controller?.setFlag(LoadingFlag.success);

    },failed : (WeatherBean weatherBean){
      controller?.setFlag(LoadingFlag.error);
    }, error : (error){
      controller?.setFlag(LoadingFlag.error);

    }, params : {
      "key": "d381a4276ed349daa3bf63646f12d8ae",
      "location": position,
      "lang":_model.currentLocale.languageCode
    }, token: CancelToken());
  }

  bool isDarkNow(){
    return _model.currentThemeBean.themeType == MyTheme.darkTheme;
  }

}