import 'package:moor_flutter/moor_flutter.dart';

class Exercises extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text().withLength(min: 1, max: 30)();
  TextColumn get description => text().withLength(min: 1, max: 300)();
}
