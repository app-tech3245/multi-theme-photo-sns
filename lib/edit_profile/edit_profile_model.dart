import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/component/editprofile/editprofile/editprofile_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'edit_profile_widget.dart' show EditProfileWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditProfileModel extends FlutterFlowModel<EditProfileWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for editprofile component.
  late EditprofileModel editprofileModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    editprofileModel = createModel(context, () => EditprofileModel());
  }

  void dispose() {
    unfocusNode.dispose();
    editprofileModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
