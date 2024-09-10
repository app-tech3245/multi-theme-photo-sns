import '/backend/backend.dart';
import '/component/hash_tag/hash_tag_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'search_tag_model.dart';
export 'search_tag_model.dart';

class SearchTagWidget extends StatefulWidget {
  const SearchTagWidget({
    Key? key,
    required this.post,
  }) : super(key: key);

  final PostRecord? post;

  @override
  _SearchTagWidgetState createState() => _SearchTagWidgetState();
}

class _SearchTagWidgetState extends State<SearchTagWidget> {
  late SearchTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SearchTagModel());

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

    return Align(
      alignment: AlignmentDirectional(-1.00, 0.00),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(12.0, 0.0, 0.0, 12.0),
        child: Builder(
          builder: (context) {
            final tags = widget.post?.tags?.toList() ?? [];
            return Wrap(
              spacing: 6.0,
              runSpacing: 6.0,
              alignment: WrapAlignment.start,
              crossAxisAlignment: WrapCrossAlignment.start,
              direction: Axis.horizontal,
              runAlignment: WrapAlignment.start,
              verticalDirection: VerticalDirection.down,
              clipBehavior: Clip.none,
              children: List.generate(tags.length, (tagsIndex) {
                final tagsItem = tags[tagsIndex];
                return HashTagWidget(
                  key: Key('Keyv4l_${tagsIndex}_of_${tags.length}'),
                  tag: tagsItem,
                );
              }),
            );
          },
        ),
      ),
    );
  }
}
