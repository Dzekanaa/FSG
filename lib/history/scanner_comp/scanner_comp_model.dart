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
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ScannerCompModel extends FlutterFlowModel<ScannerCompWidget> {
  ///  Local state fields for this component.

  String barcodeState = 'BarCode';

  ///  State fields for stateful widgets in this component.

  var barcode = '';
  // State field(s) for barcodeText widget.
  FocusNode? barcodeTextFocusNode;
  TextEditingController? barcodeTextController;
  String? Function(BuildContext, String?)? barcodeTextControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    barcodeTextFocusNode?.dispose();
    barcodeTextController?.dispose();
  }

  /// Action blocks are added here.

  Future funk(BuildContext context) async {
    ApiCallResponse? succes;
    HistoryRecord? aaCopy;
    LatLng currentUserLocationValue =
        await getCurrentUserLocation(defaultLocation: LatLng(0.0, 0.0));

    FFAppState().update(() {
      FFAppState().anonimus = true;
    });
    succes = await GetMenuItemCall.call(
      barcodeAPI: barcodeTextController.text,
      latitude: functions.latLongString(currentUserLocationValue!, true),
      longitude: functions.latLongString(currentUserLocationValue!, false),
      uid: currentUserUid,
    );
    if ((GetMenuItemCall.data(
              (succes?.jsonBody ?? ''),
            ) !=
            null) &&
        (GetMenuItemCall.mess(
              (succes?.jsonBody ?? ''),
            ).toString() !=
            'No product found')) {
      context.goNamed(
        'ClassificationPage',
        queryParameters: {
          'barcode': serializeParam(
            barcodeTextController.text,
            ParamType.String,
          ),
        }.withoutNulls,
      );

      var historyRecordReference =
          HistoryRecord.createDoc(currentUserReference!);
      await historyRecordReference.set({
        ...createHistoryRecordData(
          barcode: valueOrDefault<String>(
            barcodeTextController.text,
            'Product',
          ),
          grade: GetMenuItemCall.grade(
            (succes?.jsonBody ?? ''),
          ).toString(),
          text: GetMenuItemCall.title(
            (succes?.jsonBody ?? ''),
          ).toString(),
          image: GetMenuItemCall.img(
            (succes?.jsonBody ?? ''),
          ),
        ),
        ...mapToFirestore(
          {
            'date': FieldValue.serverTimestamp(),
          },
        ),
      });
      aaCopy = HistoryRecord.getDocumentFromData({
        ...createHistoryRecordData(
          barcode: valueOrDefault<String>(
            barcodeTextController.text,
            'Product',
          ),
          grade: GetMenuItemCall.grade(
            (succes?.jsonBody ?? ''),
          ).toString(),
          text: GetMenuItemCall.title(
            (succes?.jsonBody ?? ''),
          ).toString(),
          image: GetMenuItemCall.img(
            (succes?.jsonBody ?? ''),
          ),
        ),
        ...mapToFirestore(
          {
            'date': DateTime.now(),
          },
        ),
      }, historyRecordReference);
    } else {
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('Error'),
            content: Text('There is no product with this barcode, Try Again.'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
      FFAppState().update(() {
        FFAppState().anonimus = false;
      });
    }
  }

  /// Additional helper methods are added here.
}
