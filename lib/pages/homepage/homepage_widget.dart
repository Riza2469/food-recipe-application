import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/components/navbar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'homepage_model.dart';
export 'homepage_model.dart';

class HomepageWidget extends StatefulWidget {
  const HomepageWidget({super.key});

  @override
  State<HomepageWidget> createState() => _HomepageWidgetState();
}

class _HomepageWidgetState extends State<HomepageWidget> {
  late HomepageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomepageModel());
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
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SingleChildScrollView(
                primary: false,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 40.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Stack(
                              children: [
                                Container(
                                  width: 301.0,
                                  height: 50.0,
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
                                    borderRadius: BorderRadius.circular(24.0),
                                  ),
                                  child: Align(
                                    alignment: const AlignmentDirectional(-1.0, 0.0),
                                    child: Container(
                                      decoration: const BoxDecoration(),
                                      child: Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 0.0, 0.0),
                                        child: InkWell(
                                          splashColor: Colors.transparent,
                                          focusColor: Colors.transparent,
                                          hoverColor: Colors.transparent,
                                          highlightColor: Colors.transparent,
                                          onTap: () async {
                                            context.pushNamed('recipeSearch');
                                          },
                                          child: Text(
                                            'Search recipes...',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Plus Jakarta Sans',
                                                  letterSpacing: 0.0,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 10.0, 0.0),
                            child: AuthUserStreamWidget(
                              builder: (context) => Container(
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  image: DecorationImage(
                                    fit: BoxFit.cover,
                                    image: Image.network(
                                      valueOrDefault<String>(
                                        currentUserPhoto,
                                        'https://imgs.search.brave.com/MWlI8P3aJROiUDO9A-LqFyca9kSRIxOtCg_Vf1xd9BA/rs:fit:860:0:0/g:ce/aHR0cHM6Ly90NC5m/dGNkbi5uZXQvanBn/LzAyLzE1Lzg0LzQz/LzM2MF9GXzIxNTg0/NDMyNV90dFg5WWlJ/SXllYVI3TmU2RWFM/TGpNQW15NEd2UEM2/OS5qcGc',
                                      ),
                                    ).image,
                                  ),
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
                                    bottomLeft: Radius.circular(100.0),
                                    bottomRight: Radius.circular(100.0),
                                    topLeft: Radius.circular(100.0),
                                    topRight: Radius.circular(100.0),
                                  ),
                                  border: Border.all(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                  ),
                                ),
                                alignment: const AlignmentDirectional(0.0, 0.0),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 20.0)),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(22.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'Trending',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Poppins',
                                color: FlutterFlowTheme.of(context).alternate,
                                fontSize: 25.0,
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: FutureBuilder<ApiCallResponse>(
                        future: TrendingRecipesCall.call(),
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
                          final containerTrendingRecipesResponse =
                              snapshot.data!;
                          return Container(
                            width: double.infinity,
                            height: 260.0,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .secondaryBackground,
                            ),
                            child: Builder(
                              builder: (context) {
                                final trendingcard =
                                    TrendingRecipesCall.recipetitle(
                                          containerTrendingRecipesResponse
                                              .jsonBody,
                                        )?.toList() ??
                                        [];
                                return SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: List.generate(trendingcard.length,
                                            (trendingcardIndex) {
                                      final trendingcardItem =
                                          trendingcard[trendingcardIndex];
                                      return Align(
                                        alignment:
                                            const AlignmentDirectional(-1.0, -1.0),
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 0.0, 0.0, 0.0),
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
                                                    TrendingRecipesCall
                                                        .recipetitle(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'author': serializeParam(
                                                    TrendingRecipesCall.author(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'cookTime': serializeParam(
                                                    TrendingRecipesCall
                                                        .cooktime(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'rating': serializeParam(
                                                    (TrendingRecipesCall.rating(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex])
                                                        ?.toDouble(),
                                                    ParamType.double,
                                                  ),
                                                  'description': serializeParam(
                                                    TrendingRecipesCall
                                                        .description(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'ingredients': serializeParam(
                                                    TrendingRecipesCall
                                                        .ingredients(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'instructions':
                                                      serializeParam(
                                                    TrendingRecipesCall
                                                        .instructions(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'course': serializeParam(
                                                    TrendingRecipesCall.course(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'imageURL': serializeParam(
                                                    TrendingRecipesCall
                                                        .imageurl(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                  'recipeID': serializeParam(
                                                    TrendingRecipesCall
                                                        .recipeid(
                                                      containerTrendingRecipesResponse
                                                          .jsonBody,
                                                    )?[trendingcardIndex],
                                                    ParamType.String,
                                                  ),
                                                }.withoutNulls,
                                              );
                                            },
                                            child: Container(
                                              width: 250.0,
                                              height: 250.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryBackground,
                                                image: DecorationImage(
                                                  fit: BoxFit.cover,
                                                  image: Image.network(
                                                    valueOrDefault<String>(
                                                      TrendingRecipesCall
                                                          .imageurl(
                                                        containerTrendingRecipesResponse
                                                            .jsonBody,
                                                      )?[trendingcardIndex],
                                                      'https://images.unsplash.com/photo-1584255014406-2a68ea38e48c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxjdXRsZXJ5fGVufDB8fHx8MTcxMDc3MTE2Mnww&ixlib=rb-4.0.3&q=80&w=1080',
                                                    ),
                                                  ).image,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackground,
                                                ),
                                              ),
                                              child: Align(
                                                alignment: const AlignmentDirectional(
                                                    0.0, 1.0),
                                                child: Container(
                                                  width: 1000.0,
                                                  height: 100.0,
                                                  decoration: const BoxDecoration(
                                                    color: Color(0x5B0D0B0B),
                                                  ),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
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
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              TrendingRecipesCall
                                                                  .recipetitle(
                                                                containerTrendingRecipesResponse
                                                                    .jsonBody,
                                                              )?[trendingcardIndex],
                                                              'RecipeTitle',
                                                            ),
                                                            textAlign:
                                                                TextAlign.start,
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                      Align(
                                                        alignment:
                                                            const AlignmentDirectional(
                                                                -1.0, 0.0),
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      10.0,
                                                                      5.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Text(
                                                            valueOrDefault<
                                                                String>(
                                                              TrendingRecipesCall
                                                                  .author(
                                                                containerTrendingRecipesResponse
                                                                    .jsonBody,
                                                              )?[trendingcardIndex],
                                                              'Author',
                                                            ),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Plus Jakarta Sans',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .secondaryText,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    })
                                        .addToStart(const SizedBox(width: 2.0))
                                        .addToEnd(const SizedBox(width: 2.0)),
                                  ),
                                );
                              },
                            ),
                          );
                        },
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 1.0),
                      child: Container(
                        width: double.infinity,
                        height: 40.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                22.0, 0.0, 0.0, 0.0),
                            child: Text(
                              'Favourites',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Poppins',
                                    color:
                                        FlutterFlowTheme.of(context).alternate,
                                    fontSize: 25.0,
                                    letterSpacing: 0.0,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    FutureBuilder<ApiCallResponse>(
                      future: FavouritesCall.call(
                        uid: currentUserUid,
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
                        final columnFavouritesResponse = snapshot.data!;
                        return SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Builder(
                                builder: (context) {
                                  final favouriteCard =
                                      FavouritesCall.recipeidList(
                                            columnFavouritesResponse.jsonBody,
                                          )?.toList() ??
                                          [];
                                  return ListView.separated(
                                    padding:
                                        const EdgeInsets.symmetric(vertical: 2.0),
                                    shrinkWrap: true,
                                    scrollDirection: Axis.vertical,
                                    itemCount: favouriteCard.length,
                                    separatorBuilder: (_, __) =>
                                        const SizedBox(height: 2.0),
                                    itemBuilder: (context, favouriteCardIndex) {
                                      final favouriteCardItem =
                                          favouriteCard[favouriteCardIndex];
                                      return Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            10.0, 5.0, 10.0, 5.0),
                                        child: Container(
                                          width: 100.0,
                                          height: 81.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .accent4,
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
                                              bottomRight:
                                                  Radius.circular(10.0),
                                              topLeft: Radius.circular(10.0),
                                              topRight: Radius.circular(10.0),
                                            ),
                                          ),
                                          child: FutureBuilder<ApiCallResponse>(
                                            future: GetRecipesCall.call(
                                              recipeId:
                                                  FavouritesCall.recipeidList(
                                                columnFavouritesResponse
                                                    .jsonBody,
                                              )?[favouriteCardIndex],
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              final rowGetRecipesResponse =
                                                  snapshot.data!;
                                              return InkWell(
                                                splashColor: Colors.transparent,
                                                focusColor: Colors.transparent,
                                                hoverColor: Colors.transparent,
                                                highlightColor:
                                                    Colors.transparent,
                                                onTap: () async {
                                                  context.pushNamed(
                                                    'otherrecdisplay',
                                                    queryParameters: {
                                                      'recipeTitle':
                                                          serializeParam(
                                                        GetRecipesCall
                                                            .recipetitle(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'author': serializeParam(
                                                        GetRecipesCall.author(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'cookTime':
                                                          serializeParam(
                                                        GetRecipesCall.cooktime(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'rating': serializeParam(
                                                        GetRecipesCall.rating(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.double,
                                                      ),
                                                      'description':
                                                          serializeParam(
                                                        GetRecipesCall
                                                            .description(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'ingredients':
                                                          serializeParam(
                                                        GetRecipesCall
                                                            .ingredients(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'instructions':
                                                          serializeParam(
                                                        GetRecipesCall
                                                            .instructions(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'course': serializeParam(
                                                        GetRecipesCall.course(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'imageURL':
                                                          serializeParam(
                                                        GetRecipesCall.imageurl(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                      'recipeID':
                                                          serializeParam(
                                                        GetRecipesCall.recipeid(
                                                          rowGetRecipesResponse
                                                              .jsonBody,
                                                        ),
                                                        ParamType.String,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                },
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  10.0,
                                                                  10.0,
                                                                  10.0,
                                                                  10.0),
                                                      child: ClipRRect(
                                                        borderRadius:
                                                            const BorderRadius.only(
                                                          bottomLeft:
                                                              Radius.circular(
                                                                  50.0),
                                                          bottomRight:
                                                              Radius.circular(
                                                                  50.0),
                                                          topLeft:
                                                              Radius.circular(
                                                                  50.0),
                                                          topRight:
                                                              Radius.circular(
                                                                  50.0),
                                                        ),
                                                        child: Image.network(
                                                          valueOrDefault<
                                                              String>(
                                                            GetRecipesCall
                                                                .imageurl(
                                                              rowGetRecipesResponse
                                                                  .jsonBody,
                                                            ),
                                                            'https://images.unsplash.com/photo-1584255014406-2a68ea38e48c?crop=entropy&cs=tinysrgb&fit=max&fm=jpg&ixid=M3w0NTYyMDF8MHwxfHNlYXJjaHwzfHxjdXRsZXJ5fGVufDB8fHx8MTcxMDc3MTE2Mnww&ixlib=rb-4.0.3&q=80&w=1080',
                                                          ),
                                                          width: 60.0,
                                                          height: 60.0,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                    Flexible(
                                                      child: Text(
                                                        valueOrDefault<String>(
                                                          GetRecipesCall
                                                              .recipetitle(
                                                            rowGetRecipesResponse
                                                                .jsonBody,
                                                          ),
                                                          'title',
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .bodyMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Plus Jakarta Sans',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                            ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ].divide(const SizedBox(height: 12.0)),
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 1.0),
                child: wrapWithModel(
                  model: _model.navbarModel,
                  updateCallback: () => setState(() {}),
                  child: const NavbarWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
