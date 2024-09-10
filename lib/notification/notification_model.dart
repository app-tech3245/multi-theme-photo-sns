import '/component/notification/notification_item/notification_item_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'notification_widget.dart' show NotificationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationModel extends FlutterFlowModel<NotificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for notification_item component.
  late NotificationItemModel notificationItemModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    notificationItemModel = createModel(context, () => NotificationItemModel());
  }

  void dispose() {
    unfocusNode.dispose();
    notificationItemModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
