import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'close_button_model.dart';
export 'close_button_model.dart';

class CloseButtonWidget extends StatefulWidget {
  const CloseButtonWidget({Key? key}) : super(key: key);

  @override
  _CloseButtonWidgetState createState() => _CloseButtonWidgetState();
}

class _CloseButtonWidgetState extends State<CloseButtonWidget> {
  late CloseButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CloseButtonModel());

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
      width: 50.0,
      height: 50.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).white,
        shape: BoxShape.circle,
      ),
      child: FlutterFlowIconButton(
        borderColor: Colors.transparent,
        borderRadius: 30.0,
        buttonSize: 46.0,
        icon: Icon(
          Icons.close_rounded,
          color: FlutterFlowTheme.of(context).grayLight,
          size: 24.0,
        ),
        onPressed: () {
          print('IconButton pressed ...');
        },
      ),
    );
  }
}
