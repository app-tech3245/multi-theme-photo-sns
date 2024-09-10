import '/component/home/home_category/home_category_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_model.dart';
export 'home_model.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> with TickerProviderStateMixin {
  late HomeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomeModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 3,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.pushNamed(
            'MediaSelect',
            queryParameters: {
              'photoURL': serializeParam(
                '',
                ParamType.String,
              ),
              'videoURL': serializeParam(
                '',
                ParamType.String,
              ),
            }.withoutNulls,
          );
        },
        backgroundColor: Color(0xFF0071DA),
        elevation: 8.0,
        child: Icon(
          Icons.add,
          color: FlutterFlowTheme.of(context).info,
          size: 24.0,
        ),
      ),
      drawer: Drawer(
        elevation: 16.0,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                context.pushNamed('ranking');
              },
              child: ListTile(
                title: Text(
                  'Title',
                  style: FlutterFlowTheme.of(context).titleLarge,
                ),
                subtitle: Text(
                  'Subtitle goes here...',
                  style: FlutterFlowTheme.of(context).labelMedium,
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 20.0,
                ),
                tileColor: FlutterFlowTheme.of(context).secondaryBackground,
                dense: false,
              ),
            ),
            ListTile(
              title: Text(
                'Title',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                'Subtitle goes here...',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              title: Text(
                'Title',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                'Subtitle goes here...',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              title: Text(
                'Title',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                'Subtitle goes here...',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              title: Text(
                'Title',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                'Subtitle goes here...',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
            ListTile(
              title: Text(
                'Title',
                style: FlutterFlowTheme.of(context).titleLarge,
              ),
              subtitle: Text(
                'Subtitle goes here...',
                style: FlutterFlowTheme.of(context).labelMedium,
              ),
              trailing: Icon(
                Icons.arrow_forward_ios,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 20.0,
              ),
              tileColor: FlutterFlowTheme.of(context).secondaryBackground,
              dense: false,
            ),
          ],
        ),
      ),
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0.00, 0.00),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  constraints: BoxConstraints(
                    minWidth: double.infinity,
                    minHeight: double.infinity,
                    maxWidth: double.infinity,
                    maxHeight: double.infinity,
                  ),
                  decoration: BoxDecoration(),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment(0.0, 0),
                        child: TabBar(
                          labelColor: FlutterFlowTheme.of(context).primaryText,
                          unselectedLabelColor:
                              FlutterFlowTheme.of(context).secondaryText,
                          labelStyle: FlutterFlowTheme.of(context).titleMedium,
                          unselectedLabelStyle: TextStyle(),
                          indicatorColor: FlutterFlowTheme.of(context).primary,
                          padding: EdgeInsetsDirectional.fromSTEB(
                              4.0, 4.0, 4.0, 4.0),
                          tabs: [
                            Tab(
                              text: 'フォロー中',
                            ),
                            Tab(
                              text: '新着',
                            ),
                            Tab(
                              text: '人気順',
                            ),
                          ],
                          controller: _model.tabBarController,
                        ),
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _model.tabBarController,
                          children: [
                            wrapWithModel(
                              model: _model.homeCategoryModel1,
                              updateCallback: () => setState(() {}),
                              child: HomeCategoryWidget(),
                            ),
                            wrapWithModel(
                              model: _model.homeCategoryModel2,
                              updateCallback: () => setState(() {}),
                              child: HomeCategoryWidget(),
                            ),
                            wrapWithModel(
                              model: _model.homeCategoryModel3,
                              updateCallback: () => setState(() {}),
                              child: HomeCategoryWidget(),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
