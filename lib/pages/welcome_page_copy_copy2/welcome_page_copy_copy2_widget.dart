import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'welcome_page_copy_copy2_model.dart';
export 'welcome_page_copy_copy2_model.dart';

class WelcomePageCopyCopy2Widget extends StatefulWidget {
  const WelcomePageCopyCopy2Widget({super.key});

  @override
  State<WelcomePageCopyCopy2Widget> createState() =>
      _WelcomePageCopyCopy2WidgetState();
}

class _WelcomePageCopyCopy2WidgetState
    extends State<WelcomePageCopyCopy2Widget> {
  late WelcomePageCopyCopy2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WelcomePageCopyCopy2Model());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: const Color(0xFFE8DCD6),
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, 0.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(6.0),
                  child: Image.asset(
                    'assets/images/WickMake__1_-removebg-preview_(1).png',
                    width: 856.0,
                    height: 333.0,
                    fit: BoxFit.fitHeight,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
