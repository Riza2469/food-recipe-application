import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'display_recipe_widget.dart' show DisplayRecipeWidget;
import 'package:flutter/material.dart';

class DisplayRecipeModel extends FlutterFlowModel<DisplayRecipeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (rateRecipe)] action in ToggleIcon widget.
  ApiCallResponse? apiResultjv3;
  // Stores action output result for [Backend Call - API (addToFavourites)] action in ToggleIcon widget.
  ApiCallResponse? apiResultqiq;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for RatingBar widget.
  double? ratingBarValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
