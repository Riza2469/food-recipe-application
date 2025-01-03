import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'addrecipe_widget.dart' show AddrecipeWidget;
import 'package:flutter/material.dart';

class AddrecipeModel extends FlutterFlowModel<AddrecipeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for recipe_title widget.
  FocusNode? recipeTitleFocusNode;
  TextEditingController? recipeTitleTextController;
  String? Function(BuildContext, String?)? recipeTitleTextControllerValidator;
  // State field(s) for recipe_cusine widget.
  FocusNode? recipeCusineFocusNode;
  TextEditingController? recipeCusineTextController;
  String? Function(BuildContext, String?)? recipeCusineTextControllerValidator;
  // State field(s) for recipe_description widget.
  FocusNode? recipeDescriptionFocusNode;
  TextEditingController? recipeDescriptionTextController;
  String? Function(BuildContext, String?)?
      recipeDescriptionTextControllerValidator;
  // State field(s) for recipe_course widget.
  FocusNode? recipeCourseFocusNode;
  TextEditingController? recipeCourseTextController;
  String? Function(BuildContext, String?)? recipeCourseTextControllerValidator;
  // State field(s) for Cookingtime widget.
  FocusNode? cookingtimeFocusNode;
  TextEditingController? cookingtimeTextController;
  String? Function(BuildContext, String?)? cookingtimeTextControllerValidator;
  // State field(s) for recipe_ingredients widget.
  FocusNode? recipeIngredientsFocusNode;
  TextEditingController? recipeIngredientsTextController;
  String? Function(BuildContext, String?)?
      recipeIngredientsTextControllerValidator;
  // State field(s) for recipe_instruction widget.
  FocusNode? recipeInstructionFocusNode;
  TextEditingController? recipeInstructionTextController;
  String? Function(BuildContext, String?)?
      recipeInstructionTextControllerValidator;
  // Stores action output result for [Backend Call - API (addRecipes)] action in Button widget.
  ApiCallResponse? addRecipeMessage;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    recipeTitleFocusNode?.dispose();
    recipeTitleTextController?.dispose();

    recipeCusineFocusNode?.dispose();
    recipeCusineTextController?.dispose();

    recipeDescriptionFocusNode?.dispose();
    recipeDescriptionTextController?.dispose();

    recipeCourseFocusNode?.dispose();
    recipeCourseTextController?.dispose();

    cookingtimeFocusNode?.dispose();
    cookingtimeTextController?.dispose();

    recipeIngredientsFocusNode?.dispose();
    recipeIngredientsTextController?.dispose();

    recipeInstructionFocusNode?.dispose();
    recipeInstructionTextController?.dispose();
  }
}
