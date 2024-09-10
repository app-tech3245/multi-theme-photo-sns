import '/backend/backend.dart';
import '/component/search/search_all/search_all_widget.dart';
import '/component/search/search_tag/search_tag_widget.dart';
import '/component/search/search_user/search_user_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'search_widget.dart' show SearchWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class SearchModel extends FlutterFlowModel<SearchWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for search_user component.
  late SearchUserModel searchUserModel;
  // Model for search_tag component.
  late SearchTagModel searchTagModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    searchUserModel = createModel(context, () => SearchUserModel());
    searchTagModel = createModel(context, () => SearchTagModel());
  }

  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
    searchUserModel.dispose();
    searchTagModel.dispose();
  }

  /// Action blocks are added here.

  Future searchAll(BuildContext context) async {
    context.pushNamed('SignUp');
  }

  /// Additional helper methods are added here.
}
