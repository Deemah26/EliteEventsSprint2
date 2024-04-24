import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'delete_model.dart';
export 'delete_model.dart';

class DeleteWidget extends StatefulWidget {
  const DeleteWidget({
    super.key,
    required this.dTaskRef,
  });

  final DocumentReference? dTaskRef;

  @override
  State<DeleteWidget> createState() => _DeleteWidgetState();
}

class _DeleteWidgetState extends State<DeleteWidget> {
  late DeleteModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DeleteModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        await widget.dTaskRef!.delete();
        Navigator.pop(context);
      },
      child: Container(
        width: 66.0,
        height: 65.0,
        decoration: const BoxDecoration(),
        child: const Icon(
          Icons.delete_sharp,
          color: Color(0xFFBD0707),
          size: 24.0,
        ),
      ),
    );
  }
}
