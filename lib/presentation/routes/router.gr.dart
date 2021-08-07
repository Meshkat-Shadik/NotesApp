// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../screens/my_home_page.dart' as _i3;
import '../screens/note_modify_page.dart' as _i4;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    MyHomePageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<MyHomePageRouteArgs>(
              orElse: () => const MyHomePageRouteArgs());
          return _i3.MyHomePage(key: args.key);
        }),
    NoteModifyRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<NoteModifyRouteArgs>(
              orElse: () => const NoteModifyRouteArgs());
          return _i4.NoteModify(noteId: args.noteId);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(MyHomePageRoute.name, path: '/'),
        _i1.RouteConfig(NoteModifyRoute.name, path: '/note-modify')
      ];
}

class MyHomePageRoute extends _i1.PageRouteInfo<MyHomePageRouteArgs> {
  MyHomePageRoute({_i2.Key? key})
      : super(name, path: '/', args: MyHomePageRouteArgs(key: key));

  static const String name = 'MyHomePageRoute';
}

class MyHomePageRouteArgs {
  const MyHomePageRouteArgs({this.key});

  final _i2.Key? key;
}

class NoteModifyRoute extends _i1.PageRouteInfo<NoteModifyRouteArgs> {
  NoteModifyRoute({String? noteId})
      : super(name,
            path: '/note-modify', args: NoteModifyRouteArgs(noteId: noteId));

  static const String name = 'NoteModifyRoute';
}

class NoteModifyRouteArgs {
  const NoteModifyRouteArgs({this.noteId});

  final String? noteId;
}
