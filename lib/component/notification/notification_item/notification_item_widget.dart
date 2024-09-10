import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'notification_item_model.dart';
export 'notification_item_model.dart';

class NotificationItemWidget extends StatefulWidget {
  const NotificationItemWidget({Key? key}) : super(key: key);

  @override
  _NotificationItemWidgetState createState() => _NotificationItemWidgetState();
}

class _NotificationItemWidgetState extends State<NotificationItemWidget> {
  late NotificationItemModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationItemModel());

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

    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Container(
          width: 54.0,
          height: 54.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            shape: BoxShape.circle,
          ),
          child: Container(
            width: 120.0,
            height: 120.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              'https://images.unsplash.com/photo-1520408534979-054bb60c33f9?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHw2fHxtZWNoYW5pY2FsJTI1MjBrZXlib2FyZHxlbnwwfHx8fDE2OTgxNzg0MDZ8MA&ixlib=rb-4.0.3&q=80&w=1080',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Container(
          width: 300.0,
          height: 64.0,
          decoration: BoxDecoration(
            color: Color(0x00E9E9E9),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'サーバメンテナンスによるアプリ利用停止期間のご連絡',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontWeight: FontWeight.bold,
                    ),
              ),
              Align(
                alignment: AlignmentDirectional(-1.00, 0.00),
                child: Text(
                  '2月14日 5:00',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: Color(0xFF8A8A8A),
                        fontSize: 10.0,
                      ),
                ),
              ),
            ].divide(SizedBox(height: 5.0)),
          ),
        ),
      ].divide(SizedBox(width: 10.0)),
    );
  }
}
