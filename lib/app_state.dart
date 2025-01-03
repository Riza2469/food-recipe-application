import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  int _recipeCardIndex = 0;
  int get recipeCardIndex => _recipeCardIndex;
  set recipeCardIndex(int value) {
    _recipeCardIndex = value;
  }

  List<String> _selectedCuisines = [];
  List<String> get selectedCuisines => _selectedCuisines;
  set selectedCuisines(List<String> value) {
    _selectedCuisines = value;
  }

  void addToSelectedCuisines(String value) {
    _selectedCuisines.add(value);
  }

  void removeFromSelectedCuisines(String value) {
    _selectedCuisines.remove(value);
  }

  void removeAtIndexFromSelectedCuisines(int index) {
    _selectedCuisines.removeAt(index);
  }

  void updateSelectedCuisinesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedCuisines[index] = updateFn(_selectedCuisines[index]);
  }

  void insertAtIndexInSelectedCuisines(int index, String value) {
    _selectedCuisines.insert(index, value);
  }

  List<String> _selectedIngredients = [];
  List<String> get selectedIngredients => _selectedIngredients;
  set selectedIngredients(List<String> value) {
    _selectedIngredients = value;
  }

  void addToSelectedIngredients(String value) {
    _selectedIngredients.add(value);
  }

  void removeFromSelectedIngredients(String value) {
    _selectedIngredients.remove(value);
  }

  void removeAtIndexFromSelectedIngredients(int index) {
    _selectedIngredients.removeAt(index);
  }

  void updateSelectedIngredientsAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _selectedIngredients[index] = updateFn(_selectedIngredients[index]);
  }

  void insertAtIndexInSelectedIngredients(int index, String value) {
    _selectedIngredients.insert(index, value);
  }

  String _title = '';
  String get title => _title;
  set title(String value) {
    _title = value;
  }

  String _ingredients = '';
  String get ingredients => _ingredients;
  set ingredients(String value) {
    _ingredients = value;
  }

  String _course = '';
  String get course => _course;
  set course(String value) {
    _course = value;
  }

  String _instructions = '';
  String get instructions => _instructions;
  set instructions(String value) {
    _instructions = value;
  }

  String _cuisine = '';
  String get cuisine => _cuisine;
  set cuisine(String value) {
    _cuisine = value;
  }

  String _description = '';
  String get description => _description;
  set description(String value) {
    _description = value;
  }

  bool _toggle = false;
  bool get toggle => _toggle;
  set toggle(bool value) {
    _toggle = value;
  }

  bool _ratetoggle = false;
  bool get ratetoggle => _ratetoggle;
  set ratetoggle(bool value) {
    _ratetoggle = value;
  }
}
