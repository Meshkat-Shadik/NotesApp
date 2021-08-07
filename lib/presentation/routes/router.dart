import 'package:auto_route/auto_route.dart';
import 'package:notes_app/presentation/screens/my_home_page.dart';
import 'package:notes_app/presentation/screens/note_modify_page.dart';

@MaterialAutoRouter(
  // preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: MyHomePage, initial: true),
    AutoRoute(page: NoteModify),
  ],
)
class $AppRouter {}
