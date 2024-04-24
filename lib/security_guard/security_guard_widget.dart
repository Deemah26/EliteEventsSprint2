import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'security_guard_model.dart';
export 'security_guard_model.dart';

class SecurityGuardWidget extends StatefulWidget {
  const SecurityGuardWidget({super.key});

  @override
  State<SecurityGuardWidget> createState() => _SecurityGuardWidgetState();
}

class _SecurityGuardWidgetState extends State<SecurityGuardWidget> {
  late SecurityGuardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SecurityGuardModel());
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
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              32.0, 0.0, 0.0, 0.0),
                          child: Text(
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
          actions: [
            Align(
              alignment: const AlignmentDirectional(1.0, -1.0),
              child: FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 30.0,
                borderWidth: 1.0,
                buttonSize: 44.0,
                icon: Icon(
                  Icons.menu_rounded,
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
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Stack(
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('SecuritypageInfo');
                        },
                        text: 'Next',
                        options: FFButtonOptions(
                          width: 148.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFDAB9B2),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 5.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 0.0,
                          ),
                          borderRadius: BorderRadius.circular(24.0),
                          hoverColor: const Color(0xFFF7CBCA),
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 0.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.02, 0.69),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 8.0, 250.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Security-no pressed ...');
                        },
                        text: 'No',
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFE8DCD6),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 19.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: const Color(0xFFF7CBCA),
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 1.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 100.0),
                      child: FFButtonWidget(
                        onPressed: () {
                          print('Security-yes pressed ...');
                        },
                        text: 'Yes',
                        options: FFButtonOptions(
                          width: 100.0,
                          height: 50.0,
                          padding: const EdgeInsets.all(2.0),
                          iconPadding: const EdgeInsets.all(4.0),
                          color: const Color(0xFFE8DCD6),
                          textStyle: FlutterFlowTheme.of(context)
                              .titleSmall
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 19.0,
                                letterSpacing: 0.0,
                              ),
                          elevation: 3.0,
                          borderSide: const BorderSide(
                            color: Colors.transparent,
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                          hoverColor: const Color(0xFFF7CBCA),
                          hoverBorderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).secondary,
                            width: 1.0,
                          ),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 120.0, 0.0, 0.0),
                    child: Text(
                      'Would you like security guard service to ensure the safety of your event?\n\n',
                      textAlign: TextAlign.center,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            fontSize: 15.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    child: Text(
                      '\nSecurity guard service \n',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 30.0,
                            letterSpacing: 0.0,
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
  }
}
