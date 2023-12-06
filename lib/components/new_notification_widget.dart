import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'new_notification_model.dart';
export 'new_notification_model.dart';

class NewNotificationWidget extends StatefulWidget {
  const NewNotificationWidget({Key? key}) : super(key: key);

  @override
  _NewNotificationWidgetState createState() => _NewNotificationWidgetState();
}

class _NewNotificationWidgetState extends State<NewNotificationWidget> {
  late NewNotificationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NewNotificationModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: AlignmentDirectional(0.00, 0.00),
          child: Icon(
            Icons.notifications,
            color: FlutterFlowTheme.of(context).primary,
            size: 24.0,
          ),
        ),
        Align(
          alignment: AlignmentDirectional(0.90, -0.80),
          child: Container(
            width: 20.0,
            height: 20.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).primary,
              borderRadius: BorderRadius.circular(40.0),
              border: Border.all(
                color: FlutterFlowTheme.of(context).white,
                width: 4.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
