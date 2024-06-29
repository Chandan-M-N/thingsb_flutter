import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:thingsboard_app/generated/l10n.dart';
import 'package:thingsboard_app/main.dart';

class LanguageSelector extends StatefulWidget {
  @override
  _LanguageSelectorState createState() => _LanguageSelectorState();
}

class _LanguageSelectorState extends State<LanguageSelector> {
  final List<Locale> supportedLocales = [
    Locale('en', 'US'),
    Locale('zh', 'CN'),
    Locale('es', 'ES'),
  ];
  final Locale defaultLocale = Locale('en', 'US');

  late String _currentLanguageCode;

  @override
  void initState() {
    super.initState();
    _loadSavedLanguage();
  }

  Future<void> _loadSavedLanguage() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? savedLanguage = prefs.getString('language_code');
    setState(() {
      _currentLanguageCode = savedLanguage ?? defaultLocale.languageCode;
    });
  }

  Future<void> _saveLanguage(String languageCode) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('language_code', languageCode);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.0),
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          padding: EdgeInsets.all(16),
          alignment: Alignment.centerLeft,
        ),
        onPressed: () async {
          String? newLanguageCode = await _showLanguageDialog(context);
          if (newLanguageCode != null) {
            setState(() {
              _currentLanguageCode = newLanguageCode;
            });
            _saveLanguage(newLanguageCode);
            Locale newLocale = _getLocaleFromLanguageCode(newLanguageCode);
            ThingsboardApp.of(context)?.setLocale(newLocale);
          }
        },
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              S.of(context).language,
              style: TextStyle(
                fontSize: 14.0,
                color: Colors.black87,
              ),
            ),
            Row(
              children: [
                Text(
                  _getLocaleDisplayName(_getLocaleFromLanguageCode(_currentLanguageCode)),
                  style: TextStyle(
                    fontSize: 13,
                    color: Colors.black87,
                  ),
                ),
                SizedBox(width: 8.0),
                Icon(Icons.language, color: Colors.blueAccent),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Future<String?> _showLanguageDialog(BuildContext context) async {
    return showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(S.of(context).selectLanguage),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: supportedLocales.map((Locale locale) {
              return RadioListTile<String>(
                title: Text(_getLocaleDisplayName(locale)),
                value: locale.languageCode,
                groupValue: _currentLanguageCode,
                onChanged: (String? value) {
                  Navigator.of(context).pop(value);
                },
              );
            }).toList(),
          ),
        );
      },
    );
  }

  String _getLocaleDisplayName(Locale locale) {
    switch (locale.languageCode) {
      case 'en':
        return S.of(context).english;
      case 'zh':
        return S.of(context).chinese;
      case 'es':
        return S.of(context).spanish;
      default:
        return '';
    }
  }

  Locale _getLocaleFromLanguageCode(String languageCode) {
    for (Locale locale in supportedLocales) {
      if (locale.languageCode == languageCode) {
        return locale;
      }
    }
    return defaultLocale;
  }
}
