import 'package:flutter/material.dart';
import 'package:flutter_application_1/202/launch_mixin.dart';
import 'package:url_launcher/url_launcher.dart';

final Uri _url = Uri.parse('https://google.com.tr');

class UrlLauncherLearn extends StatelessWidget with LaunchMixin {
  const UrlLauncherLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Text('AAAAaaaa'),
      floatingActionButton: FloatingActionButton(
        child: Text("git"),
        onPressed: () {
          launchUrl(_url);
        },
      ),
    );
  }
}

// fonksiyonu kullandığımız yerde istediğimiz bir web adresine yönlendiriyoruz.
/* Future<void> _launchUrl(Uri url) async {
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
 */