import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'scanner_comp_widget.dart' show ScannerCompWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScannerCompModel extends FlutterFlowModel<ScannerCompWidget> {
  ///  State fields for stateful widgets in this component.

  var barcode = '';
  // Stores action output result for [Backend Call - API (Get Menu item)] action in Button widget.
  ApiCallResponse? succes1;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  HistoryRecord? oki;
  // State field(s) for barcodeText widget.
  TextEditingController? barcodeTextController;
  String? Function(BuildContext, String?)? barcodeTextControllerValidator;
  // Stores action output result for [Backend Call - API (Get Menu item)] action in IconButton widget.
  ApiCallResponse? succes;
  // Stores action output result for [Backend Call - Create Document] action in IconButton widget.
  HistoryRecord? a1;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    barcodeTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
