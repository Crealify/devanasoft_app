import 'package:url_launcher/url_launcher.dart';

Future<void> openFacebook() async {
  final Uri url = Uri.parse('https://www.facebook.com/-100093110828676/');

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

Future<void> openInstagram() async {
  final Uri url = Uri.parse('https://www.instagram.com/devanasoft/');

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}

Future<void> openLinkedIn() async {
  final Uri url = Uri.parse(
    'https://www.linkedin.com/company/ismart-devanasoft/',
  );

  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw 'Could not launch $url';
  }
}
