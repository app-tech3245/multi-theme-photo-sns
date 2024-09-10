import '/component/ranking/ranking_user/ranking_user_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'ranking_navbar_widget.dart' show RankingNavbarWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RankingNavbarModel extends FlutterFlowModel<RankingNavbarWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for ranking_user component.
  late RankingUserModel rankingUserModel1;
  // Model for ranking_user component.
  late RankingUserModel rankingUserModel2;
  // Model for ranking_user component.
  late RankingUserModel rankingUserModel3;
  // Model for ranking_user component.
  late RankingUserModel rankingUserModel4;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    rankingUserModel1 = createModel(context, () => RankingUserModel());
    rankingUserModel2 = createModel(context, () => RankingUserModel());
    rankingUserModel3 = createModel(context, () => RankingUserModel());
    rankingUserModel4 = createModel(context, () => RankingUserModel());
  }

  void dispose() {
    tabBarController?.dispose();
    rankingUserModel1.dispose();
    rankingUserModel2.dispose();
    rankingUserModel3.dispose();
    rankingUserModel4.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
