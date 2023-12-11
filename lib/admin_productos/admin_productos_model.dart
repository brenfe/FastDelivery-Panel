import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/components/admin_nav_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'admin_productos_widget.dart' show AdminProductosWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AdminProductosModel extends FlutterFlowModel<AdminProductosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for adminNav component.
  late AdminNavModel adminNavModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    adminNavModel = createModel(context, () => AdminNavModel());
  }

  void dispose() {
    adminNavModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
