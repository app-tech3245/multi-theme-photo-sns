import '/component/home/home_category/home_category_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for home_category component.
  late HomeCategoryModel homeCategoryModel1;
  // Model for home_category component.
  late HomeCategoryModel homeCategoryModel2;
  // Model for home_category component.
  late HomeCategoryModel homeCategoryModel3;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    homeCategoryModel1 = createModel(context, () => HomeCategoryModel());
    homeCategoryModel2 = createModel(context, () => HomeCategoryModel());
    homeCategoryModel3 = createModel(context, () => HomeCategoryModel());
  }

  void dispose() {
    tabBarController?.dispose();
    homeCategoryModel1.dispose();
    homeCategoryModel2.dispose();
    homeCategoryModel3.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
