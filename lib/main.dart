import 'package:flutter/material.dart';
import 'package:flutter_application_1/101/appBarLearn.dart';
import 'package:flutter_application_1/101/button_learn.dart';
import 'package:flutter_application_1/101/color_demos_learn.dart';
import 'package:flutter_application_1/101/color_life_cycle.dart';
import 'package:flutter_application_1/101/column_row_learn.dart';
import 'package:flutter_application_1/101/container_sized_box.dart';
import 'package:flutter_application_1/101/imagelearn.dart';
import 'package:flutter_application_1/101/indicator_learn.dart';
import 'package:flutter_application_1/101/list_tile_learn.dart';
import 'package:flutter_application_1/101/listview_builder_learn.dart';
import 'package:flutter_application_1/101/listview_learn.dart';
import 'package:flutter_application_1/101/pageview_learn.dart';
import 'package:flutter_application_1/101/stateful_learn.dart';
import 'package:flutter_application_1/101/text_learn.dart';
import 'package:flutter_application_1/101/textfieldlearn.dart';
import 'package:flutter_application_1/202/alert_learn.dart';
import 'package:flutter_application_1/202/animeted_learn_view.dart';
import 'package:flutter_application_1/202/cache/shared_learn_cache.dart';
import 'package:flutter_application_1/202/model_learnview.dart';
import 'package:flutter_application_1/202/oop_learn_view.dart';
import 'package:flutter_application_1/202/packege_learn_view.dart';
import 'package:flutter_application_1/202/service/form_learn_view.dart';
import 'package:flutter_application_1/202/service/service_learn_view.dart';
import 'package:flutter_application_1/202/service/service_post_learn.dart';
import 'package:flutter_application_1/202/sheet_learn.dart';
import 'package:flutter_application_1/202/tabbar_learn.dart';
import 'package:flutter_application_1/202/url_laucher_learn.dart';
import 'package:flutter_application_1/303/callback_learn.dart';
import 'package:flutter_application_1/303/lottie_learn.dart';
import 'package:flutter_application_1/303/partof_learn.dart';
import 'package:flutter_application_1/gun_5_ornek.dart';
import 'package:flutter_application_1/state_manage/state_learn_view_model.dart';
import 'package:flutter_application_1/state_manage/state_manage_learn.dart';
import 'package:flutter_application_1/theme/light_theme.dart';
import 'package:flutter_application_1/drawer_learn.dart';
import 'package:get/get.dart';
import '101/card_ornek.dart';
import '101/custom_widget.dart';
import '303/testable/image_generic_picker.dart';
import 'getx/getx_learn_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: LightTheme().theme,
        
        /*ThemeData.dark().copyWith(
        progressIndicatorTheme: ProgressIndicatorThemeData(color: Colors.white),
        errorColor: Colors.amber,
        */
      
      home: GetxLearnView(),
    );
  }
}