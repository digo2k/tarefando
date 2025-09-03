import 'package:sqflite/sqflite.dart';
import 'package:tarefando/app/core/database/migrations/migration.dart';

class MigrationV1 extends Migration {
  @override
  void create(Batch batch) {
    batch.execute('''
      CREATE TABLE IF NOT EXISTS todo (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        description varchar(500) NOT NULL,
        created_at datetime,
        is_done INTEGER NOT NULL DEFAULT 0,
      )
    ''');
  }

  @override
  void update(Batch batch) {
    // No updates needed for version 1
  }
}
