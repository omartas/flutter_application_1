// mixin i Constructor olmayan class olarak düşünebiliriz. ve instance üretemeyiz.
// Projelerimizin interface lerini veya bir amaca yönelik özellikleri kazandırmada kullanırız.

import 'package:url_launcher/url_launcher.dart';
// mixin LaunchMixin den sonra on diyerek, eğer belirli bir componentte kullanmak istiyorsak onu yazabiliriz: state, class gibi
mixin LaunchMixin{
  Future<void> launchUrl(Uri url) async {
    if(await  canLaunchUrl(url)){
      await launchUrl(url);
    }
  }
}