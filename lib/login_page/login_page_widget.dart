import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'login_page_model.dart';
export 'login_page_model.dart';

class LoginPageWidget extends StatefulWidget {
  const LoginPageWidget({super.key});

  @override
  State<LoginPageWidget> createState() => _LoginPageWidgetState();
}

class _LoginPageWidgetState extends State<LoginPageWidget> {
  late LoginPageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LoginPageModel());

    _model.loginPagTextController ??= TextEditingController();
    _model.loginPagFocusNode ??= FocusNode();

    _model.loginPassTextController ??= TextEditingController();
    _model.loginPassFocusNode ??= FocusNode();
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
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          actions: const [],
          centerTitle: false,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.9,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Text(
                        'Welcome Back!',
                        style: FlutterFlowTheme.of(context)
                            .displayLarge
                            .override(
                              fontFamily: 'Outfit',
                              color: FlutterFlowTheme.of(context).primaryText,
                              fontSize: 50.0,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: TextFormField(
                      controller: _model.loginPagTextController,
                      focusNode: _model.loginPagFocusNode,
                      autofocus: false,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Email',
                        hintText: 'Enter your email',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 20.0, 24.0),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      validator: _model.loginPagTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: TextFormField(
                      controller: _model.loginPassTextController,
                      focusNode: _model.loginPassFocusNode,
                      autofocus: false,
                      obscureText: !_model.loginPassVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your password',
                        hintStyle:
                            FlutterFlowTheme.of(context).bodyLarge.override(
                                  fontFamily: 'Readex Pro',
                                  letterSpacing: 0.0,
                                ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: FlutterFlowTheme.of(context).primary,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        errorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        focusedErrorBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: Color(0x00000000),
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        contentPadding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 24.0, 20.0, 24.0),
                        suffixIcon: InkWell(
                          onTap: () => setState(
                            () => _model.loginPassVisibility =
                                !_model.loginPassVisibility,
                          ),
                          focusNode: FocusNode(skipTraversal: true),
                          child: Icon(
                            _model.loginPassVisibility
                                ? Icons.visibility_outlined
                                : Icons.visibility_off_outlined,
                            color: FlutterFlowTheme.of(context).secondaryText,
                            size: 22.0,
                          ),
                        ),
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Readex Pro',
                            letterSpacing: 0.0,
                          ),
                      validator: _model.loginPassTextControllerValidator
                          .asValidator(context),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        GoRouter.of(context).prepareAuthEvent();

                        final user = await authManager.signInWithEmail(
                          context,
                          _model.loginPagTextController.text,
                          _model.loginPassTextController.text,
                        );
                        if (user == null) {
                          return;
                        }

                        context.pushNamedAuth('search', context.mounted);
                      },
                      text: 'Login',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: FlutterFlowTheme.of(context).secondary,
                        textStyle: FlutterFlowTheme.of(context)
                            .titleMedium
                            .override(
                              fontFamily: 'Readex Pro',
                              color: FlutterFlowTheme.of(context).primaryText,
                              letterSpacing: 0.0,
                            ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                        hoverColor: const Color(0xFFF7CBCA),
                        hoverTextColor:
                            FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.fromSTEB(8.0, 15.0, 0.0, 0.0),
                    child: Text(
                      'Don\'t have an account?',
                      style: FlutterFlowTheme.of(context).bodySmall.override(
                            fontFamily: 'Readex Pro',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 11.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('RegisterPage');
                      },
                      text: 'Register here',
                      options: FFButtonOptions(
                        width: 230.0,
                        height: 50.0,
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF74676F),
                        textStyle:
                            FlutterFlowTheme.of(context).bodySmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: FlutterFlowTheme.of(context)
                                      .primaryBackground,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                ),
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(50.0),
                        hoverColor: const Color(0xFFF7CBCA),
                        hoverTextColor:
                            FlutterFlowTheme.of(context).primaryText,
                      ),
                    ),
                  ),
                ],
              ),
              Align(
                alignment: const AlignmentDirectional(-0.01, -1.04),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.asset(
                    'assets/images/WickMake__1_-removebg-preview_(2)_(1).png',
                    width: 288.0,
                    height: 154.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
