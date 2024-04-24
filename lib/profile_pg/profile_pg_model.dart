import '/flutter_flow/flutter_flow_util.dart';
import 'profile_pg_widget.dart' show ProfilePgWidget;
import 'package:flutter/material.dart';

class ProfilePgModel extends FlutterFlowModel<ProfilePgWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
