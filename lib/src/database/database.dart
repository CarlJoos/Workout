import 'package:drift/drift.dart';
import 'package:drift_sqflite/drift_sqflite.dart';

import 'exercises.dart';
part 'database.g.dart';

// Import
@DriftDatabase(tables: [Exercises])

// _$AppDatabase is the name of the generated class
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      // Specify the location of the database file
      : super((SqfliteQueryExecutor.inDatabaseFolder(
          path: 'db.sqlite',
          // Good for debugging - prints SQL in the console
          logStatements: true,
        )));

  // Bump this when changing tables and columns.
  @override
  int get schemaVersion => 1;
}
