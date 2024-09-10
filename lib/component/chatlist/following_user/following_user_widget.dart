import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'following_user_model.dart';
export 'following_user_model.dart';

class FollowingUserWidget extends StatefulWidget {
  const FollowingUserWidget({Key? key}) : super(key: key);

  @override
  _FollowingUserWidgetState createState() => _FollowingUserWidgetState();
}

class _FollowingUserWidgetState extends State<FollowingUserWidget> {
  late FollowingUserModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FollowingUserModel());

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
      height: 72.0,
      decoration: BoxDecoration(),
      child: StreamBuilder<List<UsersRecord>>(
        stream: queryUsersRecord(),
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
          List<UsersRecord> listViewUsersRecordList = snapshot.data!;
          return ListView.separated(
            padding: EdgeInsets.zero,
            scrollDirection: Axis.horizontal,
            itemCount: listViewUsersRecordList.length,
            separatorBuilder: (_, __) => SizedBox(width: 8.0),
            itemBuilder: (context, listViewIndex) {
              final listViewUsersRecord =
                  listViewUsersRecordList[listViewIndex];
              return Container(
                decoration: BoxDecoration(),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(24.0),
                  child: Image.network(
                    listViewUsersRecord.photoUrl,
                    width: 72.0,
                    height: 72.0,
                    fit: BoxFit.cover,
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
