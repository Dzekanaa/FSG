import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'scanner_comp_model.dart';
export 'scanner_comp_model.dart';

class ScannerCompWidget extends StatefulWidget {
  const ScannerCompWidget({super.key});

  @override
  State<ScannerCompWidget> createState() => _ScannerCompWidgetState();
}

class _ScannerCompWidgetState extends State<ScannerCompWidget> {
  late ScannerCompModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ScannerCompModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        FFAppState().anonimus = false;
      });
      if (FFAppState().skener) {
        setState(() {
          FFAppState().skener = false;
        });
        await _model.scan(context);
        if (_model.barcode != '-1') {
          setState(() {
            _model.barcodeTextController?.text = _model.barcode!;
          });
          await _model.funk(context);
        }
      }
    });

    _model.barcodeTextController ??= TextEditingController();
    _model.barcodeTextFocusNode ??= FocusNode();

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: double.infinity,
      height: MediaQuery.sizeOf(context).height * 0.8,
      decoration: BoxDecoration(),
      child: Container(
        height: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: Material(
                color: Colors.transparent,
                elevation: 5.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(0.0),
                      bottomRight: Radius.circular(0.0),
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                    ),
                    border: Border.all(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(16.0, 50.0, 16.0, 10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Text(
                          'Food Scan Genius',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                fontFamily: 'Nunito Sans',
                                fontSize: 26.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                        Text(
                          'Use your camera to scan the product bar code',
                          textAlign: TextAlign.justify,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Nunito Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 20.0, 0.0, 20.0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(18.0),
                            child: Image.asset(
                              'assets/images/Food_scan_geniusLOGO_NR_-03.png',
                              width: 246.0,
                              height: 196.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        FFButtonWidget(
                          onPressed: () async {
                            _model.barcode =
                                await FlutterBarcodeScanner.scanBarcode(
                              '#C62828', // scanning line color
                              'Cancel', // cancel button text
                              true, // whether to show the flash icon
                              ScanMode.QR,
                            );

                            if (_model.barcode != '-1') {
                              setState(() {
                                _model.barcodeTextController?.text =
                                    _model.barcode!;
                              });
                              await _model.funk(context);
                            }

                            setState(() {});
                          },
                          text: 'Scan Now',
                          options: FFButtonOptions(
                            width: 215.0,
                            height: 50.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                24.0, 0.0, 24.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color: FlutterFlowTheme.of(context).accent1,
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
                                  fontFamily: 'Nunito Sans',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                ),
                            elevation: 6.0,
                            borderSide: BorderSide(
                              color: Colors.transparent,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 24.0, 0.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ),
                              Text(
                                'Or',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      color:
                                          FlutterFlowTheme.of(context).accent1,
                                    ),
                              ),
                              Container(
                                width: MediaQuery.sizeOf(context).width * 0.4,
                                height: 1.0,
                                decoration: BoxDecoration(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                              ),
                            ].divide(SizedBox(width: 10.0)),
                          ),
                        ),
                        Text(
                          'Enter Code Manually',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Nunito Sans',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 18.0,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 18.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 8.0, 0.0),
                                  child: TextFormField(
                                    controller: _model.barcodeTextController,
                                    focusNode: _model.barcodeTextFocusNode,
                                    onChanged: (_) => EasyDebounce.debounce(
                                      '_model.barcodeTextController',
                                      Duration(milliseconds: 2000),
                                      () => setState(() {}),
                                    ),
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Your Bar Code...',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      hintText: 'Bar code',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Nunito Sans',
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            fontSize: 16.0,
                                            fontWeight: FontWeight.w500,
                                          ),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: Color(0x00000000),
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      errorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      focusedErrorBorder: OutlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(12.0),
                                      ),
                                      filled: true,
                                      fillColor: FlutterFlowTheme.of(context)
                                          .primaryBackground,
                                      contentPadding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              20.0, 24.0, 20.0, 24.0),
                                      suffixIcon: _model.barcodeTextController!
                                              .text.isNotEmpty
                                          ? InkWell(
                                              onTap: () async {
                                                _model.barcodeTextController
                                                    ?.clear();
                                                setState(() {});
                                              },
                                              child: Icon(
                                                Icons.clear,
                                                color: Color(0xFF757575),
                                                size: 22.0,
                                              ),
                                            )
                                          : null,
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .titleSmall
                                        .override(
                                          fontFamily: 'Nunito Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .barcodeTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              FlutterFlowIconButton(
                                borderColor:
                                    FlutterFlowTheme.of(context).primary,
                                borderRadius: 50.0,
                                borderWidth: 1.0,
                                buttonSize: 60.0,
                                fillColor: FlutterFlowTheme.of(context).accent1,
                                disabledColor:
                                    FlutterFlowTheme.of(context).accent3,
                                icon: Icon(
                                  Icons.chevron_right_rounded,
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  size: 24.0,
                                ),
                                showLoadingIndicator: true,
                                onPressed: FFAppState().anonimus
                                    ? null
                                    : () async {
                                        await _model.funk(context);
                                      },
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(0.0, -1.0),
              child: FlutterFlowIconButton(
                borderColor: FlutterFlowTheme.of(context).secondaryBackground,
                borderRadius: 20.0,
                borderWidth: 1.0,
                buttonSize: 60.0,
                fillColor: FlutterFlowTheme.of(context).primary,
                icon: FaIcon(
                  FontAwesomeIcons.barcode,
                  color: FlutterFlowTheme.of(context).primaryBackground,
                  size: 28.0,
                ),
                onPressed: () async {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
