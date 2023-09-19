import '/components/bottom_popup_widget.dart';
import '/components/history_menu_item_comp_widget.dart';
import '/components/scanner_comp_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HistoryPageModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for HistoryMenuItemComp component.
  late HistoryMenuItemCompModel historyMenuItemCompModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    historyMenuItemCompModel =
        createModel(context, () => HistoryMenuItemCompModel());
  }

  void dispose() {
    unfocusNode.dispose();
    historyMenuItemCompModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
