import '/component/ranking/ranking_user/ranking_user_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'ranking_navbar_model.dart';
export 'ranking_navbar_model.dart';

class RankingNavbarWidget extends StatefulWidget {
  const RankingNavbarWidget({Key? key}) : super(key: key);

  @override
  _RankingNavbarWidgetState createState() => _RankingNavbarWidgetState();
}

class _RankingNavbarWidgetState extends State<RankingNavbarWidget>
    with TickerProviderStateMixin {
  late RankingNavbarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RankingNavbarModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Align(
        alignment: AlignmentDirectional(0.00, 0.00),
        child: Column(
          children: [
            Align(
              alignment: Alignment(0.0, 0),
              child: FlutterFlowButtonTabBar(
                useToggleButtonStyle: false,
                labelStyle: FlutterFlowTheme.of(context).titleMedium.override(
                      fontFamily: 'BIZ UDGothic',
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                    ),
                unselectedLabelStyle: TextStyle(),
                labelColor: Color(0xFF0071DA),
                unselectedLabelColor: Color(0xFF7E7E7E),
                borderColor: Color(0xFF0071DA),
                unselectedBorderColor: Color(0xFF7E7E7E),
                borderWidth: 2.0,
                borderRadius: 30.0,
                elevation: 0.0,
                buttonMargin:
                    EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 8.0, 0.0),
                padding: EdgeInsetsDirectional.fromSTEB(4.0, 4.0, 4.0, 4.0),
                tabs: [
                  Tab(
                    text: '全て',
                  ),
                  Tab(
                    text: 'キャラ...',
                  ),
                  Tab(
                    text: 'ガンプラ',
                  ),
                  Tab(
                    text: 'ジオラマ',
                  ),
                ],
                controller: _model.tabBarController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _model.tabBarController,
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.00, 0.00),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                      child: Align(
                        alignment: AlignmentDirectional(0.00, -1.00),
                        child: wrapWithModel(
                          model: _model.rankingUserModel1,
                          updateCallback: () => setState(() {}),
                          child: RankingUserWidget(),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.rankingUserModel2,
                      updateCallback: () => setState(() {}),
                      child: RankingUserWidget(),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.rankingUserModel3,
                      updateCallback: () => setState(() {}),
                      child: RankingUserWidget(),
                    ),
                  ),
                  Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                    child: wrapWithModel(
                      model: _model.rankingUserModel4,
                      updateCallback: () => setState(() {}),
                      child: RankingUserWidget(),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
