import '/flutter_flow/flutter_flow_util.dart';
import 'recipes_widget.dart' show RecipesWidget;
import 'package:flutter/material.dart';

class RecipesModel extends FlutterFlowModel<RecipesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
