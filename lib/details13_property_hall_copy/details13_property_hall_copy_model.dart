import '/flutter_flow/flutter_flow_util.dart';
import 'details13_property_hall_copy_widget.dart'
    show Details13PropertyHallCopyWidget;
import 'package:flutter/material.dart';

class Details13PropertyHallCopyModel
    extends FlutterFlowModel<Details13PropertyHallCopyWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
