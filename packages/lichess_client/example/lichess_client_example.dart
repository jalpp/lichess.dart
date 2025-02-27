import 'dart:io';

import 'package:lichess_client/lichess_client.dart';

class MyCustomAccountService implements AccountService {
  /// A cool custom service implementation...

  @override
  void noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class MyCustomRelationsService implements RelationsService {
  /// A cool custom service implementation...

  @override
  void noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class MyCustomUsersService implements UsersService {
  /// A cool custom service implementation...

  @override
  void noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class MyCustomTeamsService implements TeamsService {
  /// A cool custom service implementation...

  @override
  void noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class MyCustomTvService implements TvService {
  /// A cool custom service implementation...

  @override
  void noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class MyCustomPuzzleService implements PuzzleService {
  /// A cool custom service implementation...

  @override
  void noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class MyCustomGamesService implements GamesService {
  /// A cool custom service implementation...

  @override
  void noSuchMethod(Invocation invocation) => super.noSuchMethod(invocation);
}

class MyCustomLichessClient extends LichessClient {
  @override
  AccountService get account => MyCustomAccountService();

  @override
  Future<void> close({bool force = false}) async {
    stdout.write('Because you can not download RAM.');
  }

  @override
  RelationsService get relations => MyCustomRelationsService();

  @override
  UsersService get users => MyCustomUsersService();

  @override
  TeamsService get teams => MyCustomTeamsService();

  @override
  TvService get tv => MyCustomTvService();

  @override
  PuzzleService get puzzles => MyCustomPuzzleService();

  @override
  GamesService get games => MyCustomGamesService();
}

void main() => _tryRunAndThrowGhostImplementation();

Future<void> _tryRunAndThrowGhostImplementation() async {
  final MyCustomLichessClient customClient = MyCustomLichessClient();
  await customClient.account.getEmailAddress();
}
