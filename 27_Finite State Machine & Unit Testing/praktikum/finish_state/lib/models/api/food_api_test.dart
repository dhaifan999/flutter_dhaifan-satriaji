import 'package:assets/models/api/food_api.dart';
import 'package:test/test.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks([FoodAPI])
void main() {
  group('FoodAPI', () {
    test('get all foods return data', () async {
      var foods = await FoodAPI.getAllFoods();
      expect(foods.isNotEmpty, true);
    });
  });
}
