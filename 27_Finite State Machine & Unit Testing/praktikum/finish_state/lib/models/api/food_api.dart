import 'package:assets/models/food_model.dart';
import 'package:dio/dio.dart';

class FoodAPI {
  static Future<List<Food>> getAllFoods() async {
    final response = await Dio().get(
        'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/foods');

    List<Food> foods = (response.data as List)
        .map(
          (e) => Food(
            id: e['id'],
            name: e['name'],
          ),
        )
        .toList();

    return foods;
  }
}
