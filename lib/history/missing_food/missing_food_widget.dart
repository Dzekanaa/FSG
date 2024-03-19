import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'missing_food_model.dart';
export 'missing_food_model.dart';

class MissingFoodWidget extends StatefulWidget {
  const MissingFoodWidget({super.key});

  @override
  State<MissingFoodWidget> createState() => _MissingFoodWidgetState();
}

class _MissingFoodWidgetState extends State<MissingFoodWidget> {
  late MissingFoodModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MissingFoodModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Icons.no_food_rounded,
          color: FlutterFlowTheme.of(context).primaryText,
          size: 90.0,
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 0.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Ingredients missing',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Nunito Sans',
                      color: FlutterFlowTheme.of(context).primaryText,
                    ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
