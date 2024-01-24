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
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'classification_page_model.dart';
export 'classification_page_model.dart';

class ClassificationPageWidget extends StatefulWidget {
  const ClassificationPageWidget({
    Key? key,
    String? barcode,
  })  : this.barcode = barcode ?? '/',
        super(key: key);

  final String barcode;

  @override
  _ClassificationPageWidgetState createState() =>
      _ClassificationPageWidgetState();
}

class _ClassificationPageWidgetState extends State<ClassificationPageWidget>
    with TickerProviderStateMixin {
  late ClassificationPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClassificationPageModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 4,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (isiOS) {
      SystemChrome.setSystemUIOverlayStyle(
        SystemUiOverlayStyle(
          statusBarBrightness: Theme.of(context).brightness,
          systemStatusBarContrastEnforced: true,
        ),
      );
    }

    context.watch<FFAppState>();
    final chartPieChartColorsList = [
      Color(0xFF400040),
      Color(0xFF4D004D),
      Color(0xFF5A005A),
      Color(0xFF660066),
      Color(0xFF730073),
      Color(0xFF800080),
      Color(0xFF993399),
      Color(0xFF8D1A8D),
      Color(0xFFA64DA6)
    ];
    return FutureBuilder<ApiCallResponse>(
      future: GetMenuItemCall.call(
        barcodeAPI: widget.barcode,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        final classificationPageGetMenuItemResponse = snapshot.data!;
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
                  context.pushNamed('HistoryPage');
                },
              ),
              title: Text(
                'Details',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      fontFamily: 'Nunito Sans',
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
              ),
              actions: [
                FlutterFlowIconButton(
                  borderRadius: 20.0,
                  borderWidth: 0.0,
                  buttonSize: 40.0,
                  hoverIconColor: FlutterFlowTheme.of(context).accent3,
                  icon: Icon(
                    Icons.thumb_up_outlined,
                    color: FlutterFlowTheme.of(context).accent1,
                    size: 24.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 0.0),
                  child: FlutterFlowIconButton(
                    borderRadius: 20.0,
                    borderWidth: 0.0,
                    buttonSize: 40.0,
                    hoverIconColor: FlutterFlowTheme.of(context).accent3,
                    icon: Icon(
                      Icons.thumb_down_outlined,
                      color: FlutterFlowTheme.of(context).accent1,
                      size: 24.0,
                    ),
                    onPressed: () {
                      print('IconButton pressed ...');
                    },
                  ),
                ),
              ],
              centerTitle: true,
              elevation: 2.0,
            ),
            body: SafeArea(
              top: true,
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      Theme.of(context).brightness == Brightness.dark
                          ? 'assets/images/blob-scene-haikei(1).png'
                          : 'assets/images/blob-scene-haikei.png',
                    ).image,
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 8.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Align(
                              alignment: AlignmentDirectional(-1.0, 0.0),
                              child: Text(
                                'barcode: ',
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ),
                            Text(
                              widget.barcode,
                              style: FlutterFlowTheme.of(context).bodyMedium,
                            ),
                          ],
                        ),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(16.0),
                            child: Image.network(
                              valueOrDefault<String>(
                                GetMenuItemCall.img(
                                  classificationPageGetMenuItemResponse
                                      .jsonBody,
                                ),
                                'https://www.pacificfoodmachinery.com.au/media/catalog/product/placeholder/default/no-product-image-400x400_8.png',
                              ),
                              width: 140.0,
                              height: 168.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          Flexible(
                            child: Padding(
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  8.0, 8.0, 0.0, 0.0),
                              child: Text(
                                GetMenuItemCall.title(
                                          classificationPageGetMenuItemResponse
                                              .jsonBody,
                                        ) ==
                                        'null'
                                    ? 'Product'
                                    : GetMenuItemCall.title(
                                        classificationPageGetMenuItemResponse
                                            .jsonBody,
                                      )!,
                                textAlign: TextAlign.start,
                                maxLines: 5,
                                style: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 22.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 4.0, 0.0, 0.0),
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment(0.0, 0),
                                child: TabBar(
                                  isScrollable: true,
                                  labelColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  unselectedLabelColor:
                                      FlutterFlowTheme.of(context).primaryText,
                                  labelStyle: FlutterFlowTheme.of(context)
                                      .titleMedium
                                      .override(
                                        fontFamily: 'Nunito Sans',
                                        fontSize: 16.0,
                                      ),
                                  unselectedLabelStyle: TextStyle(),
                                  indicatorColor:
                                      FlutterFlowTheme.of(context).accent1,
                                  padding: EdgeInsets.all(2.0),
                                  tabs: [
                                    Tab(
                                      text: 'Classification',
                                    ),
                                    Tab(
                                      text: 'Ingredients',
                                    ),
                                    Tab(
                                      text: 'Nutrition',
                                    ),
                                    Tab(
                                      text: 'Description',
                                    ),
                                  ],
                                  controller: _model.tabBarController,
                                  onTap: (i) async {
                                    [
                                      () async {},
                                      () async {},
                                      () async {},
                                      () async {}
                                    ][i]();
                                  },
                                ),
                              ),
                              Expanded(
                                child: TabBarView(
                                  controller: _model.tabBarController,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Opacity(
                                            opacity: 0.85,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  50.0,
                                                                  0.0,
                                                                  16.0),
                                                      child:
                                                          SingleChildScrollView(
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .center,
                                                          children: [
                                                            if (!((valueOrDefault(currentUserDocument?.vegan, '') == 'Not Interesed') &&
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.ovovege,
                                                                        '') ==
                                                                    'Not Interesed') &&
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.pescatarian,
                                                                        '') ==
                                                                    'Not Interesed') &&
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.whitemeat,
                                                                        '') ==
                                                                    'Not Interesed')))
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          4.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child:
                                                                      AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      'Diet Choices',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent1,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.vegan,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .vegan(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Row(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      mainAxisAlignment:
                                                                          MainAxisAlignment
                                                                              .spaceBetween,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              12.0,
                                                                              0.0,
                                                                              0.0,
                                                                              0.0),
                                                                          child:
                                                                              Text(
                                                                            'Vegan',
                                                                            style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                  fontFamily: 'Nunito Sans',
                                                                                  fontSize: 18.0,
                                                                                ),
                                                                          ),
                                                                        ),
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              0.0,
                                                                              0.0,
                                                                              16.0,
                                                                              0.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceEvenly,
                                                                            children:
                                                                                [
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (valueOrDefault(currentUserDocument?.vegan, '') == 'Critical')
                                                                                    Text(
                                                                                      GetMenuItemCall.vegan(
                                                                                        classificationPageGetMenuItemResponse.jsonBody,
                                                                                      )!
                                                                                          .toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (valueOrDefault(currentUserDocument?.vegan, '') == 'Preferred')
                                                                                    Text(
                                                                                      GetMenuItemCall.vegan(
                                                                                        classificationPageGetMenuItemResponse.jsonBody,
                                                                                      )!
                                                                                          .toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  if (valueOrDefault(currentUserDocument?.vegan, '') == 'Tracked')
                                                                                    Text(
                                                                                      GetMenuItemCall.vegan(
                                                                                        classificationPageGetMenuItemResponse.jsonBody,
                                                                                      )!
                                                                                          .toString(),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                ],
                                                                              ),
                                                                            ].divide(SizedBox(width: 90.0)),
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.ovovege,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .ovovege(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .center,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'OvoVege',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.ovovege, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.ovovege(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.ovovege, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.ovovege(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.ovovege, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.ovovege(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.pescatarian,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .pesca(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Pescatarian',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.pescatarian, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.pesca(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.pescatarian, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.pesca(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.pescatarian, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.pesca(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.whitemeat,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .whitemeat(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'White meat',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.whitemeat, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.whitemeat(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.whitemeat, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.whitemeat(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.whitemeat, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.whitemeat(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if ((valueOrDefault(currentUserDocument?.halal, '') != 'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.jain,
                                                                        '') !=
                                                                    'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.kosher,
                                                                        '') !=
                                                                    'Not Interesed'))
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child:
                                                                      AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      'Religious Restrictions',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent1,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.halal,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall.halal(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            null &&
                                                                        GetMenuItemCall.halal(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            '',
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Halal',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.halal, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.halal(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.halal, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.halal(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.halal, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.halal(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.kosher,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall.kosher(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            null &&
                                                                        GetMenuItemCall.kosher(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            '',
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Kosher',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.kosher, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.kosher(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.kosher, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.kosher(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.kosher, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.kosher(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.jain,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall.jain(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            null &&
                                                                        GetMenuItemCall.jain(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            '',
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Jain',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.jain, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.jain(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.jain, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.jain(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.jain, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.jain(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if ((valueOrDefault(currentUserDocument?.gmo, '') != 'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.organic,
                                                                        '') !=
                                                                    'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.sulphurdioxide,
                                                                        '') !=
                                                                    'Not Interesed'))
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child:
                                                                      AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      'Sustainability choices',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent1,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.organic,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall.organic(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            null &&
                                                                        GetMenuItemCall.organic(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            '',
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Organic',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.organic, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.organic(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.organic, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.organic(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.organic, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.organic(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.gmo,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall.gmo(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            null &&
                                                                        GetMenuItemCall.gmo(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            '',
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'GMO',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.gmo, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.gmo(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.gmo, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.gmo(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.gmo, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.gmo(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.sulphurdioxide,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .alsulphur(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'SO2',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.sulphurdioxide, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.alsulphur(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.sulphurdioxide, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.alsulphur(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.sulphurdioxide, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.alsulphur(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if ((valueOrDefault(currentUserDocument?.celery, '') != 'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.cereals,
                                                                        '') !=
                                                                    'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.eggs,
                                                                        '') !=
                                                                    'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.milk,
                                                                        '') !=
                                                                    'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.fish,
                                                                        '') !=
                                                                    'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.nuts,
                                                                        '') !=
                                                                    'Not Interesed') ||
                                                                (valueOrDefault(
                                                                        currentUserDocument
                                                                            ?.sesame,
                                                                        '') !=
                                                                    'Not Interesed'))
                                                              Align(
                                                                alignment:
                                                                    AlignmentDirectional(
                                                                        -1.0,
                                                                        0.0),
                                                                child: Padding(
                                                                  padding: EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          8.0,
                                                                          0.0,
                                                                          4.0),
                                                                  child:
                                                                      AuthUserStreamWidget(
                                                                    builder:
                                                                        (context) =>
                                                                            Text(
                                                                      'Allergens',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .titleLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Nunito Sans',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).accent1,
                                                                            fontWeight:
                                                                                FontWeight.w600,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.celery,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .alcelery(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Celery',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.celery, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.alcelery(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.celery, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.alcelery(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.celery, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.alcelery(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.cereals,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .alcereals(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Cereals',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.cereals, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.alcereals(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.cereals, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.alcereals(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.cereals, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.alcereals(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.eggs,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .aleggs(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Eggs',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.eggs, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.aleggs(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.eggs, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.aleggs(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.eggs, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.aleggs(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.fish,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .alfish(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Fish',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.fish, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.alfish(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.fish, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.alfish(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.fish, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.alfish(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.milk,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall.almilk(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            null &&
                                                                        GetMenuItemCall.almilk(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) !=
                                                                            '',
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Milk',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.milk, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.almilk(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.milk, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.almilk(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.milk, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.almilk(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.nuts,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .alnuts(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'nuts',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.nuts, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.alnuts(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.nuts, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.alnuts(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.nuts, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.alnuts(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                            if (valueOrDefault<
                                                                bool>(
                                                              (valueOrDefault(
                                                                          currentUserDocument
                                                                              ?.sesame,
                                                                          '') !=
                                                                      'Not Interesed') &&
                                                                  valueOrDefault<
                                                                      bool>(
                                                                    GetMenuItemCall
                                                                            .alsesame(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        ) !=
                                                                        null,
                                                                    false,
                                                                  ),
                                                              false,
                                                            ))
                                                              AuthUserStreamWidget(
                                                                builder:
                                                                    (context) =>
                                                                        Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  children: [
                                                                    Padding(
                                                                      padding: EdgeInsetsDirectional.fromSTEB(
                                                                          0.0,
                                                                          8.0,
                                                                          0.0,
                                                                          0.0),
                                                                      child:
                                                                          Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.max,
                                                                        mainAxisAlignment:
                                                                            MainAxisAlignment.spaceBetween,
                                                                        children: [
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                12.0,
                                                                                0.0,
                                                                                0.0,
                                                                                0.0),
                                                                            child:
                                                                                Text(
                                                                              'Sesame',
                                                                              style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                    fontFamily: 'Nunito Sans',
                                                                                    fontSize: 18.0,
                                                                                  ),
                                                                            ),
                                                                          ),
                                                                          Padding(
                                                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                                                0.0,
                                                                                0.0,
                                                                                16.0,
                                                                                0.0),
                                                                            child:
                                                                                Row(
                                                                              mainAxisSize: MainAxisSize.max,
                                                                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                                              children: [
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.sesame, '') == 'Critical')
                                                                                      Text(
                                                                                        GetMenuItemCall.alsesame(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.sesame, '') == 'Preferred')
                                                                                      Text(
                                                                                        GetMenuItemCall.alsesame(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                                Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    if (valueOrDefault(currentUserDocument?.sesame, '') == 'Tracked')
                                                                                      Text(
                                                                                        GetMenuItemCall.alsesame(
                                                                                          classificationPageGetMenuItemResponse.jsonBody,
                                                                                        )!
                                                                                            .toString(),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                      ),
                                                                                  ],
                                                                                ),
                                                                              ].divide(SizedBox(width: 90.0)),
                                                                            ),
                                                                          ),
                                                                        ],
                                                                      ),
                                                                    ),
                                                                    SizedBox(
                                                                      width:
                                                                          300.0,
                                                                      child:
                                                                          Divider(
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryBackground,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      12.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .spaceAround,
                                                            children: [
                                                              Text(
                                                                'Preference',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                'Critical',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                'Preferred',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                'Tracked',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontSize:
                                                                          18.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        Divider(
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Opacity(
                                            opacity: 0.85,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: double.infinity,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    10.0, 32.0, 0.0, 32.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  if ((GetMenuItemCall
                                                                  .ingrValue(
                                                                classificationPageGetMenuItemResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              null &&
                                                          (GetMenuItemCall
                                                                  .ingrValue(
                                                            classificationPageGetMenuItemResponse
                                                                .jsonBody,
                                                          ))!
                                                              .isNotEmpty) ==
                                                      true)
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  0.0,
                                                                  0.0,
                                                                  200.0),
                                                      child: Container(
                                                        width: double.infinity,
                                                        height: 292.0,
                                                        child: Stack(
                                                          children: [
                                                            FlutterFlowPieChart(
                                                              data:
                                                                  FFPieChartData(
                                                                values: GetMenuItemCall
                                                                                .ingrValue(
                                                                          classificationPageGetMenuItemResponse
                                                                              .jsonBody,
                                                                        )!
                                                                            .length >
                                                                        0
                                                                    ? GetMenuItemCall
                                                                        .ingrValue(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      )!
                                                                    : List.generate(
                                                                        random_data.randomInteger(
                                                                            0,
                                                                            0),
                                                                        (index) => random_data.randomDouble(
                                                                            0.0,
                                                                            1.0)),
                                                                colors:
                                                                    chartPieChartColorsList,
                                                                radius: [125.0],
                                                              ),
                                                              donutHoleRadius:
                                                                  10.0,
                                                              sectionLabelType:
                                                                  PieChartSectionLabelType
                                                                      .percent,
                                                              sectionLabelStyle:
                                                                  FlutterFlowTheme.of(
                                                                          context)
                                                                      .labelMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Nunito Sans',
                                                                        color: Color(
                                                                            0xFFEBE5EA),
                                                                        fontSize:
                                                                            12.0,
                                                                      ),
                                                            ),
                                                            Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      6.0),
                                                              child:
                                                                  FlutterFlowChartLegendWidget(
                                                                entries: functions
                                                                    .skini3char(GetMenuItemCall.ingrText(
                                                                      classificationPageGetMenuItemResponse
                                                                          .jsonBody,
                                                                    )?.toList())!
                                                                    .asMap()
                                                                    .entries
                                                                    .map(
                                                                      (label) =>
                                                                          LegendEntry(
                                                                        chartPieChartColorsList[label.key %
                                                                            chartPieChartColorsList.length],
                                                                        label
                                                                            .value,
                                                                      ),
                                                                    )
                                                                    .toList(),
                                                                width: double
                                                                    .infinity,
                                                                height: 200.0,
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontSize:
                                                                          12.0,
                                                                    ),
                                                                textPadding:
                                                                    EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            5.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                borderWidth:
                                                                    0.0,
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            8.0),
                                                                borderColor: Colors
                                                                    .transparent,
                                                                indicatorSize:
                                                                    10.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          if ((GetMenuItemCall.ingrValue(
                                                        classificationPageGetMenuItemResponse
                                                            .jsonBody,
                                                      ) !=
                                                      null &&
                                                  (GetMenuItemCall.ingrValue(
                                                    classificationPageGetMenuItemResponse
                                                        .jsonBody,
                                                  ))!
                                                      .isNotEmpty) ==
                                              false)
                                            wrapWithModel(
                                              model: _model.missingFoodModel,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: MissingFoodWidget(),
                                            ),
                                        ],
                                      ),
                                    ),
                                    Opacity(
                                      opacity: 0.85,
                                      child: Align(
                                        alignment:
                                            AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 8.0, 0.0, 0.0),
                                          child: Container(
                                            width: double.infinity,
                                            height: 700.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(16.0),
                                            ),
                                            child: Padding(
                                              padding: EdgeInsets.all(16.0),
                                              child: Stack(
                                                children: [
                                                  Align(
                                                    alignment:
                                                        AlignmentDirectional(
                                                            0.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  0.0,
                                                                  4.0,
                                                                  0.0,
                                                                  4.0),
                                                      child: Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            'Nutrition values: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .headlineSmall,
                                                          ),
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        16.0,
                                                                        0.0),
                                                            child: Text(
                                                              '/100g',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 40.0,
                                                                0.0, 0.0),
                                                    child:
                                                        SingleChildScrollView(
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall.fat(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Fat',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.fat(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.fatUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.fatUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.fatUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .alcohol(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Alcohol',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.alcohol(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    ).toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.alcoholUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.alcoholUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.alcoholUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .iron(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Iron',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.iron(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.ironUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.ironUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.ironUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .fiber(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Fiber',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.fiber(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.fiberUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.fiberUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.fiberUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .sugar(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Sugar',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.sugar(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.sugarUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.sugarUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.sugarUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall.fat(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Proteins',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.proteins(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.proteinsUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.proteinsUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.proteinsUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .carb(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Carbs',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.carb(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.carbUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.carbUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.carbUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .energy100(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Energy',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.energy100(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.energyUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.energyUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.energyUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .sodium(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Sodium',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall.override(
                                                                                      fontFamily: 'Nunito Sans',
                                                                                      fontSize: 22.0,
                                                                                    ),
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.sodium(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.soduimUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.soduimUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.soduimUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .salt(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Salt',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall,
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.salt(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.saltUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.saltUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.saltUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                          if (valueOrDefault<
                                                              bool>(
                                                            GetMenuItemCall
                                                                    .calcium(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ) !=
                                                                null,
                                                            false,
                                                          ))
                                                            Padding(
                                                              padding:
                                                                  EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          4.0,
                                                                          16.0,
                                                                          0.0),
                                                              child: Material(
                                                                color: Colors
                                                                    .transparent,
                                                                elevation: 1.0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              4.0),
                                                                ),
                                                                child:
                                                                    Container(
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primaryBackground,
                                                                    borderRadius:
                                                                        BorderRadius.circular(
                                                                            4.0),
                                                                    border:
                                                                        Border
                                                                            .all(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryBackground,
                                                                    ),
                                                                  ),
                                                                  child:
                                                                      Padding(
                                                                    padding:
                                                                        EdgeInsets.all(
                                                                            4.0),
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      children: [
                                                                        Padding(
                                                                          padding: EdgeInsetsDirectional.fromSTEB(
                                                                              4.0,
                                                                              4.0,
                                                                              4.0,
                                                                              8.0),
                                                                          child:
                                                                              Row(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.spaceBetween,
                                                                            children: [
                                                                              Text(
                                                                                'Calcium',
                                                                                style: FlutterFlowTheme.of(context).headlineSmall,
                                                                              ),
                                                                              Row(
                                                                                mainAxisSize: MainAxisSize.max,
                                                                                children: [
                                                                                  Text(
                                                                                    GetMenuItemCall.calcium(
                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                    )!
                                                                                        .toString(),
                                                                                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                          fontFamily: 'Nunito Sans',
                                                                                          fontSize: 16.0,
                                                                                        ),
                                                                                  ),
                                                                                  Padding(
                                                                                    padding: EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
                                                                                    child: Text(
                                                                                      valueOrDefault<String>(
                                                                                        GetMenuItemCall.calciumUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    null &&
                                                                                                GetMenuItemCall.calciumUnit(
                                                                                                      classificationPageGetMenuItemResponse.jsonBody,
                                                                                                    ) !=
                                                                                                    ''
                                                                                            ? GetMenuItemCall.calciumUnit(
                                                                                                classificationPageGetMenuItemResponse.jsonBody,
                                                                                              )
                                                                                            : 'N / A',
                                                                                        'N / A',
                                                                                      ),
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium,
                                                                                    ),
                                                                                  ),
                                                                                ],
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
                                                        ].divide(SizedBox(
                                                            height: 8.0)),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: double.infinity,
                                      child: Stack(
                                        children: [
                                          Opacity(
                                            opacity: 0.85,
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 8.0, 0.0, 0.0),
                                              child: Container(
                                                width: double.infinity,
                                                height: 700.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryBackground,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16.0),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    32.0, 16.0, 32.0, 16.0),
                                            child: SingleChildScrollView(
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Padding(
                                                        padding:
                                                            EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Brand: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                            Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                GetMenuItemCall
                                                                                .brand(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            null ||
                                                                        GetMenuItemCall
                                                                                .brand(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            ''
                                                                    ? 'N / A '
                                                                    : GetMenuItemCall
                                                                        .brand(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      ),
                                                                'N / A ',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Country: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                GetMenuItemCall
                                                                                .country(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            null ||
                                                                        GetMenuItemCall
                                                                                .country(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            ''
                                                                    ? 'N / A '
                                                                    : GetMenuItemCall
                                                                        .country(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      ),
                                                                'N / A ',
                                                              ).maybeHandleOverflow(
                                                                  maxChars: 30),
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Weight: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              GetMenuItemCall
                                                                              .quantity(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          ) ==
                                                                          null ||
                                                                      GetMenuItemCall
                                                                              .quantity(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          ) ==
                                                                          ''
                                                                  ? 'N / A '
                                                                  : GetMenuItemCall
                                                                      .quantity(
                                                                      classificationPageGetMenuItemResponse
                                                                          .jsonBody,
                                                                    ),
                                                              'N / A ',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Energy: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              GetMenuItemCall
                                                                          .energy(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      ) ==
                                                                      null
                                                                  ? 'N / A '
                                                                  : GetMenuItemCall
                                                                      .energy(
                                                                      classificationPageGetMenuItemResponse
                                                                          .jsonBody,
                                                                    )?.toString(),
                                                              'N / A',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              GetMenuItemCall
                                                                  .energyUnit(
                                                                classificationPageGetMenuItemResponse
                                                                    .jsonBody,
                                                              ),
                                                              'KJ',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Grade: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Text(
                                                            valueOrDefault<
                                                                String>(
                                                              GetMenuItemCall
                                                                              .grade(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          ) ==
                                                                          null ||
                                                                      GetMenuItemCall
                                                                              .grade(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          ) ==
                                                                          ''
                                                                  ? 'unknown'
                                                                  : GetMenuItemCall
                                                                      .grade(
                                                                      classificationPageGetMenuItemResponse
                                                                          .jsonBody,
                                                                    ),
                                                              'N / A ',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'EcoGrade: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                GetMenuItemCall
                                                                                .ecograde(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            null ||
                                                                        GetMenuItemCall
                                                                                .ecograde(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            ''
                                                                    ? 'N / A '
                                                                    : GetMenuItemCall
                                                                        .ecograde(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      ),
                                                                'N / A ',
                                                              ),
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Category: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                GetMenuItemCall
                                                                                .category(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            null ||
                                                                        GetMenuItemCall
                                                                                .category(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            ''
                                                                    ? 'N / A '
                                                                    : GetMenuItemCall
                                                                        .category(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      ),
                                                                'N / A ',
                                                              ),
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Packing: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                GetMenuItemCall
                                                                                .pack(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            null ||
                                                                        GetMenuItemCall
                                                                                .pack(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            ''
                                                                    ? 'N / A '
                                                                    : GetMenuItemCall
                                                                        .pack(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      ),
                                                                'N / A ',
                                                              ),
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Labels: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                GetMenuItemCall
                                                                                .labels(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            null ||
                                                                        GetMenuItemCall
                                                                                .labels(
                                                                              classificationPageGetMenuItemResponse.jsonBody,
                                                                            ) ==
                                                                            ''
                                                                    ? 'N / A '
                                                                    : GetMenuItemCall
                                                                        .labels(
                                                                        classificationPageGetMenuItemResponse
                                                                            .jsonBody,
                                                                      ),
                                                                'N / A ',
                                                              ),
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Text(
                                                            'Stores: ',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Nunito Sans',
                                                                  fontSize:
                                                                      18.0,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                ),
                                                          ),
                                                          Flexible(
                                                            child: Text(
                                                              valueOrDefault<
                                                                  String>(
                                                                GetMenuItemCall
                                                                    .stores(
                                                                  classificationPageGetMenuItemResponse
                                                                      .jsonBody,
                                                                ),
                                                                'N / A',
                                                              ),
                                                              maxLines: 2,
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    -1.0, -1.0),
                                                            child: Text(
                                                              'Traces: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  GetMenuItemCall
                                                                              .traces(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          ) ==
                                                                          'null'
                                                                      ? 'no traces'
                                                                      : functions.spoji(functions
                                                                          .skini3char(GetMenuItemCall.tralist(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          )?.map((e) => e.toString()).toList()?.toList())
                                                                          ?.toList()),
                                                                  ' No Traces',
                                                                ),
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontSize:
                                                                          18.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Align(
                                                            alignment:
                                                                AlignmentDirectional(
                                                                    0.0, -1.0),
                                                            child: Text(
                                                              'Allergens: ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Nunito Sans',
                                                                    fontSize:
                                                                        18.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                          Flexible(
                                                            child: Align(
                                                              alignment:
                                                                  AlignmentDirectional(
                                                                      -1.0,
                                                                      0.0),
                                                              child: Text(
                                                                valueOrDefault<
                                                                    String>(
                                                                  GetMenuItemCall
                                                                              .allergen(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          ) ==
                                                                          'null'
                                                                      ? 'no allergens'
                                                                      : functions.spoji(functions
                                                                          .skini3char(GetMenuItemCall.allist(
                                                                            classificationPageGetMenuItemResponse.jsonBody,
                                                                          )?.map((e) => e.toString()).toList()?.toList())
                                                                          ?.toList()),
                                                                  ' No Allergens',
                                                                ),
                                                                maxLines: 2,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Nunito Sans',
                                                                      fontSize:
                                                                          18.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Divider(
                                                        thickness: 1.0,
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                      ),
                                                    ],
                                                  ),
                                                ].divide(
                                                    SizedBox(height: 12.0)),
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
                      ),
                      if (GetMenuItemCall.serving(
                                classificationPageGetMenuItemResponse.jsonBody,
                              ) !=
                              null &&
                          GetMenuItemCall.serving(
                                classificationPageGetMenuItemResponse.jsonBody,
                              ) !=
                              '')
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 16.0, 0.0, 16.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'Serving Size: ',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Text(
                                valueOrDefault<String>(
                                  GetMenuItemCall.servingsize(
                                            classificationPageGetMenuItemResponse
                                                .jsonBody,
                                          ) !=
                                          null
                                      ? GetMenuItemCall.servingsize(
                                          classificationPageGetMenuItemResponse
                                              .jsonBody,
                                        ).toString()
                                      : valueOrDefault<String>(
                                          GetMenuItemCall.servingquantity(
                                                    classificationPageGetMenuItemResponse
                                                        .jsonBody,
                                                  ) !=
                                                  null
                                              ? GetMenuItemCall.servingquantity(
                                                  classificationPageGetMenuItemResponse
                                                      .jsonBody,
                                                ).toString()
                                              : valueOrDefault<String>(
                                                  GetMenuItemCall.quantity(
                                                                classificationPageGetMenuItemResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              null &&
                                                          GetMenuItemCall
                                                                  .quantity(
                                                                classificationPageGetMenuItemResponse
                                                                    .jsonBody,
                                                              ) !=
                                                              ''
                                                      ? GetMenuItemCall
                                                          .quantity(
                                                          classificationPageGetMenuItemResponse
                                                              .jsonBody,
                                                        )
                                                      : 'N / A',
                                                  'N / A',
                                                ),
                                          'N / A',
                                        ),
                                  'N / A',
                                ),
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Nunito Sans',
                                      fontSize: 18.0,
                                      decoration: TextDecoration.underline,
                                    ),
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
        );
      },
    );
  }
}
