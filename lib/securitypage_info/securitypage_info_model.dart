import '/flutter_flow/flutter_flow_util.dart';
import 'securitypage_info_widget.dart' show SecuritypageInfoWidget;
import 'package:flutter/material.dart';

class SecuritypageInfoModel extends FlutterFlowModel<SecuritypageInfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
