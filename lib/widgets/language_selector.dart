import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:thingsboard_app/main.dart';


class LanguageSelector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Define supported locales and default locale
    List<Locale> supportedLocales = [
      Locale('en', 'US'),
      Locale('zh', 'CN'),
      Locale('es', 'ES'),
    ];
    Locale defaultLocale = Locale('en', 'US'); // Default to English

    // Determine initial value for DropdownButton
    Locale initialLocale = Localizations.localeOf(context);
    if (!supportedLocales.contains(initialLocale)) {
      initialLocale = defaultLocale; // Fallback to default if not found
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(AppLocalizations.of(context)!.language),
        DropdownButton<Locale>(
          value: initialLocale, // Ensure this value exists in the items list
          onChanged: (Locale? newLocale) {
            if (newLocale != null) {
              ThingsboardApp.of(context)?.setLocale(newLocale);
            }
          },
          items: supportedLocales.map((Locale locale) {
            return DropdownMenuItem<Locale>(
              value: locale,
              child: Text(_getLocaleName(locale.languageCode)),
            );
          }).toList(),
        ),
      ],
    );
  }

  String _getLocaleName(String languageCode) {
    switch (languageCode) {
      case 'en':
        return 'English';
      case 'zh':
        return 'Chinese';
      case 'es':
        return 'Spanish';
      default:
        return '';
    }
  }
}
