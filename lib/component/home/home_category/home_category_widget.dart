import '/backend/backend.dart';
import '/component/home/image_post_card/image_post_card_widget.dart';
import '/flutter_flow/flutter_flow_button_tabbar.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_category_model.dart';
export 'home_category_model.dart';

class HomeCategoryWidget extends StatefulWidget {
  const HomeCategoryWidget({Key? key}) : super(key: key);

  @override
  _HomeCategoryWidgetState createState() => _HomeCategoryWidgetState();
}

class _HomeCategoryWidgetState extends State<HomeCategoryWidget>
    with TickerProviderStateMixin {
  late HomeCategoryModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeCategoryModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
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
                labelStyle: FlutterFlowTheme.of(context).titleMedium,
                unselectedLabelStyle: TextStyle(),
                labelColor: Color(0xFFF9F9F9),
                unselectedLabelColor: Color(0xFF515151),
                backgroundColor: Color(0xFF0071DA),
                unselectedBorderColor: Color(0xFF5E5E5E),
                borderWidth: 1.0,
                borderRadius: 30.0,
                elevation: 0.0,
                buttonMargin:
                    EdgeInsetsDirectional.fromSTEB(10.0, 16.0, 10.0, 16.0),
                padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 140.0, 0.0),
                tabs: [
                  Tab(
                    text: '全て',
                  ),
                  Tab(
                    text: '写真',
                  ),
                  Tab(
                    text: '動画',
                  ),
                ],
                controller: _model.tabBarController,
              ),
            ),
            Expanded(
              child: TabBarView(
                controller: _model.tabBarController,
                physics: const NeverScrollableScrollPhysics(),
                children: [
                  StreamBuilder<List<PostRecord>>(
                    stream: queryPostRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PostRecord> columnPostRecordList = snapshot.data!;
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(columnPostRecordList.length,
                              (columnIndex) {
                            final columnPostRecord =
                                columnPostRecordList[columnIndex];
                            return ImagePostCardWidget(
                              key: Key(
                                  'Keyl2p_${columnIndex}_of_${columnPostRecordList.length}'),
                              post: columnPostRecord,
                            );
                          }),
                        ),
                      );
                    },
                  ),
                  StreamBuilder<List<PostRecord>>(
                    stream: queryPostRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PostRecord> columnPostRecordList = snapshot.data!;
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(columnPostRecordList.length,
                              (columnIndex) {
                            final columnPostRecord =
                                columnPostRecordList[columnIndex];
                            return ImagePostCardWidget(
                              key: Key(
                                  'Key8s3_${columnIndex}_of_${columnPostRecordList.length}'),
                              post: columnPostRecord,
                            );
                          }),
                        ),
                      );
                    },
                  ),
                  StreamBuilder<List<PostRecord>>(
                    stream: queryPostRecord(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50.0,
                            height: 50.0,
                            child: CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(
                                FlutterFlowTheme.of(context).primary,
                              ),
                            ),
                          ),
                        );
                      }
                      List<PostRecord> columnPostRecordList = snapshot.data!;
                      return SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(columnPostRecordList.length,
                              (columnIndex) {
                            final columnPostRecord =
                                columnPostRecordList[columnIndex];
                            return ImagePostCardWidget(
                              key: Key(
                                  'Key6vs_${columnIndex}_of_${columnPostRecordList.length}'),
                              post: columnPostRecord,
                            );
                          }),
                        ),
                      );
                    },
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
