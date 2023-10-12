import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({Key? key}) : super(key: key);

  @override
  _LoginPageWidgetState createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget>
    with TickerProviderStateMixin {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    _model.emailAddressLoginController ??= TextEditingController();
    _model.passwordLoginController ??= TextEditingController();
    _model.emailAddressController ??= TextEditingController();
    _model.passwordController ??= TextEditingController();
    _model.passwordConfirmController ??= TextEditingController();
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
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Color(0xFF14181B),
        body: Container(
          width: MediaQuery.sizeOf(context).width * 1.0,
          height: MediaQuery.sizeOf(context).height * 1.0,
          decoration: BoxDecoration(
            color: Color(0xFF14181B),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: Image.asset(
                Theme.of(context).brightness == Brightness.dark
                    ? 'assets/images/blob-scene-haikei(1).png'
                    : 'assets/images/blob-scene-haikei.png',
              ).image,
            ),
          ),
          child: Stack(
            children: [
              if (!(Theme.of(context).brightness == Brightness.dark))
                Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    color: Color(0x990F1113),
                    shape: BoxShape.rectangle,
                  ),
                ),
              Stack(
                children: [
                  Align(
                    alignment: AlignmentDirectional(0.12, 0.07),
                    child: Container(
                      width: 352.0,
                      height: 742.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(50.0),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 70.0, 0.0, 0.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 20.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/Food_scan_geniusLOGO_NR_-03.png',
                                width: 160.0,
                                height: 100.0,
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0.0, 0),
                                child: TabBar(
                                  isScrollable: true,
                                  labelColor:
                                      FlutterFlowTheme.of(context).accent2,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  labelStyle:
                                      FlutterFlowTheme.of(context).titleMedium,
                                  unselectedLabelStyle: TextStyle(),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).accent2,
                                  tabs: [
                                    Tab(
                                      text: 'Login',
                                    ),
                                    Tab(
                                      text: 'Sign Up',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          44.0, 0.0, 44.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .emailAddressLoginController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Email Address',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 24.0,
                                                              20.0, 24.0),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                validator: _model
                                                    .emailAddressLoginControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .passwordLoginController,
                                                obscureText: !_model
                                                    .passwordLoginVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Password',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 24.0,
                                                              20.0, 24.0),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordLoginVisibility =
                                                          !_model
                                                              .passwordLoginVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordLoginVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                    ),
                                                validator: _model
                                                    .passwordLoginControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  GoRouter.of(context)
                                                      .prepareAuthEvent();

                                                  final user = await authManager
                                                      .signInWithEmail(
                                                    context,
                                                    _model
                                                        .emailAddressLoginController
                                                        .text,
                                                    _model
                                                        .passwordLoginController
                                                        .text,
                                                  );
                                                  if (user == null) {
                                                    return;
                                                  }

                                                  context.goNamedAuth('profile',
                                                      context.mounted);
                                                },
                                                text: 'Login',
                                                options: FFButtonOptions(
                                                  width: 333.0,
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Nunito Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 18.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  elevation: 6.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 0.0, 20.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.00, 1.00),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  120.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Or use a social account to login',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      final user =
                                                          await authManager
                                                              .signInWithGoogle(
                                                                  context);
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      context.goNamedAuth(
                                                          'profile',
                                                          context.mounted);
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 5.0,
                                                            color: Color(
                                                                0x3314181B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: FaIcon(
                                                        FontAwesomeIcons.google,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      final user =
                                                          await authManager
                                                              .signInAnonymously(
                                                                  context);
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await currentUserReference!
                                                          .update(
                                                              createUsersRecordData(
                                                        vegan: 'Tracked',
                                                        vegetarian: 'Tracked',
                                                        ovovege: 'Tracked',
                                                        pescatarian: 'Tracked',
                                                        whitemeat: 'Tracked',
                                                        halal: 'Tracked',
                                                        kosher: 'Tracked',
                                                        hindu: 'Tracked',
                                                        jain: 'Tracked',
                                                        celery: 'Tracked',
                                                        cereals: 'Tracked',
                                                        eggs: 'Tracked',
                                                        fish: 'Tracked',
                                                        milk: 'Tracked',
                                                        nuts: 'Tracked',
                                                        sugar: 'Tracked',
                                                        gmo: 'Tracked',
                                                        organic: 'Tracked',
                                                        sesame: 'Tracked',
                                                        sulphurdioxide:
                                                            'Tracked',
                                                      ));

                                                      context.goNamedAuth(
                                                          'profile',
                                                          context.mounted);
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 5.0,
                                                            color: Color(
                                                                0x3314181B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Icon(
                                                        Icons.person,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'Robin3PhoneAuthPage');
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 5.0,
                                                            color: Color(
                                                                0x3314181B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Icon(
                                                        Icons.phone_sharp,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 28.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  context.pushNamed(
                                                    'ForgotPasswordPage',
                                                    extra: <String, dynamic>{
                                                      kTransitionInfoKey:
                                                          TransitionInfo(
                                                        hasTransition: true,
                                                        transitionType:
                                                            PageTransitionType
                                                                .bottomToTop,
                                                      ),
                                                    },
                                                  );
                                                },
                                                text: 'Forgot Password?',
                                                options: FFButtonOptions(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: Color(0x0039D2C0),
                                                  textStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 20.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  elevation: 0.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          44.0, 0.0, 44.0, 0.0),
                                      child: SingleChildScrollView(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .emailAddressController,
                                                obscureText: false,
                                                decoration: InputDecoration(
                                                  labelText: 'Email Address',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 24.0,
                                                              20.0, 24.0),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                maxLines: null,
                                                validator: _model
                                                    .emailAddressControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller:
                                                    _model.passwordController,
                                                obscureText:
                                                    !_model.passwordVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Password',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 24.0,
                                                              20.0, 24.0),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordVisibility =
                                                          !_model
                                                              .passwordVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 16.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                validator: _model
                                                    .passwordControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 12.0, 0.0, 0.0),
                                              child: TextFormField(
                                                controller: _model
                                                    .passwordConfirmController,
                                                obscureText: !_model
                                                    .passwordConfirmVisibility,
                                                decoration: InputDecoration(
                                                  labelText: 'Confirm Password',
                                                  labelStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .titleSmall
                                                      .override(
                                                        fontFamily:
                                                            'Nunito Sans',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                      ),
                                                  hintStyle: FlutterFlowTheme
                                                          .of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Lexend Deca',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primary,
                                                        fontSize: 16.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                                  enabledBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color: Color(0x00000000),
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  errorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  focusedErrorBorder:
                                                      OutlineInputBorder(
                                                    borderSide: BorderSide(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .error,
                                                      width: 1.0,
                                                    ),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                  ),
                                                  filled: true,
                                                  fillColor:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .primaryBackground,
                                                  contentPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(20.0, 24.0,
                                                              20.0, 24.0),
                                                  suffixIcon: InkWell(
                                                    onTap: () => setState(
                                                      () => _model
                                                              .passwordConfirmVisibility =
                                                          !_model
                                                              .passwordConfirmVisibility,
                                                    ),
                                                    focusNode: FocusNode(
                                                        skipTraversal: true),
                                                    child: Icon(
                                                      _model.passwordConfirmVisibility
                                                          ? Icons
                                                              .visibility_outlined
                                                          : Icons
                                                              .visibility_off_outlined,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      size: 20.0,
                                                    ),
                                                  ),
                                                ),
                                                style: FlutterFlowTheme.of(
                                                        context)
                                                    .bodyMedium
                                                    .override(
                                                      fontFamily: 'Nunito Sans',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                      fontSize: 15.0,
                                                      fontWeight:
                                                          FontWeight.w500,
                                                    ),
                                                validator: _model
                                                    .passwordConfirmControllerValidator
                                                    .asValidator(context),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 24.0, 0.0, 0.0),
                                              child: FFButtonWidget(
                                                onPressed: () async {
                                                  GoRouter.of(context)
                                                      .prepareAuthEvent();
                                                  if (_model.passwordController
                                                          .text !=
                                                      _model
                                                          .passwordConfirmController
                                                          .text) {
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      SnackBar(
                                                        content: Text(
                                                          'Passwords don\'t match!',
                                                        ),
                                                      ),
                                                    );
                                                    return;
                                                  }

                                                  final user = await authManager
                                                      .createAccountWithEmail(
                                                    context,
                                                    _model
                                                        .emailAddressController
                                                        .text,
                                                    _model.passwordController
                                                        .text,
                                                  );
                                                  if (user == null) {
                                                    return;
                                                  }

                                                  await UsersRecord.collection
                                                      .doc(user.uid)
                                                      .update(
                                                          createUsersRecordData(
                                                        vegan: 'Not Interesed',
                                                        vegetarian:
                                                            'Not Interesed',
                                                        ovovege:
                                                            'Not Interesed',
                                                        pescatarian:
                                                            'Not Interesed',
                                                        whitemeat:
                                                            'Not Interesed',
                                                        halal: 'Not Interesed',
                                                        kosher: 'Not Interesed',
                                                        hindu: 'Not Interesed',
                                                        jain: 'Not Interesed',
                                                        celery: 'Not Interesed',
                                                        cereals:
                                                            'Not Interesed',
                                                        eggs: 'Not Interesed',
                                                        fish: 'Not Interesed',
                                                        milk: 'Not Interesed',
                                                        nuts: 'Not Interesed',
                                                        sugar: 'Not Interesed',
                                                        gmo: 'Not Interesed',
                                                        organic:
                                                            'Not Interesed',
                                                        sesame: 'Not Interesed',
                                                        sulphurdioxide:
                                                            'Not Interesed',
                                                      ));

                                                  context.goNamedAuth('profile',
                                                      context.mounted);
                                                },
                                                text: 'Create Account',
                                                options: FFButtonOptions(
                                                  width: 333.0,
                                                  height: 50.0,
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 0.0),
                                                  iconPadding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(0.0, 0.0,
                                                              0.0, 0.0),
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  textStyle:
                                                      FlutterFlowTheme.of(
                                                              context)
                                                          .titleSmall
                                                          .override(
                                                            fontFamily:
                                                                'Nunito Sans',
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryBackground,
                                                            fontSize: 18.0,
                                                            fontWeight:
                                                                FontWeight.w500,
                                                          ),
                                                  elevation: 6.0,
                                                  borderSide: BorderSide(
                                                    color: Colors.transparent,
                                                    width: 1.0,
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      20.0, 20.0, 20.0, 0.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  28.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Or use a social account to sign up',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primaryText,
                                                                ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 8.0),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                children: [
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      final user =
                                                          await authManager
                                                              .signInWithGoogle(
                                                                  context);
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      context.goNamedAuth(
                                                          'profile',
                                                          context.mounted);
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 5.0,
                                                            color: Color(
                                                                0x3314181B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: FaIcon(
                                                        FontAwesomeIcons.google,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      GoRouter.of(context)
                                                          .prepareAuthEvent();
                                                      final user =
                                                          await authManager
                                                              .signInAnonymously(
                                                                  context);
                                                      if (user == null) {
                                                        return;
                                                      }

                                                      await currentUserReference!
                                                          .update(
                                                              createUsersRecordData(
                                                        vegan: 'Tracked',
                                                        vegetarian: 'Tracked',
                                                        ovovege: 'Tracked',
                                                        pescatarian: 'Tracked',
                                                        whitemeat: 'Tracked',
                                                        halal: 'Tracked',
                                                        kosher: 'Tracked',
                                                        hindu: 'Tracked',
                                                        jain: 'Tracked',
                                                        celery: 'Tracked',
                                                        cereals: 'Tracked',
                                                        eggs: 'Tracked',
                                                        fish: 'Tracked',
                                                        milk: 'Tracked',
                                                        nuts: 'Tracked',
                                                        sugar: 'Tracked',
                                                        gmo: 'Tracked',
                                                        organic: 'Tracked',
                                                        sesame: 'Tracked',
                                                        sulphurdioxide:
                                                            'Tracked',
                                                      ));
                                                      setState(() {
                                                        FFAppState().anonimus =
                                                            true;
                                                      });

                                                      context.goNamedAuth(
                                                          'profile',
                                                          context.mounted);
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 5.0,
                                                            color: Color(
                                                                0x3314181B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Icon(
                                                        Icons.person,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                  InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      context.pushNamed(
                                                          'Robin3PhoneAuthPage');
                                                    },
                                                    child: Container(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      decoration: BoxDecoration(
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .accent1,
                                                        boxShadow: [
                                                          BoxShadow(
                                                            blurRadius: 5.0,
                                                            color: Color(
                                                                0x3314181B),
                                                            offset: Offset(
                                                                0.0, 2.0),
                                                          )
                                                        ],
                                                        shape: BoxShape.circle,
                                                      ),
                                                      alignment:
                                                          AlignmentDirectional(
                                                              0.00, 0.00),
                                                      child: Icon(
                                                        Icons.phone_sharp,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        size: 24.0,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
