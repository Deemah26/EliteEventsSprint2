import '/flutter_flow/flutter_flow_util.dart';
import 'my_reservatopn_copy2_copy2_widget.dart'
    show MyReservatopnCopy2Copy2Widget;
import 'package:flutter/material.dart';

class MyReservatopnCopy2Copy2Model
    extends FlutterFlowModel<MyReservatopnCopy2Copy2Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
  }
}
