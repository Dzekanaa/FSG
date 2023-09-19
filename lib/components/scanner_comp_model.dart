import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScannerCompModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this component.

  var barcode = '';
  // State field(s) for barcodeText widget.
  TextEditingController? barcodeTextController;
  String? Function(BuildContext, String?)? barcodeTextControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    barcodeTextController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
