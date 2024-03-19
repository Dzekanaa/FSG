import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'fsghelp_model.dart';
export 'fsghelp_model.dart';

class FsghelpWidget extends StatefulWidget {
  const FsghelpWidget({super.key});

  @override
  State<FsghelpWidget> createState() => _FsghelpWidgetState();
}

class _FsghelpWidgetState extends State<FsghelpWidget> {
  late FsghelpModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FsghelpModel());

    _model.expandableController1 = ExpandableController(initialExpanded: false);
    _model.expandableController2 = ExpandableController(initialExpanded: false);
    _model.expandableController3 = ExpandableController(initialExpanded: false);
    _model.expandableController4 = ExpandableController(initialExpanded: false);
    _model.expandableController5 = ExpandableController(initialExpanded: false);
    _model.expandableController6 = ExpandableController(initialExpanded: false);
    _model.expandableController7 = ExpandableController(initialExpanded: false);
    _model.expandableController8 = ExpandableController(initialExpanded: false);
    _model.expandableController9 = ExpandableController(initialExpanded: false);
    _model.expandableController10 =
        ExpandableController(initialExpanded: false);
    _model.expandableController11 =
        ExpandableController(initialExpanded: false);
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
            'Why FoodScanGenius',
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
                              'Welcome to FoodScanGenius',
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
                                  'An App to Check if Products are Suitable for Consumers Using a Barcode Scan of the Packaging',
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
                              'Introducing FoodScanGenius',
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
                                  'Welcome to FoodScanGenius, the app that helps you make informed decisions about the products you buy and eat. Our app utilizes advanced barcode scanning technology to provide you with all the information you need about a product, including its nutritional value, allergens, and suitability for your dietary requirements.',
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
                              'App Features',
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
                                  'Barcode scanning technology to instantly retrieve detailed product information. Customizable dietary preferences and allergen alerts. Personalized recommendations for healthy products based on your profile.Product comparison tool to assist you in making informed decisions\n',
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
                              'Target Audience',
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
                                  'Our app is designed for health-conscious individuals who are passionate about making informed decisions regarding the food they consume. Our target audience includes:\n\n    -Fitness enthusiasts\n    -Individuals with dietary restrictions or food allergies\n    -Health-conscious consumers who prioritize nutrition and wellness\n',
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
                              'How to Use the App',
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
                                  '   - Download the FoodScanGenius app from the App Store or Google Play.\n   - Create a profile by specifying your dietary preferences and setting up allergen alerts.\n    - Utilize the barcode scanning technology to scan product packaging and access comprehensive information about the product.\n   - Use the product comparison tool to make well-informed purchasing decisions.\n',
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
                              'Frequently Asked Questions (FAQ)',
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
                                  'For more information about the app and its features, please refer to our frequently asked questions section on our website.',
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
                              'Affiliate Programs',
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
                                  'FoodScanGenius offers affiliate programs for health and wellness products that align with our mission of promoting healthy lifestyles. Visit our website to learn more about our affiliate programs and how to get involved.',
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
                              'Terms and Conditions',
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
                                  'Prior to using the app, we kindly request that you review and agree to our terms and conditions. The terms and conditions can be found on our website.',
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
                              'User Feedback Survey',
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
                                  'We value your feedback and would appreciate it if you could take a few minutes to complete our survey. Let us know why you downloaded the app, share your experience using it, and tell us about any additional features you would like to see in the future.',
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
                          controller: _model.expandableController10,
                          child: ExpandablePanel(
                            header: Text(
                              'Legal Considerations',
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
                                  'For a comprehensive understanding of the legal considerations related to the use of barcode scanning technology, we have prepared a detailed document. Please visit our website to access the information.',
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
                          controller: _model.expandableController11,
                          child: ExpandablePanel(
                            header: Text(
                              'Color Scheme',
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
                                  'FoodScanGenius employs a vibrant color scheme combining shades of green and white. This choice reflects our commitment to health and wellness, cleanliness, and simplicity.',
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
