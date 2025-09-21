import 'package:flutter/material.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool pushNotifications = true;
  bool smsNotifications = false;
  bool promoNotifications = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          const Text('NOTIFICATIONS',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SwitchListTile(
            title: const Text('Push Notifications'),
            subtitle: const Text('For daily update you will get it'),
            value: pushNotifications,
            onChanged: (val) => setState(() => pushNotifications = val),
          ),
          SwitchListTile(
            title: const Text('SMS Notifications'),
            subtitle: const Text('For daily update you will get it'),
            value: smsNotifications,
            onChanged: (val) => setState(() => smsNotifications = val),
          ),
          SwitchListTile(
            title: const Text('Promotional Notifications'),
            subtitle: const Text('For daily update you will get it'),
            value: promoNotifications,
            onChanged: (val) => setState(() => promoNotifications = val),
          ),
          const SizedBox(height: 20),
          const Text('MORE',
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          ListTile(
            leading: const Icon(Icons.star_rate),
            title: const Text('Rate Us'),
            subtitle: const Text('Rate us on Play Store or App Store'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.help_outline),
            title: const Text('FAQ'),
            subtitle: const Text('Frequently asked questions'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {
              Navigator.pushNamed(context, '/faq');
            },
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Logout'),
            trailing: const Icon(Icons.arrow_forward_ios, size: 16),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
