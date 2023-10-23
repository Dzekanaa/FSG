import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'preferences_page_widget.dart' show PreferencesPageWidget;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class PreferencesPageModel extends FlutterFlowModel<PreferencesPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for q1 widget.
  String? q1Value;
  FormFieldController<String>? q1ValueController;
  // State field(s) for q2 widget.
  String? q2Value;
  FormFieldController<String>? q2ValueController;
  // State field(s) for q3 widget.
  String? q3Value;
  FormFieldController<String>? q3ValueController;
  // State field(s) for q4 widget.
  String? q4Value;
  FormFieldController<String>? q4ValueController;
  // State field(s) for q5 widget.
  String? q5Value;
  FormFieldController<String>? q5ValueController;
  // State field(s) for q6 widget.
  String? q6Value;
  FormFieldController<String>? q6ValueController;
  // State field(s) for q7 widget.
  String? q7Value;
  FormFieldController<String>? q7ValueController;
  // State field(s) for q8 widget.
  String? q8Value;
  FormFieldController<String>? q8ValueController;
  // State field(s) for q9 widget.
  String? q9Value;
  FormFieldController<String>? q9ValueController;
  // State field(s) for q10 widget.
  String? q10Value;
  FormFieldController<String>? q10ValueController;
  // State field(s) for q16 widget.
  String? q16Value;
  FormFieldController<String>? q16ValueController;
  // State field(s) for q19 widget.
  String? q19Value;
  FormFieldController<String>? q19ValueController;
  // State field(s) for q11 widget.
  String? q11Value;
  FormFieldController<String>? q11ValueController;
  // State field(s) for q12 widget.
  String? q12Value;
  FormFieldController<String>? q12ValueController;
  // State field(s) for q13 widget.
  String? q13Value;
  FormFieldController<String>? q13ValueController;
  // State field(s) for q14 widget.
  String? q14Value;
  FormFieldController<String>? q14ValueController;
  // State field(s) for q15 widget.
  String? q15Value;
  FormFieldController<String>? q15ValueController;
  // State field(s) for q17 widget.
  String? q17Value;
  FormFieldController<String>? q17ValueController;
  // State field(s) for q18 widget.
  String? q18Value;
  FormFieldController<String>? q18ValueController;
  // State field(s) for q20 widget.
  String? q20Value;
  FormFieldController<String>? q20ValueController;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
