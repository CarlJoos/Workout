import 'package:moor/moor.dart';
import 'package:moor_flutter/moor_flutter.dart';

import 'exercises.dart';
part 'database.g.dart';

// Import
@UseMoor(tables: [Exercises])

// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super((FlutterQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        )));

  // Bump this when changing tables and columns.
  int get schemaVersion => 1;
}
