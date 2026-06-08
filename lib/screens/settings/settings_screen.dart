import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool _notificationsEnabled = true;
  bool _soundEnabled = true;
  bool _darkMode = false;
  String _selectedLanguage = "English";
  String _selectedModel = "CodeGPT Standard";

  final List<String> _languages = ["English", "العربية", "Français", "Español"];
  final List<String> _models = [
    "CodeGPT Standard",
    "CodeGPT Pro",
    "CodeGPT Mini"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9F9),
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.fromLTRB(16, 20, 16, 40),
          children: [
            // ── Title مع زر رجوع ──
            Padding(
              padding: const EdgeInsets.only(left: 4, bottom: 20),
              child: Row(
                children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios)),
                  const Text(
                    "Settings",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Color(0xFF0A0A0A),
                    ),
                  ),
                ],
              ),
            ),
            _SectionHeader(title: "Account"),
            _SettingsCard(
              children: [
                // Profile
                Padding(
                  padding: const EdgeInsets.all(14),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 26,
                        backgroundColor: const Color(0xFF19C37D),
                        child: const Text(
                          "S",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Saad Sinan",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color(0xFF0A0A0A),
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              "saad@example.com",
                              style: TextStyle(
                                  fontSize: 13, color: Colors.grey[500]),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(
                          color: const Color(0xFFF0FDF4),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          "Free",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: Color(0xFF19C37D),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.person_outline_rounded,
                  title: "Edit Profile",
                  trailing: const Icon(Icons.chevron_right_rounded,
                      color: Color(0xFFBBBBBB), size: 20),
                  onTap: () {},
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.workspace_premium_rounded,
                  iconColor: const Color(0xFFF59E0B),
                  title: "Upgrade to Pro",
                  titleColor: const Color(0xFFF59E0B),
                  trailing: const Icon(Icons.chevron_right_rounded,
                      color: Color(0xFFBBBBBB), size: 20),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            _SectionHeader(title: "Appearance"),
            _SettingsCard(
              children: [
                _SettingsTile(
                  icon: Icons.dark_mode_rounded,
                  title: "Dark Mode",
                  trailing: Switch(
                    value: _darkMode,
                    onChanged: (v) => setState(() => _darkMode = v),
                    activeColor: Colors.black,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.language_rounded,
                  title: "Language",
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _selectedLanguage,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.chevron_right_rounded,
                          color: Color(0xFFBBBBBB), size: 20),
                    ],
                  ),
                  onTap: () => _showLanguagePicker(),
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.text_fields_rounded,
                  title: "Font Size",
                  trailing: const Icon(Icons.chevron_right_rounded,
                      color: Color(0xFFBBBBBB), size: 20),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            _SectionHeader(title: "AI Model"),
            _SettingsCard(
              children: [
                _SettingsTile(
                  icon: Icons.auto_awesome_rounded,
                  title: "Model",
                  trailing: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        _selectedModel,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                      ),
                      const SizedBox(width: 4),
                      const Icon(Icons.chevron_right_rounded,
                          color: Color(0xFFBBBBBB), size: 20),
                    ],
                  ),
                  onTap: () => _showModelPicker(),
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.history_rounded,
                  title: "Save Chat History",
                  trailing: Switch(
                    value: true,
                    onChanged: (v) {},
                    activeColor: Colors.black,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.delete_sweep_rounded,
                  iconColor: const Color(0xFFEF4444),
                  title: "Clear All Chats",
                  titleColor: const Color(0xFFEF4444),
                  onTap: () => _showClearChatsDialog(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _SectionHeader(title: "Notifications"),
            _SettingsCard(
              children: [
                _SettingsTile(
                  icon: Icons.notifications_outlined,
                  title: "Push Notifications",
                  trailing: Switch(
                    value: _notificationsEnabled,
                    onChanged: (v) => setState(() => _notificationsEnabled = v),
                    activeColor: Colors.black,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.volume_up_outlined,
                  title: "Sound Effects",
                  trailing: Switch(
                    value: _soundEnabled,
                    onChanged: (v) => setState(() => _soundEnabled = v),
                    activeColor: Colors.black,
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            _SectionHeader(title: "About"),
            _SettingsCard(
              children: [
                _SettingsTile(
                  icon: Icons.info_outline_rounded,
                  title: "App Version",
                  trailing: Text(
                    "v1.0.0",
                    style: TextStyle(fontSize: 13, color: Colors.grey[400]),
                  ),
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.privacy_tip_outlined,
                  title: "Privacy Policy",
                  trailing: const Icon(Icons.chevron_right_rounded,
                      color: Color(0xFFBBBBBB), size: 20),
                  onTap: () {},
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.description_outlined,
                  title: "Terms of Service",
                  trailing: const Icon(Icons.chevron_right_rounded,
                      color: Color(0xFFBBBBBB), size: 20),
                  onTap: () {},
                ),
                _Divider(),
                _SettingsTile(
                  icon: Icons.star_outline_rounded,
                  title: "Rate the App",
                  trailing: const Icon(Icons.chevron_right_rounded,
                      color: Color(0xFFBBBBBB), size: 20),
                  onTap: () {},
                ),
              ],
            ),
            const SizedBox(height: 20),
            _SettingsCard(
              children: [
                _SettingsTile(
                  icon: Icons.logout_rounded,
                  iconColor: const Color(0xFFEF4444),
                  title: "Log Out",
                  titleColor: const Color(0xFFEF4444),
                  onTap: () => _showLogoutDialog(),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: Text(
                "Built by dev - Saad Sinan 🚀",
                style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _showLanguagePicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Text("Select Language",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              ..._languages.map((lang) => ListTile(
                    title: Text(lang),
                    trailing: _selectedLanguage == lang
                        ? const Icon(Icons.check_rounded, color: Colors.black)
                        : null,
                    onTap: () {
                      setState(() => _selectedLanguage = lang);
                      Navigator.pop(context);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _showModelPicker() {
    showModalBottomSheet(
      context: context,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (_) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: 40,
                height: 4,
                margin: const EdgeInsets.only(bottom: 16),
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              const Text("Select Model",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w600)),
              const SizedBox(height: 12),
              ..._models.map((model) => ListTile(
                    title: Text(model),
                    trailing: _selectedModel == model
                        ? const Icon(Icons.check_rounded, color: Colors.black)
                        : null,
                    onTap: () {
                      setState(() => _selectedModel = model);
                      Navigator.pop(context);
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }

  void _showClearChatsDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text("Clear All Chats"),
        content: const Text(
            "This will permanently delete all your conversations. Are you sure?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Delete",
                style: TextStyle(color: Color(0xFFEF4444))),
          ),
        ],
      ),
    );
  }

  void _showLogoutDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
        title: const Text("Log Out"),
        content: const Text("Are you sure you want to log out?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel", style: TextStyle(color: Colors.grey)),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Log Out",
                style: TextStyle(color: Color(0xFFEF4444))),
          ),
        ],
      ),
    );
  }
}

class _SectionHeader extends StatelessWidget {
  final String title;
  const _SectionHeader({required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 4, bottom: 8),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 11,
          fontWeight: FontWeight.w600,
          color: Colors.grey[500],
          letterSpacing: 0.8,
        ),
      ),
    );
  }
}

class _SettingsCard extends StatelessWidget {
  final List<Widget> children;
  const _SettingsCard({required this.children});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: const Color(0xFFEEEEEE)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.03),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(children: children),
    );
  }
}

class _SettingsTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final Widget? trailing;
  final VoidCallback? onTap;
  final Color? iconColor;
  final Color? titleColor;

  const _SettingsTile({
    required this.icon,
    required this.title,
    this.trailing,
    this.onTap,
    this.iconColor,
    this.titleColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13),
        child: Row(
          children: [
            Container(
              width: 34,
              height: 34,
              decoration: BoxDecoration(
                color: (iconColor ?? const Color(0xFF555555)).withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Icon(
                icon,
                size: 18,
                color: iconColor ?? const Color(0xFF555555),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: titleColor ?? const Color(0xFF0A0A0A),
                ),
              ),
            ),
            if (trailing != null) trailing!,
          ],
        ),
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  const _Divider();

  @override
  Widget build(BuildContext context) {
    return const Divider(
      height: 1,
      indent: 60,
      color: Color(0xFFF0F0F0),
    );
  }
}
