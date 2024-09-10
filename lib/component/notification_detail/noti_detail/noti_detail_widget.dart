import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'noti_detail_model.dart';
export 'noti_detail_model.dart';

class NotiDetailWidget extends StatefulWidget {
  const NotiDetailWidget({Key? key}) : super(key: key);

  @override
  _NotiDetailWidgetState createState() => _NotiDetailWidgetState();
}

class _NotiDetailWidgetState extends State<NotiDetailWidget> {
  late NotiDetailModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotiDetailModel());

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

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Container(
            width: 350.0,
            height: 58.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Text(
              'サーバメンテナンスによるアプリ利用停止期間のご連絡',
              style: GoogleFonts.getFont(
                'Gothic A1',
                color: FlutterFlowTheme.of(context).primaryText,
                fontWeight: FontWeight.bold,
                fontSize: 20.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Container(
            width: 350.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Text(
              '2月14日 5:00',
              style: GoogleFonts.getFont(
                'Gothic A1',
                color: Color(0xFF8A8A8A),
                fontWeight: FontWeight.bold,
                fontSize: 10.0,
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 20.0, 0.0),
          child: Container(
            width: 350.0,
            height: 434.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: Text(
              'サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡サーバメンテナンスによるアプリ利用停止期間のご連絡',
              style: GoogleFonts.getFont(
                'Gothic A1',
                color: Color(0xFF8A8A8A),
                fontWeight: FontWeight.bold,
                fontSize: 14.0,
              ),
            ),
          ),
        ),
      ].divide(SizedBox(height: 10.0)),
    );
  }
}
