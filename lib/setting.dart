import 'package:url_launcher/url_launcher.dart';
import 'package:app_settings/app_settings.dart';

Future<void> openSettings() async {
  final String url = 'app-settings:';
  if (await canLaunch(url)) {
    await launch(url);
  } else {
    throw 'Could not launch settings';
  }
}
