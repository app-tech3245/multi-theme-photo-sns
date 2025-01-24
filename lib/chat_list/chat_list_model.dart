import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '/component/chatlist/direct_message/direct_message_widget.dart';
import '/component/chatlist/following_user/following_user_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'chat_list_widget.dart' show ChatListWidget;

class ChatListModel extends FlutterFlowModel<ChatListWidget> {
  
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for following_user component.
  late FollowingUserModel followingUserModel;
  // Model for directMessage component.
  late DirectMessageModel directMessageModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    followingUserModel = createModel(context, () => FollowingUserModel());
    directMessageModel = createModel(context, () => DirectMessageModel());
  }

  void dispose() {
    unfocusNode.dispose();
    followingUserModel.dispose();
    directMessageModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
