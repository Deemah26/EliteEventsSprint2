import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Login-pag widget.
  FocusNode? loginPagFocusNode;
  TextEditingController? loginPagTextController;
  String? Function(BuildContext, String?)? loginPagTextControllerValidator;
  // State field(s) for Login-pass widget.
  FocusNode? loginPassFocusNode;
  TextEditingController? loginPassTextController;
  late bool loginPassVisibility;
  String? Function(BuildContext, String?)? loginPassTextControllerValidator;

  @override
  void initState(BuildContext context) {
    loginPassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    loginPagFocusNode?.dispose();
    loginPagTextController?.dispose();

    loginPassFocusNode?.dispose();
    loginPassTextController?.dispose();
  }
}
