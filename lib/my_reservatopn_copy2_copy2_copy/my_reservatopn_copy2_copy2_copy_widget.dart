import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_expanded_image_view.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'my_reservatopn_copy2_copy2_copy_model.dart';
export 'my_reservatopn_copy2_copy2_copy_model.dart';

class MyReservatopnCopy2Copy2CopyWidget extends StatefulWidget {
  const MyReservatopnCopy2Copy2CopyWidget({super.key});

  @override
  State<MyReservatopnCopy2Copy2CopyWidget> createState() =>
      _MyReservatopnCopy2Copy2CopyWidgetState();
}

class _MyReservatopnCopy2Copy2CopyWidgetState
    extends State<MyReservatopnCopy2Copy2CopyWidget> {
  late MyReservatopnCopy2Copy2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MyReservatopnCopy2Copy2CopyModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      scaffoldKey.currentState!.openEndDrawer();
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<ReservationsRecord>>(
      stream: queryReservationsRecord(),
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
        List<ReservationsRecord>
            myReservatopnCopy2Copy2CopyReservationsRecordList = snapshot.data!;
        return GestureDetector(
          onTap: () => _model.unfocusNode.canRequestFocus
              ? FocusScope.of(context).requestFocus(_model.unfocusNode)
              : FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
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
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xFF74676F),
                                size: 24.0,
                              ),
                            ),
                            Text(
                              'My Reservations',
                              textAlign: TextAlign.end,
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Readex Pro',
                                    color: const Color(0xFF74676F),
                                    fontSize: 15.0,
                                    letterSpacing: 1.0,
                                    fontWeight: FontWeight.normal,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  5.0, 0.0, 0.0, 0.0),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Color(0xFF74676F),
                                size: 24.0,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  99.0, 0.0, 0.0, 0.0),
                              child: Text(
                                'Log Out',
                                textAlign: TextAlign.start,
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
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
              backgroundColor: FlutterFlowTheme.of(context).primary,
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
                'Home ',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Readex Pro',
                      fontSize: 20.0,
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
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsets.all(22.0),
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 40.0),
                                  child: Text(
                                    'My Reservation',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.of(context)
                                        .bodyLarge
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          fontSize: 20.0,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                                Opacity(
                                  opacity: 0.9,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Flexible(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 0.0, 0.0, 0.0),
                                          child: FlutterFlowIconButton(
                                            borderColor:
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                            borderRadius: 20.0,
                                            borderWidth: 1.0,
                                            buttonSize: 40.0,
                                            fillColor: const Color(0xFFAE8381),
                                            hoverColor: const Color(0xFFF7CBCA),
                                            icon: Icon(
                                              Icons.search_sharp,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 25.0,
                                            ),
                                            onPressed: () async {
                                              context.pushNamed(
                                                  'myReservatopnCopy2Copy2');
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                StreamBuilder<List<ReservationsRecord>>(
                                  stream: queryReservationsRecord(),
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
                                    List<ReservationsRecord>
                                        containerReservationsRecordList =
                                        snapshot.data!;
                                    return Container(
                                      width: 190.0,
                                      height: 257.0,
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryBackground,
                                        borderRadius:
                                            BorderRadius.circular(8.0),
                                        border: Border.all(
                                          color: FlutterFlowTheme.of(context)
                                              .alternate,
                                          width: 1.0,
                                        ),
                                      ),
                                      child: Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 0.0),
                                        child: Padding(
                                          padding: const EdgeInsets.all(6.0),
                                          child: Builder(
                                            builder: (context) {
                                              final reservationVaritem =
                                                  containerReservationsRecordList
                                                      .toList();
                                              return Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: List.generate(
                                                    reservationVaritem.length,
                                                    (reservationVaritemIndex) {
                                                  final reservationVaritemItem =
                                                      reservationVaritem[
                                                          reservationVaritemIndex];
                                                  return Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                1.0, -1.0),
                                                        child:
                                                            SingleChildScrollView(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            mainAxisAlignment:
                                                                MainAxisAlignment
                                                                    .center,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              Text(
                                                                'Alghadeer, ST',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .labelSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                              Text(
                                                                'StarlightSoiree \nPalace ',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyLarge
                                                                    .override(
                                                                      fontFamily:
                                                                          'Readex Pro',
                                                                      letterSpacing:
                                                                          0.0,
                                                                    ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, -1.0),
                                                        child: InkWell(
                                                          splashColor: Colors
                                                              .transparent,
                                                          focusColor: Colors
                                                              .transparent,
                                                          hoverColor: Colors
                                                              .transparent,
                                                          highlightColor: Colors
                                                              .transparent,
                                                          onTap: () async {
                                                            await Navigator
                                                                .push(
                                                              context,
                                                              PageTransition(
                                                                type:
                                                                    PageTransitionType
                                                                        .fade,
                                                                child:
                                                                    FlutterFlowExpandedImageView(
                                                                  image: Image
                                                                      .asset(
                                                                    'assets/images/HALL_LUx.jpeg',
                                                                    fit: BoxFit
                                                                        .contain,
                                                                    alignment:
                                                                        const Alignment(
                                                                            -1.0,
                                                                            0.0),
                                                                    cacheHeight:
                                                                        80,
                                                                  ),
                                                                  allowRotation:
                                                                      false,
                                                                  tag:
                                                                      'imageTag1',
                                                                  useHeroAnimation:
                                                                      true,
                                                                ),
                                                              ),
                                                            );
                                                          },
                                                          child: Hero(
                                                            tag: 'imageTag1',
                                                            transitionOnUserGestures:
                                                                true,
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          2.0),
                                                              child:
                                                                  Image.asset(
                                                                'assets/images/HALL_LUx.jpeg',
                                                                width: 184.0,
                                                                height: 126.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                                alignment:
                                                                    const Alignment(
                                                                        -1.0,
                                                                        0.0),
                                                                cacheHeight: 80,
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          Text(
                                                            '30-05-2024',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              context.pushNamed(
                                                                'UPDATE9',
                                                                queryParameters:
                                                                    {
                                                                  'userRef':
                                                                      serializeParam(
                                                                    reservationVaritemItem
                                                                        .reference,
                                                                    ParamType
                                                                        .DocumentReference,
                                                                  ),
                                                                }.withoutNulls,
                                                              );
                                                            },
                                                            child: Icon(
                                                              Icons.edit_sharp,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              await reservationVaritemItem
                                                                  .reference
                                                                  .delete();

                                                              await RestryDELETELaterRecord
                                                                  .collection
                                                                  .doc()
                                                                  .set(
                                                                      createRestryDELETELaterRecordData(
                                                                    date: reservationVaritemItem
                                                                        .date,
                                                                    totalCost:
                                                                        reservationVaritemItem
                                                                            .totalCost,
                                                                    hallsID:
                                                                        reservationVaritemItem
                                                                            .hallsID,
                                                                  ));
                                                            },
                                                            child: const Icon(
                                                              Icons
                                                                  .delete_rounded,
                                                              color: Color(
                                                                  0xFFBD0707),
                                                              size: 24.0,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  );
                                                }),
                                              );
                                            },
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                                Container(
                                  width: 190.0,
                                  height: 258.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: InkWell(
                                        splashColor: Colors.transparent,
                                        focusColor: Colors.transparent,
                                        hoverColor: Colors.transparent,
                                        highlightColor: Colors.transparent,
                                        onTap: () async {
                                          await currentUserReference!.delete();
                                        },
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: SingleChildScrollView(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          'Al-Narjis, ST',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .labelSmall
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                        Text(
                                                          'Palace Paradise',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyLarge
                                                              .override(
                                                                fontFamily:
                                                                    'Readex Pro',
                                                                letterSpacing:
                                                                    0.0,
                                                              ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          -1.0, -1.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await Navigator.push(
                                                        context,
                                                        PageTransition(
                                                          type:
                                                              PageTransitionType
                                                                  .fade,
                                                          child:
                                                              FlutterFlowExpandedImageView(
                                                            image: Image.asset(
                                                              'assets/images/board_hall.jpeg',
                                                              fit: BoxFit
                                                                  .contain,
                                                              alignment:
                                                                  const Alignment(
                                                                      -1.0,
                                                                      0.0),
                                                              cacheHeight: 80,
                                                            ),
                                                            allowRotation:
                                                                false,
                                                            tag: 'imageTag2',
                                                            useHeroAnimation:
                                                                true,
                                                          ),
                                                        ),
                                                      );
                                                    },
                                                    child: Hero(
                                                      tag: 'imageTag2',
                                                      transitionOnUserGestures:
                                                          true,
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(2.0),
                                                        child: Image.asset(
                                                          'assets/images/board_hall.jpeg',
                                                          width: 184.0,
                                                          height: 121.0,
                                                          fit: BoxFit.cover,
                                                          alignment: const Alignment(
                                                              -1.0, 0.0),
                                                          cacheHeight: 80,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  '13-05-2024',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Align(
                                                  alignment:
                                                      const AlignmentDirectional(
                                                          1.0, -1.0),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 30.0,
                                                                0.0, 0.0),
                                                    child: FFButtonWidget(
                                                      onPressed: () async {
                                                        await currentUserReference!
                                                            .delete();
                                                      },
                                                      text: 'Delete',
                                                      options: FFButtonOptions(
                                                        height: 40.0,
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    24.0,
                                                                    0.0,
                                                                    24.0,
                                                                    0.0),
                                                        iconPadding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    0.0,
                                                                    0.0,
                                                                    0.0),
                                                        color:
                                                            const Color(0xFFAE8381),
                                                        textStyle:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .titleSmall
                                                                .override(
                                                                  fontFamily:
                                                                      'Readex Pro',
                                                                  color: Colors
                                                                      .white,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                        elevation: 3.0,
                                                        borderSide: const BorderSide(
                                                          color: Colors
                                                              .transparent,
                                                          width: 1.0,
                                                        ),
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(24.0),
                                                        hoverColor:
                                                            const Color(0xFFF7CBCA),
                                                        hoverTextColor:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                      ),
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
                                  width: 190.0,
                                  height: 275.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(8.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .alternate,
                                      width: 1.0,
                                    ),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    child: Padding(
                                      padding: const EdgeInsets.all(6.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Align(
                                                alignment: const AlignmentDirectional(
                                                    -1.0, -1.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await Navigator.push(
                                                      context,
                                                      PageTransition(
                                                        type: PageTransitionType
                                                            .fade,
                                                        child:
                                                            FlutterFlowExpandedImageView(
                                                          image: Image.asset(
                                                            'assets/images/basic_fancy_meet_hall.jpeg',
                                                            fit: BoxFit.contain,
                                                            alignment:
                                                                const Alignment(
                                                                    -1.0, 0.0),
                                                            cacheHeight: 80,
                                                          ),
                                                          allowRotation: false,
                                                          tag: 'imageTag3',
                                                          useHeroAnimation:
                                                              true,
                                                        ),
                                                      ),
                                                    );
                                                  },
                                                  child: Hero(
                                                    tag: 'imageTag3',
                                                    transitionOnUserGestures:
                                                        true,
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              2.0),
                                                      child: Image.asset(
                                                        'assets/images/basic_fancy_meet_hall.jpeg',
                                                        width: 184.0,
                                                        height: 138.0,
                                                        fit: BoxFit.cover,
                                                        alignment: const Alignment(
                                                            -1.0, 0.0),
                                                        cacheHeight: 80,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, -1.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Delete',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFFFF1F1F),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          const Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [],
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(14.0),
                                            child: Container(
                                              width: 308.0,
                                              height: 100.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsets.all(8.0),
                                                child: Text(
                                                  '23-04-2024',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Delete',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFFFF1F1F),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Delete',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFFFF1F1F),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment:
                                                const AlignmentDirectional(1.0, -1.0),
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Delete',
                                              options: FFButtonOptions(
                                                height: 40.0,
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        24.0, 0.0, 24.0, 0.0),
                                                iconPadding:
                                                    const EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color: const Color(0xFFFF1F1F),
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Readex Pro',
                                                          color: Colors.white,
                                                          letterSpacing: 0.0,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: const BorderSide(
                                                  color: Colors.transparent,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ]
                                  .divide(const SizedBox(height: 40.0))
                                  .around(const SizedBox(height: 40.0)),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
