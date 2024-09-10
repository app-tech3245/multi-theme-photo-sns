import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'upload_file_list_model.dart';
export 'upload_file_list_model.dart';

class UploadFileListWidget extends StatefulWidget {
  const UploadFileListWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final UsersRecord? post;

  @override
  _UploadFileListWidgetState createState() => _UploadFileListWidgetState();
}

class _UploadFileListWidgetState extends State<UploadFileListWidget> {
  late UploadFileListModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UploadFileListModel());

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
      decoration: BoxDecoration(),
      child: StreamBuilder<List<PostRecord>>(
        stream: queryPostRecord(
          queryBuilder: (postRecord) => postRecord.where(
            'user_ref',
            isEqualTo: widget.post?.reference,
          ),
        ),
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
          List<PostRecord> rowPostRecordList = snapshot.data!;
          return SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: List.generate(rowPostRecordList.length, (rowIndex) {
                final rowPostRecord = rowPostRecordList[rowIndex];
                return Align(
                  alignment: AlignmentDirectional(0.00, 0.00),
                  child: Container(
                    width: 100.0,
                    height: 100.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(
                        color: Color(0xFF5E5E5E),
                        width: 1.0,
                      ),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        rowPostRecord.photoUrl,
                        width: 120.0,
                        height: 120.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                );
              }).divide(SizedBox(width: 10.0)),
            ),
          );
        },
      ),
    );
  }
}
