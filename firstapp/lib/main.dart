import 'package:firstapp/alert/a_dialog_widget.dart';
import 'package:firstapp/button/a_button_widget.dart';
import 'package:firstapp/button/b_form_button_widgets.dart';
import 'package:firstapp/button/c_checkbox_widget.dart';
import 'package:firstapp/button/d_radio.dart';
import 'package:firstapp/button/e_text_field_widgte.dart';
import 'package:firstapp/excercise/b_excercise_two.dart';
import 'package:firstapp/excercise/c_credit_card_page.dart';
import 'package:firstapp/excercise/d_excericse_listtile.dart';
import 'package:firstapp/excercise/e_listtile_excercise.dart';
import 'package:firstapp/excercise/f_statck_excercise.dart';
import 'package:firstapp/excercise/g_list_view_builder_excercise.dart';
import 'package:firstapp/excercise/h_button_form_excercise.dart';
import 'package:firstapp/replace_page/navigator/page1.dart';
import 'package:firstapp/replace_page/navigator/splash_screen.dart';
import 'package:firstapp/replace_page/navigator/tab_bar_screen.dart';
import 'package:firstapp/widgets/a_column_widget.dart';
import 'package:firstapp/excercise/a_excercise_one.dart';
import 'package:firstapp/widgets/app_bar_widget.dart';
import 'package:firstapp/widgets/b_row_widget.dart';
import 'package:firstapp/widgets/c_column_and_row.dart';
import 'package:firstapp/widgets/container_widget.dart';
import 'package:firstapp/widgets/d_list_tile_widget.dart';
import 'package:firstapp/widgets/e_stack_widget.dart';
import 'package:firstapp/widgets/f_list_view_widget.dart';
import 'package:firstapp/widgets/g_list_view_builder_widget.dart';
import 'package:firstapp/widgets/h_validation_form.dart';
import 'package:firstapp/widgets/i_grid_view_widget.dart';
import 'package:firstapp/widgets/image_widget.dart';
import 'package:firstapp/widgets/bottom_navigationbar_widget.dart';
import 'package:firstapp/widgets/container_widget.dart';
import 'package:firstapp/widgets/form_validate.dart';
import 'package:firstapp/widgets/grid_builder.dart';
import 'package:firstapp/widgets/grid_widget.dart';
import 'package:firstapp/widgets/list_tile_widget.dart';
import 'package:firstapp/widgets/list_view_widget.dart';
import 'package:firstapp/widgets/radio_widget.dart';
import 'package:firstapp/widgets/row_widget.dart';
import 'package:firstapp/widgets/scroll_horizontal.dart';
import 'package:firstapp/widgets/stack_widget.dart';
import 'package:firstapp/widgets/tabar_widget.dart';
import 'package:firstapp/widgets/text_field_wideget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TabBarScreen(),
    );
  }
}

