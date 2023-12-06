import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'pro_tag_model.dart';
export 'pro_tag_model.dart';

class ProTagWidget extends StatefulWidget {
  const ProTagWidget({Key? key}) : super(key: key);

  @override
  _ProTagWidgetState createState() => _ProTagWidgetState();
}

class _ProTagWidgetState extends State<ProTagWidget> {
  late ProTagModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProTagModel());

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
      width: 40.0,
      height: 40.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).darkBlue,
        shape: BoxShape.circle,
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(2.0, 2.0, 2.0, 2.0),
        child: AuthUserStreamWidget(
          builder: (context) => Container(
            width: 40.0,
            height: 40.0,
            clipBehavior: Clip.antiAlias,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.network(
              valueOrDefault<String>(
                currentUserPhoto,
                'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/tagalong-andrew-ku2qts/assets/3xzo13or0v9o/AppIcon_Pro-app-store.png',
              ),
            ),
          ),
        ),
      ),
    );
  }
}
