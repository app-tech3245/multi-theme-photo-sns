import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_post_widget.dart' show CreatePostWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreatePostModel extends FlutterFlowModel<CreatePostWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleController;
  String? Function(BuildContext, String?)? titleControllerValidator;
  // State field(s) for caption widget.
  FocusNode? captionFocusNode;
  TextEditingController? captionController;
  String? Function(BuildContext, String?)? captionControllerValidator;
  // State field(s) for Category widget.
  String? categoryValue1;
  FormFieldController<String>? categoryValueController1;
  // State field(s) for Category widget.
  List<String>? categoryValue2;
  FormFieldController<String>? categoryValueController2;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
    titleFocusNode?.dispose();
    titleController?.dispose();

    captionFocusNode?.dispose();
    captionController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
