import '/flutter_flow/flutter_flow_util.dart';
import 'security_guard_widget.dart' show SecurityGuardWidget;
import 'package:flutter/material.dart';

class SecurityGuardModel extends FlutterFlowModel<SecurityGuardWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
