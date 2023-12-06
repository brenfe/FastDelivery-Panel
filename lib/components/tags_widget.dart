import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tags_model.dart';
export 'tags_model.dart';

class TagsWidget extends StatefulWidget {
  const TagsWidget({
    Key? key,
    this.backgroundColor,
    this.textString,
    this.icon,
    this.textColor,
  }) : super(key: key);

  final Color? backgroundColor;
  final String? textString;
  final Widget? icon;
  final Color? textColor;

  @override
  _TagsWidgetState createState() => _TagsWidgetState();
}

class _TagsWidgetState extends State<TagsWidget> {
  late TagsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TagsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 44.0,
      decoration: BoxDecoration(
        color: widget.backgroundColor,
        borderRadius: BorderRadius.circular(40.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(8.0, 8.0, 12.0, 8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            widget.icon!,
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(8.0, 0.0, 4.0, 0.0),
              child: Text(
                widget.textString!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Outfit',
                      color: widget.textColor,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
