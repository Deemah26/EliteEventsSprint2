import '/flutter_flow/flutter_flow_util.dart';
import 'detail_page_starlight_widget.dart' show DetailPageStarlightWidget;
import 'package:flutter/material.dart';

class DetailPageStarlightModel
    extends FlutterFlowModel<DetailPageStarlightWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFielVis widget.
  FocusNode? textFielVisFocusNode;
  TextEditingController? textFielVisTextController;
  String? Function(BuildContext, String?)? textFielVisTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFielVisFocusNode?.dispose();
    textFielVisTextController?.dispose();
  }
}
