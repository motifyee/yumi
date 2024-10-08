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

  /// `YUMI`
  String get yumi {
    return Intl.message(
      'YUMI',
      name: 'yumi',
      desc: '',
      args: [],
    );
  }

  /// `Welcome Back`
  String get welcomeBack {
    return Intl.message(
      'Welcome Back',
      name: 'welcomeBack',
      desc: '',
      args: [],
    );
  }

  /// `Sign to continue`
  String get signToContinue {
    return Intl.message(
      'Sign to continue',
      name: 'signToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
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

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Forget password`
  String get forgetPassword {
    return Intl.message(
      'Forget password',
      name: 'forgetPassword',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `or sign up with`
  String get orSignUpWith {
    return Intl.message(
      'or sign up with',
      name: 'orSignUpWith',
      desc: '',
      args: [],
    );
  }

  /// `Required`
  String get required {
    return Intl.message(
      'Required',
      name: 'required',
      desc: '',
      args: [],
    );
  }

  /// `Invalid email`
  String get invalidEmail {
    return Intl.message(
      'Invalid email',
      name: 'invalidEmail',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain:\n at least 8 characters,\n 1 upper case,\n 1 lower case,\n 1 number,\n 1 special character ( ! @ # $ & * ~ ).`
  String get passwordMustBe {
    return Intl.message(
      'Password must contain:\n at least 8 characters,\n 1 upper case,\n 1 lower case,\n 1 number,\n 1 special character ( ! @ # \$ & * ~ ).',
      name: 'passwordMustBe',
      desc: '',
      args: [],
    );
  }

  /// `1 upper case`
  String get upperCase {
    return Intl.message(
      '1 upper case',
      name: 'upperCase',
      desc: '',
      args: [],
    );
  }

  /// `1 lower case`
  String get lowerCase {
    return Intl.message(
      '1 lower case',
      name: 'lowerCase',
      desc: '',
      args: [],
    );
  }

  /// `1 number`
  String get numNumber {
    return Intl.message(
      '1 number',
      name: 'numNumber',
      desc: '',
      args: [],
    );
  }

  /// `1 special character ( ! @ # $ & * ~ )`
  String get specialCharacter {
    return Intl.message(
      '1 special character ( ! @ # \$ & * ~ )',
      name: 'specialCharacter',
      desc: '',
      args: [],
    );
  }

  /// `Create New Account`
  String get createNewAccount {
    return Intl.message(
      'Create New Account',
      name: 'createNewAccount',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get createAccount {
    return Intl.message(
      'Create Account',
      name: 'createAccount',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Password`
  String get confirmPassword {
    return Intl.message(
      'Confirm Password',
      name: 'confirmPassword',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account?`
  String get alreadyHaveAccount {
    return Intl.message(
      'Already have an account?',
      name: 'alreadyHaveAccount',
      desc: '',
      args: [],
    );
  }

  /// `Password does not match!`
  String get passwordDoesNotMatch {
    return Intl.message(
      'Password does not match!',
      name: 'passwordDoesNotMatch',
      desc: '',
      args: [],
    );
  }

  /// `Opened`
  String get opened {
    return Intl.message(
      'Opened',
      name: 'opened',
      desc: '',
      args: [],
    );
  }

  /// `Closed`
  String get closed {
    return Intl.message(
      'Closed',
      name: 'closed',
      desc: '',
      args: [],
    );
  }

  /// `Busy`
  String get busy {
    return Intl.message(
      'Busy',
      name: 'busy',
      desc: '',
      args: [],
    );
  }

  /// `Order received`
  String get orderReceived {
    return Intl.message(
      'Order received',
      name: 'orderReceived',
      desc: '',
      args: [],
    );
  }

  /// `Preparing`
  String get preparing {
    return Intl.message(
      'Preparing',
      name: 'preparing',
      desc: '',
      args: [],
    );
  }

  /// `Ready`
  String get ready {
    return Intl.message(
      'Ready',
      name: 'ready',
      desc: '',
      args: [],
    );
  }

  /// `Order Id`
  String get orderId {
    return Intl.message(
      'Order Id',
      name: 'orderId',
      desc: '',
      args: [],
    );
  }

  /// `Click the icon to view customer notes`
  String get clickTheIconToViewCustomerNotes {
    return Intl.message(
      'Click the icon to view customer notes',
      name: 'clickTheIconToViewCustomerNotes',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Fee`
  String get deliveryFee {
    return Intl.message(
      'Delivery Fee',
      name: 'deliveryFee',
      desc: '',
      args: [],
    );
  }

  /// `The total price includes tax`
  String get theTotalPriceIncludesTax {
    return Intl.message(
      'The total price includes tax',
      name: 'theTotalPriceIncludesTax',
      desc: '',
      args: [],
    );
  }

  /// `Total`
  String get total {
    return Intl.message(
      'Total',
      name: 'total',
      desc: '',
      args: [],
    );
  }

  /// `View`
  String get view {
    return Intl.message(
      'View',
      name: 'view',
      desc: '',
      args: [],
    );
  }

  /// `Hi`
  String get hi {
    return Intl.message(
      'Hi',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `This section your saved address`
  String get thisSectionYourSavedAddress {
    return Intl.message(
      'This section your saved address',
      name: 'thisSectionYourSavedAddress',
      desc: '',
      args: [],
    );
  }

  /// `This button means that you are currently closed`
  String get thisButtonMeansThatYouAreCurrentlyClosed {
    return Intl.message(
      'This button means that you are currently closed',
      name: 'thisButtonMeansThatYouAreCurrentlyClosed',
      desc: '',
      args: [],
    );
  }

  /// `This button means that you are currently available`
  String get thisButtonMeansThatYouAreCurrentlyAvailable {
    return Intl.message(
      'This button means that you are currently available',
      name: 'thisButtonMeansThatYouAreCurrentlyAvailable',
      desc: '',
      args: [],
    );
  }

  /// `This button means that you are currently not available`
  String get thisButtonMeansThatYouAreCurrentlyNotAvailable {
    return Intl.message(
      'This button means that you are currently not available',
      name: 'thisButtonMeansThatYouAreCurrentlyNotAvailable',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip {
    return Intl.message(
      'Skip',
      name: 'skip',
      desc: '',
      args: [],
    );
  }

  /// `Notification`
  String get notification {
    return Intl.message(
      'Notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `My schedule`
  String get mySchedule {
    return Intl.message(
      'My schedule',
      name: 'mySchedule',
      desc: '',
      args: [],
    );
  }

  /// `Menus`
  String get menus {
    return Intl.message(
      'Menus',
      name: 'menus',
      desc: '',
      args: [],
    );
  }

  /// `Calories reference`
  String get caloriesReference {
    return Intl.message(
      'Calories reference',
      name: 'caloriesReference',
      desc: '',
      args: [],
    );
  }

  /// `Documentation`
  String get documentation {
    return Intl.message(
      'Documentation',
      name: 'documentation',
      desc: '',
      args: [],
    );
  }

  /// `Performance analysis`
  String get performanceAnalysis {
    return Intl.message(
      'Performance analysis',
      name: 'performanceAnalysis',
      desc: '',
      args: [],
    );
  }

  /// `Financial view`
  String get financialView {
    return Intl.message(
      'Financial view',
      name: 'financialView',
      desc: '',
      args: [],
    );
  }

  /// `Get help`
  String get getHelp {
    return Intl.message(
      'Get help',
      name: 'getHelp',
      desc: '',
      args: [],
    );
  }

  /// `Transactions`
  String get transactions {
    return Intl.message(
      'Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message(
      'Settings',
      name: 'settings',
      desc: '',
      args: [],
    );
  }

  /// `Log Out`
  String get logOut {
    return Intl.message(
      'Log Out',
      name: 'logOut',
      desc: '',
      args: [],
    );
  }

  /// `Menu (orders)`
  String get menuOrders {
    return Intl.message(
      'Menu (orders)',
      name: 'menuOrders',
      desc: '',
      args: [],
    );
  }

  /// `Menu (pre-orders)`
  String get menuPreOrders {
    return Intl.message(
      'Menu (pre-orders)',
      name: 'menuPreOrders',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get profile {
    return Intl.message(
      'Profile',
      name: 'profile',
      desc: '',
      args: [],
    );
  }

  /// `Pre Orders`
  String get preOrder {
    return Intl.message(
      'Pre Orders',
      name: 'preOrder',
      desc: '',
      args: [],
    );
  }

  /// `Hygiene`
  String get hygiene {
    return Intl.message(
      'Hygiene',
      name: 'hygiene',
      desc: '',
      args: [],
    );
  }

  /// `Bio`
  String get bio {
    return Intl.message(
      'Bio',
      name: 'bio',
      desc: '',
      args: [],
    );
  }

  /// `Events Photo`
  String get eventsPhoto {
    return Intl.message(
      'Events Photo',
      name: 'eventsPhoto',
      desc: '',
      args: [],
    );
  }

  /// `Write a Bio`
  String get writeABio {
    return Intl.message(
      'Write a Bio',
      name: 'writeABio',
      desc: '',
      args: [],
    );
  }

  /// `Upload`
  String get upload {
    return Intl.message(
      'Upload',
      name: 'upload',
      desc: '',
      args: [],
    );
  }

  /// `My reviews`
  String get myReviews {
    return Intl.message(
      'My reviews',
      name: 'myReviews',
      desc: '',
      args: [],
    );
  }

  /// `Full name`
  String get fullName {
    return Intl.message(
      'Full name',
      name: 'fullName',
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

  /// `Phone`
  String get phone {
    return Intl.message(
      'Phone',
      name: 'phone',
      desc: '',
      args: [],
    );
  }

  /// `User name`
  String get userName {
    return Intl.message(
      'User name',
      name: 'userName',
      desc: '',
      args: [],
    );
  }

  /// `Pickup`
  String get pickup {
    return Intl.message(
      'Pickup',
      name: 'pickup',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message(
      'About',
      name: 'about',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit {
    return Intl.message(
      'Edit',
      name: 'edit',
      desc: '',
      args: [],
    );
  }

  /// `Bank Account`
  String get bankAccount {
    return Intl.message(
      'Bank Account',
      name: 'bankAccount',
      desc: '',
      args: [],
    );
  }

  /// `Holder name`
  String get holderName {
    return Intl.message(
      'Holder name',
      name: 'holderName',
      desc: '',
      args: [],
    );
  }

  /// `Name on card`
  String get nameOnCard {
    return Intl.message(
      'Name on card',
      name: 'nameOnCard',
      desc: '',
      args: [],
    );
  }

  /// `Sort code`
  String get sortCode {
    return Intl.message(
      'Sort code',
      name: 'sortCode',
      desc: '',
      args: [],
    );
  }

  /// `Account Number`
  String get accountNumber {
    return Intl.message(
      'Account Number',
      name: 'accountNumber',
      desc: '',
      args: [],
    );
  }

  /// `Delete Account`
  String get deleteAccount {
    return Intl.message(
      'Delete Account',
      name: 'deleteAccount',
      desc: '',
      args: [],
    );
  }

  /// `Empty`
  String get empty {
    return Intl.message(
      'Empty',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `Meal name`
  String get mealName {
    return Intl.message(
      'Meal name',
      name: 'mealName',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get ingredients {
    return Intl.message(
      'Ingredients',
      name: 'ingredients',
      desc: '',
      args: [],
    );
  }

  /// `Calories`
  String get calories {
    return Intl.message(
      'Calories',
      name: 'calories',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get description {
    return Intl.message(
      'Description',
      name: 'description',
      desc: '',
      args: [],
    );
  }

  /// `Preparation time`
  String get preparationTime {
    return Intl.message(
      'Preparation time',
      name: 'preparationTime',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price {
    return Intl.message(
      'Price',
      name: 'price',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save {
    return Intl.message(
      'Save',
      name: 'save',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Min`
  String get min {
    return Intl.message(
      'Min',
      name: 'min',
      desc: '',
      args: [],
    );
  }

  /// `$`
  String get currency {
    return Intl.message(
      '\$',
      name: 'currency',
      desc: '',
      args: [],
    );
  }

  /// `Portion`
  String get portion {
    return Intl.message(
      'Portion',
      name: 'portion',
      desc: '',
      args: [],
    );
  }

  /// `For how many person`
  String get forHowManyPerson {
    return Intl.message(
      'For how many person',
      name: 'forHowManyPerson',
      desc: '',
      args: [],
    );
  }

  /// `Maximum 25 minutes`
  String get maximum25Minutes {
    return Intl.message(
      'Maximum 25 minutes',
      name: 'maximum25Minutes',
      desc: '',
      args: [],
    );
  }

  /// `Connection Error!`
  String get connectionError {
    return Intl.message(
      'Connection Error!',
      name: 'connectionError',
      desc: '',
      args: [],
    );
  }

  /// `gm`
  String get measurement {
    return Intl.message(
      'gm',
      name: 'measurement',
      desc: '',
      args: [],
    );
  }

  /// `Delete`
  String get delete {
    return Intl.message(
      'Delete',
      name: 'delete',
      desc: '',
      args: [],
    );
  }

  /// `Delete meal`
  String get deleteMeal {
    return Intl.message(
      'Delete meal',
      name: 'deleteMeal',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to delete a meal?`
  String get areYouSureToDeleteAMeal {
    return Intl.message(
      'Are you sure to delete a meal?',
      name: 'areYouSureToDeleteAMeal',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get search {
    return Intl.message(
      'Search',
      name: 'search',
      desc: '',
      args: [],
    );
  }

  /// `Orders History`
  String get ordersHistory {
    return Intl.message(
      'Orders History',
      name: 'ordersHistory',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get firstName {
    return Intl.message(
      'First name',
      name: 'firstName',
      desc: '',
      args: [],
    );
  }

  /// `Last name`
  String get lastName {
    return Intl.message(
      'Last name',
      name: 'lastName',
      desc: '',
      args: [],
    );
  }

  /// `Mobile`
  String get mobile {
    return Intl.message(
      'Mobile',
      name: 'mobile',
      desc: '',
      args: [],
    );
  }

  /// `Favorites`
  String get favorites {
    return Intl.message(
      'Favorites',
      name: 'favorites',
      desc: '',
      args: [],
    );
  }

  /// `Featured Chefs`
  String get featuredChefs {
    return Intl.message(
      'Featured Chefs',
      name: 'featuredChefs',
      desc: '',
      args: [],
    );
  }

  /// `My Orders`
  String get myOrders {
    return Intl.message(
      'My Orders',
      name: 'myOrders',
      desc: '',
      args: [],
    );
  }

  /// `Invalid input`
  String get invalidInput {
    return Intl.message(
      'Invalid input',
      name: 'invalidInput',
      desc: '',
      args: [],
    );
  }

  /// `Add bank account`
  String get addBankAccount {
    return Intl.message(
      'Add bank account',
      name: 'addBankAccount',
      desc: '',
      args: [],
    );
  }

  /// `Bank name`
  String get bankName {
    return Intl.message(
      'Bank name',
      name: 'bankName',
      desc: '',
      args: [],
    );
  }

  /// `Account name`
  String get accountName {
    return Intl.message(
      'Account name',
      name: 'accountName',
      desc: '',
      args: [],
    );
  }

  /// `Bank currency`
  String get bankCurrency {
    return Intl.message(
      'Bank currency',
      name: 'bankCurrency',
      desc: '',
      args: [],
    );
  }

  /// `IBan`
  String get iban {
    return Intl.message(
      'IBan',
      name: 'iban',
      desc: '',
      args: [],
    );
  }

  /// `Swift code`
  String get swiftCode {
    return Intl.message(
      'Swift code',
      name: 'swiftCode',
      desc: '',
      args: [],
    );
  }

  /// `Branch address`
  String get branchAddress {
    return Intl.message(
      'Branch address',
      name: 'branchAddress',
      desc: '',
      args: [],
    );
  }

  /// `Open`
  String get open {
    return Intl.message(
      'Open',
      name: 'open',
      desc: '',
      args: [],
    );
  }

  /// `Order Again`
  String get orderAgain {
    return Intl.message(
      'Order Again',
      name: 'orderAgain',
      desc: '',
      args: [],
    );
  }

  /// `Chef events`
  String get chefEvents {
    return Intl.message(
      'Chef events',
      name: 'chefEvents',
      desc: '',
      args: [],
    );
  }

  /// `Cuisine`
  String get cuisine {
    return Intl.message(
      'Cuisine',
      name: 'cuisine',
      desc: '',
      args: [],
    );
  }

  /// `Add Pre-order`
  String get addPreOrder {
    return Intl.message(
      'Add Pre-order',
      name: 'addPreOrder',
      desc: '',
      args: [],
    );
  }

  /// `Happy Customer`
  String get happyCustomer {
    return Intl.message(
      'Happy Customer',
      name: 'happyCustomer',
      desc: '',
      args: [],
    );
  }

  /// `Create your review now`
  String get createYourReviewNow {
    return Intl.message(
      'Create your review now',
      name: 'createYourReviewNow',
      desc: '',
      args: [],
    );
  }

  /// `Please specify the day & time of delivery`
  String get pleaseSpecifyTheDayTimeOfDelivery {
    return Intl.message(
      'Please specify the day & time of delivery',
      name: 'pleaseSpecifyTheDayTimeOfDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Day`
  String get day {
    return Intl.message(
      'Day',
      name: 'day',
      desc: '',
      args: [],
    );
  }

  /// `Time`
  String get time {
    return Intl.message(
      'Time',
      name: 'time',
      desc: '',
      args: [],
    );
  }

  /// `Delivery day`
  String get deliveryDay {
    return Intl.message(
      'Delivery day',
      name: 'deliveryDay',
      desc: '',
      args: [],
    );
  }

  /// `Delivery time`
  String get deliveryTime {
    return Intl.message(
      'Delivery time',
      name: 'deliveryTime',
      desc: '',
      args: [],
    );
  }

  /// `PM`
  String get pm {
    return Intl.message(
      'PM',
      name: 'pm',
      desc: '',
      args: [],
    );
  }

  /// `AM`
  String get am {
    return Intl.message(
      'AM',
      name: 'am',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue0 {
    return Intl.message(
      'Continue',
      name: 'continue0',
      desc: '',
      args: [],
    );
  }

  /// `What you wish to eat today?`
  String get whatYouWishToEatToday {
    return Intl.message(
      'What you wish to eat today?',
      name: 'whatYouWishToEatToday',
      desc: '',
      args: [],
    );
  }

  /// `Search for food`
  String get searchForFood {
    return Intl.message(
      'Search for food',
      name: 'searchForFood',
      desc: '',
      args: [],
    );
  }

  /// `Dish Name`
  String get dishName {
    return Intl.message(
      'Dish Name',
      name: 'dishName',
      desc: '',
      args: [],
    );
  }

  /// `Cuisines`
  String get cuisines {
    return Intl.message(
      'Cuisines',
      name: 'cuisines',
      desc: '',
      args: [],
    );
  }

  /// `Recent Search`
  String get recentSearch {
    return Intl.message(
      'Recent Search',
      name: 'recentSearch',
      desc: '',
      args: [],
    );
  }

  /// `Suggestions`
  String get suggestions {
    return Intl.message(
      'Suggestions',
      name: 'suggestions',
      desc: '',
      args: [],
    );
  }

  /// `Online Chefs`
  String get onlineChefs {
    return Intl.message(
      'Online Chefs',
      name: 'onlineChefs',
      desc: '',
      args: [],
    );
  }

  /// `Points`
  String get points {
    return Intl.message(
      'Points',
      name: 'points',
      desc: '',
      args: [],
    );
  }

  /// `Chefs`
  String get chefs {
    return Intl.message(
      'Chefs',
      name: 'chefs',
      desc: '',
      args: [],
    );
  }

  /// `Basket`
  String get basket {
    return Intl.message(
      'Basket',
      name: 'basket',
      desc: '',
      args: [],
    );
  }

  /// `Special request`
  String get specialRequest {
    return Intl.message(
      'Special request',
      name: 'specialRequest',
      desc: '',
      args: [],
    );
  }

  /// `Anything else we need to know?`
  String get anythingElseWeNeedToKnow {
    return Intl.message(
      'Anything else we need to know?',
      name: 'anythingElseWeNeedToKnow',
      desc: '',
      args: [],
    );
  }

  /// `Add a note`
  String get addANote {
    return Intl.message(
      'Add a note',
      name: 'addANote',
      desc: '',
      args: [],
    );
  }

  /// `Payment summary`
  String get paymentSummary {
    return Intl.message(
      'Payment summary',
      name: 'paymentSummary',
      desc: '',
      args: [],
    );
  }

  /// `Subtotal`
  String get subtotal {
    return Intl.message(
      'Subtotal',
      name: 'subtotal',
      desc: '',
      args: [],
    );
  }

  /// `Total amount`
  String get totalAmount {
    return Intl.message(
      'Total amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `Read more about fees`
  String get readMoreAboutFees {
    return Intl.message(
      'Read more about fees',
      name: 'readMoreAboutFees',
      desc: '',
      args: [],
    );
  }

  /// `Add foods`
  String get addFoods {
    return Intl.message(
      'Add foods',
      name: 'addFoods',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message(
      'Checkout',
      name: 'checkout',
      desc: '',
      args: [],
    );
  }

  /// `Pay with`
  String get payWith {
    return Intl.message(
      'Pay with',
      name: 'payWith',
      desc: '',
      args: [],
    );
  }

  /// `Debit/Credit Card`
  String get debitCreditCard {
    return Intl.message(
      'Debit/Credit Card',
      name: 'debitCreditCard',
      desc: '',
      args: [],
    );
  }

  /// `Wallet`
  String get wallet {
    return Intl.message(
      'Wallet',
      name: 'wallet',
      desc: '',
      args: [],
    );
  }

  /// `Paypal`
  String get paypal {
    return Intl.message(
      'Paypal',
      name: 'paypal',
      desc: '',
      args: [],
    );
  }

  /// `Save on your order`
  String get saveOnYourOrder {
    return Intl.message(
      'Save on your order',
      name: 'saveOnYourOrder',
      desc: '',
      args: [],
    );
  }

  /// `Enter voucher code`
  String get enterVoucherCode {
    return Intl.message(
      'Enter voucher code',
      name: 'enterVoucherCode',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit {
    return Intl.message(
      'Submit',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Disclaimer`
  String get disclaimer {
    return Intl.message(
      'Disclaimer',
      name: 'disclaimer',
      desc: '',
      args: [],
    );
  }

  /// `Place order`
  String get placeOrder {
    return Intl.message(
      'Place order',
      name: 'placeOrder',
      desc: '',
      args: [],
    );
  }

  /// `Add Card details`
  String get addCardDetails {
    return Intl.message(
      'Add Card details',
      name: 'addCardDetails',
      desc: '',
      args: [],
    );
  }

  /// `Pay`
  String get pay {
    return Intl.message(
      'Pay',
      name: 'pay',
      desc: '',
      args: [],
    );
  }

  /// `Card number`
  String get cardNumber {
    return Intl.message(
      'Card number',
      name: 'cardNumber',
      desc: '',
      args: [],
    );
  }

  /// `Expiry date (mm/yy)`
  String get expiryDateMMYY {
    return Intl.message(
      'Expiry date (mm/yy)',
      name: 'expiryDateMMYY',
      desc: '',
      args: [],
    );
  }

  /// `Security code`
  String get securityCode {
    return Intl.message(
      'Security code',
      name: 'securityCode',
      desc: '',
      args: [],
    );
  }

  /// `Save credit card details`
  String get saveCreditCardDetails {
    return Intl.message(
      'Save credit card details',
      name: 'saveCreditCardDetails',
      desc: '',
      args: [],
    );
  }

  /// `Secure payment with SSL Encryption info`
  String get securePaymentWithSSLEncryptionInfo {
    return Intl.message(
      'Secure payment with SSL Encryption info',
      name: 'securePaymentWithSSLEncryptionInfo',
      desc: '',
      args: [],
    );
  }

  /// `Pay By Paypal`
  String get payByPaypal {
    return Intl.message(
      'Pay By Paypal',
      name: 'payByPaypal',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get orderStatus {
    return Intl.message(
      'Order Status',
      name: 'orderStatus',
      desc: '',
      args: [],
    );
  }

  /// `Invoice`
  String get invoice {
    return Intl.message(
      'Invoice',
      name: 'invoice',
      desc: '',
      args: [],
    );
  }

  /// `Preparing Order`
  String get preparingOrder {
    return Intl.message(
      'Preparing Order',
      name: 'preparingOrder',
      desc: '',
      args: [],
    );
  }

  /// `On The Way`
  String get onTheWay {
    return Intl.message(
      'On The Way',
      name: 'onTheWay',
      desc: '',
      args: [],
    );
  }

  /// `Tracking`
  String get tracking {
    return Intl.message(
      'Tracking',
      name: 'tracking',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Delivery`
  String get confirmDelivery {
    return Intl.message(
      'Confirm Delivery',
      name: 'confirmDelivery',
      desc: '',
      args: [],
    );
  }

  /// `Arrives In`
  String get arrivesIn {
    return Intl.message(
      'Arrives In',
      name: 'arrivesIn',
      desc: '',
      args: [],
    );
  }

  /// `Minutes`
  String get minutes {
    return Intl.message(
      'Minutes',
      name: 'minutes',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get orderDetails {
    return Intl.message(
      'Order Details',
      name: 'orderDetails',
      desc: '',
      args: [],
    );
  }

  /// `Your orders`
  String get yourOrders {
    return Intl.message(
      'Your orders',
      name: 'yourOrders',
      desc: '',
      args: [],
    );
  }

  /// `Offers`
  String get offers {
    return Intl.message(
      'Offers',
      name: 'offers',
      desc: '',
      args: [],
    );
  }

  /// `Vouchers`
  String get vouchers {
    return Intl.message(
      'Vouchers',
      name: 'vouchers',
      desc: '',
      args: [],
    );
  }

  /// `Your wallet`
  String get yourWallet {
    return Intl.message(
      'Your wallet',
      name: 'yourWallet',
      desc: '',
      args: [],
    );
  }

  /// `Contract`
  String get contract {
    return Intl.message(
      'Contract',
      name: 'contract',
      desc: '',
      args: [],
    );
  }

  /// `Profile Settings`
  String get profileSettings {
    return Intl.message(
      'Profile Settings',
      name: 'profileSettings',
      desc: '',
      args: [],
    );
  }

  /// `No Access To Dail System!`
  String get noAccessToDailSystem {
    return Intl.message(
      'No Access To Dail System!',
      name: 'noAccessToDailSystem',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message(
      'Add',
      name: 'add',
      desc: '',
      args: [],
    );
  }

  /// `Shipping fee`
  String get shippingFee {
    return Intl.message(
      'Shipping fee',
      name: 'shippingFee',
      desc: '',
      args: [],
    );
  }

  /// `Delivery in`
  String get deliveryIn {
    return Intl.message(
      'Delivery in',
      name: 'deliveryIn',
      desc: '',
      args: [],
    );
  }

  /// `Km`
  String get km {
    return Intl.message(
      'Km',
      name: 'km',
      desc: '',
      args: [],
    );
  }

  /// `Nutritional value per 100g`
  String get nutritionalValuePer100g {
    return Intl.message(
      'Nutritional value per 100g',
      name: 'nutritionalValuePer100g',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get reviews {
    return Intl.message(
      'Reviews',
      name: 'reviews',
      desc: '',
      args: [],
    );
  }

  /// `Meals`
  String get meals {
    return Intl.message(
      'Meals',
      name: 'meals',
      desc: '',
      args: [],
    );
  }

  /// `Chef Menu`
  String get chefMenu {
    return Intl.message(
      'Chef Menu',
      name: 'chefMenu',
      desc: '',
      args: [],
    );
  }

  /// `Delivery`
  String get delivery {
    return Intl.message(
      'Delivery',
      name: 'delivery',
      desc: '',
      args: [],
    );
  }

  /// `Order created successfully`
  String get orderCreatedSuccessfully {
    return Intl.message(
      'Order created successfully',
      name: 'orderCreatedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Hour`
  String get hour {
    return Intl.message(
      'Hour',
      name: 'hour',
      desc: '',
      args: [],
    );
  }

  /// `Chef Cuisines`
  String get chefCuisines {
    return Intl.message(
      'Chef Cuisines',
      name: 'chefCuisines',
      desc: '',
      args: [],
    );
  }

  /// `Hello`
  String get hello {
    return Intl.message(
      'Hello',
      name: 'hello',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your location or allow access to your location to ﬁnd Chef near you.`
  String
      get pleaseEnterYourLocationOrAllowAccessToYourLocationToFindChefsNearYou {
    return Intl.message(
      'Please enter your location or allow access to your location to ﬁnd Chef near you.',
      name:
          'pleaseEnterYourLocationOrAllowAccessToYourLocationToFindChefsNearYou',
      desc: '',
      args: [],
    );
  }

  /// `Use Current Location`
  String get useCurrentLocation {
    return Intl.message(
      'Use Current Location',
      name: 'useCurrentLocation',
      desc: '',
      args: [],
    );
  }

  /// `Search or enter an address`
  String get searchOrEnterAnAddress {
    return Intl.message(
      'Search or enter an address',
      name: 'searchOrEnterAnAddress',
      desc: '',
      args: [],
    );
  }

  /// `Confirm location`
  String get confirmLocation {
    return Intl.message(
      'Confirm location',
      name: 'confirmLocation',
      desc: '',
      args: [],
    );
  }

  /// `Pick up only`
  String get pickUpOnly {
    return Intl.message(
      'Pick up only',
      name: 'pickUpOnly',
      desc: '',
      args: [],
    );
  }

  /// `My pre-order`
  String get myPreOrder {
    return Intl.message(
      'My pre-order',
      name: 'myPreOrder',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get available {
    return Intl.message(
      'Available',
      name: 'available',
      desc: '',
      args: [],
    );
  }

  /// `Orders`
  String get orders {
    return Intl.message(
      'Orders',
      name: 'orders',
      desc: '',
      args: [],
    );
  }

  /// `Accept`
  String get accept {
    return Intl.message(
      'Accept',
      name: 'accept',
      desc: '',
      args: [],
    );
  }

  /// `New Order`
  String get newOrder {
    return Intl.message(
      'New Order',
      name: 'newOrder',
      desc: '',
      args: [],
    );
  }

  /// `New`
  String get new0 {
    return Intl.message(
      'New',
      name: 'new0',
      desc: '',
      args: [],
    );
  }

  /// `Received`
  String get received {
    return Intl.message(
      'Received',
      name: 'received',
      desc: '',
      args: [],
    );
  }

  /// `History`
  String get history {
    return Intl.message(
      'History',
      name: 'history',
      desc: '',
      args: [],
    );
  }

  /// `Start`
  String get start {
    return Intl.message(
      'Start',
      name: 'start',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending {
    return Intl.message(
      'Pending',
      name: 'pending',
      desc: '',
      args: [],
    );
  }

  /// `Finish`
  String get finish {
    return Intl.message(
      'Finish',
      name: 'finish',
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

  /// `You can now create your review.`
  String get youCanNowCreateYourReview {
    return Intl.message(
      'You can now create your review.',
      name: 'youCanNowCreateYourReview',
      desc: '',
      args: [],
    );
  }

  /// `The driver`
  String get theDriver {
    return Intl.message(
      'The driver',
      name: 'theDriver',
      desc: '',
      args: [],
    );
  }

  /// `The Chef`
  String get theChef {
    return Intl.message(
      'The Chef',
      name: 'theChef',
      desc: '',
      args: [],
    );
  }

  /// `Review`
  String get review {
    return Intl.message(
      'Review',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Review the driver`
  String get reviewTheDriver {
    return Intl.message(
      'Review the driver',
      name: 'reviewTheDriver',
      desc: '',
      args: [],
    );
  }

  /// `Review the Chef`
  String get reviewTheChef {
    return Intl.message(
      'Review the Chef',
      name: 'reviewTheChef',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for your review.`
  String get thankYouForYourReview {
    return Intl.message(
      'Thank you for your review.',
      name: 'thankYouForYourReview',
      desc: '',
      args: [],
    );
  }

  /// `confirm Pick Up`
  String get confirmPickUp {
    return Intl.message(
      'confirm Pick Up',
      name: 'confirmPickUp',
      desc: '',
      args: [],
    );
  }

  /// `Order Deleted Successfully`
  String get orderDeletedSuccessfully {
    return Intl.message(
      'Order Deleted Successfully',
      name: 'orderDeletedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Wait`
  String get wait {
    return Intl.message(
      'Wait',
      name: 'wait',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for waiting`
  String get thankYouForWaiting {
    return Intl.message(
      'Thank you for waiting',
      name: 'thankYouForWaiting',
      desc: '',
      args: [],
    );
  }

  /// `Order Canceled`
  String get orderCanceled {
    return Intl.message(
      'Order Canceled',
      name: 'orderCanceled',
      desc: '',
      args: [],
    );
  }

  /// `Client Received`
  String get clientReceived {
    return Intl.message(
      'Client Received',
      name: 'clientReceived',
      desc: '',
      args: [],
    );
  }

  /// `Basket Created`
  String get basketCreated {
    return Intl.message(
      'Basket Created',
      name: 'basketCreated',
      desc: '',
      args: [],
    );
  }

  /// `Basket Updated`
  String get basketUpdated {
    return Intl.message(
      'Basket Updated',
      name: 'basketUpdated',
      desc: '',
      args: [],
    );
  }

  /// `Order Created`
  String get OrderCreated {
    return Intl.message(
      'Order Created',
      name: 'OrderCreated',
      desc: '',
      args: [],
    );
  }

  /// `Basket Deleted`
  String get basketDeleted {
    return Intl.message(
      'Basket Deleted',
      name: 'basketDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Api Error`
  String get apiError {
    return Intl.message(
      'Api Error',
      name: 'apiError',
      desc: '',
      args: [],
    );
  }

  /// `Your order send to saved location`
  String get yourOrderSendToSavedLocation {
    return Intl.message(
      'Your order send to saved location',
      name: 'yourOrderSendToSavedLocation',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to continue?`
  String get doYouWantToContinue {
    return Intl.message(
      'Do you want to continue?',
      name: 'doYouWantToContinue',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get change {
    return Intl.message(
      'Change',
      name: 'change',
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

  /// `Your order will be cancelled`
  String get yourOrderWillBeCancelled {
    return Intl.message(
      'Your order will be cancelled',
      name: 'yourOrderWillBeCancelled',
      desc: '',
      args: [],
    );
  }

  /// `Schedule Date`
  String get scheduleDate {
    return Intl.message(
      'Schedule Date',
      name: 'scheduleDate',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Basket Expired And Will Be Deleted`
  String get basketExpiredAndWillBeDeleted {
    return Intl.message(
      'Basket Expired And Will Be Deleted',
      name: 'basketExpiredAndWillBeDeleted',
      desc: '',
      args: [],
    );
  }

  /// `Hygiene certified`
  String get hygieneCertified {
    return Intl.message(
      'Hygiene certified',
      name: 'hygieneCertified',
      desc: '',
      args: [],
    );
  }

  /// `Chef`
  String get chef {
    return Intl.message(
      'Chef',
      name: 'chef',
      desc: '',
      args: [],
    );
  }

  /// `Driver`
  String get driver {
    return Intl.message(
      'Driver',
      name: 'driver',
      desc: '',
      args: [],
    );
  }

  /// `image size 640x480`
  String get maxImageSize {
    return Intl.message(
      'image size 640x480',
      name: 'maxImageSize',
      desc: '',
      args: [],
    );
  }

  /// `You have`
  String get youHave {
    return Intl.message(
      'You have',
      name: 'youHave',
      desc: '',
      args: [],
    );
  }

  /// `Cards`
  String get cards {
    return Intl.message(
      'Cards',
      name: 'cards',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline {
    return Intl.message(
      'Offline',
      name: 'offline',
      desc: '',
      args: [],
    );
  }

  /// `Current Domain`
  String get currentDomain {
    return Intl.message(
      'Current Domain',
      name: 'currentDomain',
      desc: '',
      args: [],
    );
  }

  /// `Domain`
  String get domain {
    return Intl.message(
      'Domain',
      name: 'domain',
      desc: '',
      args: [],
    );
  }

  /// `Reset`
  String get reset {
    return Intl.message(
      'Reset',
      name: 'reset',
      desc: '',
      args: [],
    );
  }

  /// `Rate Order`
  String get rateOrder {
    return Intl.message(
      'Rate Order',
      name: 'rateOrder',
      desc: '',
      args: [],
    );
  }

  /// `Online`
  String get online {
    return Intl.message(
      'Online',
      name: 'online',
      desc: '',
      args: [],
    );
  }

  /// `Chef Address`
  String get chefAddress {
    return Intl.message(
      'Chef Address',
      name: 'chefAddress',
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

  /// `To receive orders chang your status to online`
  String get toReceiveOrdersChangYourStatusToOnline {
    return Intl.message(
      'To receive orders chang your status to online',
      name: 'toReceiveOrdersChangYourStatusToOnline',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to logout?`
  String get areYouSureYouWantToLogout {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'areYouSureYouWantToLogout',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to leave?`
  String get areYouSureYouWantToLeave {
    return Intl.message(
      'Are you sure you want to leave?',
      name: 'areYouSureYouWantToLeave',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Leave`
  String get leave {
    return Intl.message(
      'Leave',
      name: 'leave',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Location`
  String get pleaseSelectLocation {
    return Intl.message(
      'Please Select Location',
      name: 'pleaseSelectLocation',
      desc: '',
      args: [],
    );
  }

  /// `Invoice Tax`
  String get invoiceTax {
    return Intl.message(
      'Invoice Tax',
      name: 'invoiceTax',
      desc: '',
      args: [],
    );
  }

  /// `Calculation Error`
  String get calculationError {
    return Intl.message(
      'Calculation Error',
      name: 'calculationError',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message(
      'Discount',
      name: 'discount',
      desc: '',
      args: [],
    );
  }

  /// `Stripe Error`
  String get stripeError {
    return Intl.message(
      'Stripe Error',
      name: 'stripeError',
      desc: '',
      args: [],
    );
  }

  /// `Canceled`
  String get canceled {
    return Intl.message(
      'Canceled',
      name: 'canceled',
      desc: '',
      args: [],
    );
  }

  /// `ع`
  String get appLang {
    return Intl.message(
      'ع',
      name: 'appLang',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message(
      'Verify',
      name: 'verify',
      desc: '',
      args: [],
    );
  }

  /// `OTP Verification`
  String get otpVerification {
    return Intl.message(
      'OTP Verification',
      name: 'otpVerification',
      desc: '',
      args: [],
    );
  }

  /// `Enter the OTP sent to`
  String get enterOTPSentTo {
    return Intl.message(
      'Enter the OTP sent to',
      name: 'enterOTPSentTo',
      desc: '',
      args: [],
    );
  }

  /// `Didn''t receive an OTP?`
  String get didntReceiveAnOTP {
    return Intl.message(
      'Didn\'\'t receive an OTP?',
      name: 'didntReceiveAnOTP',
      desc: '',
      args: [],
    );
  }

  /// `Resend OTP`
  String get resendOTP {
    return Intl.message(
      'Resend OTP',
      name: 'resendOTP',
      desc: '',
      args: [],
    );
  }

  /// `Verify & Proceed`
  String get verifyProceed {
    return Intl.message(
      'Verify & Proceed',
      name: 'verifyProceed',
      desc: '',
      args: [],
    );
  }

  /// `Failed verify OTP. Try again!`
  String get failedverifyOTPTryagain {
    return Intl.message(
      'Failed verify OTP. Try again!',
      name: 'failedverifyOTPTryagain',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get next {
    return Intl.message(
      'Next',
      name: 'next',
      desc: '',
      args: [],
    );
  }

  /// `Get OTP`
  String get getOTP {
    return Intl.message(
      'Get OTP',
      name: 'getOTP',
      desc: '',
      args: [],
    );
  }

  /// `Enter Mobile Number`
  String get enterMobileNumber {
    return Intl.message(
      'Enter Mobile Number',
      name: 'enterMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enterYourPhoneNumber {
    return Intl.message(
      'Enter your phone number',
      name: 'enterYourPhoneNumber',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Mobile Number`
  String get invalidMobileNumber {
    return Intl.message(
      'Invalid Mobile Number',
      name: 'invalidMobileNumber',
      desc: '',
      args: [],
    );
  }

  /// `Please Wait`
  String get pleaseWait {
    return Intl.message(
      'Please Wait',
      name: 'pleaseWait',
      desc: '',
      args: [],
    );
  }

  /// `First, you should complete your profile`
  String get firstYouShouldCompleteYourProfile {
    return Intl.message(
      'First, you should complete your profile',
      name: 'firstYouShouldCompleteYourProfile',
      desc: '',
      args: [],
    );
  }

  /// `Your Menu`
  String get yourMenu {
    return Intl.message(
      'Your Menu',
      name: 'yourMenu',
      desc: '',
      args: [],
    );
  }

  /// `Secondly, add your meals on menu and schedule it`
  String get secondlyAddYourMealsOnMenuAndScheduleIt {
    return Intl.message(
      'Secondly, add your meals on menu and schedule it',
      name: 'secondlyAddYourMealsOnMenuAndScheduleIt',
      desc: '',
      args: [],
    );
  }

  /// `Third, attach your documents`
  String get thirdAttachYourDocuments {
    return Intl.message(
      'Third, attach your documents',
      name: 'thirdAttachYourDocuments',
      desc: '',
      args: [],
    );
  }

  /// `You have not uploaded the following documents`
  String get youHaveNotUploadedTheFollowingDocuments {
    return Intl.message(
      'You have not uploaded the following documents',
      name: 'youHaveNotUploadedTheFollowingDocuments',
      desc: '',
      args: [],
    );
  }

  /// `Get Approval`
  String get getApproval {
    return Intl.message(
      'Get Approval',
      name: 'getApproval',
      desc: '',
      args: [],
    );
  }

  /// `Then, waiting for approval within 72 hours`
  String get thenWaitingForApprovalWithin72Hours {
    return Intl.message(
      'Then, waiting for approval within 72 hours',
      name: 'thenWaitingForApprovalWithin72Hours',
      desc: '',
      args: [],
    );
  }

  /// `Waiting for approval within 72 hours...`
  String get waitingforapprovalWithin72Hours {
    return Intl.message(
      'Waiting for approval within 72 hours...',
      name: 'waitingforapprovalWithin72Hours',
      desc: '',
      args: [],
    );
  }

  /// `Your application has been approved`
  String get yourApplicationHasBeenApproved {
    return Intl.message(
      'Your application has been approved',
      name: 'yourApplicationHasBeenApproved',
      desc: '',
      args: [],
    );
  }

  /// `Your Contract has been approved`
  String get yourContractHasBeenApproved {
    return Intl.message(
      'Your Contract has been approved',
      name: 'yourContractHasBeenApproved',
      desc: '',
      args: [],
    );
  }

  /// `Get Contract`
  String get getContract {
    return Intl.message(
      'Get Contract',
      name: 'getContract',
      desc: '',
      args: [],
    );
  }

  /// `Fourth, download the contract to sign and upload it`
  String get fourthDownloadTheContractToSignAndUploadIt {
    return Intl.message(
      'Fourth, download the contract to sign and upload it',
      name: 'fourthDownloadTheContractToSignAndUploadIt',
      desc: '',
      args: [],
    );
  }

  /// `Contract Approval`
  String get contractApproval {
    return Intl.message(
      'Contract Approval',
      name: 'contractApproval',
      desc: '',
      args: [],
    );
  }

  /// `Finally, waiting for approval within 72 hours`
  String get finallyWaitingForApprovalWithin72Hours {
    return Intl.message(
      'Finally, waiting for approval within 72 hours',
      name: 'finallyWaitingForApprovalWithin72Hours',
      desc: '',
      args: [],
    );
  }

  /// `Your Rides`
  String get yourRides {
    return Intl.message(
      'Your Rides',
      name: 'yourRides',
      desc: '',
      args: [],
    );
  }

  /// `Secondly, add your vechile type and schedule your working days`
  String get secondlyAddYourVechileTypeAndScheduleYourWorkingDays {
    return Intl.message(
      'Secondly, add your vechile type and schedule your working days',
      name: 'secondlyAddYourVechileTypeAndScheduleYourWorkingDays',
      desc: '',
      args: [],
    );
  }

  /// `You should create your own menu`
  String get youShouldCreateYourOwnMenu {
    return Intl.message(
      'You should create your own menu',
      name: 'youShouldCreateYourOwnMenu',
      desc: '',
      args: [],
    );
  }

  /// `Now`
  String get now {
    return Intl.message(
      'Now',
      name: 'now',
      desc: '',
      args: [],
    );
  }

  /// `You should schedule at least two working days with at least two hours each.`
  String get youShouldScheduleAtLeastTwoWorkingDaysWithAtLeastTwoHoursEach {
    return Intl.message(
      'You should schedule at least two working days with at least two hours each.',
      name: 'youShouldScheduleAtLeastTwoWorkingDaysWithAtLeastTwoHoursEach',
      desc: '',
      args: [],
    );
  }

  /// `START`
  String get scheduleStart {
    return Intl.message(
      'START',
      name: 'scheduleStart',
      desc: '',
      args: [],
    );
  }

  /// `End`
  String get scheduleEnd {
    return Intl.message(
      'End',
      name: 'scheduleEnd',
      desc: '',
      args: [],
    );
  }

  /// `Pick Start Time`
  String get pickStartTime {
    return Intl.message(
      'Pick Start Time',
      name: 'pickStartTime',
      desc: '',
      args: [],
    );
  }

  /// `Pick End Time`
  String get pickEndTime {
    return Intl.message(
      'Pick End Time',
      name: 'pickEndTime',
      desc: '',
      args: [],
    );
  }

  /// `Start time must be at least 2 hours before end time`
  String get startTimeMustBeAtLeast2HoursBeforeEndTime {
    return Intl.message(
      'Start time must be at least 2 hours before end time',
      name: 'startTimeMustBeAtLeast2HoursBeforeEndTime',
      desc: '',
      args: [],
    );
  }

  /// `End time must be at least 2 hours after start time`
  String get endTimeMustBeAtLeast2HoursAfterStartTime {
    return Intl.message(
      'End time must be at least 2 hours after start time',
      name: 'endTimeMustBeAtLeast2HoursAfterStartTime',
      desc: '',
      args: [],
    );
  }

  /// `SAT`
  String get saturdayPrev {
    return Intl.message(
      'SAT',
      name: 'saturdayPrev',
      desc: '',
      args: [],
    );
  }

  /// `SUN`
  String get sundayPrev {
    return Intl.message(
      'SUN',
      name: 'sundayPrev',
      desc: '',
      args: [],
    );
  }

  /// `MON`
  String get mondayPrev {
    return Intl.message(
      'MON',
      name: 'mondayPrev',
      desc: '',
      args: [],
    );
  }

  /// `TUE`
  String get tuesdayPrev {
    return Intl.message(
      'TUE',
      name: 'tuesdayPrev',
      desc: '',
      args: [],
    );
  }

  /// `WED`
  String get wednesdayPrev {
    return Intl.message(
      'WED',
      name: 'wednesdayPrev',
      desc: '',
      args: [],
    );
  }

  /// `THU`
  String get thursdayPrev {
    return Intl.message(
      'THU',
      name: 'thursdayPrev',
      desc: '',
      args: [],
    );
  }

  /// `FRI`
  String get fridayPrev {
    return Intl.message(
      'FRI',
      name: 'fridayPrev',
      desc: '',
      args: [],
    );
  }

  /// `Download`
  String get download {
    return Intl.message(
      'Download',
      name: 'download',
      desc: '',
      args: [],
    );
  }

  /// `Documents`
  String get documents {
    return Intl.message(
      'Documents',
      name: 'documents',
      desc: '',
      args: [],
    );
  }

  /// `Disconnected`
  String get disconnected {
    return Intl.message(
      'Disconnected',
      name: 'disconnected',
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
