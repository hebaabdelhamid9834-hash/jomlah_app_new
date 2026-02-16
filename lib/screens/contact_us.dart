import 'package:active_ecommerce_cms_demo_app/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({super.key});

  final String email = "Sales@jomlah.com";
  final String phone = "+966501552923";

  Future<void> _launchEmail() async {
    final Uri params = Uri(
      scheme: 'mailto',
      path: email,
      query: 'subject=App Support&body=Hello,',
    );

    if (await canLaunchUrl(params)) {
      await launchUrl(params);
    }
  }

  Future<void> _launchPhone() async {
    final Uri phoneUri = Uri(
      scheme: 'tel',
      path: phone,
    );

    if (await canLaunchUrl(phoneUri)) {
      await launchUrl(phoneUri);
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(AppLocalizations.of(context).contact_ucf),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 20),
        
              // Email Card
              _buildContactCard(
                icon: Icons.email_outlined,
                title: AppLocalizations.of(
                  context,
                )!.email_ucf,
                value: email,
                onTap: _launchEmail,
              ),
        
              const SizedBox(height: 20),
        
              // Phone Card
              _buildContactCard(
                icon: Icons.phone_outlined,
                title: AppLocalizations.of(
                  context,
                )!.phone_ucf,
                value: phone,
                onTap: _launchPhone,
              ),
        

            ],
          ),
        ),
      ),
    );
  }

  Widget _buildContactCard({
    required IconData icon,
    required String title,
    required String value,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            Icon(icon, size: 28),
            const SizedBox(width: 15),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  value,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
