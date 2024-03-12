import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _SelectedTimeColor =
          _colorFromIntValue(prefs.getInt('ff_SelectedTimeColor')) ??
              _SelectedTimeColor;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  Color _SelectedTimeColor = Colors.transparent;
  Color get SelectedTimeColor => _SelectedTimeColor;
  set SelectedTimeColor(Color value) {
    _SelectedTimeColor = value;
    prefs.setInt('ff_SelectedTimeColor', value.value);
  }

  dynamic _SelectedAppointment;
  dynamic get SelectedAppointment => _SelectedAppointment;
  set SelectedAppointment(dynamic value) {
    _SelectedAppointment = value;
  }

  String _SelectedTime = '';
  String get SelectedTime => _SelectedTime;
  set SelectedTime(String value) {
    _SelectedTime = value;
  }

  String _serviceSelected = '';
  String get serviceSelected => _serviceSelected;
  set serviceSelected(String value) {
    _serviceSelected = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
