import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/history/missing_food/missing_food_widget.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import '/flutter_flow/random_data_util.dart' as random_data;
import 'classification_page_widget.dart' show ClassificationPageWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClassificationPageModel
    extends FlutterFlowModel<ClassificationPageWidget> {
  ///  Local state fields for this page.

  double? pfat;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // Model for MissingFood component.
  late MissingFoodModel missingFoodModel;

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {
    missingFoodModel = createModel(context, () => MissingFoodModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    missingFoodModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
