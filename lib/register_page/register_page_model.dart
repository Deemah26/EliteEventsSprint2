import '/flutter_flow/flutter_flow_util.dart';
import 'register_page_widget.dart' show RegisterPageWidget;
import 'package:flutter/material.dart';

class RegisterPageModel extends FlutterFlowModel<RegisterPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Register-name widget.
  FocusNode? registerNameFocusNode;
  TextEditingController? registerNameTextController;
  String? Function(BuildContext, String?)? registerNameTextControllerValidator;
  // State field(s) for Register-email widget.
  FocusNode? registerEmailFocusNode;
  TextEditingController? registerEmailTextController;
  String? Function(BuildContext, String?)? registerEmailTextControllerValidator;
  // State field(s) for Register-pass widget.
  FocusNode? registerPassFocusNode;
  TextEditingController? registerPassTextController;
  late bool registerPassVisibility;
  String? Function(BuildContext, String?)? registerPassTextControllerValidator;
  // State field(s) for Register-phoneNum widget.
  FocusNode? registerPhoneNumFocusNode;
  TextEditingController? registerPhoneNumTextController;
  String? Function(BuildContext, String?)?
      registerPhoneNumTextControllerValidator;

  @override
  void initState(BuildContext context) {
    registerPassVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    registerNameFocusNode?.dispose();
    registerNameTextController?.dispose();

    registerEmailFocusNode?.dispose();
    registerEmailTextController?.dispose();

    registerPassFocusNode?.dispose();
    registerPassTextController?.dispose();

    registerPhoneNumFocusNode?.dispose();
    registerPhoneNumTextController?.dispose();
  }
}
