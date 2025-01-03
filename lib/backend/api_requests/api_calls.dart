import 'dart:convert';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCuisinesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getCuisines',
      apiUrl: 'https://food-recipe-app-a99e05373255.herokuapp.com/cuisines',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class AddRecipesCall {
  static Future<ApiCallResponse> call({
    String? title = '',
    String? description = '',
    String? cuisine = '',
    String? course = '',
    String? ingredients = '',
    String? instructions = '',
    String? author = '',
    String? cooktime = '',
    String? uid = '',
    String? type = '',
  }) async {
    final ffApiRequestBody = '''
{
  "recipe": {
    "title": "$title",
    "url": "http://example.com/recipe/delicious-pizza",
    "vote_count": 100,
    "rating": 0,
    "description": "$description",
    "cuisine": "$cuisine",
    "Type": "$type",
    "course": "$course",
    "diet": "nan",
    "cook_time": "$cooktime",
    "ingredients": "$ingredients",
    "instructions": "$instructions",
    "author": "$author"
  },
  "uid": "$uid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addRecipes',
      apiUrl: 'https://food-recipe-app-a99e05373255.herokuapp.com/add_recipe',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? successMessage(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static String? recipeid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.recipe_id''',
      ));
}

class MyrecipesCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'myrecipes',
      apiUrl: 'https://food-recipe-app-a99e05373255.herokuapp.com/my_recipes',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer uid',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static dynamic objectid(dynamic response) => getJsonField(
        response,
        r'''$[:]._id''',
      );
  static String? userID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].user_id''',
      ));
  static List? recipeID(dynamic response) => getJsonField(
        response,
        r'''$[:].recipe_id''',
        true,
      ) as List?;
}

class RateRecipeCall {
  static Future<ApiCallResponse> call({
    String? recipeName = '',
  }) async {
    final ffApiRequestBody = '''
{
  "recipe_name": "$recipeName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'rateRecipe',
      apiUrl: 'https://food-recipe-app-a99e05373255.herokuapp.com/rate_recipe',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  static double? newrating(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.new_rating''',
      ));
}

class FavouritesCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'favourites',
      apiUrl: 'https://food-recipe-app-a99e05373255.herokuapp.com/my_favorites',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer uid',
      },
      params: {
        'uid': uid,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? recipeidList(dynamic response) => (getJsonField(
        response,
        r'''$.recipes''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class AddToFavouritesCall {
  static Future<ApiCallResponse> call({
    String? uid = '',
    String? recipeId = '',
  }) async {
    final ffApiRequestBody = '''
{
  "uid": "$uid",
  "recipe_id": "$recipeId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'addToFavourites',
      apiUrl:
          'https://food-recipe-app-a99e05373255.herokuapp.com/add_to_favorites',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class GetRecipesCall {
  static Future<ApiCallResponse> call({
    String? recipeId = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecipes',
      apiUrl: 'https://food-recipe-app-a99e05373255.herokuapp.com/get_recipe',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'recipe_id': recipeId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static String? author(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.author''',
      ));
  static String? recipeid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$._id''',
      ));
  static String? cooktime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cook_time''',
      ));
  static String? course(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.course''',
      ));
  static String? cuisine(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.cuisine''',
      ));
  static String? description(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.description''',
      ));
  static String? diet(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.diet''',
      ));
  static String? ingredients(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.ingredients''',
      ));
  static String? instructions(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.instructions''',
      ));
  static double? rating(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.rating''',
      ));
  static String? recipetitle(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.recipe_title''',
      ));
  static String? url(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.url''',
      ));
  static int? votecount(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.vote_count''',
      ));
  static String? imageurl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.image_url''',
      ));
}

class TrendingRecipesCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'trendingRecipes',
      apiUrl:
          'https://food-recipe-app-a99e05373255.herokuapp.com/trending_recipes',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? type(dynamic response) => (getJsonField(
        response,
        r'''$[:].Type''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? recipeid(dynamic response) => (getJsonField(
        response,
        r'''$[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? author(dynamic response) => (getJsonField(
        response,
        r'''$[:].author''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cooktime(dynamic response) => (getJsonField(
        response,
        r'''$[:].cook_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? course(dynamic response) => (getJsonField(
        response,
        r'''$[:].course''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cuisine(dynamic response) => (getJsonField(
        response,
        r'''$[:].cuisine''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? diet(dynamic response) => (getJsonField(
        response,
        r'''$[:].diet''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ingredients(dynamic response) => (getJsonField(
        response,
        r'''$[:].ingredients''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? instructions(dynamic response) => (getJsonField(
        response,
        r'''$[:].instructions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? rating(dynamic response) => (getJsonField(
        response,
        r'''$[:].rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? recipetitle(dynamic response) => (getJsonField(
        response,
        r'''$[:].recipe_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? url(dynamic response) => (getJsonField(
        response,
        r'''$[:].url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<int>? votecount(dynamic response) => (getJsonField(
        response,
        r'''$[:].vote_count''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<int>(x))
          .withoutNulls
          .toList();
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class RecommendRecipesCall {
  static Future<ApiCallResponse> call({
    String? inputIngredients = '',
    List<String>? cuisineTypesList,
  }) async {
    final cuisineTypes = _serializeList(cuisineTypesList);

    final ffApiRequestBody = '''
{
  "input": "$inputIngredients",
  "cuisine_type": $cuisineTypes
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'recommendRecipes',
      apiUrl: 'https://food-recipe-app-a99e05373255.herokuapp.com/recommend',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? all(dynamic response) => getJsonField(
        response,
        r'''$.recommendations''',
        true,
      ) as List?;
  static List<String>? recipeid(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? author(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].author''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cooktime(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].cook_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? course(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].course''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cuisine(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].cuisine''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ingredients(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].ingredients''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? instructions(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].instructions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? rating(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? title(dynamic response) => (getJsonField(
        response,
        r'''$.recommendations[:].title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GetRecipeByNameCall {
  static Future<ApiCallResponse> call({
    String? recipeName = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getRecipeByName',
      apiUrl:
          'https://food-recipe-app-a99e05373255.herokuapp.com/get_recipes_by_name',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'recipe_name': recipeName,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? all(dynamic response) => getJsonField(
        response,
        r'''$.recipes''',
        true,
      ) as List?;
  static List<String>? recipeId(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:]._id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? author(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].author''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cooktime(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].cook_time''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? course(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].course''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? cuisine(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].cuisine''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? description(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].description''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? diet(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].diet''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? ingredients(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].ingredients''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? instructions(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].instructions''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? rating(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].rating''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static List<String>? recipetitle(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].recipe_title''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? imageurl(dynamic response) => (getJsonField(
        response,
        r'''$.recipes[:].image_url''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class GenerateRecipeCall {
  static Future<ApiCallResponse> call({
    List<String>? ingredientsList,
  }) async {
    final ingredients = _serializeList(ingredientsList);

    final ffApiRequestBody = '''
{
  "ingredients": $ingredients
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'generateRecipe',
      apiUrl:
          'https://37ons35tre.execute-api.eu-north-1.amazonaws.com/generate-recipe',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
