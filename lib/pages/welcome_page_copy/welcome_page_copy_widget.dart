import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'welcome_page_copy_model.dart';
export 'welcome_page_copy_model.dart';

class WelcomePageCopyWidget extends StatefulWidget {
  const WelcomePageCopyWidget({super.key});

  @override
  State<WelcomePageCopyWidget> createState() => _WelcomePageCopyWidgetState();
}

class _WelcomePageCopyWidgetState extends State<WelcomePageCopyWidget> {
  late WelcomePageCopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomePageCopyModel());
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Container(
                    width: 250.0,
                    height: 250.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).secondaryBackground,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: Image.asset(
                          'assets/images/WickMake__1_-removebg-preview_(2)_(1).png',
                        ).image,
                      ),
                    ),
                  ),
                ),
                Text(
                  'Welcome!',
                  style: FlutterFlowTheme.of(context).displayLarge.override(
                        fontFamily: 'Outfit',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 50.0,
                        letterSpacing: 0.0,
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    'Your one-stop solution for event planning.',
                    style: FlutterFlowTheme.of(context).titleMedium.override(
                          fontFamily: 'Readex Pro',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
                Transform.rotate(
                  angle: 0.0 * (math.pi / 180),
                  child: Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed('LoginPage');
                        },
                        text: 'Login',
                        options: FFButtonOptions(
                          width: 200.0,
                          height: 50.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
                          color: const Color(0xFFAE8381),
                          textStyle:
                              FlutterFlowTheme.of(context).titleSmall.override(
                                    fontFamily: 'Readex Pro',
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    letterSpacing: 0.0,
                                  ),
                          elevation: 2.0,
                          borderRadius: BorderRadius.circular(24.0),
                          hoverColor: const Color(0xFFF7CBCA),
                          hoverTextColor:
                              FlutterFlowTheme.of(context).primaryText,
                        ),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0.0, 0.0),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('RegisterPage');
                      },
                      text: 'Register',
                      options: FFButtonOptions(
                        width: 200.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF74676F),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 2.0,
                        borderRadius: BorderRadius.circular(24.0),
                        hoverColor: const Color(0xFFF7CBCA),
                        hoverTextColor:
                            FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
