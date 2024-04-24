import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'detail_page_starlight_model.dart';
export 'detail_page_starlight_model.dart';

class DetailPageStarlightWidget extends StatefulWidget {
  const DetailPageStarlightWidget({super.key});

  @override
  State<DetailPageStarlightWidget> createState() =>
      _DetailPageStarlightWidgetState();
}

class _DetailPageStarlightWidgetState extends State<DetailPageStarlightWidget> {
  late DetailPageStarlightModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DetailPageStarlightModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      scaffoldKey.currentState!.openEndDrawer();
    });

    _model.textFielVisTextController ??= TextEditingController();
    _model.textFielVisFocusNode ??= FocusNode();
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
      endDrawer: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          scaffoldKey.currentState!.openDrawer();
        },
        child: SizedBox(
          width: 200.0,
          child: Drawer(
            elevation: 16.0,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('search');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF74676F),
                          size: 24.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            110.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Home',
                          textAlign: TextAlign.end,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF74676F),
                                    fontSize: 15.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('profile-pg');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF74676F),
                          size: 24.0,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            110.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Profile',
                          textAlign: TextAlign.end,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF74676F),
                                    fontSize: 15.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('myReservatopnCopy2Copy2CopyCopy');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF74676F),
                          size: 24.0,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(32.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'My Reservations',
                          textAlign: TextAlign.end,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF74676F),
                                    fontSize: 15.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
                InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    context.pushNamed('Logout');
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      const Padding(
                        padding:
                            EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 0.0, 0.0),
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Color(0xFF74676F),
                          size: 24.0,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(99.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Log Out',
                          textAlign: TextAlign.start,
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF74676F),
                                    fontSize: 15.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.normal,
                                  ),
                        ),
                      ),
                    ],
                  ),
                ),
              ]
                  .divide(const SizedBox(height: 40.0))
                  .addToStart(const SizedBox(height: 80.0)),
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
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
          'Home',
          style: FlutterFlowTheme.of(context).headlineMedium.override(
                fontFamily: 'Outfit',
                letterSpacing: 0.0,
              ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(0.0, 8.0, 12.0, 8.0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 8.0,
              borderWidth: 1.0,
              buttonSize: 80.0,
              fillColor: Colors.transparent,
              icon: Icon(
                Icons.menu,
                color: FlutterFlowTheme.of(context).primaryText,
                size: 24.0,
              ),
              onPressed: () async {
                scaffoldKey.currentState!.openEndDrawer();
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0.0,
      ),
      body: Stack(
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: InkWell(
                    splashColor: Colors.transparent,
                    focusColor: Colors.transparent,
                    hoverColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () async {
                      context.pushNamed('calender');
                    },
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(16.0),
                                  child: Image.asset(
                                    'assets/images/HALL_LUx.jpeg',
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.9,
                                    height: 250.0,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 12.0, 0.0, 0.0),
                            child: Text(
                              'Starlight Soiree Palace',
                              style: FlutterFlowTheme.of(context)
                                  .headlineMedium
                                  .override(
                                    fontFamily: 'Outfit',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                16.0, 8.0, 0.0, 0.0),
                            child: Text(
                              'Location: Alghadeer\n',
                              style: FlutterFlowTheme.of(context)
                                  .labelMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(-1.0, 0.0),
                            child: Text(
                              '       Hall Capacity: 500 Person\n        Price per person: 240 SAR\n',
                              textAlign: TextAlign.center,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Total Cost:',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    fontSize: 20.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: TextFormField(
                                    controller:
                                        _model.textFielVisTextController,
                                    focusNode: _model.textFielVisFocusNode,
                                    autofocus: true,
                                    textInputAction: TextInputAction.done,
                                    obscureText: false,
                                    decoration: InputDecoration(
                                      labelText: 'Enter Number of visitors:',
                                      labelStyle: FlutterFlowTheme.of(context)
                                          .labelMedium
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            letterSpacing: 0.0,
                                          ),
                                      hintText: 'Number of visitors..',
                                      hintStyle: FlutterFlowTheme.of(context)
                                          .labelSmall
                                          .override(
                                            fontFamily: 'Readex Pro',
                                            color: const Color(0xFF8B8989),
                                            fontSize: 8.0,
                                            letterSpacing: 0.0,
                                          ),
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .secondary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      errorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      focusedErrorBorder: UnderlineInputBorder(
                                        borderSide: BorderSide(
                                          color: FlutterFlowTheme.of(context)
                                              .error,
                                          width: 2.0,
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                      ),
                                      filled: true,
                                      fillColor: const Color(0xFFE8DCD6),
                                    ),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          letterSpacing: 0.0,
                                        ),
                                    keyboardType: TextInputType.number,
                                    validator: _model
                                        .textFielVisTextControllerValidator
                                        .asValidator(context),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 16.0),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 24.0,
                                  borderWidth: 0.0,
                                  buttonSize: 35.0,
                                  fillColor: Colors.transparent,
                                  icon: const Icon(
                                    Icons.arrow_circle_right,
                                    color: Color(0xFF9E9E9E),
                                    size: 30.0,
                                  ),
                                  onPressed: () {
                                    print('IconButton pressed ...');
                                  },
                                ),
                              ),
                              Expanded(
                                child: Padding(
                                  padding: const EdgeInsets.all(20.0),
                                  child: Container(
                                    height: 40.0,
                                    decoration: BoxDecoration(
                                      color: const Color(0xFF74676F),
                                      boxShadow: const [
                                        BoxShadow(
                                          blurRadius: 10.0,
                                          color: Color(0x33000000),
                                          offset: Offset(
                                            0.0,
                                            2.0,
                                          ),
                                        )
                                      ],
                                      borderRadius: BorderRadius.circular(10.0),
                                      shape: BoxShape.rectangle,
                                      border: Border.all(
                                        color: Colors.transparent,
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          25.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'Total Price : ',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Readex Pro',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryBackground,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ].divide(const SizedBox(width: 10.0)),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              'Hall minimum capacity:250',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                          Text(
                            '        Contact with Hall: 966056478394',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Readex Pro',
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                          Divider(
                            height: 36.0,
                            thickness: 1.0,
                            color: FlutterFlowTheme.of(context).alternate,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Container(
                                width: 240.0,
                                height: 90.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                ),
                                child: Align(
                                  alignment: const AlignmentDirectional(0.0, 0.0),
                                  child: StreamBuilder<List<TrAddResRecord>>(
                                    stream: queryTrAddResRecord(
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<TrAddResRecord>
                                          buttonTrAddResRecordList =
                                          snapshot.data!;
                                      // Return an empty Container when the item does not exist.
                                      if (snapshot.data!.isEmpty) {
                                        return Container();
                                      }
                                      final buttonTrAddResRecord =
                                          buttonTrAddResRecordList.isNotEmpty
                                              ? buttonTrAddResRecordList.first
                                              : null;
                                      return FFButtonWidget(
                                        onPressed: () async {
                                          await TrAddResRecord.collection
                                              .doc()
                                              .set({
                                            ...createTrAddResRecordData(
                                              hname: _model
                                                  .textFielVisTextController
                                                  .text,
                                              capacity: int.tryParse(_model
                                                  .textFielVisTextController
                                                  .text),
                                              contactNumber: '',
                                              location: '',
                                              imgaeTst: '',
                                            ),
                                            ...mapToFirestore(
                                              {
                                                'hall_image': [''],
                                              },
                                            ),
                                          });

                                          context.pushNamed(
                                              'myReservatopnCopy2Copy2CopyCopy');
                                        },
                                        text: 'Reserve',
                                        options: FFButtonOptions(
                                          height: 40.0,
                                          padding: const EdgeInsets.all(18.0),
                                          iconPadding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 0.0),
                                          color: const Color(0xFFAE8381),
                                          textStyle: FlutterFlowTheme.of(
                                                  context)
                                              .titleSmall
                                              .override(
                                                fontFamily: 'Readex Pro',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryBackground,
                                                letterSpacing: 0.0,
                                              ),
                                          elevation: 3.0,
                                          borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 1.0,
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(24.0),
                                          hoverColor: const Color(0xFFF7CBCA),
                                          hoverTextColor:
                                              FlutterFlowTheme.of(context)
                                                  .primary,
                                        ),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: MediaQuery.sizeOf(context).width * 1.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).primary,
                  boxShadow: const [
                    BoxShadow(
                      blurRadius: 4.0,
                      color: Color(0x55000000),
                      offset: Offset(
                        0.0,
                        2.0,
                      ),
                    )
                  ],
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(0.0),
                    bottomRight: Radius.circular(0.0),
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
