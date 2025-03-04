// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `ThingsBoard`
  String get appTitle {
    return Intl.message(
      'ThingsBoard',
      name: 'appTitle',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home {
    return Intl.message(
      'Home',
      name: 'home',
      desc: '',
      args: [],
    );
  }

  /// `Alarms`
  String get alarms {
    return Intl.message(
      'Alarms',
      name: 'alarms',
      desc: '',
      args: [],
    );
  }

  /// `Devices`
  String get devices {
    return Intl.message(
      'Devices',
      name: 'devices',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message(
      'More',
      name: 'more',
      desc: '',
      args: [],
    );
  }

  /// `Customers`
  String get customers {
    return Intl.message(
      'Customers',
      name: 'customers',
      desc: '',
      args: [],
    );
  }

  /// `Assets`
  String get assets {
    return Intl.message(
      'Assets',
      name: 'assets',
      desc: '',
      args: [],
    );
  }

  /// `Audit Logs`
  String get auditLogs {
    return Intl.message(
      'Audit Logs',
      name: 'auditLogs',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logout {
    return Intl.message(
      'Log Out',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Log In`
  String get login {
    return Intl.message(
      'Log In',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `ThingsBoard Logo`
  String get logoDefaultValue {
    return Intl.message(
      'ThingsBoard Logo',
      name: 'logoDefaultValue',
      desc: '',
      args: [],
    );
  }

  /// `Login to your account`
  String get loginNotification {
    return Intl.message(
      'Login to your account',
      name: 'loginNotification',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email is required.`
  String get emailRequireText {
    return Intl.message(
      'Email is required.',
      name: 'emailRequireText',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email format.`
  String get emailInvalidText {
    return Intl.message(
      'Invalid email format.',
      name: 'emailInvalidText',
      desc: '',
      args: [],
    );
  }

  /// `username`
  String get username {
    return Intl.message(
      'username',
      name: 'username',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password is required.`
  String get passwordRequireText {
    return Intl.message(
      'Password is required.',
      name: 'passwordRequireText',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get passwordForgotText {
    return Intl.message(
      'Forgot Password?',
      name: 'passwordForgotText',
      desc: '',
      args: [],
    );
  }

  /// `Reset password`
  String get passwordReset {
    return Intl.message(
      'Reset password',
      name: 'passwordReset',
      desc: '',
      args: [],
    );
  }

  /// `Enter the email associated with your account and we'll send an email with password reset link`
  String get passwordResetText {
    return Intl.message(
      'Enter the email associated with your account and we\'ll send an email with password reset link',
      name: 'passwordResetText',
      desc: '',
      args: [],
    );
  }

  /// `Request password reset`
  String get requestPasswordReset {
    return Intl.message(
      'Request password reset',
      name: 'requestPasswordReset',
      desc: '',
      args: [],
    );
  }

  /// `Password reset link was successfully sent!`
  String get passwordResetLinkSuccessfullySentNotification {
    return Intl.message(
      'Password reset link was successfully sent!',
      name: 'passwordResetLinkSuccessfullySentNotification',
      desc: '',
      args: [],
    );
  }

  /// `OR`
  String get or {
    return Intl.message(
      'OR',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `No`
  String get no {
    return Intl.message(
      'No',
      name: 'no',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message(
      'Yes',
      name: 'yes',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title {
    return Intl.message(
      'Title',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country {
    return Intl.message(
      'Country',
      name: 'country',
      desc: '',
      args: [],
    );
  }

  /// `City`
  String get city {
    return Intl.message(
      'City',
      name: 'city',
      desc: '',
      args: [],
    );
  }

  /// `State / Province`
  String get stateOrProvince {
    return Intl.message(
      'State / Province',
      name: 'stateOrProvince',
      desc: '',
      args: [],
    );
  }

  /// `Zip / Postal Code`
  String get postalCode {
    return Intl.message(
      'Zip / Postal Code',
      name: 'postalCode',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address {
    return Intl.message(
      'Address',
      name: 'address',
      desc: '',
      args: [],
    );
  }

  /// `Address 2`
  String get address2 {
    return Intl.message(
      'Address 2',
      name: 'address2',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `Clear Alarm`
  String get alarmClearTitle {
    return Intl.message(
      'Clear Alarm',
      name: 'alarmClearTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to clear Alarm?`
  String get alarmClearText {
    return Intl.message(
      'Are you sure you want to clear Alarm?',
      name: 'alarmClearText',
      desc: '',
      args: [],
    );
  }

  /// `Acknowledge Alarm`
  String get alarmAcknowledgeTitle {
    return Intl.message(
      'Acknowledge Alarm',
      name: 'alarmAcknowledgeTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to acknowledge Alarm?`
  String get alarmAcknowledgeText {
    return Intl.message(
      'Are you sure you want to acknowledge Alarm?',
      name: 'alarmAcknowledgeText',
      desc: '',
      args: [],
    );
  }

  /// `Asset name`
  String get assetName {
    return Intl.message(
      'Asset name',
      name: 'assetName',
      desc: '',
      args: [],
    );
  }

  /// `Type`
  String get type {
    return Intl.message(
      'Type',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Label`
  String get label {
    return Intl.message(
      'Label',
      name: 'label',
      desc: '',
      args: [],
    );
  }

  /// `Assigned to customer`
  String get assignedToCustomer {
    return Intl.message(
      'Assigned to customer',
      name: 'assignedToCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Audit log details`
  String get auditLogDetails {
    return Intl.message(
      'Audit log details',
      name: 'auditLogDetails',
      desc: '',
      args: [],
    );
  }

  /// `Entity Type`
  String get entityType {
    return Intl.message(
      'Entity Type',
      name: 'entityType',
      desc: '',
      args: [],
    );
  }

  /// `Action data`
  String get actionData {
    return Intl.message(
      'Action data',
      name: 'actionData',
      desc: '',
      args: [],
    );
  }

  /// `Failure details`
  String get failureDetails {
    return Intl.message(
      'Failure details',
      name: 'failureDetails',
      desc: '',
      args: [],
    );
  }

  /// `All devices`
  String get allDevices {
    return Intl.message(
      'All devices',
      name: 'allDevices',
      desc: '',
      args: [],
    );
  }

  /// `Active`
  String get active {
    return Intl.message(
      'Active',
      name: 'active',
      desc: '',
      args: [],
    );
  }

  /// `Inactive`
  String get inactive {
    return Intl.message(
      'Inactive',
      name: 'inactive',
      desc: '',
      args: [],
    );
  }

  /// `System Administrator`
  String get systemAdministrator {
    return Intl.message(
      'System Administrator',
      name: 'systemAdministrator',
      desc: '',
      args: [],
    );
  }

  /// `Tenant Administrator`
  String get tenantAdministrator {
    return Intl.message(
      'Tenant Administrator',
      name: 'tenantAdministrator',
      desc: '',
      args: [],
    );
  }

  /// `Customer`
  String get customer {
    return Intl.message(
      'Customer',
      name: 'customer',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `currentPassword`
  String get currentPassword {
    return Intl.message(
      'currentPassword',
      name: 'currentPassword',
      desc: '',
      args: [],
    );
  }

  /// `Current password is required.`
  String get currentPasswordRequireText {
    return Intl.message(
      'Current password is required.',
      name: 'currentPasswordRequireText',
      desc: '',
      args: [],
    );
  }

  /// `Current password *`
  String get currentPasswordStar {
    return Intl.message(
      'Current password *',
      name: 'currentPasswordStar',
      desc: '',
      args: [],
    );
  }

  /// `newPassword`
  String get newPassword {
    return Intl.message(
      'newPassword',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `New password is required.`
  String get newPasswordRequireText {
    return Intl.message(
      'New password is required.',
      name: 'newPasswordRequireText',
      desc: '',
      args: [],
    );
  }

  /// `New password *`
  String get newPasswordStar {
    return Intl.message(
      'New password *',
      name: 'newPasswordStar',
      desc: '',
      args: [],
    );
  }

  /// `newPassword2`
  String get newPassword2 {
    return Intl.message(
      'newPassword2',
      name: 'newPassword2',
      desc: '',
      args: [],
    );
  }

  /// `New password again is required.`
  String get newPassword2RequireText {
    return Intl.message(
      'New password again is required.',
      name: 'newPassword2RequireText',
      desc: '',
      args: [],
    );
  }

  /// `New password again *`
  String get newPassword2Star {
    return Intl.message(
      'New password again *',
      name: 'newPassword2Star',
      desc: '',
      args: [],
    );
  }

  /// `Entered passwords must be same!`
  String get passwordErrorNotification {
    return Intl.message(
      'Entered passwords must be same!',
      name: 'passwordErrorNotification',
      desc: '',
      args: [],
    );
  }

  /// `Email *`
  String get emailStar {
    return Intl.message(
      'Email *',
      name: 'emailStar',
      desc: '',
      args: [],
    );
  }

  /// `firstName`
  String get firstName {
    return Intl.message(
      'firstName',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `First Name`
  String get firstNameUpper {
    return Intl.message(
      'First Name',
      name: 'firstNameUpper',
      desc: '',
      args: [],
    );
  }

  /// `lastName`
  String get lastName {
    return Intl.message(
      'lastName',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Last Name`
  String get lastNameUpper {
    return Intl.message(
      'Last Name',
      name: 'lastNameUpper',
      desc: '',
      args: [],
    );
  }

  /// `Profile successfully updated`
  String get profileSuccessNotification {
    return Intl.message(
      'Profile successfully updated',
      name: 'profileSuccessNotification',
      desc: '',
      args: [],
    );
  }

  /// `Password successfully changed`
  String get passwordSuccessNotification {
    return Intl.message(
      'Password successfully changed',
      name: 'passwordSuccessNotification',
      desc: '',
      args: [],
    );
  }

  /// `Not implemented!`
  String get notImplemented {
    return Intl.message(
      'Not implemented!',
      name: 'notImplemented',
      desc: '',
      args: [],
    );
  }

  /// `The list is currently empty.`
  String get listIsEmptyText {
    return Intl.message(
      'The list is currently empty.',
      name: 'listIsEmptyText',
      desc: '',
      args: [],
    );
  }

  /// `Try Again`
  String get tryAgain {
    return Intl.message(
      'Try Again',
      name: 'tryAgain',
      desc: '',
      args: [],
    );
  }

  /// `Verify your identity`
  String get verifyYourIdentity {
    return Intl.message(
      'Verify your identity',
      name: 'verifyYourIdentity',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continueText {
    return Intl.message(
      'Continue',
      name: 'continueText',
      desc: '',
      args: [],
    );
  }

  /// `Resend code`
  String get resendCode {
    return Intl.message(
      'Resend code',
      name: 'resendCode',
      desc: '',
      args: [],
    );
  }

  /// `Resend code in {time,plural, =1{1 second}other{{time} seconds}}`
  String resendCodeWait(num time) {
    return Intl.message(
      'Resend code in ${Intl.plural(time, one: '1 second', other: '$time seconds')}',
      name: 'resendCodeWait',
      desc: '',
      args: [time],
    );
  }

  /// `Please enter the security code from your authenticator app.`
  String get totpAuthDescription {
    return Intl.message(
      'Please enter the security code from your authenticator app.',
      name: 'totpAuthDescription',
      desc: '',
      args: [],
    );
  }

  /// `A security code has been sent to your phone at {contact}.`
  String smsAuthDescription(Object contact) {
    return Intl.message(
      'A security code has been sent to your phone at $contact.',
      name: 'smsAuthDescription',
      desc: '',
      args: [contact],
    );
  }

  /// `A security code has been sent to your email address at {contact}.`
  String emailAuthDescription(Object contact) {
    return Intl.message(
      'A security code has been sent to your email address at $contact.',
      name: 'emailAuthDescription',
      desc: '',
      args: [contact],
    );
  }

  /// `Please enter one of your backup codes.`
  String get backupCodeAuthDescription {
    return Intl.message(
      'Please enter one of your backup codes.',
      name: 'backupCodeAuthDescription',
      desc: '',
      args: [],
    );
  }

  /// `Invalid verification code format`
  String get verificationCodeInvalid {
    return Intl.message(
      'Invalid verification code format',
      name: 'verificationCodeInvalid',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get toptAuthPlaceholder {
    return Intl.message(
      'Code',
      name: 'toptAuthPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `SMS code`
  String get smsAuthPlaceholder {
    return Intl.message(
      'SMS code',
      name: 'smsAuthPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Email code`
  String get emailAuthPlaceholder {
    return Intl.message(
      'Email code',
      name: 'emailAuthPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Backup code`
  String get backupCodeAuthPlaceholder {
    return Intl.message(
      'Backup code',
      name: 'backupCodeAuthPlaceholder',
      desc: '',
      args: [],
    );
  }

  /// `Verification code is incorrect`
  String get verificationCodeIncorrect {
    return Intl.message(
      'Verification code is incorrect',
      name: 'verificationCodeIncorrect',
      desc: '',
      args: [],
    );
  }

  /// `Too many requests check verification code`
  String get verificationCodeManyRequest {
    return Intl.message(
      'Too many requests check verification code',
      name: 'verificationCodeManyRequest',
      desc: '',
      args: [],
    );
  }

  /// `Try another way`
  String get tryAnotherWay {
    return Intl.message(
      'Try another way',
      name: 'tryAnotherWay',
      desc: '',
      args: [],
    );
  }

  /// `Select a way to verify`
  String get selectWayToVerify {
    return Intl.message(
      'Select a way to verify',
      name: 'selectWayToVerify',
      desc: '',
      args: [],
    );
  }

  /// `Authenticator app`
  String get mfaProviderTopt {
    return Intl.message(
      'Authenticator app',
      name: 'mfaProviderTopt',
      desc: '',
      args: [],
    );
  }

  /// `SMS`
  String get mfaProviderSms {
    return Intl.message(
      'SMS',
      name: 'mfaProviderSms',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get mfaProviderEmail {
    return Intl.message(
      'Email',
      name: 'mfaProviderEmail',
      desc: '',
      args: [],
    );
  }

  /// `Backup code`
  String get mfaProviderBackupCode {
    return Intl.message(
      'Backup code',
      name: 'mfaProviderBackupCode',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `values`
  String get otherExistingKeys {
    return Intl.message(
      'values',
      name: 'otherExistingKeys',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message(
      'English',
      name: 'english',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get chinese {
    return Intl.message(
      'Chinese',
      name: 'chinese',
      desc: '',
      args: [],
    );
  }

  /// `Spanish`
  String get spanish {
    return Intl.message(
      'Spanish',
      name: 'spanish',
      desc: '',
      args: [],
    );
  }

  /// `No alarms found`
  String get noAlarmFound {
    return Intl.message(
      'No alarms found',
      name: 'noAlarmFound',
      desc: '',
      args: [],
    );
  }

  /// `Select Language`
  String get selectLanguage {
    return Intl.message(
      'Select Language',
      name: 'selectLanguage',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'es'),
      Locale.fromSubtags(languageCode: 'zh'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
