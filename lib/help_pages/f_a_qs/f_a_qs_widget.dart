import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'f_a_qs_model.dart';
export 'f_a_qs_model.dart';

class FAQsWidget extends StatefulWidget {
  const FAQsWidget({super.key});

  @override
  State<FAQsWidget> createState() => _FAQsWidgetState();
}

class _FAQsWidgetState extends State<FAQsWidget> {
  late FAQsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FAQsModel());

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
    _model.expandableController4 = ExpandableController(initialExpanded: false);
    _model.expandableController5 = ExpandableController(initialExpanded: false);
    _model.expandableController6 = ExpandableController(initialExpanded: false);
    _model.expandableController7 = ExpandableController(initialExpanded: false);
    _model.expandableController8 = ExpandableController(initialExpanded: false);
    _model.expandableController9 = ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'FAQs',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Nunito Sans',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Padding(
            padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
            child: ListView(
              padding: EdgeInsets.zero,
              scrollDirection: Axis.vertical,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController1,
                          child: ExpandablePanel(
                            header: Text(
                              '1. What is FoodScanGenius?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'FoodScanGenius is a powerful and user-friendly app that allows you to scan barcodes and obtain detailed information about food ingredients. It helps you make informed choices by providing comprehensive data about allergens, dietary restrictions, and nutritional content.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController2,
                          child: ExpandablePanel(
                            header: Text(
                              '2. How does FoodScanGenius work?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Simply scan the barcode of a food product using the app\'s built-in scanner, and FoodScanGenius will instantly analyze the ingredients and provide you with a detailed breakdown. The app utilizes advanced AI technology to identify allergens, highlight dietary restrictions, and offer personalized recommendations.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController3,
                          child: ExpandablePanel(
                            header: Text(
                              '3. Can FoodScanGenius accommodate specific dietary needs?',
                              textAlign: TextAlign.start,
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Absolutely! FoodScanGenius is designed to cater to a wide range of dietary needs, including vegetarian, vegan, gluten-free, and more. You can customize your preferences within the app to receive accurate information based on your specific dietary requirements.\n',
                                  textAlign: TextAlign.start,
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController4,
                          child: ExpandablePanel(
                            header: Text(
                              '4. Is FoodScanGenius available in my country?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'FoodScanGenius is available in multiple countries worldwide. We are continuously expanding our coverage to ensure that users from various regions can benefit from the app\'s features. Please check the app store or website to see if FoodScanGenius is available in your country.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController5,
                          child: ExpandablePanel(
                            header: Text(
                              '5. How accurate is the information provided by FoodScanGenius?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'We strive to provide the most accurate and up-to-date information possible. FoodScanGenius relies on extensive databases and partnerships with trusted sources to ensure the accuracy of ingredient information, allergen identification, and nutritional data. However, please note that manufacturers occasionally update their product formulations, so we recommend double-checking with the product packaging if you have any concerns or allergies.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController6,
                          child: ExpandablePanel(
                            header: Text(
                              '6. Can I save and track my scanned products?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Absolutely! FoodScanGenius allows you to save and track the products you scan for easy reference. You can create personalized lists, favorites, and even set reminders for items you frequently purchase.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController7,
                          child: ExpandablePanel(
                            header: Text(
                              '7. Is FoodScanGenius available for both iOS and Android?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'Yes, FoodScanGenius is available for both iOS and Android devices. You can download it from the App Store or Google Play Store, depending on your device.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController8,
                          child: ExpandablePanel(
                            header: Text(
                              '8. How secure is my data?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'We take data security and privacy seriously. FoodScanGenius follows industry best practices to safeguard your personal information. For more details, please refer to our privacy policy.',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 12.0, 0.0, 0.0),
                      child: Container(
                        width: double.infinity,
                        color: Color(0x00000000),
                        child: ExpandableNotifier(
                          controller: _model.expandableController9,
                          child: ExpandablePanel(
                            header: Text(
                              '9. How can I contact support if I have further questions?',
                              style:
                                  FlutterFlowTheme.of(context).headlineMedium,
                            ),
                            collapsed: Container(
                              width: double.infinity,
                              height: 0.0,
                              decoration: BoxDecoration(),
                            ),
                            expanded: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  'If you have any additional questions, feedback, or need assistance, please don\'t hesitate to reach out to our support team at \'bv@digitalrtm.com\'. We\'re here to help!',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                      ),
                                ),
                              ],
                            ),
                            theme: ExpandableThemeData(
                              tapHeaderToExpand: true,
                              tapBodyToExpand: false,
                              tapBodyToCollapse: false,
                              headerAlignment:
                                  ExpandablePanelHeaderAlignment.center,
                              hasIcon: true,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Divider(
                      thickness: 1.0,
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
