import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'recipes_model.dart';
export 'recipes_model.dart';

class RecipesWidget extends StatefulWidget {
  const RecipesWidget({super.key});

  @override
  State<RecipesWidget> createState() => _RecipesWidgetState();
}

class _RecipesWidgetState extends State<RecipesWidget> {
  late RecipesModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RecipesModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).tertiary,
              size: 30.0,
            ),
            onPressed: () async {
              context.pushNamed('generateRecipe');
            },
          ),
          title: Text(
            'Recipes',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: FlutterFlowTheme.of(context).tertiary,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
        ),
        body: SafeArea(
          top: true,
          child: FutureBuilder<ApiCallResponse>(
            future: RecommendRecipesCall.call(
              inputIngredients: (List<String> selectedIngredients) {
                return selectedIngredients.join(',');
              }(FFAppState().selectedIngredients.toList()),
              cuisineTypesList: FFAppState().selectedCuisines,
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
              final columnRecommendRecipesResponse = snapshot.data!;
              return SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Builder(
                      builder: (context) {
                        final recipeCard = RecommendRecipesCall.all(
                              columnRecommendRecipesResponse.jsonBody,
                            )?.toList() ??
                            [];
                        return ListView.separated(
                          padding: const EdgeInsets.symmetric(vertical: 10.0),
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: recipeCard.length,
                          separatorBuilder: (_, __) => const SizedBox(height: 10.0),
                          itemBuilder: (context, recipeCardIndex) {
                            final recipeCardItem = recipeCard[recipeCardIndex];
                            return Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 0.0, 20.0, 0.0),
                              child: Container(
                                width: 100.0,
                                height: 200.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).alternate,
                                  image: DecorationImage(
                                    fit: BoxFit.fill,
                                    image: Image.network(
                                      valueOrDefault<String>(
                                        RecommendRecipesCall.imageurl(
                                          columnRecommendRecipesResponse
                                              .jsonBody,
                                        )?[recipeCardIndex],
                                        'https://images.unsplash.com/photo-1584255014406-2a68ea38e48c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxjdXRsZXJ5fGVufDB8fHx8MTcxMDc3MTE2Mnww&ixlib=rb-4.0.3&q=80&w=1080',
                                      ),
                                    ).image,
                                  ),
                                  boxShadow: const [
                                    BoxShadow(
                                      blurRadius: 4.0,
                                      color: Color(0x33000000),
                                      offset: Offset(
                                        2.0,
                                        5.0,
                                      ),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(20.0),
                                  shape: BoxShape.rectangle,
                                ),
                                child: InkWell(
                                  splashColor: Colors.transparent,
                                  focusColor: Colors.transparent,
                                  hoverColor: Colors.transparent,
                                  highlightColor: Colors.transparent,
                                  onTap: () async {
                                    setState(() {
                                      FFAppState().recipeCardIndex =
                                          recipeCardIndex;
                                    });

                                    context.pushNamed(
                                      'displayRecipe',
                                      queryParameters: {
                                        'recipeTitle': serializeParam(
                                          RecommendRecipesCall.title(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'author': serializeParam(
                                          RecommendRecipesCall.author(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'cookTime': serializeParam(
                                          RecommendRecipesCall.cooktime(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'description': serializeParam(
                                          RecommendRecipesCall.description(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'ingredients': serializeParam(
                                          RecommendRecipesCall.ingredients(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'instructions': serializeParam(
                                          RecommendRecipesCall.instructions(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'course': serializeParam(
                                          RecommendRecipesCall.course(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'imageURL': serializeParam(
                                          RecommendRecipesCall.imageurl(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                        'rating': serializeParam(
                                          RecommendRecipesCall.rating(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.double,
                                        ),
                                        'recipeID': serializeParam(
                                          RecommendRecipesCall.recipeid(
                                            columnRecommendRecipesResponse
                                                .jsonBody,
                                          )?[recipeCardIndex],
                                          ParamType.String,
                                        ),
                                      }.withoutNulls,
                                    );
                                  },
                                  child: Stack(
                                    children: [
                                      Align(
                                        alignment:
                                            const AlignmentDirectional(0.0, 1.0),
                                        child: Container(
                                          width: 1000.0,
                                          height: 100.0,
                                          decoration: BoxDecoration(
                                            color: const Color(0x39111010),
                                            boxShadow: const [
                                              BoxShadow(
                                                blurRadius: 12.0,
                                                color: Color(0x33000000),
                                                offset: Offset(
                                                  0.0,
                                                  5.0,
                                                ),
                                              )
                                            ],
                                            borderRadius: const BorderRadius.only(
                                              bottomLeft: Radius.circular(20.0),
                                              bottomRight:
                                                  Radius.circular(20.0),
                                              topLeft: Radius.circular(0.0),
                                              topRight: Radius.circular(0.0),
                                            ),
                                            border: Border.all(
                                              color: const Color(0x1A0B0B0B),
                                            ),
                                          ),
                                          child: Stack(
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, -1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: AutoSizeText(
                                                        valueOrDefault<String>(
                                                          RecommendRecipesCall
                                                              .title(
                                                            columnRecommendRecipesResponse
                                                                .jsonBody,
                                                          )?[recipeCardIndex],
                                                          'Title',
                                                        ).maybeHandleOverflow(
                                                          maxChars: 100,
                                                          replacement: '…',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.5,
                                                            ),
                                                        minFontSize: 15.0,
                                                      ),
                                                    ),
                                                  ),
                                                  Align(
                                                    alignment:
                                                        const AlignmentDirectional(
                                                            -1.0, 1.0),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  15.0,
                                                                  5.0,
                                                                  0.0,
                                                                  35.0),
                                                      child: Text(
                                                        RecommendRecipesCall
                                                            .cuisine(
                                                          columnRecommendRecipesResponse
                                                              .jsonBody,
                                                        )![recipeCardIndex],
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .titleMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              fontSize: 12.0,
                                                              letterSpacing:
                                                                  0.5,
                                                            ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
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
                  ].divide(const SizedBox(height: 5.0)).around(const SizedBox(height: 5.0)),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
