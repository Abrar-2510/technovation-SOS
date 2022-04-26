import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:todo_list/i10n/messages_all.dart';


class IntlLocalizations {
  static Future<IntlLocalizations> load(Locale locale) {
    final String name = locale.countryCode.isEmpty ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);
    print("name是：$localeName");
    return initializeMessages(localeName).then((b) {
      Intl.defaultLocale = localeName;
      return new IntlLocalizations();
    });
  }

  static IntlLocalizations of(BuildContext context) {
    return Localizations.of<IntlLocalizations>(context, IntlLocalizations);
  }

  String get appName{
    return Intl.message("One Day List",name: "appName",desc: "app的名字");
  }
  String get tryToSearch => Intl.message('Try searching for the title or content', name: 'tryToSearch', desc: '试试搜一下标题、内容吧',);
  String get searchIcon => Intl.message('Try searching for icon name', name: 'searchIcon', desc: '搜索图标名字',);


  String get myAccount => Intl.message('My Account', name: 'myAccount', desc: 'حسابي',);
  String get doneList => Intl.message('Done List', name: 'doneList', desc: 'مهام مكتملة',);
  String get toFinishTask => Intl.message('Try to complete a task!', name: 'toFinishTask', desc: 'مهام غير مكتملة!',);
  String get taskNum => Intl.message('Task Number', name: 'taskNum', desc: 'رقم الممة',);
  String get createDate => Intl.message('Create Date', name: 'createDate', desc: 'اضف تاريخ',);
  String get completeDate => Intl.message('Complete Date', name: 'completeDate', desc: 'تاريخ اكتمال المهمة',);
  String get spendTime => Intl.message('Spend Time', name: 'spendTime', desc: '',);
  String get changedTimes => Intl.message('Changed Times', name: 'changedTimes', desc: '',);
  String hours(int hours){
    return Intl.plural(
        hours,
        zero: "Too Fast",
        one: "1 hour",
        many: "$hours hours",
        other:"$hours hours",
        args: [hours],
        name: "hours"
    );
  }
  String days(int days){
    return Intl.plural(
        days,
        zero: "Too Fast",
        one: "1 day",
        many: "$days days",
        other:"$days days",
        args: [days],
        name: "days"
    );
  }


  String get languageTitle {
    return Intl.message(
      'Change Language',
      name: 'languageTitle',
      desc: 'قم بتغيير اللغة',
    );
  }

  String get changeTheme {
    return Intl.message(
      'Change Theme',
      name: 'changeTheme',
      desc: '',
    );
  }

  String get feedback => Intl.message('Feedback', name: 'feedback', desc: 'التعليقات',);
  String get feedbackWall => Intl.message('Feedback Wall', name: 'feedbackWall', desc: 'جدار التعليقات',);
  String get feedbackCantBeNull => Intl.message('feedback cannot be empty', name: 'feedbackCantBeNull', desc: 'لا يمكنك ترك التعليق فارغ',);
  String get feedbackIsTooLittle => Intl.message('feedback is too little, add a little more', name: 'feedbackIsTooLittle', desc: 'التعليق صغير',);
  String get feedbackNeedEmoji => Intl.message('please choose an emoji ', name: 'feedbackNeedEmoji', desc: 'اختر رمز',);
  String get feedbackFrequently => Intl.message('Can only be submitted once in 8 hours. ', name: 'feedbackFrequently', desc: 'يمكنك فقط تسليمه خلال 8 ايام',);
  String get writeYourFeedback => Intl.message('write your feedback ', name: 'writeYourFeedback', desc: 'اكتب تعليقك',);
  String get writeYourContactInfo => Intl.message('whether to leave your contact information', name: 'writeYourContactInfo', desc: 'اترك طريقة تواصل',);
  String get waitAMoment => Intl.message('please wait for a moment...', name: 'waitAMoment', desc: 'انتظر لحظه..',);
  String get submitSuccess => Intl.message('submit success!', name: 'submitSuccess', desc: 'تمت المهمة بنجاح!',);
  String get thanksForFeedback => Intl.message('Thanks for your feedback', name: 'thanksForFeedback', desc: 'شكرا علي تعليقك:)',);
  String get submitAgain => Intl.message('submit again', name: 'submitAgain', desc: 'اعد مرة اخري',);
  String get noName => Intl.message('anonymous', name: 'noName', desc: 'مجهول',);

  String get appSetting {
    return Intl.message(
      'Setting',
      name: 'appSetting',
      desc: 'الاعدادات',
    );
  }

  String get backgroundGradient {
    return Intl.message(
      'Background Gradient',
      name: 'backgroundGradient',
      desc: 'app设置',
    );
  }
  String get splashAnimation => Intl.message('Turn on splash animation', name: 'splashAnimation', desc: 'قم بتشغيل الرسوم المتحركة ',);
  String get bgChangeWithCard => Intl.message('Background follow task icon color', name: 'bgChangeWithCard', desc: 'الخلفية تتبع لون رمز المهمة',);
  String get cardChangeWithBg => Intl.message('Task icon color follow background', name: 'cardChangeWithBg', desc: 'لون رمز المهمة يتبع الخلفية',);
  String get enableInfiniteScroll => Intl.message('Task card cycle slide', name: 'enableInfiniteScroll', desc: 'شريحة دورة بطاقة المهام',);
  String get enableWeatherShow => Intl.message('Turn on the weather', name: 'enableWeatherShow', desc: 'افتح الطقس',);
  String get enableNetPicBgInMainPage => Intl.message('Turn on the net-picture background', name: 'enableNetPicBgInMainPage', desc: 'قم بتشغيل الخلفية',);
  String get inputCurrentCity => Intl.message('input your city', name: 'inputCurrentCity', desc: 'ادخل مدينتك',);
  String get weatherGetWrong => Intl.message('failed to get the weather，please try again', name: 'weatherGetWrong', desc: 'خطأ في توقع الطقسز يرجي المحاولة لاحقا',);
  String get weatherGetting => Intl.message('the weather is inquiring...', name: 'weatherGetting', desc: '',);
  String get weatherSuccess => Intl.message('the weather is successful', name: 'weatherSuccess', desc: 'تم الحصول علي الطقس بنجاح',);



  String get blog => Intl.message('Blog', name: 'blog', desc: 'مدونة',);
  String get myBlog => Intl.message('Flutter Web Blog', name: 'myBlog', desc: 'مدونتي',);







  String get iconSetting => Intl.message('Icon Setting', name: 'iconSetting', desc: 'اعدادات الرموز',);
  String get navigatorSetting => Intl.message('Navigator Setting', name: 'navigatorSetting', desc: 'اعدادات التنقل',);
  String get meteorShower => Intl.message('Meteor Shower', name: 'meteorShower', desc: '',);
  String get dailyPic => Intl.message('Daily wallpaper', name: 'dailyPic', desc: 'الخلفية اليومية',);
  String get netPicture => Intl.message('Network Picture', name: 'netPicture', desc: "صور الكترونية",);
  String get accountBackgroundSetting => Intl.message('Background setting', name: 'accountBackgroundSetting', desc: 'اعدادات الخلفية',);
  String get picture => Intl.message('Picture', name: 'picture', desc: 'صور',);
  String get cartOpacity => Intl.message('Card background opacity', name: 'cartOpacity', desc: 'وضوح الخلفية',);
  String get enableTaskDetailOpacity => Intl.message('Enable task page background to be transparent', name: 'enableTaskDetailOpacity', desc: 'خليفة الشاشة شفافة',);

  String get currentIcons => Intl.message('Current Icons', name: 'currentIcons', desc: 'الرموز الحالية',);
  String get game => Intl.message('Fun & Entertainment', name: 'game', desc: 'المرح والترفيه',);
  String get music => Intl.message('Social Life', name: 'music', desc: 'الحياة الاجتماعية',);
  String get read => Intl.message('Spirituality', name: 'read', desc: 'روحانيات',);
  String get sports => Intl.message('Health & Fitness', name: 'sports', desc: 'الصحة والرياضة',);
  String get travel => Intl.message('Personal Development', name: 'travel', desc: 'التطوير الذاتي',);
  String get work => Intl.message('Study', name: 'work', desc: 'الدراسة',);



  String get setIconName => Intl.message('icon name', name: 'setIconName', desc: 'اسم الرمز',);
  String get defaultIconName => Intl.message('default', name: 'defaultIconName', desc: 'تلقائي',);
  String get customIcon => Intl.message('Custom Icon', name: 'customIcon', desc: 'رمز المستخدم',);
  String get cancel => Intl.message('cancel', name: 'cancel', desc: 'الغاء',);
  String get ok => Intl.message('ok', name: 'ok', desc: 'تم',);
  String get pickAColor => Intl.message('Pick a color!', name: 'pickAColor', desc: 'اختر لون!',);
  String get canNotAddMoreIcon => Intl.message('You can only customize up to 10 icons.', name: 'canNotAddMoreIcon', desc: 'يمكنك فقط اختيار 10 رموز',);
  String get canNotEditDefaultIcon => Intl.message('Can\'t edit the default icon', name: 'canNotEditDefaultIcon', desc: 'لا يمكنك تعديل الرمز',);
  String get customTheme => Intl.message('Custom Theme', name: 'customTheme', desc: 'سمة المستخدم',);
  String get canNotAddMoreTheme => Intl.message('You can only customize up to 10 themes.', name: 'canNotAddMoreTheme', desc: 'يمكنك فقط اختيار عشرة رموز',);
  String get writeAtLeastOneTaskItem => Intl.message('Please write at least one task.', name: 'writeAtLeastOneTaskItem', desc: 'من فضلك اكتب علي الاقل مهمه واحده',);
  String get defaultTitle => Intl.message('Default title', name: 'defaultTitle', desc: 'عنوان تلقائي',);

  String get avatarLocal => Intl.message('Select an avatar from the local', name: 'avatarLocal', desc: 'اختر صورة رمزية ',);
  String get avatarNet => Intl.message('Select an avatar from the network', name: 'avatarNet', desc: 'اختر صورة رمزية من الانترنت',);
  String get avatarHistory => Intl.message('Select an avatar from the history', name: 'avatarHistory', desc: 'اختر صورة رمزية من الذاكرة',);
  String get avatar => Intl.message('avatar', name: 'avatar', desc: ' صورة رمزية',);
  String get save => Intl.message('save', name: 'save', desc: 'احفظ',);
  String get history => Intl.message('history', name: 'history', desc: 'ذاكرة',);
  String get netPicHistory => Intl.message('Net picture history', name: 'netPicHistory', desc: 'ذاكرة الصور',);
  String get selectLocalImage => Intl.message('Select local image', name: 'selectLocalImage', desc: 'اختر صورة محلية',);


  String get deniedDes => Intl.message('Permission denied', name: 'deniedDes', desc: 'تجاهل الاذن',);
  String get disabledDes => Intl.message('Permission not available', name: 'disabledDes', desc: 'الاذن غير متاح',);
  String get restrictedDes => Intl.message('Permission is restricted', name: 'restrictedDes', desc: 'الاذن مقيد',);
  String get unknownDes => Intl.message('Unknown permission', name: 'unknownDes', desc: 'اذن غير معروف',);
  String get openSystemSetting => Intl.message('Open System Setting', name: 'openSystemSetting', desc: 'الاعدادت المفتوحة',);


  String get checkUpdate {
    return Intl.message(
      'Check Update',
      name: 'checkUpdate',
      desc: 'راجع التحديث',
    );
  }
  String get update => Intl.message('update', name: 'update', desc: 'تحديث',);



  String get welcomeWord{
    return Intl.message(
      'Hello! ',
      name: 'welcomeWord',
      desc: 'مرحبا!',
    );
  }

  String get customUserName => Intl.message('Setting your username', name: 'customUserName', desc: 'ادخل اسم المستخدم',);
  String get inputUserName => Intl.message('input your username', name: 'inputUserName', desc: 'ادخل اسم المستخدم',);
  String get userNameCantBeNull => Intl.message('username can not be empty', name: 'userNameCantBeNull', desc: 'لا يمكنك ترك اسم المستخدم فارغ!',);


  String get random{return Intl.message('random', name: 'random', desc: 'عشوائي',);}
  String get pink{return Intl.message('pink', name: 'pink', desc: 'زهري',);}

  String get coffee{
    return Intl.message(
      'coffee',
      name: 'coffee',
      desc: 'قهوة',
    );
  }

  String get cyan{
    return Intl.message(
      'cyan',
      name: 'cyan',
      desc: 'أزرق سماوي',
    );
  }

  String get green{
    return Intl.message(
      'green',
      name: 'green',
      desc: 'أخضر',
    );
  }

  String get purple{
    return Intl.message(
      'purple',
      name: 'purple',
      desc: 'بنفسجي',
    );
  }

  String get dark{
    return Intl.message(
      'dark',
      name: 'dark',
      desc: 'غامق',
    );
  }

  String get blueGray{
    return Intl.message(
      'blue-gray',
      name: 'blueGray',
      desc: 'أزرق-رمادي',
    );
  }

  String get login => Intl.message('Login', name: 'login', desc: 'تسجيل الدخول',);
  String get email => Intl.message('EMAIL', name: 'email', desc: 'الربريد الالكتروني',);
  String get password => Intl.message('PASSWORD', name: 'password', desc: 'كلمة المرور',);
  String get inputEmail => Intl.message('Enter email', name: 'inputEmail', desc: 'ادخل البريد الالكتروني',);
  String get inputPassword => Intl.message('Enter password', name: 'inputPassword', desc: 'ادخل كلمة المرور',);
  String get forget => Intl.message('Forget', name: 'forget', desc: 'نسيت',);
  String get logIn => Intl.message('Log In', name: 'logIn', desc: 'تسجيل الدخول',);
  String get haveNoAccount => Intl.message('Don\'t have an Account?Sign Up', name: 'haveNoAccount', desc: 'لا تملك حساب؟ قم بإنشاء ',);
  String get register => Intl.message('Register', name: 'register', desc: 'حجز',);
  String get emailCantBeEmpty => Intl.message('email cannot be empty', name: 'emailCantBeEmpty', desc: 'لا يمكنك ترك البريد الالكتروني فارغ',);
  String get emailIncorrectFormat => Intl.message('email format is incorrect', name: 'emailIncorrectFormat', desc: 'ضيغة البريد الالكتروني غير مناسبة',);
  String get passwordCantBeEmpty => Intl.message('password cannot be empty', name: 'passwordCantBeEmpty', desc: 'لا يمكنك ترك كلمة المرور فارغة',);
  String get passwordTooShort => Intl.message('password length cannot be less than 8 digits', name: 'passwordTooShort', desc: 'لا يمكن ان تقل كلمه المرور عن 8 ارقام',);
  String get passwordTooLong => Intl.message('password length cannot be greater than 20 digits', name: 'passwordTooLong', desc: 'كلمة المرور طويلة للغايه',);
  String get signUp => Intl.message('Sign Up', name: 'signUp', desc: 'اشتراك',);
  String get setUserName => Intl.message('please set your username', name: 'setUserName', desc: 'من فضلك اخدخل اسم المستخدم',);
  String get userNameContainEmpty => Intl.message('username cannot contain spaces', name: 'userNameContainEmpty', desc: 'لا يمكن ان يحتوي اسم المستخدم علي فراغات',);
  String get verifyCodeCantBeEmpty => Intl.message('verify code cannot be empty', name: 'verifyCodeCantBeEmpty', desc: 'لا يمكن ترك رمز التأكيد فارغا',);
  String get verifyCodeContainEmpty => Intl.message('verify code cannot contain spaces', name: 'verifyCodeContainEmpty', desc: 'لا يمكن ان يحتوي رمز التأكيد علي فراغات',);
  String get confirmPasswordCantBeEmpty => Intl.message('confirm password cannot be empty', name: 'confirmPasswordCantBeEmpty', desc: 'لا يمكن ترك تأكيد كلمة المرور فارغا',);
  String get confirmPasswordContainEmpty => Intl.message('confirm password cannot contain spaces', name: 'confirmPasswordContainEmpty', desc: 'لا يمكن ان يحتوي تأكيد كلمة المرور علي فراغات',);
  String get twoPasswordsNotSame => Intl.message('two passwords are not same', name: 'twoPasswordsNotSame', desc: 'لا يوجد تطايق',);
  String get userName => Intl.message('username', name: 'userName', desc: 'اسم المستخدم',);
  String get emailAccount => Intl.message('email account', name: 'emailAccount', desc: 'البريد الالكتروني',);
  String get setEmailAccount => Intl.message('please set your email account', name: 'setEmailAccount', desc: 'من فضلك اختر بريدك الالكتروني',);
  String get inputEmailAccount => Intl.message('please input your email account', name: 'inputEmailAccount', desc: 'ادخل بريدك الالكتروني',);
  String get verifyCode => Intl.message('verify code', name: 'verifyCode', desc: 'كود التأكيد',);
  String get inputVerifyCode => Intl.message('please input the verify code you obtained', name: 'inputVerifyCode', desc: 'الرجاء إدخال رمز التحقق الذي حصلت عليه',);
  String get getVerifyCode => Intl.message('Get Verify Code', name: 'getVerifyCode', desc: 'احصل علي رمز التحقق',);
  String get setPassword => Intl.message('please set your password', name: 'setPassword', desc: 'اختر كلمة المرور',);
  String get thePassword => Intl.message('password', name: 'thePassword', desc: 'كلمة المرور',);
  String get reSetPassword => Intl.message('please set your password again', name: 'reSetPassword', desc: 'ادخل كلمة المرور مجددا',);
  String get confirmPassword => Intl.message('confirm password', name: 'confirmPassword', desc: 'تأكيد كلمة المرور',);
  String get checkYourEmail => Intl.message('please check your email account', name: 'checkYourEmail', desc: 'تفقد بريدك الالكتروني',);
  String get checkYourEmailOrPassword => Intl.message('please check your email account or password', name: 'checkYourEmailOrPassword', desc: 'تحقق من بريدك الالكتروني او كلمة المرور',);
  String get checkYourUserName => Intl.message('please check your username', name: 'checkYourUserName', desc: 'تحقق من اسمك',);
  String get usernameCantBeEmpty => Intl.message('username cannot be empty', name: 'usernameCantBeEmpty', desc: 'لا يمكن ترك اسم المستخدم فارغا',);
  String get wrongParams => Intl.message('please check your input content', name: 'wrongParams', desc: 'من فضلك تأكد من البيانات',);
  String get setNewPassword => Intl.message('please set your new password', name: 'setNewPassword', desc: 'ادخل كلمة مرور جديدة',);
  String get forgetPassword => Intl.message('Forget Password', name: 'forgetPassword', desc: 'نسيت كلمة المرور',);
  String get resetPassword => Intl.message('Reset Password', name: 'resetPassword', desc: 'اعادة تعيين كلمة المرور',);
  String get newPassword => Intl.message('new password', name: 'newPassword', desc: 'كلمة المرور الجديدة',);
  String get oldPassword => Intl.message('old password', name: 'oldPassword', desc: 'كلمة المرور القديمة',);
  String get inputOldPassword => Intl.message('please input your old password', name: 'inputOldPassword', desc: 'ادخل كلمة المرور القديمة',);
  String get oldPasswordCantBeEmpty => Intl.message('old password cannot be empty', name: 'oldPasswordCantBeEmpty', desc: 'لا يمكنك ترك تلك الخانه فارغة',);
  String get newPasswordCantBeEmpty => Intl.message('new password cannot be empty', name: 'newPasswordCantBeEmpty', desc: 'لا يمكنك ترك تلك الخانه فارغة',);
  String get resetPasswordSuccess => Intl.message('Password reset complete', name: 'resetPasswordSuccess', desc: 'تمت إعادة التعيين بنجاح',);
  String get resetPasswordFailed => Intl.message('Password reset failed', name: 'resetPasswordFailed', desc: 'فشل إعادة التعيين',);
  String get logout => Intl.message('Logout', name: 'logout', desc: 'تسجيل خروج',);
  String get skip => Intl.message('skip', name: 'skip', desc: 'تجاهل',);
  String get delete => Intl.message('delete', name: 'delete', desc: 'حذف',);
  String get doDelete => Intl.message('doDelete', name: 'doDelete', desc: '是否要删除任务:',);
  String get background => Intl.message('background', name: 'background', desc: 'خلفية',);
  String get setBackground => Intl.message('Set Background', name: 'setBackground', desc: 'ادخل الخلفية',);
  String get clearBackground => Intl.message('Clear Background', name: 'clearBackground', desc: 'امسح الخلفية',);
  String get textColor => Intl.message('Text Color', name: 'textColor', desc: 'لون النص',);
  String get fontSize => Intl.message('Font Size', name: 'fontSize', desc: 'حجم الخط',);
  String get autoDarkMode => Intl.message('auto dark mode', name: 'autoDarkMode', desc: 'وضع الظلام تلقائي',);
  String get selectLightTime => Intl.message('select day time interval', name: 'selectLightTime', desc: 'حدد الفاصل الزمني اليوم',);
  String get start => Intl.message('start', name: 'start', desc: 'بداية',);
  String get end => Intl.message('end', name: 'end', desc: 'نهاية',);
  String get timeError => Intl.message('start time cannot be less than end time', name: 'timeError', desc: 'خطأ في التوقيت',);








  String get editTask{return Intl.message('Edit Task', name: 'editTask', desc: 'تعديل المهمة',);}
  String get deleteTask{return Intl.message('Delete Task', name: 'deleteTask', desc: 'حذف المهمة',);}
  String get submit => Intl.message('Submit', name: 'submit', desc: 'إرسال',);
  String get addTask => Intl.message('add a task', name: 'addTask', desc: 'أضف مهمة',);
  String get deadline => Intl.message('deadline', name: 'deadline', desc: 'موعد التسليم',);
  String get startDate => Intl.message('start date', name: 'startDate', desc: 'تاريخ البداية',);
  String get remindMe => Intl.message('remind me', name: 'remindMe', desc: 'ذكرني',);
  String get repeat => Intl.message('repeat', name: 'repeat', desc: 'إعادة',);
  String get startAfterEnd => Intl.message('The start date need be smaller than the end date.', name: 'startAfterEnd', desc: 'خطأ فيل التاريخ',);
  String get endBeforeStart => Intl.message('The end date need be bigger than the start date.', name: 'endBeforeStart', desc: 'خطأ في التاريخ',);
  String get notSynced => Intl.message('Not synced ', name: 'notSynced', desc: 'غير متزامن ',);
  String get clickToSyn => Intl.message('Click to sync', name: 'clickToSyn', desc: 'اضغط علي تزامن',);
  String get synchronizing => Intl.message('Synchronizing...', name: 'synchronizing', desc: 'جاري المزامنه.......',);
  String get cloudSynchronizing => Intl.message('Synchronizing from server...', name: 'cloudSynchronizing', desc: 'مزامنه من الخادم..',);
  String get synchronizeFailed => Intl.message('Synchronize failed', name: 'synchronizeFailed', desc: 'فشل المزامنة',);


  String taskItems(int taskNumbers){
    return Intl.plural(
      taskNumbers,
      zero: "You have never written a list of tasks.\nLet's get started soon.",
      one: "This is your todo-list,\nToday, you have 1 task to complete. ",
      many: "This is your todo-list,\nToday, you have $taskNumbers tasks to complete. ",
      other:"This is your todo-list,\nToday, you have $taskNumbers tasks to complete. ",
      args: [taskNumbers],
      name: "taskItems"
    );
  }

  String itemNumber(int number){
    return Intl.plural(
        number,
        zero: "There is No items ",
        one: "1 item ",
        other: "$number items ",
        args: [number],
        name: "itemNumber"
    );
  }


  String get loadingEmpty => Intl.message('nothing at all', name: 'loadingEmpty', desc: 'فارغ',);
  String get loadingIdle => Intl.message('...', name: 'loadingIdle', desc: '......',);
  String get loadingError => Intl.message('loading error', name: 'loadingError', desc: 'خطأ في التحميل',);
  String get loading => Intl.message('loading...', name: 'loading', desc: "جاري التحميل",);
  String get waiting => Intl.message('waiting...', name: 'waiting', desc: 'انتظر...',);
  String get timeOut => Intl.message('timeout error', name: 'timeOut', desc: 'خطأ المهلة',);
  String get pullUpToLoadMore => Intl.message('pull up load more', name: 'pullUpToLoadMore', desc: 'اسحب لتحميل  المزيد',);
  String get pullDownToRefresh => Intl.message('pull down to refresh', name: 'pullDownToRefresh', desc: 'للتحديث اسحب للأسفل',);
  String get reLoading => Intl.message('click to reload', name: 'reLoading', desc: 'اضغط لاعادة التحميل',);
  String get requestError => Intl.message('request error', name: 'requestError', desc: 'خطأ في طلب',);
  String get requestFailed => Intl.message('request failed', name: 'requestFailed', desc: 'فشل الطلب',);







}


class DemoLocalizationsDelegate extends LocalizationsDelegate<IntlLocalizations> {
  const DemoLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) => ['en', 'zh'].contains(locale.languageCode);

  @override
  Future<IntlLocalizations> load(Locale locale) {
    //3
    return  IntlLocalizations.load(locale);
  }


  @override
  bool shouldReload(DemoLocalizationsDelegate old) => false;
}