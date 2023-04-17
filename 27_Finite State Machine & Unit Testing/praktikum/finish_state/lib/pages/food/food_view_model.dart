import 'package:assets/models/api/food_api.dart';
import 'package:assets/models/food_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

enum FoodViewState {
  none,
  loading,
  error,
}

class FoodViewModel with ChangeNotifier {
  FoodViewState _state = FoodViewState.none;
  FoodViewState get state => _state;

  List<Food> _foods = [];
  List<Food> get foods => _foods;

  // ignore: non_constant_identifier_names
  ChangeState(FoodViewState s) {
    _state = s;
    notifyListeners();
  }

  getAllFoods() async {
    ChangeState(FoodViewState.loading);

    try {
      final c = await FoodAPI.getAllFoods();
      _foods = c;
      notifyListeners();
      ChangeState(FoodViewState.none);
    } catch (e) {
      ChangeState(FoodViewState.error);
    }
  }
}
