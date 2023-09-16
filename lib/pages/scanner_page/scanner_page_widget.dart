import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scanner_page_model.dart';
export 'scanner_page_model.dart';

class ScannerPageWidget extends StatefulWidget {
  const ScannerPageWidget({Key? key}) : super(key: key);

  @override
  _ScannerPageWidgetState createState() => _ScannerPageWidgetState();
}

class _ScannerPageWidgetState extends State<ScannerPageWidget> {
  late ScannerPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScannerPageModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      // skeniraj
      _model.gotovo = await FlutterBarcodeScanner.scanBarcode(
        '#C62828', // scanning line color
        'Cancel', // cancel button text
        true, // whether to show the flash icon
        ScanMode.BARCODE,
      );

      context.pushNamed('ClassificationPage');
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              image: DecorationImage(
                fit: BoxFit.fill,
                image: Image.asset(
                  'assets/images/blob-scene-haikei.png',
                ).image,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
