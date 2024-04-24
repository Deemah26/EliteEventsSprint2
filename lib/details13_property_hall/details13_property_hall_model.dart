import '/flutter_flow/flutter_flow_util.dart';
import 'details13_property_hall_widget.dart' show Details13PropertyHallWidget;
import 'package:flutter/material.dart';

class Details13PropertyHallModel
    extends FlutterFlowModel<Details13PropertyHallWidget> {
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
