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

  /// `Al-Menbar`
  String get title {
    return Intl.message(
      'Al-Menbar',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_page {
    return Intl.message(
      'Login',
      name: 'login_page',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register_page {
    return Intl.message(
      'Register',
      name: 'register_page',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email_subtitle {
    return Intl.message(
      'Email',
      name: 'email_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_subtitle {
    return Intl.message(
      'Password',
      name: 'password_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirm_password_subtitle {
    return Intl.message(
      'Confirm your password',
      name: 'confirm_password_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number`
  String get mobile_number_subtitle {
    return Intl.message(
      'Mobile number',
      name: 'mobile_number_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get first_name_subtitle {
    return Intl.message(
      'First name',
      name: 'first_name_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get last_name_subtitle {
    return Intl.message(
      'Last name',
      name: 'last_name_subtitle',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get email_hint {
    return Intl.message(
      'Enter your email',
      name: 'email_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your password`
  String get password_hint {
    return Intl.message(
      'Enter your password',
      name: 'password_hint',
      desc: '',
      args: [],
    );
  }

  /// `ُEnter your password again`
  String get confirm_password_hint {
    return Intl.message(
      'ُEnter your password again',
      name: 'confirm_password_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your mobile number`
  String get mobile_number_hint {
    return Intl.message(
      'Enter your mobile number',
      name: 'mobile_number_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your first name`
  String get first_name_hint {
    return Intl.message(
      'Enter your first name',
      name: 'first_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter your last name`
  String get last_name_hint {
    return Intl.message(
      'Enter your last name',
      name: 'last_name_hint',
      desc: '',
      args: [],
    );
  }

  /// `Forgot password?`
  String get forgot_password {
    return Intl.message(
      'Forgot password?',
      name: 'forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `or login with`
  String get or {
    return Intl.message(
      'or login with',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get no_account {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'no_account',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get have_account {
    return Intl.message(
      'Already have an account? ',
      name: 'have_account',
      desc: '',
      args: [],
    );
  }

  /// `Register now`
  String get to_sign_up {
    return Intl.message(
      'Register now',
      name: 'to_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Login now`
  String get to_sign_in {
    return Intl.message(
      'Login now',
      name: 'to_sign_in',
      desc: '',
      args: [],
    );
  }

  /// `First educational application for Islamic Studies using AI`
  String get description {
    return Intl.message(
      'First educational application for Islamic Studies using AI',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_button {
    return Intl.message(
      'Home',
      name: 'home_button',
      desc: '',
      args: [],
    );
  }

  /// `My Profile`
  String get profile_button {
    return Intl.message(
      'My Profile',
      name: 'profile_button',
      desc: '',
      args: [],
    );
  }

  /// `Support`
  String get support_button {
    return Intl.message(
      'Support',
      name: 'support_button',
      desc: '',
      args: [],
    );
  }

  /// `Learn`
  String get learn_button {
    return Intl.message(
      'Learn',
      name: 'learn_button',
      desc: '',
      args: [],
    );
  }

  /// `Library`
  String get library_button {
    return Intl.message(
      'Library',
      name: 'library_button',
      desc: '',
      args: [],
    );
  }

  /// `Interpretation`
  String get tafsir_name {
    return Intl.message(
      'Interpretation',
      name: 'tafsir_name',
      desc: '',
      args: [],
    );
  }

  /// `Jurisprudence`
  String get fiqh_name {
    return Intl.message(
      'Jurisprudence',
      name: 'fiqh_name',
      desc: '',
      args: [],
    );
  }

  /// `Faith`
  String get aqidah_name {
    return Intl.message(
      'Faith',
      name: 'aqidah_name',
      desc: '',
      args: [],
    );
  }

  /// `Hadith`
  String get hadith_name {
    return Intl.message(
      'Hadith',
      name: 'hadith_name',
      desc: '',
      args: [],
    );
  }

  /// `Tayseer Al-Kareem Al-Rahman`
  String get tafsir_book {
    return Intl.message(
      'Tayseer Al-Kareem Al-Rahman',
      name: 'tafsir_book',
      desc: '',
      args: [],
    );
  }

  /// `Al-Fiqh Al-Moyassar`
  String get fiqh_book {
    return Intl.message(
      'Al-Fiqh Al-Moyassar',
      name: 'fiqh_book',
      desc: '',
      args: [],
    );
  }

  /// `Osool Al-Iman`
  String get aqidah_book {
    return Intl.message(
      'Osool Al-Iman',
      name: 'aqidah_book',
      desc: '',
      args: [],
    );
  }

  /// `Al-Arba'oon Al-Nawaweya`
  String get hadith_book {
    return Intl.message(
      'Al-Arba\'oon Al-Nawaweya',
      name: 'hadith_book',
      desc: '',
      args: [],
    );
  }

  /// `AbdelRazzaq Al-Badr`
  String get tafsir_sheikh {
    return Intl.message(
      'AbdelRazzaq Al-Badr',
      name: 'tafsir_sheikh',
      desc: '',
      args: [],
    );
  }

  /// `Muhammad Ismail Al-Muqaddem`
  String get aqidah_sheikh {
    return Intl.message(
      'Muhammad Ismail Al-Muqaddem',
      name: 'aqidah_sheikh',
      desc: '',
      args: [],
    );
  }

  /// `Saleh Aal Al-Sheikh`
  String get hadith_sheikh {
    return Intl.message(
      'Saleh Aal Al-Sheikh',
      name: 'hadith_sheikh',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get lecture_tab1 {
    return Intl.message(
      'About',
      name: 'lecture_tab1',
      desc: '',
      args: [],
    );
  }

  /// `Content`
  String get lecture_tab2 {
    return Intl.message(
      'Content',
      name: 'lecture_tab2',
      desc: '',
      args: [],
    );
  }

  /// `Tests Results`
  String get lecture_tab3 {
    return Intl.message(
      'Tests Results',
      name: 'lecture_tab3',
      desc: '',
      args: [],
    );
  }

  /// `Questions`
  String get lecture_tab4 {
    return Intl.message(
      'Questions',
      name: 'lecture_tab4',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get to_essay_exam {
    return Intl.message(
      'Next',
      name: 'to_essay_exam',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit_exam {
    return Intl.message(
      'Submit',
      name: 'submit_exam',
      desc: '',
      args: [],
    );
  }

  /// `Submit All Answers?`
  String get submit_alert_dialog_title {
    return Intl.message(
      'Submit All Answers?',
      name: 'submit_alert_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Exit Al-Menbar?`
  String get exit_alert_dialog_title {
    return Intl.message(
      'Exit Al-Menbar?',
      name: 'exit_alert_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to submit all Multiple Choice & Essay responses?`
  String get submit_alert_dialog_content {
    return Intl.message(
      'Are you sure you want to submit all Multiple Choice & Essay responses?',
      name: 'submit_alert_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to exit the app?`
  String get exit_alert_dialog_content {
    return Intl.message(
      'Are you sure you want to exit the app?',
      name: 'exit_alert_dialog_content',
      desc: '',
      args: [],
    );
  }

  /// `Yes, I am sure`
  String get alert_dialog_yes {
    return Intl.message(
      'Yes, I am sure',
      name: 'alert_dialog_yes',
      desc: '',
      args: [],
    );
  }

  /// `No, I am not`
  String get alert_dialog_no {
    return Intl.message(
      'No, I am not',
      name: 'alert_dialog_no',
      desc: '',
      args: [],
    );
  }

  /// `Email address should be as follows:\n'user@example.com'`
  String get email_error {
    return Intl.message(
      'Email address should be as follows:\n\'user@example.com\'',
      name: 'email_error',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address!!`
  String get email_empty {
    return Intl.message(
      'Please enter your email address!!',
      name: 'email_empty',
      desc: '',
      args: [],
    );
  }

  /// `Name should contain only letters without spaces or special characters.`
  String get name_error {
    return Intl.message(
      'Name should contain only letters without spaces or special characters.',
      name: 'name_error',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your name!!`
  String get name_empty {
    return Intl.message(
      'Please enter your name!!',
      name: 'name_empty',
      desc: '',
      args: [],
    );
  }

  /// `Password must be at least 8 characters & must contain at least:\none lowercase letter, one uppercase letter,\none number, and one special character.`
  String get password_error {
    return Intl.message(
      'Password must be at least 8 characters & must contain at least:\none lowercase letter, one uppercase letter,\none number, and one special character.',
      name: 'password_error',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your password!!`
  String get password_empty {
    return Intl.message(
      'Please enter your password!!',
      name: 'password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match!!`
  String get confirm_password_error {
    return Intl.message(
      'Passwords do not match!!',
      name: 'confirm_password_error',
      desc: '',
      args: [],
    );
  }

  /// `Please confirm your password!!`
  String get confirm_password_empty {
    return Intl.message(
      'Please confirm your password!!',
      name: 'confirm_password_empty',
      desc: '',
      args: [],
    );
  }

  /// `Mobile number should consist of your country code + 10 digits.`
  String get mobile_number_error {
    return Intl.message(
      'Mobile number should consist of your country code + 10 digits.',
      name: 'mobile_number_error',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your mobile number!!`
  String get mobile_number_empty {
    return Intl.message(
      'Please enter your mobile number!!',
      name: 'mobile_number_empty',
      desc: '',
      args: [],
    );
  }

  /// `Enter the final exam`
  String get final_exam {
    return Intl.message(
      'Enter the final exam',
      name: 'final_exam',
      desc: '',
      args: [],
    );
  }

  /// `Account Information`
  String get profile_header {
    return Intl.message(
      'Account Information',
      name: 'profile_header',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout_button {
    return Intl.message(
      'Logout',
      name: 'logout_button',
      desc: '',
      args: [],
    );
  }

  /// `To view, edit, or complete all account data, you can visit the website`
  String get visit_website_for_acc_details {
    return Intl.message(
      'To view, edit, or complete all account data, you can visit the website',
      name: 'visit_website_for_acc_details',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect email or password`
  String get login_error {
    return Intl.message(
      'Incorrect email or password',
      name: 'login_error',
      desc: '',
      args: [],
    );
  }

  /// `An Error Occurred!`
  String get error_dialog_title {
    return Intl.message(
      'An Error Occurred!',
      name: 'error_dialog_title',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get error_dialog_button {
    return Intl.message(
      'Back',
      name: 'error_dialog_button',
      desc: '',
      args: [],
    );
  }

  /// `Please wait...`
  String get please_wait {
    return Intl.message(
      'Please wait...',
      name: 'please_wait',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
