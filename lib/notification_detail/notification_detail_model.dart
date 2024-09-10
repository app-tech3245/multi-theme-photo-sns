import '/component/notification_detail/noti_detail/noti_detail_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'notification_detail_widget.dart' show NotificationDetailWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationDetailModel
    extends FlutterFlowModel<NotificationDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for noti_detail component.
  late NotiDetailModel notiDetailModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notiDetailModel = createModel(context, () => NotiDetailModel());
  }

  void dispose() {
    unfocusNode.dispose();
    notiDetailModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
