import 'package:trabalho3/data/models/contato.dart';
import 'package:url_launcher/url_launcher.dart';

Future<void> abrirWhatsApp(Contato contato) async {
  final Uri whatsappUrl =
      Uri.parse('https://wa.me/${contato.dDD + contato.numero}');

  if (await canLaunchUrl(whatsappUrl)) {
    await launchUrl(whatsappUrl, mode: LaunchMode.externalApplication);
  }
}
