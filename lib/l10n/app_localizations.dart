import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_it.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('it'),
  ];

  /// No description provided for @medi_cue.
  ///
  /// In en, this message translates to:
  /// **'MediCue'**
  String get medi_cue;

  /// No description provided for @worry_less_live_healthier.
  ///
  /// In en, this message translates to:
  /// **'Worry less..Live healthier..'**
  String get worry_less_live_healthier;

  /// No description provided for @welcome_to_medi_cue.
  ///
  /// In en, this message translates to:
  /// **'Welcome to MediCue!'**
  String get welcome_to_medi_cue;

  /// No description provided for @get_started.
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get get_started;

  /// No description provided for @choose_language.
  ///
  /// In en, this message translates to:
  /// **'Choose Language'**
  String get choose_language;

  /// No description provided for @log_in.
  ///
  /// In en, this message translates to:
  /// **'LogIn'**
  String get log_in;

  /// No description provided for @sign_up.
  ///
  /// In en, this message translates to:
  /// **'SignUp'**
  String get sign_up;

  /// No description provided for @enter_your_email.
  ///
  /// In en, this message translates to:
  /// **'Enter your Email'**
  String get enter_your_email;

  /// No description provided for @enter_password.
  ///
  /// In en, this message translates to:
  /// **'Enter Password'**
  String get enter_password;

  /// No description provided for @forgot_password.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password'**
  String get forgot_password;

  /// No description provided for @dont_have_an_account_sign_up.
  ///
  /// In en, this message translates to:
  /// **'Don’t have an account ? Sign Up'**
  String get dont_have_an_account_sign_up;

  /// No description provided for @enter_your_full_name.
  ///
  /// In en, this message translates to:
  /// **'Enter your full name'**
  String get enter_your_full_name;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @already_have_an_account_sign_in.
  ///
  /// In en, this message translates to:
  /// **'Already have an account ? Sign In'**
  String get already_have_an_account_sign_in;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'LogOut'**
  String get log_out;

  /// No description provided for @schedule_dose.
  ///
  /// In en, this message translates to:
  /// **'Schedule the dose'**
  String get schedule_dose;

  /// No description provided for @schedule_reminders.
  ///
  /// In en, this message translates to:
  /// **'Schedule your reminders'**
  String get schedule_reminders;

  /// No description provided for @reminders.
  ///
  /// In en, this message translates to:
  /// **'Reminders'**
  String get reminders;

  /// No description provided for @reminders_description.
  ///
  /// In en, this message translates to:
  /// **'Keep track of reminders and get reminded on time'**
  String get reminders_description;

  /// No description provided for @progress.
  ///
  /// In en, this message translates to:
  /// **'Progress'**
  String get progress;

  /// No description provided for @progress_description.
  ///
  /// In en, this message translates to:
  /// **'Keep track of your medication'**
  String get progress_description;

  /// No description provided for @invite_family_and_doctors.
  ///
  /// In en, this message translates to:
  /// **'Invite family and doctors'**
  String get invite_family_and_doctors;

  /// No description provided for @share_progress.
  ///
  /// In en, this message translates to:
  /// **'Share your progress'**
  String get share_progress;

  /// No description provided for @received_advice.
  ///
  /// In en, this message translates to:
  /// **'Received advice'**
  String get received_advice;

  /// No description provided for @change_schedule_as_per_advice.
  ///
  /// In en, this message translates to:
  /// **'Change the schedule as per the advice'**
  String get change_schedule_as_per_advice;

  /// No description provided for @what_time_in_the_day_do_you_want_to_take_it.
  ///
  /// In en, this message translates to:
  /// **'What time in the day do you want to take it?'**
  String get what_time_in_the_day_do_you_want_to_take_it;

  /// No description provided for @morning_before_breakfast.
  ///
  /// In en, this message translates to:
  /// **'Morning, before breakfast        '**
  String get morning_before_breakfast;

  /// No description provided for @alarm_set_for_8am.
  ///
  /// In en, this message translates to:
  /// **'Alarm set for 8am'**
  String get alarm_set_for_8am;

  /// No description provided for @morning_after_breakfast.
  ///
  /// In en, this message translates to:
  /// **'Morning, after breakfast'**
  String get morning_after_breakfast;

  /// No description provided for @alarm_set_for_am.
  ///
  /// In en, this message translates to:
  /// **'Alarm set for 8am'**
  String get alarm_set_for_am;

  /// No description provided for @pm.
  ///
  /// In en, this message translates to:
  /// **'pm'**
  String get pm;

  /// No description provided for @how_often_is_this_dose_taken.
  ///
  /// In en, this message translates to:
  /// **'How often is this dose taken?'**
  String get how_often_is_this_dose_taken;

  /// No description provided for @everyday.
  ///
  /// In en, this message translates to:
  /// **'Everyday'**
  String get everyday;

  /// No description provided for @how_many_pills_are_taken_in_each_dose.
  ///
  /// In en, this message translates to:
  /// **'How many pills are taken in each dose?'**
  String get how_many_pills_are_taken_in_each_dose;

  /// No description provided for @save.
  ///
  /// In en, this message translates to:
  /// **'SAVE'**
  String get save;

  /// No description provided for @medicine.
  ///
  /// In en, this message translates to:
  /// **'Medicine'**
  String get medicine;

  /// No description provided for @time.
  ///
  /// In en, this message translates to:
  /// **'Time'**
  String get time;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @taken.
  ///
  /// In en, this message translates to:
  /// **'Taken'**
  String get taken;

  /// No description provided for @take_it.
  ///
  /// In en, this message translates to:
  /// **'Take it'**
  String get take_it;

  /// No description provided for @missed.
  ///
  /// In en, this message translates to:
  /// **'Missed'**
  String get missed;

  /// No description provided for @your_progress_has_been_shared_to_your_invitees.
  ///
  /// In en, this message translates to:
  /// **'Your progress has been shared to your invitees.'**
  String get your_progress_has_been_shared_to_your_invitees;

  /// No description provided for @missed_medicines.
  ///
  /// In en, this message translates to:
  /// **'Missed Medicines'**
  String get missed_medicines;

  /// No description provided for @pills.
  ///
  /// In en, this message translates to:
  /// **'Pills'**
  String get pills;

  /// No description provided for @pill.
  ///
  /// In en, this message translates to:
  /// **'Pills'**
  String get pill;

  /// No description provided for @invite_friends.
  ///
  /// In en, this message translates to:
  /// **'Invite friends'**
  String get invite_friends;

  /// No description provided for @enter_the_name_of_the_person_you_would_like_to_invite.
  ///
  /// In en, this message translates to:
  /// **'Enter the name of the person you would like to invite'**
  String get enter_the_name_of_the_person_you_would_like_to_invite;

  /// No description provided for @example_name.
  ///
  /// In en, this message translates to:
  /// **'e.g. Ahmed'**
  String get example_name;

  /// No description provided for @this_name_is_only_visible_to_you.
  ///
  /// In en, this message translates to:
  /// **'This name is only visible to you.'**
  String get this_name_is_only_visible_to_you;

  /// No description provided for @sharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing'**
  String get sharing;

  /// No description provided for @weekly_progress.
  ///
  /// In en, this message translates to:
  /// **'Weekly progress'**
  String get weekly_progress;

  /// No description provided for @confirm_connection_message.
  ///
  /// In en, this message translates to:
  /// **'Ahmed has to confirm the connection by entering the invitation code in MediCue!'**
  String get confirm_connection_message;

  /// No description provided for @send_code.
  ///
  /// In en, this message translates to:
  /// **'SEND CODE'**
  String get send_code;

  /// No description provided for @english.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get english;

  /// No description provided for @arabic.
  ///
  /// In en, this message translates to:
  /// **'Arabic'**
  String get arabic;

  /// No description provided for @french.
  ///
  /// In en, this message translates to:
  /// **'French'**
  String get french;

  /// No description provided for @german.
  ///
  /// In en, this message translates to:
  /// **'German'**
  String get german;

  /// No description provided for @spanish.
  ///
  /// In en, this message translates to:
  /// **'Spanish'**
  String get spanish;

  /// No description provided for @italian.
  ///
  /// In en, this message translates to:
  /// **'Italian'**
  String get italian;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'de',
    'en',
    'es',
    'fr',
    'it',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'it':
      return AppLocalizationsIt();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
