import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'recipe_search_model.dart';
export 'recipe_search_model.dart';

class RecipeSearchWidget extends StatefulWidget {
  const RecipeSearchWidget({super.key});

  @override
  State<RecipeSearchWidget> createState() => _RecipeSearchWidgetState();
}

class _RecipeSearchWidgetState extends State<RecipeSearchWidget> {
  late RecipeSearchModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipeSearchModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
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
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                5.0, 20.0, 0.0, 0.0),
                            child: InkWell(
                              splashColor: Colors.transparent,
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () async {
                                context.pushNamed('homepage');
                              },
                              child: Icon(
                                Icons.chevron_left_outlined,
                                color: FlutterFlowTheme.of(context).primaryText,
                                size: 30.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 20.0, 25.0, 5.0),
                            child: Container(
                              width: 339.0,
                              height: 46.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                                boxShadow: const [
                                  BoxShadow(
                                    blurRadius: 4.0,
                                    color: Color(0x33000000),
                                    offset: Offset(
                                      0.0,
                                      2.0,
                                    ),
                                  )
                                ],
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(20.0),
                                  bottomRight: Radius.circular(20.0),
                                  topLeft: Radius.circular(20.0),
                                  topRight: Radius.circular(20.0),
                                ),
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(1.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            20.0, 0.0, 8.0, 0.0),
                                        child: TextFormField(
                                          controller: _model.textController,
                                          focusNode: _model.textFieldFocusNode,
                                          onChanged: (_) =>
                                              EasyDebounce.debounce(
                                            '_model.textController',
                                            const Duration(milliseconds: 2000),
                                            () => setState(() {}),
                                          ),
                                          autofocus: false,
                                          textCapitalization:
                                              TextCapitalization.sentences,
                                          textInputAction: TextInputAction.done,
                                          obscureText: false,
                                          decoration: InputDecoration(
                                            labelStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      letterSpacing: 0.0,
                                                    ),
                                            alignLabelWithHint: false,
                                            hintText: 'Recipe name..',
                                            hintStyle:
                                                FlutterFlowTheme.of(context)
                                                    .labelMedium
                                                    .override(
                                                      fontFamily: 'Outfit',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      letterSpacing: 0.0,
                                                    ),
                                            enabledBorder: InputBorder.none,
                                            focusedBorder: InputBorder.none,
                                            errorBorder: InputBorder.none,
                                            focusedErrorBorder:
                                                InputBorder.none,
                                            suffixIcon: _model.textController!
                                                    .text.isNotEmpty
                                                ? InkWell(
                                                    onTap: () async {
                                                      _model.textController
                                                          ?.clear();
                                                      setState(() {});
                                                    },
                                                    child: Icon(
                                                      Icons.clear,
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                      size: 20.0,
                                                    ),
                                                  )
                                                : null,
                                          ),
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Plus Jakarta Sans',
                                                letterSpacing: 0.0,
                                              ),
                                          validator: _model
                                              .textControllerValidator
                                              .asValidator(context),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: const AlignmentDirectional(1.0, 0.0),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 20.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            setState(() {});
                                          },
                                          child: Icon(
                                            Icons.search_outlined,
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            size: 24.0,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
                child: FutureBuilder<ApiCallResponse>(
                  future: GetRecipeByNameCall.call(
                    recipeName: _model.textController.text,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              FlutterFlowTheme.of(context).primary,
                            ),
                          ),
                        ),
                      );
                    }
                    final containerGetRecipeByNameResponse = snapshot.data!;
                    return Container(
                      decoration: const BoxDecoration(),
                      child: Builder(
                        builder: (context) {
                          final recipes = GetRecipeByNameCall.all(
                                containerGetRecipeByNameResponse.jsonBody,
                              )?.toList() ??
                              [];
                          return ListView.separated(
                            padding: const EdgeInsets.symmetric(vertical: 2.0),
                            shrinkWrap: true,
                            scrollDirection: Axis.vertical,
                            itemCount: recipes.length,
                            separatorBuilder: (_, __) => const SizedBox(height: 2.0),
                            itemBuilder: (context, recipesIndex) {
                              final recipesItem = recipes[recipesIndex];
                              return Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    10.0, 5.0, 10.0, 5.0),
                                child: Container(
                                  width: 100.0,
                                  height: 81.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context).accent4,
                                    boxShadow: const [
                                      BoxShadow(
                                        blurRadius: 4.0,
                                        color: Color(0x33000000),
                                        offset: Offset(
                                          0.0,
                                          2.0,
                                        ),
                                      )
                                    ],
                                    borderRadius: const BorderRadius.only(
                                      bottomLeft: Radius.circular(10.0),
                                      bottomRight: Radius.circular(10.0),
                                      topLeft: Radius.circular(10.0),
                                      topRight: Radius.circular(10.0),
                                    ),
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () async {
                                      context.pushNamed(
                                        'otherrecdisplay',
                                        queryParameters: {
                                          'recipeTitle': serializeParam(
                                            GetRecipeByNameCall.recipetitle(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'author': serializeParam(
                                            GetRecipeByNameCall.author(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'cookTime': serializeParam(
                                            GetRecipeByNameCall.cooktime(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'rating': serializeParam(
                                            GetRecipeByNameCall.rating(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.double,
                                          ),
                                          'description': serializeParam(
                                            GetRecipeByNameCall.description(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'ingredients': serializeParam(
                                            GetRecipeByNameCall.ingredients(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'instructions': serializeParam(
                                            GetRecipeByNameCall.instructions(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'course': serializeParam(
                                            GetRecipeByNameCall.course(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'imageURL': serializeParam(
                                            GetRecipeByNameCall.imageurl(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                          'recipeID': serializeParam(
                                            GetRecipeByNameCall.recipeId(
                                              containerGetRecipeByNameResponse
                                                  .jsonBody,
                                            )?[recipesIndex],
                                            ParamType.String,
                                          ),
                                        }.withoutNulls,
                                      );
                                    },
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  10.0, 10.0, 10.0, 10.0),
                                          child: ClipRRect(
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(50.0),
                                              bottomRight:
                                                  Radius.circular(50.0),
                                              topLeft: Radius.circular(50.0),
                                              topRight: Radius.circular(50.0),
                                            ),
                                            child: Image.network(
                                              GetRecipeByNameCall.imageurl(
                                                containerGetRecipeByNameResponse
                                                    .jsonBody,
                                              )![recipesIndex],
                                              width: 60.0,
                                              height: 60.0,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        Flexible(
                                          child: Text(
                                            valueOrDefault<String>(
                                              GetRecipeByNameCall.recipetitle(
                                                containerGetRecipeByNameResponse
                                                    .jsonBody,
                                              )?[recipesIndex],
                                              'Recipe',
                                            ),
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  fontSize: 14.0,
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
