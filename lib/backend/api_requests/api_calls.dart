import 'dart:convert';
import 'dart:typed_data';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetMenuItemCall {
  static Future<ApiCallResponse> call({
    String? barcodeAPI = '',
    String? latitude = '0',
    String? longitude = '0',
    String? uid = '0',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Get Menu item',
      apiUrl:
          'https://api.scangeni.us/?barcode=${barcodeAPI}&latitude=${latitude}&longitude=${longitude}&userId=${uid}',
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

  static List? ingredientsList(dynamic response) => getJsonField(
        response,
        r'''$.data.ingredients''',
        true,
      ) as List?;
  static String? brand(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.brands''',
      ));
  static String? quantity(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.quantity''',
      ));
  static String? img(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.image_url''',
      ));
  static String? title(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.product_name''',
      ));
  static String? ecograde(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.ecoscore_grade''',
      ));
  static String? grade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutrition_grades''',
      ));
  static String? energyUnit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.energy_unit''',
      ));
  static dynamic energy(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.energy''',
      );
  static List<String>? ingtextList(dynamic response) => (getJsonField(
        response,
        r'''$.data.ingredients_text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static String? category(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.pnns_groups_1''',
      ));
  static String? saltlvl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutrient_levels.fat''',
      ));
  static String? fatlvl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutrient_levels.salt''',
      ));
  static String? sugarlvl(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutrient_levels.sugars''',
      ));
  static double? fat(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.fat''',
      ));
  static double? iron(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.iron''',
      ));
  static double? fiber(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.fiber''',
      ));
  static double? sugar(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.sugars''',
      ));
  static double? proteins(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.proteins''',
      ));
  static String? ironUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.iron_unit''',
      ));
  static String? saltUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.salt_unit''',
      ));
  static String? fiberUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.fiber_unit''',
      ));
  static String? soduimUnit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.sodium_unit''',
      ));
  static String? sugarUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.sugars_unit''',
      ));
  static String? alcoholUnit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.alcohol_unit''',
      ));
  static double? carb(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.carbohydrates''',
      ));
  static String? proteinsUnit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.proteins_unit''',
      ));
  static dynamic energy100(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.energy_serving''',
      );
  static String? carbUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.carbohydrates_unit''',
      ));
  static String? fatUnit(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.fat_unit''',
      ));
  static double? sodium(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.sodium''',
      ));
  static double? salt(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.salt''',
      ));
  static dynamic? alcohol(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.alcohol''',
      );
  static double? calcium(dynamic response) => castToType<double>(getJsonField(
        response,
        r'''$.data.nutriments.calcium''',
      ));
  static String? calciumUnit(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.nutriments.sodium_unit''',
      ));
  static bool? vegan(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.Vegan''',
      ));
  static bool? ovovege(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.OvoVegetarian''',
      ));
  static bool? pesca(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.Pescatarian''',
      ));
  static bool? whitemeat(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.WhiteMeatOnly''',
      ));
  static bool? halal(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.ReligiousRestrictions.Halal''',
      ));
  static String? kosher(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.analysis.ReligiousRestrictions.Kosher''',
      ));
  static bool? jain(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.ReligiousRestrictions.Jain''',
      ));
  static String? organic(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.analysis.SustainabilityChoices.Organic''',
      ));
  static String? gmo(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.analysis.SustainabilityChoices.GeneticallyModified''',
      ));
  static bool? alcelery(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.celery''',
      ));
  static bool? alcereals(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.cereals_containing_gluten''',
      ));
  static bool? alcrustaceans(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.crustaceans''',
      ));
  static bool? aleggs(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.eggs''',
      ));
  static bool? alfish(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.fish''',
      ));
  static bool? allupin(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.lupin''',
      ));
  static String? almilk(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.analysis.Allergens.milk''',
      ));
  static bool? almolluscs(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.molluscs''',
      ));
  static bool? almustard(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.mustard''',
      ));
  static bool? alnuts(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.nuts''',
      ));
  static bool? alpeanuts(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.peanuts''',
      ));
  static bool? alsesame(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.sesame_seeds''',
      ));
  static bool? alsulphur(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.analysis.Allergens.sulphur_dioxide''',
      ));
  static dynamic? nutri(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments''',
      );
  static String? serving(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.serving_quantity''',
      ));
  static String? mess(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.message''',
      ));
  static dynamic? data(dynamic response) => getJsonField(
        response,
        r'''$.data''',
      );
  static List<double>? ingrValue(dynamic response) => (getJsonField(
        response,
        r'''$.data.ingredients[?(@.percent_estimate != 0)].percent_estimate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static String? traces(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.traces''',
      ));
  static String? stores(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.stores''',
      ));
  static String? labels(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.labels''',
      ));
  static String? allergen(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.allergens''',
      ));
  static String? country(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.countries''',
      ));
  static String? pack(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.data.packaging''',
      ));
  static List<String>? ingrText(dynamic response) => (getJsonField(
        response,
        r'''$.data.ingredients[?(@.percent_estimate != 0)].id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List? allist(dynamic response) => getJsonField(
        response,
        r'''$.data.traces_tags''',
        true,
      ) as List?;
  static List<String>? tralist(dynamic response) => (getJsonField(
        response,
        r'''$.data.allergens_tags''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? erText(dynamic response) => (getJsonField(
        response,
        r'''$.data.ingredients[:].text''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<double>? erList(dynamic response) => (getJsonField(
        response,
        r'''$.data.ingredients[:].percent_estimate''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<double>(x))
          .withoutNulls
          .toList();
  static String? servingsize(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.serving_size''',
      ));
  static String? servingquantity(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.data.serving_quantity''',
      ));
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
