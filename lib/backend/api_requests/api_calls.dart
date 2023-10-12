import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetMenuItemCall {
  static Future<ApiCallResponse> call({
    String? barcodeAPI = '',
    String? latitude = '0',
    String? longitude = '0',
    String? uid = '0',
  }) {
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
    );
  }

  static dynamic ingredientsList(dynamic response) => getJsonField(
        response,
        r'''$.data.ingredients''',
        true,
      );
  static dynamic brand(dynamic response) => getJsonField(
        response,
        r'''$.data.brands''',
      );
  static dynamic quantity(dynamic response) => getJsonField(
        response,
        r'''$.data.quantity''',
      );
  static dynamic img(dynamic response) => getJsonField(
        response,
        r'''$.data.image_url''',
      );
  static dynamic title(dynamic response) => getJsonField(
        response,
        r'''$.data.product_name''',
      );
  static dynamic ecograde(dynamic response) => getJsonField(
        response,
        r'''$.data.ecoscore_grade''',
      );
  static dynamic grade(dynamic response) => getJsonField(
        response,
        r'''$.data.nutrition_grades''',
      );
  static dynamic energyUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.energy_unit''',
      );
  static dynamic energy(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.energy''',
      );
  static dynamic ingtextList(dynamic response) => getJsonField(
        response,
        r'''$.data.ingredients_text''',
        true,
      );
  static dynamic category(dynamic response) => getJsonField(
        response,
        r'''$.data.pnns_groups_1''',
      );
  static dynamic country(dynamic response) => getJsonField(
        response,
        r'''$.data.lc''',
      );
  static dynamic saltlvl(dynamic response) => getJsonField(
        response,
        r'''$.data.nutrient_levels.fat''',
      );
  static dynamic fatlvl(dynamic response) => getJsonField(
        response,
        r'''$.data.nutrient_levels.salt''',
      );
  static dynamic sugarlvl(dynamic response) => getJsonField(
        response,
        r'''$.data.nutrient_levels.sugars''',
      );
  static dynamic fat(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.fat''',
      );
  static dynamic iron(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.iron''',
      );
  static dynamic fiber(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.fiber''',
      );
  static dynamic sugar(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.sugars''',
      );
  static dynamic proteins(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.proteins''',
      );
  static dynamic ironUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.iron_unit''',
      );
  static dynamic saltUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.salt_unit''',
      );
  static dynamic fiberUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.fiber_unit''',
      );
  static dynamic soduimUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.sodium_unit''',
      );
  static dynamic sugarUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.sugars_unit''',
      );
  static dynamic alcoholUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.alcohol_unit''',
      );
  static dynamic carb(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.carbohydrates''',
      );
  static dynamic proteinsUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.proteins_unit''',
      );
  static dynamic energy100(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.energy_serving''',
      );
  static dynamic carbUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.carbohydrates_unit''',
      );
  static dynamic fatUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.fat_unit''',
      );
  static dynamic sodium(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.sodium''',
      );
  static dynamic salt(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.salt''',
      );
  static dynamic alcohol(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.alcohol''',
      );
  static dynamic calcium(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.calcium''',
      );
  static dynamic calciumUnit(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments.sodium_unit''',
      );
  static dynamic vegan(dynamic response) => getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.Vegan''',
      );
  static dynamic ovovege(dynamic response) => getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.OvoVegetarian''',
      );
  static dynamic pesca(dynamic response) => getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.Pescatarian''',
      );
  static dynamic whitemeat(dynamic response) => getJsonField(
        response,
        r'''$.analysis.LifestyleChoices.WhiteMeatOnly''',
      );
  static dynamic halal(dynamic response) => getJsonField(
        response,
        r'''$.analysis.ReligiousRestrictions.Halal''',
      );
  static dynamic kosher(dynamic response) => getJsonField(
        response,
        r'''$.analysis.ReligiousRestrictions.Kosher''',
      );
  static dynamic jain(dynamic response) => getJsonField(
        response,
        r'''$.analysis.ReligiousRestrictions.Jain''',
      );
  static dynamic organic(dynamic response) => getJsonField(
        response,
        r'''$.analysis.SustainabilityChoices.Organic''',
      );
  static dynamic gmo(dynamic response) => getJsonField(
        response,
        r'''$.analysis.SustainabilityChoices.GeneticallyModified''',
      );
  static dynamic alcelery(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.celery''',
      );
  static dynamic alcereals(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.cereals_containing_gluten''',
      );
  static dynamic alcrustaceans(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.crustaceans''',
      );
  static dynamic aleggs(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.eggs''',
      );
  static dynamic alfish(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.fish''',
      );
  static dynamic allupin(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.lupin''',
      );
  static dynamic almilk(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.milk''',
      );
  static dynamic almolluscs(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.molluscs''',
      );
  static dynamic almustard(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.mustard''',
      );
  static dynamic alnuts(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.nuts''',
      );
  static dynamic alpeanuts(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.peanuts''',
      );
  static dynamic alsesame(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.sesame_seeds''',
      );
  static dynamic alsulphur(dynamic response) => getJsonField(
        response,
        r'''$.analysis.Allergens.sulphur_dioxide''',
      );
  static dynamic nutri(dynamic response) => getJsonField(
        response,
        r'''$.data.nutriments''',
      );
  static dynamic ingrValue(dynamic response) => getJsonField(
        response,
        r'''$.data.ingredients[:].percent_estimate''',
        true,
      );
  static dynamic ingrText(dynamic response) => getJsonField(
        response,
        r'''$.data.ingredients[*].id''',
        true,
      );
  static dynamic serving(dynamic response) => getJsonField(
        response,
        r'''$.data.serving_quantity''',
      );
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
