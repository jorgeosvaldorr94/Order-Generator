import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileModel extends FlutterFlowModel {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextName widget.
  TextEditingController? textNameController;
  String? Function(BuildContext, String?)? textNameControllerValidator;
  // State field(s) for TextProduct widget.
  TextEditingController? textProductController;
  String? Function(BuildContext, String?)? textProductControllerValidator;
  // State field(s) for TextDescription widget.
  TextEditingController? textDescriptionController;
  String? Function(BuildContext, String?)? textDescriptionControllerValidator;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textNameController?.dispose();
    textProductController?.dispose();
    textDescriptionController?.dispose();
  }

  /// Additional helper methods are added here.

}
