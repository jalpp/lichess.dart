import 'package:dotenv/dotenv.dart';
import 'package:shirou/shirou.dart';

Future<void> main(List<String> arguments) async {
  final DotEnv env = DotEnv()..load();

  final String? token = env['LICHESS_PERSONAL_TOKEN'];

  assert(
    token != null,
    'You need to define your personal token inside the file .env, use .env.example as template.',
  );

  final ShirouClient shirou = ShirouClient.create(accessToken: token);

  final User user = await shirou.getMyProfile();
  final String email = await shirou.getMyEmailAddress();
  final UserPreferences prefs = await shirou.getMyPreferences();
  final bool isKidMode = await shirou.getMyKidModeStatus();
  final User publicUser = await shirou.getUserPublicData(username: 'alexrintt');
  final List<User> autoCompleteUsers =
      await shirou.autocompleteUsers(term: 'alexr');
  final List<String> autoCompleteUsernames =
      await shirou.autocompleteUsernames(term: 'alexr');
  final List<RatingHistory> ratingHistory =
      await shirou.getUserRatingHistory(username: 'riccardocescon');
  final List<RealTimeUserStatus> chessNetwork =
      await shirou.getRealTimeStatusOfSeveralUsers(ids: ['chess-network']);
  final List<User> severalUsers =
      await shirou.getSeveralUsersById(ids: ['alexrintt', 'riccardocescon']);
  final List<User> liveStreamers = await shirou.getLiveStreamers();

  await shirou.close();

  print('user: $user\n\n');
  print('email: $email\n\n');
  print('prefs: $prefs\n\n');
  print('isKidMode: $isKidMode\n\n');
  print('publicUser: $publicUser\n\n');
  print('autoCompleteUsers: $autoCompleteUsers\n\n');
  print('autoCompleteUsernames: $autoCompleteUsernames\n\n');
  print('ratingHistory: $ratingHistory\n\n');
  print('chessNetwork: $chessNetwork\n\n');
  print('severalUsers: $severalUsers\n\n');
  print('liveStreamers: $liveStreamers\n\n');
}
