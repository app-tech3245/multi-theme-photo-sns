import '/component/ranking/ranking_navbar/ranking_navbar_widget.dart';
import '/component/ranking/ranking_order/ranking_order_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'ranking_widget.dart' show RankingWidget;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RankingModel extends FlutterFlowModel<RankingWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for ranking_navbar component.
  late RankingNavbarModel rankingNavbarModel;
  // Model for ranking_order component.
  late RankingOrderModel rankingOrderModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    rankingNavbarModel = createModel(context, () => RankingNavbarModel());
    rankingOrderModel = createModel(context, () => RankingOrderModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    rankingNavbarModel.dispose();
    rankingOrderModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
