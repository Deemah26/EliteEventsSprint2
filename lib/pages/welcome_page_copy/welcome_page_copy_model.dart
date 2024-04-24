import '/flutter_flow/flutter_flow_util.dart';
import 'welcome_page_copy_widget.dart' show WelcomePageCopyWidget;
import 'package:flutter/material.dart';

class WelcomePageCopyModel extends FlutterFlowModel<WelcomePageCopyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
