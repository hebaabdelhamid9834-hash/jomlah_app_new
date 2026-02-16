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

class AppLocalizations {
  AppLocalizations();

  static AppLocalizations? _current;

  static AppLocalizations get current {
    assert(
      _current != null,
      'No instance of AppLocalizations was loaded. Try to initialize the AppLocalizations delegate before accessing AppLocalizations.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<AppLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = AppLocalizations();
      AppLocalizations._current = instance;

      return instance;
    });
  }

  static AppLocalizations of(BuildContext context) {
    final instance = AppLocalizations.maybeOf(context);
    assert(
      instance != null,
      'No instance of AppLocalizations present in the widget tree. Did you add AppLocalizations.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static AppLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// ``
  String get auction_product_screen_ {
    return Intl.message(
      '',
      name: 'auction_product_screen_',
      desc: '',
      args: [],
    );
  }

  /// `Auction Products`
  String get auction_product_ucf {
    return Intl.message(
      'Auction Products',
      name: 'auction_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Auction Product`
  String get auction_product_screen_title {
    return Intl.message(
      'Auction Product',
      name: 'auction_product_screen_title',
      desc: '',
      args: [],
    );
  }

  /// `All Bidded Products`
  String get all_bidded_products {
    return Intl.message(
      'All Bidded Products',
      name: 'all_bidded_products',
      desc: '',
      args: [],
    );
  }

  /// `Auction Purchase History`
  String get auction_purchase_history_ucf {
    return Intl.message(
      'Auction Purchase History',
      name: 'auction_purchase_history_ucf',
      desc: '',
      args: [],
    );
  }

  /// `My Bid`
  String get auction_my_bid_ucf {
    return Intl.message(
      'My Bid',
      name: 'auction_my_bid_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Highest Bid`
  String get auction_highest_bid_ucf {
    return Intl.message(
      'Highest Bid',
      name: 'auction_highest_bid_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Auction Orders`
  String get auction_order_ucf {
    return Intl.message(
      'Auction Orders',
      name: 'auction_order_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Start Date`
  String get auction_start_date_ucf {
    return Intl.message(
      'Start Date',
      name: 'auction_start_date_ucf',
      desc: '',
      args: [],
    );
  }

  /// `End Date`
  String get auction_end_date_ucf {
    return Intl.message(
      'End Date',
      name: 'auction_end_date_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Total Bids`
  String get auction_total_bids_ucf {
    return Intl.message(
      'Total Bids',
      name: 'auction_total_bids_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get auction_price_ucf {
    return Intl.message('Price', name: 'auction_price_ucf', desc: '', args: []);
  }

  /// `View All Bids`
  String get auction_view_bids_ucf {
    return Intl.message(
      'View All Bids',
      name: 'auction_view_bids_ucf',
      desc: '',
      args: [],
    );
  }

  /// `All Bids`
  String get auction_all_bids_ucf {
    return Intl.message(
      'All Bids',
      name: 'auction_all_bids_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Bidding Price + Date Range`
  String get auction_biding_price_date_range_ucf {
    return Intl.message(
      'Product Bidding Price + Date Range',
      name: 'auction_biding_price_date_range_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Starting bidding price`
  String get auction_starting_bid_price_ucf {
    return Intl.message(
      'Starting bidding price',
      name: 'auction_starting_bid_price_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Auction Date Range`
  String get auction_date_range_ucf {
    return Intl.message(
      'Auction Date Range',
      name: 'auction_date_range_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Auction Will End`
  String get auction_will_end {
    return Intl.message(
      'Auction Will End',
      name: 'auction_will_end',
      desc: '',
      args: [],
    );
  }

  /// `Starting Bid`
  String get starting_bid_ucf {
    return Intl.message(
      'Starting Bid',
      name: 'starting_bid_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Highest Bid`
  String get highest_bid_ucf {
    return Intl.message(
      'Highest Bid',
      name: 'highest_bid_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Place Bid`
  String get place_bid_ucf {
    return Intl.message('Place Bid', name: 'place_bid_ucf', desc: '', args: []);
  }

  /// `Change Bid`
  String get change_bid_ucf {
    return Intl.message(
      'Change Bid',
      name: 'change_bid_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to mark this as delivered ?`
  String get are_you_sure_to_mark_this_as_delivered {
    return Intl.message(
      'Are you sure to mark this as delivered ?',
      name: 'are_you_sure_to_mark_this_as_delivered',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to mark this as picked up ?`
  String get are_you_sure_to_mark_this_as_picked_up {
    return Intl.message(
      'Are you sure to mark this as picked up ?',
      name: 'are_you_sure_to_mark_this_as_picked_up',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to request cancellation ?`
  String get are_you_sure_to_request_cancellation {
    return Intl.message(
      'Are you sure to request cancellation ?',
      name: 'are_you_sure_to_request_cancellation',
      desc: '',
      args: [],
    );
  }

  /// `Enter Address`
  String get enter_address_ucf {
    return Intl.message(
      'Enter Address',
      name: 'enter_address_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Back to shipping info`
  String get back_to_shipping_info {
    return Intl.message(
      'Back to shipping info',
      name: 'back_to_shipping_info',
      desc: '',
      args: [],
    );
  }

  /// `Select a city`
  String get select_a_city {
    return Intl.message(
      'Select a city',
      name: 'select_a_city',
      desc: '',
      args: [],
    );
  }

  /// `Select a state`
  String get select_a_state {
    return Intl.message(
      'Select a state',
      name: 'select_a_state',
      desc: '',
      args: [],
    );
  }

  /// `Select a country`
  String get select_a_country {
    return Intl.message(
      'Select a country',
      name: 'select_a_country',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get address_ucf {
    return Intl.message('Address', name: 'address_ucf', desc: '', args: []);
  }

  /// `City`
  String get city_ucf {
    return Intl.message('City', name: 'city_ucf', desc: '', args: []);
  }

  /// `Enter City`
  String get enter_city_ucf {
    return Intl.message(
      'Enter City',
      name: 'enter_city_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code`
  String get postal_code_ucf {
    return Intl.message(
      'Postal Code',
      name: 'postal_code_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Enter Postal Code`
  String get enter_postal_code_ucf {
    return Intl.message(
      'Enter Postal Code',
      name: 'enter_postal_code_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Country`
  String get country_ucf {
    return Intl.message('Country', name: 'country_ucf', desc: '', args: []);
  }

  /// `Enter Country`
  String get enter_country_ucf {
    return Intl.message(
      'Enter Country',
      name: 'enter_country_ucf',
      desc: '',
      args: [],
    );
  }

  /// `State`
  String get state_ucf {
    return Intl.message('State', name: 'state_ucf', desc: '', args: []);
  }

  /// `Enter State`
  String get enter_state_ucf {
    return Intl.message(
      'Enter State',
      name: 'enter_state_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Phone`
  String get phone_ucf {
    return Intl.message('Phone', name: 'phone_ucf', desc: '', args: []);
  }

  /// `Enter Phone`
  String get enter_phone_ucf {
    return Intl.message(
      'Enter Phone',
      name: 'enter_phone_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to remove this address ?`
  String get are_you_sure_to_remove_this_address {
    return Intl.message(
      'Are you sure to remove this address ?',
      name: 'are_you_sure_to_remove_this_address',
      desc: '',
      args: [],
    );
  }

  /// `Addresses of user`
  String get addresses_of_user {
    return Intl.message(
      'Addresses of user',
      name: 'addresses_of_user',
      desc: '',
      args: [],
    );
  }

  /// `Double tap on an address to make it default`
  String get double_tap_on_an_address_to_make_it_default {
    return Intl.message(
      'Double tap on an address to make it default',
      name: 'double_tap_on_an_address_to_make_it_default',
      desc: '',
      args: [],
    );
  }

  /// `No country available`
  String get no_country_available {
    return Intl.message(
      'No country available',
      name: 'no_country_available',
      desc: '',
      args: [],
    );
  }

  /// `No state available`
  String get no_state_available {
    return Intl.message(
      'No state available',
      name: 'no_state_available',
      desc: '',
      args: [],
    );
  }

  /// `No city available`
  String get no_city_available {
    return Intl.message(
      'No city available',
      name: 'no_city_available',
      desc: '',
      args: [],
    );
  }

  /// `Loading Countries ...`
  String get loading_countries_ucf {
    return Intl.message(
      'Loading Countries ...',
      name: 'loading_countries_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading States ...`
  String get loading_states_ucf {
    return Intl.message(
      'Loading States ...',
      name: 'loading_states_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading Cities ...`
  String get loading_cities_ucf {
    return Intl.message(
      'Loading Cities ...',
      name: 'loading_cities_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Select a country first`
  String get select_a_country_first {
    return Intl.message(
      'Select a country first',
      name: 'select_a_country_first',
      desc: '',
      args: [],
    );
  }

  /// `Select a state first`
  String get select_a_state_first {
    return Intl.message(
      'Select a state first',
      name: 'select_a_state_first',
      desc: '',
      args: [],
    );
  }

  /// `Edit`
  String get edit_ucf {
    return Intl.message('Edit', name: 'edit_ucf', desc: '', args: []);
  }

  /// `Delete`
  String get delete_ucf {
    return Intl.message('Delete', name: 'delete_ucf', desc: '', args: []);
  }

  /// `Add Location`
  String get add_location_ucf {
    return Intl.message(
      'Add Location',
      name: 'add_location_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Assigned`
  String get assigned {
    return Intl.message('Assigned', name: 'assigned', desc: '', args: []);
  }

  /// `Amount to Collect`
  String get amount_to_Collect_ucf {
    return Intl.message(
      'Amount to Collect',
      name: 'amount_to_Collect_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Account Delete`
  String get account_delete_ucf {
    return Intl.message(
      'Account Delete',
      name: 'account_delete_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Fetching bkash url ...`
  String get fetching_bkash_url {
    return Intl.message(
      'Fetching bkash url ...',
      name: 'fetching_bkash_url',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Bkash`
  String get pay_with_bkash {
    return Intl.message(
      'Pay with Bkash',
      name: 'pay_with_bkash',
      desc: '',
      args: [],
    );
  }

  /// `Search products here...`
  String get search_product_here {
    return Intl.message(
      'Search products here...',
      name: 'search_product_here',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete it?`
  String get do_you_want_to_delete_it {
    return Intl.message(
      'Do you want to delete it?',
      name: 'do_you_want_to_delete_it',
      desc: '',
      args: [],
    );
  }

  /// `You need to log in`
  String get you_need_to_log_in {
    return Intl.message(
      'You need to log in',
      name: 'you_need_to_log_in',
      desc: '',
      args: [],
    );
  }

  /// `Please choose valid info`
  String get please_choose_valid_info {
    return Intl.message(
      'Please choose valid info',
      name: 'please_choose_valid_info',
      desc: '',
      args: [],
    );
  }

  /// `Nothing to pay`
  String get nothing_to_pay {
    return Intl.message(
      'Nothing to pay',
      name: 'nothing_to_pay',
      desc: '',
      args: [],
    );
  }

  /// `see details`
  String get see_details_all_lower {
    return Intl.message(
      'see details',
      name: 'see_details_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `No payment method is added`
  String get no_payment_method_is_added {
    return Intl.message(
      'No payment method is added',
      name: 'no_payment_method_is_added',
      desc: '',
      args: [],
    );
  }

  /// `Please choose one option to pay`
  String get please_choose_one_option_to_pay {
    return Intl.message(
      'Please choose one option to pay',
      name: 'please_choose_one_option_to_pay',
      desc: '',
      args: [],
    );
  }

  /// `No data is available`
  String get no_data_is_available {
    return Intl.message(
      'No data is available',
      name: 'no_data_is_available',
      desc: '',
      args: [],
    );
  }

  /// `No Addresses is added`
  String get no_address_is_added {
    return Intl.message(
      'No Addresses is added',
      name: 'no_address_is_added',
      desc: '',
      args: [],
    );
  }

  /// `Add new  addresses`
  String get add_new_address {
    return Intl.message(
      'Add new  addresses',
      name: 'add_new_address',
      desc: '',
      args: [],
    );
  }

  /// `Loading More Products ...`
  String get loading_more_products_ucf {
    return Intl.message(
      'Loading More Products ...',
      name: 'loading_more_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Products`
  String get no_more_products_ucf {
    return Intl.message(
      'No More Products',
      name: 'no_more_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No product is available`
  String get no_product_is_available {
    return Intl.message(
      'No product is available',
      name: 'no_product_is_available',
      desc: '',
      args: [],
    );
  }

  /// `Loading More Brands ...`
  String get loading_more_brands_ucf {
    return Intl.message(
      'Loading More Brands ...',
      name: 'loading_more_brands_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Brands`
  String get no_more_brands_ucf {
    return Intl.message(
      'No More Brands',
      name: 'no_more_brands_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No brand is available`
  String get no_brand_is_available {
    return Intl.message(
      'No brand is available',
      name: 'no_brand_is_available',
      desc: '',
      args: [],
    );
  }

  /// `Loading More Items ...`
  String get loading_more_items_ucf {
    return Intl.message(
      'Loading More Items ...',
      name: 'loading_more_items_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Items`
  String get no_more_items_ucf {
    return Intl.message(
      'No More Items',
      name: 'no_more_items_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No item is available`
  String get no_item_is_available {
    return Intl.message(
      'No item is available',
      name: 'no_item_is_available',
      desc: '',
      args: [],
    );
  }

  /// `Loading More Shops ...`
  String get loading_more_shops_ucf {
    return Intl.message(
      'Loading More Shops ...',
      name: 'loading_more_shops_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Shops`
  String get no_more_shops_ucf {
    return Intl.message(
      'No More Shops',
      name: 'no_more_shops_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No shop is available`
  String get no_shop_is_available {
    return Intl.message(
      'No shop is available',
      name: 'no_shop_is_available',
      desc: '',
      args: [],
    );
  }

  /// `Loading More Histories ...`
  String get loading_more_histories_ucf {
    return Intl.message(
      'Loading More Histories ...',
      name: 'loading_more_histories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Histories`
  String get no_more_histories_ucf {
    return Intl.message(
      'No More Histories',
      name: 'no_more_histories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No history is available`
  String get no_history_is_available {
    return Intl.message(
      'No history is available',
      name: 'no_history_is_available',
      desc: '',
      args: [],
    );
  }

  /// `Loading More Categories ...`
  String get loading_more_categories_ucf {
    return Intl.message(
      'Loading More Categories ...',
      name: 'loading_more_categories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Categories`
  String get no_more_categories_ucf {
    return Intl.message(
      'No More Categories',
      name: 'no_more_categories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No category is available`
  String get no_category_is_available {
    return Intl.message(
      'No category is available',
      name: 'no_category_is_available',
      desc: '',
      args: [],
    );
  }

  /// `Coming soon`
  String get coming_soon {
    return Intl.message('Coming soon', name: 'coming_soon', desc: '', args: []);
  }

  /// `CLOSE`
  String get close_all_capital {
    return Intl.message('CLOSE', name: 'close_all_capital', desc: '', args: []);
  }

  /// `close`
  String get close_all_lower {
    return Intl.message('close', name: 'close_all_lower', desc: '', args: []);
  }

  /// `Close`
  String get close_ucf {
    return Intl.message('Close', name: 'close_ucf', desc: '', args: []);
  }

  /// `CANCEL`
  String get cancel_all_capital {
    return Intl.message(
      'CANCEL',
      name: 'cancel_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `cancel`
  String get cancel_all_lower {
    return Intl.message('cancel', name: 'cancel_all_lower', desc: '', args: []);
  }

  /// `Cancel`
  String get cancel_ucf {
    return Intl.message('Cancel', name: 'cancel_ucf', desc: '', args: []);
  }

  /// `CONFIRM`
  String get confirm_all_capital {
    return Intl.message(
      'CONFIRM',
      name: 'confirm_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `confirm`
  String get confirm_all_lower {
    return Intl.message(
      'confirm',
      name: 'confirm_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get confirm_ucf {
    return Intl.message('Confirm', name: 'confirm_ucf', desc: '', args: []);
  }

  /// `UPDATE`
  String get update_all_capital {
    return Intl.message(
      'UPDATE',
      name: 'update_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `update`
  String get update_all_lower {
    return Intl.message('update', name: 'update_all_lower', desc: '', args: []);
  }

  /// `Update`
  String get update_ucf {
    return Intl.message('Update', name: 'update_ucf', desc: '', args: []);
  }

  /// `SEND`
  String get send_all_capital {
    return Intl.message('SEND', name: 'send_all_capital', desc: '', args: []);
  }

  /// `send`
  String get send_all_lower {
    return Intl.message('send', name: 'send_all_lower', desc: '', args: []);
  }

  /// `Send`
  String get send_ucf {
    return Intl.message('Send', name: 'send_ucf', desc: '', args: []);
  }

  /// `CLEAR`
  String get clear_all_capital {
    return Intl.message('CLEAR', name: 'clear_all_capital', desc: '', args: []);
  }

  /// `clear`
  String get clear_all_lower {
    return Intl.message('clear', name: 'clear_all_lower', desc: '', args: []);
  }

  /// `Clear`
  String get clear_ucf {
    return Intl.message('Clear', name: 'clear_ucf', desc: '', args: []);
  }

  /// `APPLY`
  String get apply_all_capital {
    return Intl.message('APPLY', name: 'apply_all_capital', desc: '', args: []);
  }

  /// `apply`
  String get apply_all_lower {
    return Intl.message('apply', name: 'apply_all_lower', desc: '', args: []);
  }

  /// `Apply`
  String get apply_ucf {
    return Intl.message('Apply', name: 'apply_ucf', desc: '', args: []);
  }

  /// `ADD`
  String get add_all_capital {
    return Intl.message('ADD', name: 'add_all_capital', desc: '', args: []);
  }

  /// `add`
  String get add_all_lower {
    return Intl.message('add', name: 'add_all_lower', desc: '', args: []);
  }

  /// `Add`
  String get add_ucf {
    return Intl.message('Add', name: 'add_ucf', desc: '', args: []);
  }

  /// `Copied`
  String get copied_ucf {
    return Intl.message('Copied', name: 'copied_ucf', desc: '', args: []);
  }

  /// `Proceed`
  String get proceed_ucf {
    return Intl.message('Proceed', name: 'proceed_ucf', desc: '', args: []);
  }

  /// `PROCEED`
  String get proceed_all_caps {
    return Intl.message(
      'PROCEED',
      name: 'proceed_all_caps',
      desc: '',
      args: [],
    );
  }

  /// `Submit`
  String get submit_ucf {
    return Intl.message('Submit', name: 'submit_ucf', desc: '', args: []);
  }

  /// `Shop More`
  String get shop_more_ucf {
    return Intl.message('Shop More', name: 'shop_more_ucf', desc: '', args: []);
  }

  /// `Show Less`
  String get show_less_ucf {
    return Intl.message('Show Less', name: 'show_less_ucf', desc: '', args: []);
  }

  /// `Selected`
  String get selected_ucf {
    return Intl.message('Selected', name: 'selected_ucf', desc: '', args: []);
  }

  /// `Creating order ...`
  String get creating_order {
    return Intl.message(
      'Creating order ...',
      name: 'creating_order',
      desc: '',
      args: [],
    );
  }

  /// `Payment Cancelled`
  String get payment_cancelled_ucf {
    return Intl.message(
      'Payment Cancelled',
      name: 'payment_cancelled_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Photo Permission`
  String get photo_permission_ucf {
    return Intl.message(
      'Photo Permission',
      name: 'photo_permission_ucf',
      desc: '',
      args: [],
    );
  }

  /// `This app needs permission`
  String get this_app_needs_permission {
    return Intl.message(
      'This app needs permission',
      name: 'this_app_needs_permission',
      desc: '',
      args: [],
    );
  }

  /// `Deny`
  String get deny_ucf {
    return Intl.message('Deny', name: 'deny_ucf', desc: '', args: []);
  }

  /// `settings_ucf`
  String get settings_ucf {
    return Intl.message(
      'settings_ucf',
      name: 'settings_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Go to your application settings and give photo permission`
  String get go_to_your_application_settings_and_give_photo_permission {
    return Intl.message(
      'Go to your application settings and give photo permission',
      name: 'go_to_your_application_settings_and_give_photo_permission',
      desc: '',
      args: [],
    );
  }

  /// `No file is chosen`
  String get no_file_is_chosen {
    return Intl.message(
      'No file is chosen',
      name: 'no_file_is_chosen',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes_ucf {
    return Intl.message('Yes', name: 'yes_ucf', desc: '', args: []);
  }

  /// `No`
  String get no_ucf {
    return Intl.message('No', name: 'no_ucf', desc: '', args: []);
  }

  /// `Date`
  String get date_ucf {
    return Intl.message('Date', name: 'date_ucf', desc: '', args: []);
  }

  /// `Follow`
  String get follow_ucf {
    return Intl.message('Follow', name: 'follow_ucf', desc: '', args: []);
  }

  /// `Followed`
  String get followed_ucf {
    return Intl.message('Followed', name: 'followed_ucf', desc: '', args: []);
  }

  /// `Unfollow this seller`
  String get unfollow_ucf {
    return Intl.message(
      'Unfollow this seller',
      name: 'unfollow_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Continue`
  String get continue_ucf {
    return Intl.message('Continue', name: 'continue_ucf', desc: '', args: []);
  }

  /// `Day`
  String get day_ucf {
    return Intl.message('Day', name: 'day_ucf', desc: '', args: []);
  }

  /// `Days`
  String get days_ucf {
    return Intl.message('Days', name: 'days_ucf', desc: '', args: []);
  }

  /// `Something went wrong. Network Error`
  String get network_error {
    return Intl.message(
      'Something went wrong. Network Error',
      name: 'network_error',
      desc: '',
      args: [],
    );
  }

  /// `Get locations`
  String get get_locations {
    return Intl.message(
      'Get locations',
      name: 'get_locations',
      desc: '',
      args: [],
    );
  }

  /// `Get Direction`
  String get get_direction_ucf {
    return Intl.message(
      'Get Direction',
      name: 'get_direction_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Digital Product`
  String get digital_product_screen_ {
    return Intl.message(
      'Digital Product',
      name: 'digital_product_screen_',
      desc: '',
      args: [],
    );
  }

  /// `Dashboard`
  String get dashboard_ucf {
    return Intl.message('Dashboard', name: 'dashboard_ucf', desc: '', args: []);
  }

  /// `Earnings`
  String get earnings_ucf {
    return Intl.message('Earnings', name: 'earnings_ucf', desc: '', args: []);
  }

  /// `Not Logged In`
  String get not_logged_in_ucf {
    return Intl.message(
      'Not Logged In',
      name: 'not_logged_in_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Change Language`
  String get change_language_ucf {
    return Intl.message(
      'Change Language',
      name: 'change_language_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get home_ucf {
    return Intl.message('Home', name: 'home_ucf', desc: '', args: []);
  }

  /// `Profile`
  String get profile_ucf {
    return Intl.message('Profile', name: 'profile_ucf', desc: '', args: []);
  }

  /// `Orders`
  String get orders_ucf {
    return Intl.message('Orders', name: 'orders_ucf', desc: '', args: []);
  }

  /// `My Wishlist`
  String get my_wishlist_ucf {
    return Intl.message(
      'My Wishlist',
      name: 'my_wishlist_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Messages`
  String get messages_ucf {
    return Intl.message('Messages', name: 'messages_ucf', desc: '', args: []);
  }

  /// `Wallet`
  String get wallet_ucf {
    return Intl.message('Wallet', name: 'wallet_ucf', desc: '', args: []);
  }

  /// `Login`
  String get login_ucf {
    return Intl.message('Login', name: 'login_ucf', desc: '', args: []);
  }

  /// `Change Password`
  String get change_password_ucf {
    return Intl.message(
      'Change Password',
      name: 'change_password_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Forget Password ?`
  String get forget_password_ucf {
    return Intl.message(
      'Forget Password ?',
      name: 'forget_password_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get send_to_ucf {
    return Intl.message('Send Code', name: 'send_to_ucf', desc: '', args: []);
  }

  /// `update profile`
  String get update_profile {
    return Intl.message(
      'update profile',
      name: 'update_profile',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout_ucf {
    return Intl.message('Logout', name: 'logout_ucf', desc: '', args: []);
  }

  /// `Mark as picked`
  String get mark_as_picked {
    return Intl.message(
      'Mark as picked',
      name: 'mark_as_picked',
      desc: '',
      args: [],
    );
  }

  /// `My Delivery`
  String get my_delivery_ucf {
    return Intl.message(
      'My Delivery',
      name: 'my_delivery_ucf',
      desc: '',
      args: [],
    );
  }

  /// `My Earnings`
  String get my_earnings_ucf {
    return Intl.message(
      'My Earnings',
      name: 'my_earnings_ucf',
      desc: '',
      args: [],
    );
  }

  /// `My Collection`
  String get my_collection_ucf {
    return Intl.message(
      'My Collection',
      name: 'my_collection_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Do you want close the app?`
  String get do_you_want_close_the_app {
    return Intl.message(
      'Do you want close the app?',
      name: 'do_you_want_close_the_app',
      desc: '',
      args: [],
    );
  }

  /// `Top Categories`
  String get top_categories_ucf {
    return Intl.message(
      'Top Categories',
      name: 'top_categories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Brands`
  String get brands_ucf {
    return Intl.message('Brands', name: 'brands_ucf', desc: '', args: []);
  }

  /// `Top Sellers`
  String get top_sellers_ucf {
    return Intl.message(
      'Top Sellers',
      name: 'top_sellers_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Todays Deal`
  String get todays_deal_ucf {
    return Intl.message(
      'Todays Deal',
      name: 'todays_deal_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Flash Deal`
  String get flash_deal_ucf {
    return Intl.message(
      'Flash Deal',
      name: 'flash_deal_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Featured Categories`
  String get featured_categories_ucf {
    return Intl.message(
      'Featured Categories',
      name: 'featured_categories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Featured Products`
  String get featured_products_ucf {
    return Intl.message(
      'Featured Products',
      name: 'featured_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `All Products`
  String get all_products_ucf {
    return Intl.message(
      'All Products',
      name: 'all_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Search In Active eCommerce CMS...`
  String get search_in_active_ecommerce_cms {
    return Intl.message(
      'Search In Active eCommerce CMS...',
      name: 'search_in_active_ecommerce_cms',
      desc: '',
      args: [],
    );
  }

  /// `Search in Jomlah...`
  String get search_in_a_gmlah {
    return Intl.message(
      'Search in Jomlah...',
      name: 'search_in_a_gmlah',
      desc: '',
      args: [],
    );
  }

  /// `No carousel image found`
  String get no_carousel_image_found {
    return Intl.message(
      'No carousel image found',
      name: 'no_carousel_image_found',
      desc: '',
      args: [],
    );
  }

  /// `No category found`
  String get no_category_found {
    return Intl.message(
      'No category found',
      name: 'no_category_found',
      desc: '',
      args: [],
    );
  }

  /// `Categories`
  String get categories_ucf {
    return Intl.message(
      'Categories',
      name: 'categories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `View Sub-Categories`
  String get view_subcategories_ucf {
    return Intl.message(
      'View Sub-Categories',
      name: 'view_subcategories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No sub categories available`
  String get no_subcategories_available {
    return Intl.message(
      'No sub categories available',
      name: 'no_subcategories_available',
      desc: '',
      args: [],
    );
  }

  /// `All Products of`
  String get all_products_of_ucf {
    return Intl.message(
      'All Products of',
      name: 'all_products_of_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Cannot order less than`
  String get cannot_order_more_than {
    return Intl.message(
      'Cannot order less than',
      name: 'cannot_order_more_than',
      desc: '',
      args: [],
    );
  }

  /// `item(s) of this`
  String get items_of_this_all_lower {
    return Intl.message(
      'item(s) of this',
      name: 'items_of_this_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure to remove this item ?`
  String get are_you_sure_to_remove_this_item {
    return Intl.message(
      'Are you sure to remove this item ?',
      name: 'are_you_sure_to_remove_this_item',
      desc: '',
      args: [],
    );
  }

  /// `Cart is empty`
  String get cart_is_empty {
    return Intl.message(
      'Cart is empty',
      name: 'cart_is_empty',
      desc: '',
      args: [],
    );
  }

  /// `Total Amount`
  String get total_amount_ucf {
    return Intl.message(
      'Total Amount',
      name: 'total_amount_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Update Cart`
  String get update_cart_ucf {
    return Intl.message(
      'Update Cart',
      name: 'update_cart_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Proceed To Shipping`
  String get proceed_to_shipping_ucf {
    return Intl.message(
      'Proceed To Shipping',
      name: 'proceed_to_shipping_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shopping Cart`
  String get shopping_cart_ucf {
    return Intl.message(
      'Shopping Cart',
      name: 'shopping_cart_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Please log in to see the cart items`
  String get please_log_in_to_see_the_cart_items {
    return Intl.message(
      'Please log in to see the cart items',
      name: 'please_log_in_to_see_the_cart_items',
      desc: '',
      args: [],
    );
  }

  /// `Cancel request is already send`
  String get cancel_request_is_already_send {
    return Intl.message(
      'Cancel request is already send',
      name: 'cancel_request_is_already_send',
      desc: '',
      args: [],
    );
  }

  /// `Classified Ads`
  String get classified_ads_ucf {
    return Intl.message(
      'Classified Ads',
      name: 'classified_ads_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Change Currency`
  String get currency_change_ucf {
    return Intl.message(
      'Change Currency',
      name: 'currency_change_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Collection`
  String get collection_ucf {
    return Intl.message(
      'Collection',
      name: 'collection_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Load More`
  String get load_more_ucf {
    return Intl.message('Load More', name: 'load_more_ucf', desc: '', args: []);
  }

  /// `Type your message here ...`
  String get type_your_message_here {
    return Intl.message(
      'Type your message here ...',
      name: 'type_your_message_here',
      desc: '',
      args: [],
    );
  }

  /// `Enter coupon code`
  String get enter_coupon_code {
    return Intl.message(
      'Enter coupon code',
      name: 'enter_coupon_code',
      desc: '',
      args: [],
    );
  }

  /// `SUB TOTAL`
  String get subtotal_all_capital {
    return Intl.message(
      'SUB TOTAL',
      name: 'subtotal_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `TAX`
  String get tax_all_capital {
    return Intl.message('TAX', name: 'tax_all_capital', desc: '', args: []);
  }

  /// `SHIPPING COST`
  String get shipping_cost_all_capital {
    return Intl.message(
      'SHIPPING COST',
      name: 'shipping_cost_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `DISCOUNT`
  String get discount_all_capital {
    return Intl.message(
      'DISCOUNT',
      name: 'discount_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `GRAND TOTAL`
  String get grand_total_all_capital {
    return Intl.message(
      'GRAND TOTAL',
      name: 'grand_total_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `Coupon Code`
  String get coupon_code_ucf {
    return Intl.message(
      'Coupon Code',
      name: 'coupon_code_ucf',
      desc: '',
      args: [],
    );
  }

  /// `APPLY COUPON`
  String get apply_coupon_all_capital {
    return Intl.message(
      'APPLY COUPON',
      name: 'apply_coupon_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `PLACE MY ORDER`
  String get place_my_order_all_capital {
    return Intl.message(
      'PLACE MY ORDER',
      name: 'place_my_order_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `Buy Package`
  String get buy_package_ucf {
    return Intl.message(
      'Buy Package',
      name: 'buy_package_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Remove`
  String get remove_ucf {
    return Intl.message('Remove', name: 'remove_ucf', desc: '', args: []);
  }

  /// `Checkout`
  String get checkout_ucf {
    return Intl.message('Checkout', name: 'checkout_ucf', desc: '', args: []);
  }

  /// `Cancelled Delivery`
  String get cancelled_delivery_ucf {
    return Intl.message(
      'Cancelled Delivery',
      name: 'cancelled_delivery_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Completed Delivery`
  String get completed_delivery_ucf {
    return Intl.message(
      'Completed Delivery',
      name: 'completed_delivery_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Search products from`
  String get search_products_from {
    return Intl.message(
      'Search products from',
      name: 'search_products_from',
      desc: '',
      args: [],
    );
  }

  /// `No language is Added`
  String get no_language_is_added {
    return Intl.message(
      'No language is Added',
      name: 'no_language_is_added',
      desc: '',
      args: [],
    );
  }

  /// `Points converted to wallet`
  String get points_converted_to_wallet {
    return Intl.message(
      'Points converted to wallet',
      name: 'points_converted_to_wallet',
      desc: '',
      args: [],
    );
  }

  /// `SHOW WALLET`
  String get show_wallet_all_capital {
    return Intl.message(
      'SHOW WALLET',
      name: 'show_wallet_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `Earned Points`
  String get earned_points_ucf {
    return Intl.message(
      'Earned Points',
      name: 'earned_points_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Converted `
  String get converted_ucf {
    return Intl.message(
      'Converted ',
      name: 'converted_ucf',
      desc: '',
      args: [],
    );
  }

  /// `DONE`
  String get done_all_capital {
    return Intl.message('DONE', name: 'done_all_capital', desc: '', args: []);
  }

  /// `Convert Now`
  String get convert_now_ucf {
    return Intl.message(
      'Convert Now',
      name: 'convert_now_ucf',
      desc: '',
      args: [],
    );
  }

  /// `My Products`
  String get my_products_ucf {
    return Intl.message(
      'My Products',
      name: 'my_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Current Package`
  String get current_package_ucf {
    return Intl.message(
      'Current Package',
      name: 'current_package_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Upgrade Package`
  String get upgrade_package_ucf {
    return Intl.message(
      'Upgrade Package',
      name: 'upgrade_package_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Add New Products`
  String get add_new_products_ucf {
    return Intl.message(
      'Add New Products',
      name: 'add_new_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Please turn on your internet connection`
  String get please_turn_on_your_internet_connection {
    return Intl.message(
      'Please turn on your internet connection',
      name: 'please_turn_on_your_internet_connection',
      desc: '',
      args: [],
    );
  }

  /// `Please log in to see the profile`
  String get please_log_in_to_see_the_profile {
    return Intl.message(
      'Please log in to see the profile',
      name: 'please_log_in_to_see_the_profile',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notification_ucf {
    return Intl.message(
      'Notifications',
      name: 'notification_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Purchase History`
  String get purchase_history_ucf {
    return Intl.message(
      'Purchase History',
      name: 'purchase_history_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Earning Points History`
  String get earning_points_history_ucf {
    return Intl.message(
      'Earning Points History',
      name: 'earning_points_history_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Refund Requests`
  String get refund_requests_ucf {
    return Intl.message(
      'Refund Requests',
      name: 'refund_requests_ucf',
      desc: '',
      args: [],
    );
  }

  /// `in your cart`
  String get in_your_cart_all_lower {
    return Intl.message(
      'in your cart',
      name: 'in_your_cart_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `in your wishlist`
  String get in_your_wishlist_all_lower {
    return Intl.message(
      'in your wishlist',
      name: 'in_your_wishlist_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `you ordered`
  String get your_ordered_all_lower {
    return Intl.message(
      'you ordered',
      name: 'your_ordered_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language_ucf {
    return Intl.message('Language', name: 'language_ucf', desc: '', args: []);
  }

  /// `Currency`
  String get currency_ucf {
    return Intl.message('Currency', name: 'currency_ucf', desc: '', args: []);
  }

  /// `My Orders`
  String get my_orders_ucf {
    return Intl.message('My Orders', name: 'my_orders_ucf', desc: '', args: []);
  }

  /// `Downloads`
  String get downloads_ucf {
    return Intl.message('Downloads', name: 'downloads_ucf', desc: '', args: []);
  }

  /// `Coupons`
  String get coupons_ucf {
    return Intl.message('Coupons', name: 'coupons_ucf', desc: '', args: []);
  }

  /// `Favorite Seller`
  String get favorite_seller_ucf {
    return Intl.message(
      'Favorite Seller',
      name: 'favorite_seller_ucf',
      desc: '',
      args: [],
    );
  }

  /// `All Digital Products`
  String get all_digital_products_ucf {
    return Intl.message(
      'All Digital Products',
      name: 'all_digital_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `On Auction Products`
  String get on_auction_products_ucf {
    return Intl.message(
      'On Auction Products',
      name: 'on_auction_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Bidded Products`
  String get bidded_products_ucf {
    return Intl.message(
      'Bidded Products',
      name: 'bidded_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Wholesale Products`
  String get wholesale_products_ucf {
    return Intl.message(
      'Wholesale Products',
      name: 'wholesale_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Browse All Sellers`
  String get browse_all_sellers_ucf {
    return Intl.message(
      'Browse All Sellers',
      name: 'browse_all_sellers_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Delete my account`
  String get delete_my_account {
    return Intl.message(
      'Delete my account',
      name: 'delete_my_account',
      desc: '',
      args: [],
    );
  }

  /// `Do you want to delete your account from our system?`
  String get delete_account_warning_title {
    return Intl.message(
      'Do you want to delete your account from our system?',
      name: 'delete_account_warning_title',
      desc: '',
      args: [],
    );
  }

  /// `Once your account is deleted from our system, you will lose your balance and other information from our system.`
  String get delete_account_warning_description {
    return Intl.message(
      'Once your account is deleted from our system, you will lose your balance and other information from our system.',
      name: 'delete_account_warning_description',
      desc: '',
      args: [],
    );
  }

  /// `Blogs`
  String get blogs_ucf {
    return Intl.message('Blogs', name: 'blogs_ucf', desc: '', args: []);
  }

  /// `Check Balance`
  String get check_balance_ucf {
    return Intl.message(
      'Check Balance',
      name: 'check_balance_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Account`
  String get account_ucf {
    return Intl.message('Account', name: 'account_ucf', desc: '', args: []);
  }

  /// `Auction`
  String get auction_ucf {
    return Intl.message('Auction', name: 'auction_ucf', desc: '', args: []);
  }

  /// `Classified products`
  String get classified_products {
    return Intl.message(
      'Classified products',
      name: 'classified_products',
      desc: '',
      args: [],
    );
  }

  /// `Packages`
  String get packages_ucf {
    return Intl.message('Packages', name: 'packages_ucf', desc: '', args: []);
  }

  /// `Upload Limit`
  String get upload_limit_ucf {
    return Intl.message(
      'Upload Limit',
      name: 'upload_limit_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Pending Delivery`
  String get pending_delivery_ucf {
    return Intl.message(
      'Pending Delivery',
      name: 'pending_delivery_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Flash deal has ended`
  String get flash_deal_has_ended {
    return Intl.message(
      'Flash deal has ended',
      name: 'flash_deal_has_ended',
      desc: '',
      args: [],
    );
  }

  /// `Ended`
  String get ended_ucf {
    return Intl.message('Ended', name: 'ended_ucf', desc: '', args: []);
  }

  /// `Flash Deals`
  String get flash_deals_ucf {
    return Intl.message(
      'Flash Deals',
      name: 'flash_deals_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Top Selling Products`
  String get top_selling_products_ucf {
    return Intl.message(
      'Top Selling Products',
      name: 'top_selling_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product`
  String get product_ucf {
    return Intl.message('Product', name: 'product_ucf', desc: '', args: []);
  }

  /// `Products`
  String get products_ucf {
    return Intl.message('Products', name: 'products_ucf', desc: '', args: []);
  }

  /// `Sellers`
  String get sellers_ucf {
    return Intl.message('Sellers', name: 'sellers_ucf', desc: '', args: []);
  }

  /// `You can use filters while searching for products.`
  String get you_can_use_filters_while_searching_for_products {
    return Intl.message(
      'You can use filters while searching for products.',
      name: 'you_can_use_filters_while_searching_for_products',
      desc: '',
      args: [],
    );
  }

  /// `Filter`
  String get filter_ucf {
    return Intl.message('Filter', name: 'filter_ucf', desc: '', args: []);
  }

  /// `Sort Products By`
  String get sort_products_by_ucf {
    return Intl.message(
      'Sort Products By',
      name: 'sort_products_by_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Price high to low`
  String get price_high_to_low {
    return Intl.message(
      'Price high to low',
      name: 'price_high_to_low',
      desc: '',
      args: [],
    );
  }

  /// `Price low to high`
  String get price_low_to_high {
    return Intl.message(
      'Price low to high',
      name: 'price_low_to_high',
      desc: '',
      args: [],
    );
  }

  /// `New Arrival`
  String get new_arrival_ucf {
    return Intl.message(
      'New Arrival',
      name: 'new_arrival_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Popularity`
  String get popularity_ucf {
    return Intl.message(
      'Popularity',
      name: 'popularity_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Top Rated`
  String get top_rated_ucf {
    return Intl.message('Top Rated', name: 'top_rated_ucf', desc: '', args: []);
  }

  /// `Maximum`
  String get maximum_ucf {
    return Intl.message('Maximum', name: 'maximum_ucf', desc: '', args: []);
  }

  /// `Minimum`
  String get minimum_ucf {
    return Intl.message('Minimum', name: 'minimum_ucf', desc: '', args: []);
  }

  /// `Price Range`
  String get price_range_ucf {
    return Intl.message(
      'Price Range',
      name: 'price_range_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Search here ?`
  String get search_here_ucf {
    return Intl.message(
      'Search here ?',
      name: 'search_here_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No suggestion is available`
  String get no_suggestion_available {
    return Intl.message(
      'No suggestion is available',
      name: 'no_suggestion_available',
      desc: '',
      args: [],
    );
  }

  /// `searched for`
  String get searched_for_all_lower {
    return Intl.message(
      'searched for',
      name: 'searched_for_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `time(s)`
  String get times_all_lower {
    return Intl.message('time(s)', name: 'times_all_lower', desc: '', args: []);
  }

  /// `found`
  String get found_all_lower {
    return Intl.message('found', name: 'found_all_lower', desc: '', args: []);
  }

  /// `Loading suggestions...`
  String get loading_suggestions {
    return Intl.message(
      'Loading suggestions...',
      name: 'loading_suggestions',
      desc: '',
      args: [],
    );
  }

  /// `Sort`
  String get sort_ucf {
    return Intl.message('Sort', name: 'sort_ucf', desc: '', args: []);
  }

  /// `Default`
  String get def_ault_ucf {
    return Intl.message('Default', name: 'def_ault_ucf', desc: '', args: []);
  }

  /// `You can use sorting while searching for products.`
  String get you_can_use_sorting_while_searching_for_products {
    return Intl.message(
      'You can use sorting while searching for products.',
      name: 'you_can_use_sorting_while_searching_for_products',
      desc: '',
      args: [],
    );
  }

  /// `Min price cannot be larger than max price`
  String get filter_screen_min_max_warning {
    return Intl.message(
      'Min price cannot be larger than max price',
      name: 'filter_screen_min_max_warning',
      desc: '',
      args: [],
    );
  }

  /// `Followed Sellers`
  String get followed_sellers_ucf {
    return Intl.message(
      'Followed Sellers',
      name: 'followed_sellers_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Copy Product Link`
  String get copy_product_link_ucf {
    return Intl.message(
      'Copy Product Link',
      name: 'copy_product_link_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Share Options`
  String get share_options_ucf {
    return Intl.message(
      'Share Options',
      name: 'share_options_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Title`
  String get title_ucf {
    return Intl.message('Title', name: 'title_ucf', desc: '', args: []);
  }

  /// `Enter Title`
  String get enter_title_ucf {
    return Intl.message(
      'Enter Title',
      name: 'enter_title_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Message`
  String get message_ucf {
    return Intl.message('Message', name: 'message_ucf', desc: '', args: []);
  }

  /// `Enter Message`
  String get enter_message_ucf {
    return Intl.message(
      'Enter Message',
      name: 'enter_message_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Title or message cannot be empty`
  String get title_or_message_empty_warning {
    return Intl.message(
      'Title or message cannot be empty',
      name: 'title_or_message_empty_warning',
      desc: '',
      args: [],
    );
  }

  /// `Could not create conversation`
  String get could_not_create_conversation {
    return Intl.message(
      'Could not create conversation',
      name: 'could_not_create_conversation',
      desc: '',
      args: [],
    );
  }

  /// `Added to cart`
  String get added_to_cart {
    return Intl.message(
      'Added to cart',
      name: 'added_to_cart',
      desc: '',
      args: [],
    );
  }

  /// `SHOW CART`
  String get show_cart_all_capital {
    return Intl.message(
      'SHOW CART',
      name: 'show_cart_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `Description:`
  String get description_ucf {
    return Intl.message(
      'Description:',
      name: 'description_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Brand :`
  String get brand_ucf {
    return Intl.message('Brand :', name: 'brand_ucf', desc: '', args: []);
  }

  /// `Total Price  :`
  String get total_price_ucf {
    return Intl.message(
      'Total Price  :',
      name: 'total_price_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get price_ucf {
    return Intl.message('Price', name: 'price_ucf', desc: '', args: []);
  }

  /// `Color`
  String get color_ucf {
    return Intl.message('Color', name: 'color_ucf', desc: '', args: []);
  }

  /// `Seller`
  String get seller_ucf {
    return Intl.message('Seller', name: 'seller_ucf', desc: '', args: []);
  }

  /// `Club Point`
  String get club_point_ucf {
    return Intl.message(
      'Club Point',
      name: 'club_point_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Quantity:`
  String get quantity_ucf {
    return Intl.message('Quantity:', name: 'quantity_ucf', desc: '', args: []);
  }

  /// `Video not available`
  String get video_not_available {
    return Intl.message(
      'Video not available',
      name: 'video_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Video`
  String get video_ucf {
    return Intl.message('Video', name: 'video_ucf', desc: '', args: []);
  }

  /// `Reviews`
  String get reviews_ucf {
    return Intl.message('Reviews', name: 'reviews_ucf', desc: '', args: []);
  }

  /// `Seller Policy`
  String get seller_policy_ucf {
    return Intl.message(
      'Seller Policy',
      name: 'seller_policy_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Return Policy`
  String get return_policy_ucf {
    return Intl.message(
      'Return Policy',
      name: 'return_policy_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Support Policy`
  String get support_policy_ucf {
    return Intl.message(
      'Support Policy',
      name: 'support_policy_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Frequently Bought Products`
  String get products_you_may_also_like {
    return Intl.message(
      'Frequently Bought Products',
      name: 'products_you_may_also_like',
      desc: '',
      args: [],
    );
  }

  /// `Other Ads of`
  String get other_ads_of_ucf {
    return Intl.message(
      'Other Ads of',
      name: 'other_ads_of_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Top selling products from this seller`
  String get top_selling_products_from_seller {
    return Intl.message(
      'Top selling products from this seller',
      name: 'top_selling_products_from_seller',
      desc: '',
      args: [],
    );
  }

  /// `Chat with seller`
  String get chat_with_seller {
    return Intl.message(
      'Chat with seller',
      name: 'chat_with_seller',
      desc: '',
      args: [],
    );
  }

  /// `available`
  String get available_all_lower {
    return Intl.message(
      'available',
      name: 'available_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `Add to Cart`
  String get add_to_cart_ucf {
    return Intl.message(
      'Add to Cart',
      name: 'add_to_cart_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Buy Now`
  String get buy_now_ucf {
    return Intl.message('Buy Now', name: 'buy_now_ucf', desc: '', args: []);
  }

  /// `No top selling products from this seller`
  String get no_top_selling_products_from_this_seller {
    return Intl.message(
      'No top selling products from this seller',
      name: 'no_top_selling_products_from_this_seller',
      desc: '',
      args: [],
    );
  }

  /// `No frequently bought products`
  String get no_related_product {
    return Intl.message(
      'No frequently bought products',
      name: 'no_related_product',
      desc: '',
      args: [],
    );
  }

  /// `On The Way`
  String get on_the_way_ucf {
    return Intl.message(
      'On The Way',
      name: 'on_the_way_ucf',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all_ucf {
    return Intl.message('All', name: 'all_ucf', desc: '', args: []);
  }

  /// `Today`
  String get today_ucf {
    return Intl.message('Today', name: 'today_ucf', desc: '', args: []);
  }

  /// `This Week`
  String get this_week_ucf {
    return Intl.message('This Week', name: 'this_week_ucf', desc: '', args: []);
  }

  /// `This Month`
  String get this_month_ucf {
    return Intl.message(
      'This Month',
      name: 'this_month_ucf',
      desc: '',
      args: [],
    );
  }

  /// `COD`
  String get cod_ucf {
    return Intl.message('COD', name: 'cod_ucf', desc: '', args: []);
  }

  /// `NON-COD`
  String get non_cod_ucf {
    return Intl.message('NON-COD', name: 'non_cod_ucf', desc: '', args: []);
  }

  /// `All Payments`
  String get all_payments_ucf {
    return Intl.message(
      'All Payments',
      name: 'all_payments_ucf',
      desc: '',
      args: [],
    );
  }

  /// `All Deliveries`
  String get all_deliveries_ucf {
    return Intl.message(
      'All Deliveries',
      name: 'all_deliveries_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Paid`
  String get paid_ucf {
    return Intl.message('Paid', name: 'paid_ucf', desc: '', args: []);
  }

  /// `Unpaid`
  String get unpaid_ucf {
    return Intl.message('Unpaid', name: 'unpaid_ucf', desc: '', args: []);
  }

  /// `Confirmed`
  String get confirmed_ucf {
    return Intl.message('Confirmed', name: 'confirmed_ucf', desc: '', args: []);
  }

  /// `Delivered`
  String get delivered_ucf {
    return Intl.message('Delivered', name: 'delivered_ucf', desc: '', args: []);
  }

  /// `No More Orders`
  String get no_more_orders_ucf {
    return Intl.message(
      'No More Orders',
      name: 'no_more_orders_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading More order...`
  String get loading_more_orders_ucf {
    return Intl.message(
      'Loading More order...',
      name: 'loading_more_orders_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Payment Status`
  String get payment_status_ucf {
    return Intl.message(
      'Payment Status',
      name: 'payment_status_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Delivery Status`
  String get delivery_status_ucf {
    return Intl.message(
      'Delivery Status',
      name: 'delivery_status_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Name`
  String get product_name_ucf {
    return Intl.message(
      'Product Name',
      name: 'product_name_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Unit`
  String get product_unit_ucf {
    return Intl.message(
      'Product Unit',
      name: 'product_unit_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Order Code`
  String get order_code_ucf {
    return Intl.message(
      'Order Code',
      name: 'order_code_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Reason`
  String get reason_ucf {
    return Intl.message('Reason', name: 'reason_ucf', desc: '', args: []);
  }

  /// `Terms Conditions`
  String get Terms_Conditions_usf {
    return Intl.message(
      'Terms Conditions',
      name: 'Terms_Conditions_usf',
      desc: '',
      args: [],
    );
  }

  /// `Reason cannot be empty`
  String get reason_cannot_be_empty {
    return Intl.message(
      'Reason cannot be empty',
      name: 'reason_cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `Enter Reason`
  String get enter_reason_ucf {
    return Intl.message(
      'Enter Reason',
      name: 'enter_reason_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Show Request List`
  String get show_request_list_ucf {
    return Intl.message(
      'Show Request List',
      name: 'show_request_list_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Ordered Product`
  String get ordered_product_ucf {
    return Intl.message(
      'Ordered Product',
      name: 'ordered_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No items are ordered`
  String get no_item_ordered {
    return Intl.message(
      'No items are ordered',
      name: 'no_item_ordered',
      desc: '',
      args: [],
    );
  }

  /// `SUB TOTAL`
  String get sub_total_all_capital {
    return Intl.message(
      'SUB TOTAL',
      name: 'sub_total_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `Order placed`
  String get order_placed {
    return Intl.message(
      'Order placed',
      name: 'order_placed',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Method`
  String get shipping_method_ucf {
    return Intl.message(
      'Shipping Method',
      name: 'shipping_method_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Order Date`
  String get order_date_ucf {
    return Intl.message(
      'Order Date',
      name: 'order_date_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Privacy_Policy_ucf`
  String get Privacy_Policy_ucf {
    return Intl.message(
      'Privacy_Policy_ucf',
      name: 'Privacy_Policy_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Payment Method`
  String get payment_method_ucf {
    return Intl.message(
      'Payment Method',
      name: 'payment_method_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address`
  String get shipping_address_ucf {
    return Intl.message(
      'Shipping Address',
      name: 'shipping_address_ucf',
      desc: '',
      args: [],
    );
  }

  /// `User Name`
  String get name_ucf {
    return Intl.message('User Name', name: 'name_ucf', desc: '', args: []);
  }

  /// `Email`
  String get email_ucf {
    return Intl.message('Email', name: 'email_ucf', desc: '', args: []);
  }

  /// `Postal code`
  String get postal_code {
    return Intl.message('Postal code', name: 'postal_code', desc: '', args: []);
  }

  /// `I agree to the`
  String get I_agree_to_the_ucf {
    return Intl.message(
      'I agree to the',
      name: 'I_agree_to_the_ucf',
      desc: '',
      args: [],
    );
  }

  /// `item`
  String get item_all_lower {
    return Intl.message('item', name: 'item_all_lower', desc: '', args: []);
  }

  /// `Ask For Refund`
  String get ask_for_refund_ucf {
    return Intl.message(
      'Ask For Refund',
      name: 'ask_for_refund_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Refund Status`
  String get refund_status_ucf {
    return Intl.message(
      'Refund Status',
      name: 'refund_status_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details_ucf {
    return Intl.message(
      'Order Details',
      name: 'order_details_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Make Offline Payment`
  String get make_offline_payment_ucf {
    return Intl.message(
      'Make Offline Payment',
      name: 'make_offline_payment_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Choose an address`
  String get choose_an_address {
    return Intl.message(
      'Choose an address',
      name: 'choose_an_address',
      desc: '',
      args: [],
    );
  }

  /// `Choose Delivery`
  String get choose_delivery_ucf {
    return Intl.message(
      'Choose Delivery',
      name: 'choose_delivery_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Home Delivery`
  String get home_delivery_ucf {
    return Intl.message(
      'Home Delivery',
      name: 'home_delivery_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Choose an address or pickup point`
  String get choose_an_address_or_pickup_point {
    return Intl.message(
      'Choose an address or pickup point',
      name: 'choose_an_address_or_pickup_point',
      desc: '',
      args: [],
    );
  }

  /// `To add or edit addresses, Go to address page`
  String get to_add_or_edit_addresses_go_to_address_page {
    return Intl.message(
      'To add or edit addresses, Go to address page',
      name: 'to_add_or_edit_addresses_go_to_address_page',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Cost`
  String get shipping_cost_ucf {
    return Intl.message(
      'Shipping Cost',
      name: 'shipping_cost_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Info`
  String get shipping_info {
    return Intl.message(
      'Shipping Info',
      name: 'shipping_info',
      desc: '',
      args: [],
    );
  }

  /// `Carrier Points Is Unavailable`
  String get carrier_points_is_unavailable_ucf {
    return Intl.message(
      'Carrier Points Is Unavailable',
      name: 'carrier_points_is_unavailable_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Carrier`
  String get carrier_ucf {
    return Intl.message('Carrier', name: 'carrier_ucf', desc: '', args: []);
  }

  /// `Proceed to checkout`
  String get proceed_to_checkout {
    return Intl.message(
      'Proceed to checkout',
      name: 'proceed_to_checkout',
      desc: '',
      args: [],
    );
  }

  /// `Continue to Delivery Info`
  String get continue_to_delivery_info_ucf {
    return Intl.message(
      'Continue to Delivery Info',
      name: 'continue_to_delivery_info_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Point Is Unavailable`
  String get pickup_point_is_unavailable_ucf {
    return Intl.message(
      'Pickup Point Is Unavailable',
      name: 'pickup_point_is_unavailable_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Pickup Point`
  String get pickup_point_ucf {
    return Intl.message(
      'Pickup Point',
      name: 'pickup_point_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Mark as delivered`
  String get mark_as_delivered {
    return Intl.message(
      'Mark as delivered',
      name: 'mark_as_delivered',
      desc: '',
      args: [],
    );
  }

  /// `Please Wait...`
  String get please_wait_ucf {
    return Intl.message(
      'Please Wait...',
      name: 'please_wait_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Remaining uploads`
  String get remaining_uploads {
    return Intl.message(
      'Remaining uploads',
      name: 'remaining_uploads',
      desc: '',
      args: [],
    );
  }

  /// `Amount cannot be empty`
  String get amount_cannot_be_empty {
    return Intl.message(
      'Amount cannot be empty',
      name: 'amount_cannot_be_empty',
      desc: '',
      args: [],
    );
  }

  /// `My Wallet`
  String get my_wallet_ucf {
    return Intl.message('My Wallet', name: 'my_wallet_ucf', desc: '', args: []);
  }

  /// `No recharges yet`
  String get no_recharges_yet {
    return Intl.message(
      'No recharges yet',
      name: 'no_recharges_yet',
      desc: '',
      args: [],
    );
  }

  /// `Approval Status`
  String get approval_status_ucf {
    return Intl.message(
      'Approval Status',
      name: 'approval_status_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Balance`
  String get wallet_balance_ucf {
    return Intl.message(
      'Wallet Balance',
      name: 'wallet_balance_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Last recharged`
  String get last_recharged {
    return Intl.message(
      'Last recharged',
      name: 'last_recharged',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Recharge History`
  String get wallet_recharge_history_ucf {
    return Intl.message(
      'Wallet Recharge History',
      name: 'wallet_recharge_history_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Amount`
  String get amount_ucf {
    return Intl.message('Amount', name: 'amount_ucf', desc: '', args: []);
  }

  /// `Enter Amount`
  String get enter_amount_ucf {
    return Intl.message(
      'Enter Amount',
      name: 'enter_amount_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Wholesale product`
  String get wholesale_product {
    return Intl.message(
      'Wholesale product',
      name: 'wholesale_product',
      desc: '',
      args: [],
    );
  }

  /// `Recharge Wallet`
  String get recharge_wallet_ucf {
    return Intl.message(
      'Recharge Wallet',
      name: 'recharge_wallet_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Please log in to see the wishlist items`
  String get please_log_in_to_see_the_wishlist_items {
    return Intl.message(
      'Please log in to see the wishlist items',
      name: 'please_log_in_to_see_the_wishlist_items',
      desc: '',
      args: [],
    );
  }

  /// `Enter email`
  String get enter_email {
    return Intl.message('Enter email', name: 'enter_email', desc: '', args: []);
  }

  /// `Enter phone number`
  String get enter_phone_number {
    return Intl.message(
      'Enter phone number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Enter password`
  String get enter_password {
    return Intl.message(
      'Enter password',
      name: 'enter_password',
      desc: '',
      args: [],
    );
  }

  /// `or, Login with a phone number`
  String get or_login_with_a_phone {
    return Intl.message(
      'or, Login with a phone number',
      name: 'or_login_with_a_phone',
      desc: '',
      args: [],
    );
  }

  /// `or, Login with an email`
  String get or_login_with_an_email {
    return Intl.message(
      'or, Login with an email',
      name: 'or_login_with_an_email',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password_ucf {
    return Intl.message('Password', name: 'password_ucf', desc: '', args: []);
  }

  /// `Phone`
  String get login_screen_phone {
    return Intl.message(
      'Phone',
      name: 'login_screen_phone',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get login_screen_forgot_password {
    return Intl.message(
      'Forgot Password?',
      name: 'login_screen_forgot_password',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get login_screen_log_in {
    return Intl.message(
      'Log in',
      name: 'login_screen_log_in',
      desc: '',
      args: [],
    );
  }

  /// `or, create a new account ?`
  String get login_screen_or_create_new_account {
    return Intl.message(
      'or, create a new account ?',
      name: 'login_screen_or_create_new_account',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get login_screen_sign_up {
    return Intl.message(
      'Sign up',
      name: 'login_screen_sign_up',
      desc: '',
      args: [],
    );
  }

  /// `Login with`
  String get login_screen_login_with {
    return Intl.message(
      'Login with',
      name: 'login_screen_login_with',
      desc: '',
      args: [],
    );
  }

  /// `Location not available`
  String get location_not_available {
    return Intl.message(
      'Location not available',
      name: 'location_not_available',
      desc: '',
      args: [],
    );
  }

  /// `Login to`
  String get login_to {
    return Intl.message('Login to', name: 'login_to', desc: '', args: []);
  }

  /// `Enter your name`
  String get enter_your_name {
    return Intl.message(
      'Enter your name',
      name: 'enter_your_name',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirm_your_password {
    return Intl.message(
      'Confirm your password',
      name: 'confirm_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Password must contain at least 6 characters`
  String get password_must_contain_at_least_6_characters {
    return Intl.message(
      'Password must contain at least 6 characters',
      name: 'password_must_contain_at_least_6_characters',
      desc: '',
      args: [],
    );
  }

  /// `Passwords do not match`
  String get passwords_do_not_match {
    return Intl.message(
      'Passwords do not match',
      name: 'passwords_do_not_match',
      desc: '',
      args: [],
    );
  }

  /// `Join`
  String get join_ucf {
    return Intl.message('Join', name: 'join_ucf', desc: '', args: []);
  }

  /// `Retype Password`
  String get retype_password_ucf {
    return Intl.message(
      'Retype Password',
      name: 'retype_password_ucf',
      desc: '',
      args: [],
    );
  }

  /// `or, Register with a phone number`
  String get or_register_with_a_phone {
    return Intl.message(
      'or, Register with a phone number',
      name: 'or_register_with_a_phone',
      desc: '',
      args: [],
    );
  }

  /// `or, Register with an email`
  String get or_register_with_an_email {
    return Intl.message(
      'or, Register with an email',
      name: 'or_register_with_an_email',
      desc: '',
      args: [],
    );
  }

  /// `Sign Up`
  String get sign_up_ucf {
    return Intl.message('Sign Up', name: 'sign_up_ucf', desc: '', args: []);
  }

  /// `Already have an Account ?`
  String get already_have_an_account {
    return Intl.message(
      'Already have an Account ?',
      name: 'already_have_an_account',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get log_in {
    return Intl.message('Log in', name: 'log_in', desc: '', args: []);
  }

  /// `Requested for cancellation`
  String get requested_for_cancellation {
    return Intl.message(
      'Requested for cancellation',
      name: 'requested_for_cancellation',
      desc: '',
      args: [],
    );
  }

  /// `or, send code via phone number`
  String get or_send_code_via_phone_number {
    return Intl.message(
      'or, send code via phone number',
      name: 'or_send_code_via_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `or, send code via email`
  String get or_send_code_via_email {
    return Intl.message(
      'or, send code via email',
      name: 'or_send_code_via_email',
      desc: '',
      args: [],
    );
  }

  /// `Send Code`
  String get send_code_ucf {
    return Intl.message('Send Code', name: 'send_code_ucf', desc: '', args: []);
  }

  /// `Enter verification code`
  String get enter_verification_code {
    return Intl.message(
      'Enter verification code',
      name: 'enter_verification_code',
      desc: '',
      args: [],
    );
  }

  /// `Verify your`
  String get verify_your {
    return Intl.message('Verify your', name: 'verify_your', desc: '', args: []);
  }

  /// `Email Account`
  String get email_account_ucf {
    return Intl.message(
      'Email Account',
      name: 'email_account_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number`
  String get phone_number_ucf {
    return Intl.message(
      'Phone Number',
      name: 'phone_number_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Enter the verification code that sent to your email recently.`
  String get enter_the_verification_code_that_sent_to_your_email_recently {
    return Intl.message(
      'Enter the verification code that sent to your email recently.',
      name: 'enter_the_verification_code_that_sent_to_your_email_recently',
      desc: '',
      args: [],
    );
  }

  /// `Enter the verification code that sent to your phone recently.`
  String get enter_the_verification_code_that_sent_to_your_phone_recently {
    return Intl.message(
      'Enter the verification code that sent to your phone recently.',
      name: 'enter_the_verification_code_that_sent_to_your_phone_recently',
      desc: '',
      args: [],
    );
  }

  /// `Resend Code`
  String get resend_code_ucf {
    return Intl.message(
      'Resend Code',
      name: 'resend_code_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code`
  String get enter_the_code {
    return Intl.message(
      'Enter the code',
      name: 'enter_the_code',
      desc: '',
      args: [],
    );
  }

  /// `Enter the code sent`
  String get enter_the_code_sent {
    return Intl.message(
      'Enter the code sent',
      name: 'enter_the_code_sent',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations !!`
  String get congratulations_ucf {
    return Intl.message(
      'Congratulations !!',
      name: 'congratulations_ucf',
      desc: '',
      args: [],
    );
  }

  /// `You have successfully changed your password`
  String get you_have_successfully_changed_your_password {
    return Intl.message(
      'You have successfully changed your password',
      name: 'you_have_successfully_changed_your_password',
      desc: '',
      args: [],
    );
  }

  /// `Password Changed`
  String get password_changed_ucf {
    return Intl.message(
      'Password Changed',
      name: 'password_changed_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Back to Login`
  String get back_to_Login_ucf {
    return Intl.message(
      'Back to Login',
      name: 'back_to_Login_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Cart`
  String get cart_ucf {
    return Intl.message('Cart', name: 'cart_ucf', desc: '', args: []);
  }

  /// `Fetching nagad url ...`
  String get fetching_nagad_url {
    return Intl.message(
      'Fetching nagad url ...',
      name: 'fetching_nagad_url',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Nagad`
  String get pay_with_nagad {
    return Intl.message(
      'Pay with Nagad',
      name: 'pay_with_nagad',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Iyzico`
  String get pay_with_iyzico {
    return Intl.message(
      'Pay with Iyzico',
      name: 'pay_with_iyzico',
      desc: '',
      args: [],
    );
  }

  /// `If you are finding any problem while logging in please contact the admin`
  String get if_you_are_finding_any_problem_while_logging_in {
    return Intl.message(
      'If you are finding any problem while logging in please contact the admin',
      name: 'if_you_are_finding_any_problem_while_logging_in',
      desc: '',
      args: [],
    );
  }

  /// `Fetching paypal url ...`
  String get fetching_paypal_url {
    return Intl.message(
      'Fetching paypal url ...',
      name: 'fetching_paypal_url',
      desc: '',
      args: [],
    );
  }

  /// `Fetching amarpay url ...`
  String get fetching_amarpay_url {
    return Intl.message(
      'Fetching amarpay url ...',
      name: 'fetching_amarpay_url',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Paypal`
  String get pay_with_paypal {
    return Intl.message(
      'Pay with Paypal',
      name: 'pay_with_paypal',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Paystack`
  String get pay_with_paystack {
    return Intl.message(
      'Pay with Paystack',
      name: 'pay_with_paystack',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Paytm`
  String get pay_with_paytm {
    return Intl.message(
      'Pay with Paytm',
      name: 'pay_with_paytm',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Razorpay`
  String get pay_with_razorpay {
    return Intl.message(
      'Pay with Razorpay',
      name: 'pay_with_razorpay',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Amarpay`
  String get pay_with_amarpay {
    return Intl.message(
      'Pay with Amarpay',
      name: 'pay_with_amarpay',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Instamojo`
  String get pay_with_instamojo {
    return Intl.message(
      'Pay with Instamojo',
      name: 'pay_with_instamojo',
      desc: '',
      args: [],
    );
  }

  /// `Fetching sslcommerz url ...`
  String get fetching_sslcommerz_url {
    return Intl.message(
      'Fetching sslcommerz url ...',
      name: 'fetching_sslcommerz_url',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Sslcommerz`
  String get pay_with_sslcommerz {
    return Intl.message(
      'Pay with Sslcommerz',
      name: 'pay_with_sslcommerz',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Stripe`
  String get pay_with_stripe {
    return Intl.message(
      'Pay with Stripe',
      name: 'pay_with_stripe',
      desc: '',
      args: [],
    );
  }

  /// `Pay with PayFast`
  String get pay_with_payfast {
    return Intl.message(
      'Pay with PayFast',
      name: 'pay_with_payfast',
      desc: '',
      args: [],
    );
  }

  /// `Pay with Phonepay`
  String get pay_with_phonepay {
    return Intl.message(
      'Pay with Phonepay',
      name: 'pay_with_phonepay',
      desc: '',
      args: [],
    );
  }

  /// `Pay with MyFatoora`
  String get pay_with_my_fatoora {
    return Intl.message(
      'Pay with MyFatoora',
      name: 'pay_with_my_fatoora',
      desc: '',
      args: [],
    );
  }

  /// `Your delivery location . . .`
  String get your_delivery_location {
    return Intl.message(
      'Your delivery location . . .',
      name: 'your_delivery_location',
      desc: '',
      args: [],
    );
  }

  /// `Calculating...`
  String get calculating {
    return Intl.message(
      'Calculating...',
      name: 'calculating',
      desc: '',
      args: [],
    );
  }

  /// `Pick Here`
  String get pick_here {
    return Intl.message('Pick Here', name: 'pick_here', desc: '', args: []);
  }

  /// `Amount,Name and Transaction id are necessary`
  String get amount_name_and_transaction_id_are_necessary {
    return Intl.message(
      'Amount,Name and Transaction id are necessary',
      name: 'amount_name_and_transaction_id_are_necessary',
      desc: '',
      args: [],
    );
  }

  /// `Photo proof is necessary`
  String get photo_proof_is_necessary {
    return Intl.message(
      'Photo proof is necessary',
      name: 'photo_proof_is_necessary',
      desc: '',
      args: [],
    );
  }

  /// `All * marked fields are mandatory`
  String get all_marked_fields_are_mandatory {
    return Intl.message(
      'All * marked fields are mandatory',
      name: 'all_marked_fields_are_mandatory',
      desc: '',
      args: [],
    );
  }

  /// `Correctly fill-up the necessary information. Later you cannot edit or re-submit the form`
  String get correctly_fill_up_the_necessary_information {
    return Intl.message(
      'Correctly fill-up the necessary information. Later you cannot edit or re-submit the form',
      name: 'correctly_fill_up_the_necessary_information',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Id`
  String get transaction_id_ucf {
    return Intl.message(
      'Transaction Id',
      name: 'transaction_id_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Photo Proof`
  String get photo_proof_ucf {
    return Intl.message(
      'Photo Proof',
      name: 'photo_proof_ucf',
      desc: '',
      args: [],
    );
  }

  /// `only image file allowed`
  String get only_image_file_allowed {
    return Intl.message(
      'only image file allowed',
      name: 'only_image_file_allowed',
      desc: '',
      args: [],
    );
  }

  /// `Offline`
  String get offline_ucf {
    return Intl.message('Offline', name: 'offline_ucf', desc: '', args: []);
  }

  /// `Type your review here ...`
  String get type_your_review_here {
    return Intl.message(
      'Type your review here ...',
      name: 'type_your_review_here',
      desc: '',
      args: [],
    );
  }

  /// `No More Reviews`
  String get no_more_reviews_ucf {
    return Intl.message(
      'No More Reviews',
      name: 'no_more_reviews_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading More Reviews ...`
  String get loading_more_reviews_ucf {
    return Intl.message(
      'Loading More Reviews ...',
      name: 'loading_more_reviews_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No reviews yet. Be the first one to review this product`
  String get no_reviews_yet_be_the_first {
    return Intl.message(
      'No reviews yet. Be the first one to review this product',
      name: 'no_reviews_yet_be_the_first',
      desc: '',
      args: [],
    );
  }

  /// `You need to login to give a review`
  String get you_need_to_login_to_give_a_review {
    return Intl.message(
      'You need to login to give a review',
      name: 'you_need_to_login_to_give_a_review',
      desc: '',
      args: [],
    );
  }

  /// `Review cannot be empty`
  String get review_can_not_empty_warning {
    return Intl.message(
      'Review cannot be empty',
      name: 'review_can_not_empty_warning',
      desc: '',
      args: [],
    );
  }

  /// `At least one star must be given`
  String get at_least_one_star_must_be_given {
    return Intl.message(
      'At least one star must be given',
      name: 'at_least_one_star_must_be_given',
      desc: '',
      args: [],
    );
  }

  /// `Password Changes`
  String get password_changes_ucf {
    return Intl.message(
      'Password Changes',
      name: 'password_changes_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Basic Information`
  String get basic_information_ucf {
    return Intl.message(
      'Basic Information',
      name: 'basic_information_ucf',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password_ucf {
    return Intl.message(
      'New Password',
      name: 'new_password_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Update Profile`
  String get update_profile_ucf {
    return Intl.message(
      'Update Profile',
      name: 'update_profile_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Update Password`
  String get update_password_ucf {
    return Intl.message(
      'Update Password',
      name: 'update_password_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile_ucf {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Picked`
  String get picked_ucf {
    return Intl.message('Picked', name: 'picked_ucf', desc: '', args: []);
  }

  /// `Top Selling`
  String get top_selling_ucf {
    return Intl.message(
      'Top Selling',
      name: 'top_selling_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Store Home`
  String get store_home_ucf {
    return Intl.message(
      'Store Home',
      name: 'store_home_ucf',
      desc: '',
      args: [],
    );
  }

  /// `New Arrivals Products`
  String get new_arrivals_products_ucf {
    return Intl.message(
      'New Arrivals Products',
      name: 'new_arrivals_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No featured product is available from this seller`
  String get no_featured_product_is_available_from_this_seller {
    return Intl.message(
      'No featured product is available from this seller',
      name: 'no_featured_product_is_available_from_this_seller',
      desc: '',
      args: [],
    );
  }

  /// `No new arrivals`
  String get no_new_arrivals {
    return Intl.message(
      'No new arrivals',
      name: 'no_new_arrivals',
      desc: '',
      args: [],
    );
  }

  /// `View All Products From This Seller`
  String get view_all_products_prom_this_seller_all_capital {
    return Intl.message(
      'View All Products From This Seller',
      name: 'view_all_products_prom_this_seller_all_capital',
      desc: '',
      args: [],
    );
  }

  /// `Search products of shop`
  String get search_products_of_shop {
    return Intl.message(
      'Search products of shop',
      name: 'search_products_of_shop',
      desc: '',
      args: [],
    );
  }

  /// `Total Collected`
  String get total_collected_ucf {
    return Intl.message(
      'Total Collected',
      name: 'total_collected_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Yesterday`
  String get yesterday_ucf {
    return Intl.message('Yesterday', name: 'yesterday_ucf', desc: '', args: []);
  }

  /// `Your app is now`
  String get your_app_is_now {
    return Intl.message(
      'Your app is now',
      name: 'your_app_is_now',
      desc: '',
      args: [],
    );
  }

  /// `You are currently offline`
  String get you_are_currently_offline {
    return Intl.message(
      'You are currently offline',
      name: 'you_are_currently_offline',
      desc: '',
      args: [],
    );
  }

  /// `View Products`
  String get view_products_ucf {
    return Intl.message(
      'View Products',
      name: 'view_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Pending`
  String get pending_ucf {
    return Intl.message('Pending', name: 'pending_ucf', desc: '', args: []);
  }

  /// `Picked Up`
  String get picked_up_ucf {
    return Intl.message('Picked Up', name: 'picked_up_ucf', desc: '', args: []);
  }

  /// `Money Withdraw `
  String get money_withdraw_ucf {
    return Intl.message(
      'Money Withdraw ',
      name: 'money_withdraw_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Payment History`
  String get payment_history_ucf {
    return Intl.message(
      'Payment History',
      name: 'payment_history_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Add New Coupon`
  String get add_new_coupon_ucf {
    return Intl.message(
      'Add New Coupon',
      name: 'add_new_coupon_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Warning!`
  String get warning_ucf {
    return Intl.message('Warning!', name: 'warning_ucf', desc: '', args: []);
  }

  /// `Coupon Code Is Empty`
  String get coupon_code_is_empty_ucf {
    return Intl.message(
      'Coupon Code Is Empty',
      name: 'coupon_code_is_empty_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Discount Amount Is Invalid`
  String get discount_amount_is_invalid_ucf {
    return Intl.message(
      'Discount Amount Is Invalid',
      name: 'discount_amount_is_invalid_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Please Select Minimum 1 Product`
  String get please_select_minimum_1_product_ucf {
    return Intl.message(
      'Please Select Minimum 1 Product',
      name: 'please_select_minimum_1_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Minimum Shopping`
  String get invalid_minimum_shopping_ucf {
    return Intl.message(
      'Invalid Minimum Shopping',
      name: 'invalid_minimum_shopping_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Invalid Maximum Discount`
  String get invalid_maximum_discount_ucf {
    return Intl.message(
      'Invalid Maximum Discount',
      name: 'invalid_maximum_discount_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Edit Coupon`
  String get edit_coupon_ucf {
    return Intl.message(
      'Edit Coupon',
      name: 'edit_coupon_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Save`
  String get save_ucf {
    return Intl.message('Save', name: 'save_ucf', desc: '', args: []);
  }

  /// `Discount`
  String get discount_ucf {
    return Intl.message('Discount', name: 'discount_ucf', desc: '', args: []);
  }

  /// `Add Your Coupon Code`
  String get add_your_coupon_code_ucf {
    return Intl.message(
      'Add Your Coupon Code',
      name: 'add_your_coupon_code_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Shopping`
  String get minimum_shopping_ucf {
    return Intl.message(
      'Minimum Shopping',
      name: 'minimum_shopping_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Discount Amount`
  String get maximum_discount_amount_ucf {
    return Intl.message(
      'Maximum Discount Amount',
      name: 'maximum_discount_amount_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Coupon information adding`
  String get coupon_information_adding {
    return Intl.message(
      'Coupon information adding',
      name: 'coupon_information_adding',
      desc: '',
      args: [],
    );
  }

  /// `Select Products`
  String get select_products_ucf {
    return Intl.message(
      'Select Products',
      name: 'select_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Offline Payment`
  String get offline_payment_ucf {
    return Intl.message(
      'Offline Payment',
      name: 'offline_payment_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Youtube`
  String get youtube_ucf {
    return Intl.message('Youtube', name: 'youtube_ucf', desc: '', args: []);
  }

  /// `Dailymotion`
  String get dailymotion_ucf {
    return Intl.message(
      'Dailymotion',
      name: 'dailymotion_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Vimeo`
  String get vimeo_ucf {
    return Intl.message('Vimeo', name: 'vimeo_ucf', desc: '', args: []);
  }

  /// `Save & Unpublish`
  String get save_n_unpublish_ucf {
    return Intl.message(
      'Save & Unpublish',
      name: 'save_n_unpublish_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Save & Publish`
  String get save_n_publish_ucf {
    return Intl.message(
      'Save & Publish',
      name: 'save_n_publish_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Information`
  String get product_information_ucf {
    return Intl.message(
      'Product Information',
      name: 'product_information_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Unit`
  String get unit_ucf {
    return Intl.message('Unit', name: 'unit_ucf', desc: '', args: []);
  }

  /// `Unit (e.g. KG, Pc etc)`
  String get unit_eg_ucf {
    return Intl.message(
      'Unit (e.g. KG, Pc etc)',
      name: 'unit_eg_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Weight (In Kg)`
  String get weight_in_kg_ucf {
    return Intl.message(
      'Weight (In Kg)',
      name: 'weight_in_kg_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Purchase Quantity`
  String get minimum_purchase_quantity_ucf {
    return Intl.message(
      'Minimum Purchase Quantity',
      name: 'minimum_purchase_quantity_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Tags`
  String get tags_ucf {
    return Intl.message('Tags', name: 'tags_ucf', desc: '', args: []);
  }

  /// `Type and hit enter to add a tag`
  String get type_and_hit_enter_to_add_a_tag_ucf {
    return Intl.message(
      'Type and hit enter to add a tag',
      name: 'type_and_hit_enter_to_add_a_tag_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Barcode`
  String get barcode_ucf {
    return Intl.message('Barcode', name: 'barcode_ucf', desc: '', args: []);
  }

  /// `Refundable`
  String get refundable_ucf {
    return Intl.message(
      'Refundable',
      name: 'refundable_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Description`
  String get product_description_ucf {
    return Intl.message(
      'Product Description',
      name: 'product_description_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Cash on Delivery`
  String get cash_on_delivery_ucf {
    return Intl.message(
      'Cash on Delivery',
      name: 'cash_on_delivery_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Vat & Tax`
  String get vat_n_tax_ucf {
    return Intl.message('Vat & Tax', name: 'vat_n_tax_ucf', desc: '', args: []);
  }

  /// `Product Images`
  String get product_images_ucf {
    return Intl.message(
      'Product Images',
      name: 'product_images_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Thumbnail Image (300x300)`
  String get thumbnail_image_300_ucf {
    return Intl.message(
      'Thumbnail Image (300x300)',
      name: 'thumbnail_image_300_ucf',
      desc: '',
      args: [],
    );
  }

  /// `These images are visible in all products box. Use 300x300 size image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive. `
  String get thumbnail_image_300_des {
    return Intl.message(
      'These images are visible in all products box. Use 300x300 size image. Keep some blank space around main object of your image as we had to crop some edge in different devices to make it responsive. ',
      name: 'thumbnail_image_300_des',
      desc: '',
      args: [],
    );
  }

  /// `Product Videos`
  String get product_videos_ucf {
    return Intl.message(
      'Product Videos',
      name: 'product_videos_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Video Provider`
  String get video_provider_ucf {
    return Intl.message(
      'Video Provider',
      name: 'video_provider_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Video Link`
  String get video_link_ucf {
    return Intl.message(
      'Video Link',
      name: 'video_link_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Use proper link without extra parameter. Don't use short share link/embedded iframe code.`
  String get video_link_des {
    return Intl.message(
      'Use proper link without extra parameter. Don\'t use short share link/embedded iframe code.',
      name: 'video_link_des',
      desc: '',
      args: [],
    );
  }

  /// `PDF Description`
  String get pdf_description_ucf {
    return Intl.message(
      'PDF Description',
      name: 'pdf_description_ucf',
      desc: '',
      args: [],
    );
  }

  /// `PDF Specification`
  String get pdf_specification_ucf {
    return Intl.message(
      'PDF Specification',
      name: 'pdf_specification_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Unit Price`
  String get unit_price_ucf {
    return Intl.message(
      'Unit Price',
      name: 'unit_price_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Discount Date Range`
  String get discount_date_range_ucf {
    return Intl.message(
      'Discount Date Range',
      name: 'discount_date_range_ucf',
      desc: '',
      args: [],
    );
  }

  /// `SKU`
  String get sku_all_capital {
    return Intl.message('SKU', name: 'sku_all_capital', desc: '', args: []);
  }

  /// `External Link`
  String get external_link_ucf {
    return Intl.message(
      'External Link',
      name: 'external_link_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Leave it blank if you do not use external site link`
  String get leave_it_blank_if_you_do_not_use_external_site_link {
    return Intl.message(
      'Leave it blank if you do not use external site link',
      name: 'leave_it_blank_if_you_do_not_use_external_site_link',
      desc: '',
      args: [],
    );
  }

  /// `External Link Button Text`
  String get external_link_button_text_ucf {
    return Intl.message(
      'External Link Button Text',
      name: 'external_link_button_text_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Low Stock Quantity Warning`
  String get low_stock_quantity_warning_ucf {
    return Intl.message(
      'Low Stock Quantity Warning',
      name: 'low_stock_quantity_warning_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Stock Visibility State`
  String get stock_visibility_state_ucf {
    return Intl.message(
      'Stock Visibility State',
      name: 'stock_visibility_state_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Variation`
  String get product_variation_ucf {
    return Intl.message(
      'Product Variation',
      name: 'product_variation_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Colors`
  String get colors_ucf {
    return Intl.message('Colors', name: 'colors_ucf', desc: '', args: []);
  }

  /// `Attributes`
  String get attributes_ucf {
    return Intl.message(
      'Attributes',
      name: 'attributes_ucf',
      desc: '',
      args: [],
    );
  }

  /// `SEO`
  String get seo_all_capital {
    return Intl.message('SEO', name: 'seo_all_capital', desc: '', args: []);
  }

  /// `Meta Title`
  String get meta_title_ucf {
    return Intl.message(
      'Meta Title',
      name: 'meta_title_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Meta Image`
  String get meta_image_ucf {
    return Intl.message(
      'Meta Image',
      name: 'meta_image_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Configuration`
  String get shipping_configuration_ucf {
    return Intl.message(
      'Shipping Configuration',
      name: 'shipping_configuration_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shipping configuration is maintained by Admin.`
  String get shipping_configuration_is_maintained_by_admin {
    return Intl.message(
      'Shipping configuration is maintained by Admin.',
      name: 'shipping_configuration_is_maintained_by_admin',
      desc: '',
      args: [],
    );
  }

  /// `Estimate Shipping Time`
  String get estimate_shipping_time_ucf {
    return Intl.message(
      'Estimate Shipping Time',
      name: 'estimate_shipping_time_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Days`
  String get shipping_days_ucf {
    return Intl.message(
      'Shipping Days',
      name: 'shipping_days_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Gallery Images (600x600)`
  String get gallery_images_600 {
    return Intl.message(
      'Gallery Images (600x600)',
      name: 'gallery_images_600',
      desc: '',
      args: [],
    );
  }

  /// `These images are visible in product details page gallery. Use 600x600 sizes images.`
  String get these_images_are_visible_in_product_details_page_gallery_600 {
    return Intl.message(
      'These images are visible in product details page gallery. Use 600x600 sizes images.',
      name: 'these_images_are_visible_in_product_details_page_gallery_600',
      desc: '',
      args: [],
    );
  }

  /// `Photo`
  String get photo_ucf {
    return Intl.message('Photo', name: 'photo_ucf', desc: '', args: []);
  }

  /// `General`
  String get general_ucf {
    return Intl.message('General', name: 'general_ucf', desc: '', args: []);
  }

  /// `Media`
  String get media_ucf {
    return Intl.message('Media', name: 'media_ucf', desc: '', args: []);
  }

  /// `Price & Stock`
  String get price_n_stock_ucf {
    return Intl.message(
      'Price & Stock',
      name: 'price_n_stock_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shipping`
  String get shipping_ucf {
    return Intl.message('Shipping', name: 'shipping_ucf', desc: '', args: []);
  }

  /// `Add New Product`
  String get add_new_product_ucf {
    return Intl.message(
      'Add New Product',
      name: 'add_new_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Reviews`
  String get product_reviews_ucf {
    return Intl.message(
      'Product Reviews',
      name: 'product_reviews_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Update Now`
  String get update_now_ucf {
    return Intl.message(
      'Update Now',
      name: 'update_now_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Slug`
  String get slug_ucf {
    return Intl.message('Slug', name: 'slug_ucf', desc: '', args: []);
  }

  /// `Update Product`
  String get update_product_ucf {
    return Intl.message(
      'Update Product',
      name: 'update_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shop banner image is required.`
  String get shop_banner_image_is_required {
    return Intl.message(
      'Shop banner image is required.',
      name: 'shop_banner_image_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Banner settings`
  String get banner_settings {
    return Intl.message(
      'Banner settings',
      name: 'banner_settings',
      desc: '',
      args: [],
    );
  }

  /// `Banner (1500 x 450)`
  String get banner_1500_x_450 {
    return Intl.message(
      'Banner (1500 x 450)',
      name: 'banner_1500_x_450',
      desc: '',
      args: [],
    );
  }

  /// `We had to limit height to maintain consistency. In some device both side of the banner might be cropped for height limitation.`
  String get banner_1500_x_450_des {
    return Intl.message(
      'We had to limit height to maintain consistency. In some device both side of the banner might be cropped for height limitation.',
      name: 'banner_1500_x_450_des',
      desc: '',
      args: [],
    );
  }

  /// `Delivery boy pickup point`
  String get delivery_boy_pickup_point {
    return Intl.message(
      'Delivery boy pickup point',
      name: 'delivery_boy_pickup_point',
      desc: '',
      args: [],
    );
  }

  /// `Longitude`
  String get longitude_ucf {
    return Intl.message('Longitude', name: 'longitude_ucf', desc: '', args: []);
  }

  /// `Latitude`
  String get latitude_ucf {
    return Intl.message('Latitude', name: 'latitude_ucf', desc: '', args: []);
  }

  /// `Update location`
  String get update_location {
    return Intl.message(
      'Update location',
      name: 'update_location',
      desc: '',
      args: [],
    );
  }

  /// `Location`
  String get location_ucf {
    return Intl.message('Location', name: 'location_ucf', desc: '', args: []);
  }

  /// `Calculating`
  String get calculating_ucf {
    return Intl.message(
      'Calculating',
      name: 'calculating_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Pick Here`
  String get pick_here_ucf {
    return Intl.message('Pick Here', name: 'pick_here_ucf', desc: '', args: []);
  }

  /// `Shop name is required`
  String get shop_name_is_required {
    return Intl.message(
      'Shop name is required',
      name: 'shop_name_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Shop phone is required`
  String get shop_phone_is_required {
    return Intl.message(
      'Shop phone is required',
      name: 'shop_phone_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Shop address is required`
  String get shop_address_is_required {
    return Intl.message(
      'Shop address is required',
      name: 'shop_address_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Shop title is required`
  String get shop_title_is_required {
    return Intl.message(
      'Shop title is required',
      name: 'shop_title_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Shop description is required`
  String get shop_description_is_required {
    return Intl.message(
      'Shop description is required',
      name: 'shop_description_is_required',
      desc: '',
      args: [],
    );
  }

  /// `Shop logo is required`
  String get shop_logo_is_required {
    return Intl.message(
      'Shop logo is required',
      name: 'shop_logo_is_required',
      desc: '',
      args: [],
    );
  }

  /// `General Setting`
  String get general_setting_ucf {
    return Intl.message(
      'General Setting',
      name: 'general_setting_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shop description`
  String get shop_description {
    return Intl.message(
      'Shop description',
      name: 'shop_description',
      desc: '',
      args: [],
    );
  }

  /// `Shop title`
  String get shop_title {
    return Intl.message('Shop title', name: 'shop_title', desc: '', args: []);
  }

  /// `Shop phone`
  String get shop_phone {
    return Intl.message('Shop phone', name: 'shop_phone', desc: '', args: []);
  }

  /// `Shop address`
  String get shop_address {
    return Intl.message(
      'Shop address',
      name: 'shop_address',
      desc: '',
      args: [],
    );
  }

  /// `Shop Name`
  String get shop_name_ucf {
    return Intl.message('Shop Name', name: 'shop_name_ucf', desc: '', args: []);
  }

  /// `Shop logo`
  String get shop_logo_ucf {
    return Intl.message('Shop logo', name: 'shop_logo_ucf', desc: '', args: []);
  }

  /// `Shop Settings`
  String get shop_settings_ucf {
    return Intl.message(
      'Shop Settings',
      name: 'shop_settings_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Social media link`
  String get social_media_link {
    return Intl.message(
      'Social media link',
      name: 'social_media_link',
      desc: '',
      args: [],
    );
  }

  /// `Google`
  String get google_ucf {
    return Intl.message('Google', name: 'google_ucf', desc: '', args: []);
  }

  /// `Twitter`
  String get twitter_ucf {
    return Intl.message('Twitter', name: 'twitter_ucf', desc: '', args: []);
  }

  /// `Instagram`
  String get instagram_ucf {
    return Intl.message('Instagram', name: 'instagram_ucf', desc: '', args: []);
  }

  /// `Facebook`
  String get facebook_ucf {
    return Intl.message('Facebook', name: 'facebook_ucf', desc: '', args: []);
  }

  /// `Upload File`
  String get upload_file_ucf {
    return Intl.message(
      'Upload File',
      name: 'upload_file_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Commission History`
  String get commission_history_ucf {
    return Intl.message(
      'Commission History',
      name: 'commission_history_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Chat list`
  String get chat_list {
    return Intl.message('Chat list', name: 'chat_list', desc: '', args: []);
  }

  /// `Admin Commission`
  String get admin_commission_ucf {
    return Intl.message(
      'Admin Commission',
      name: 'admin_commission_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Create a ticket`
  String get create_a_ticket {
    return Intl.message(
      'Create a ticket',
      name: 'create_a_ticket',
      desc: '',
      args: [],
    );
  }

  /// `Subject`
  String get subject_ucf {
    return Intl.message('Subject', name: 'subject_ucf', desc: '', args: []);
  }

  /// `Provide a detailed description`
  String get provide_a_detailed_description {
    return Intl.message(
      'Provide a detailed description',
      name: 'provide_a_detailed_description',
      desc: '',
      args: [],
    );
  }

  /// `Send ticket`
  String get send_ticket {
    return Intl.message('Send ticket', name: 'send_ticket', desc: '', args: []);
  }

  /// `Top Products`
  String get top_products_ucf {
    return Intl.message(
      'Top Products',
      name: 'top_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Your Categories`
  String get your_categories_ucf {
    return Intl.message(
      'Your Categories',
      name: 'your_categories_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Sales Stat`
  String get sales_stat_ucf {
    return Intl.message(
      'Sales Stat',
      name: 'sales_stat_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product Upload Limit: `
  String get product_upload_limit_ucf {
    return Intl.message(
      'Product Upload Limit: ',
      name: 'product_upload_limit_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Package Expires at: `
  String get package_expires_at_ucf {
    return Intl.message(
      'Package Expires at: ',
      name: 'package_expires_at_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Manage & organize\nyour shop.`
  String get manage_n_organize_your_shop {
    return Intl.message(
      'Manage & organize\nyour shop.',
      name: 'manage_n_organize_your_shop',
      desc: '',
      args: [],
    );
  }

  /// `Configure your payment\nmethod.`
  String get configure_your_payment_method {
    return Intl.message(
      'Configure your payment\nmethod.',
      name: 'configure_your_payment_method',
      desc: '',
      args: [],
    );
  }

  /// `Configure Now`
  String get configure_now_ucf {
    return Intl.message(
      'Configure Now',
      name: 'configure_now_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Go to settings`
  String get go_to_settings {
    return Intl.message(
      'Go to settings',
      name: 'go_to_settings',
      desc: '',
      args: [],
    );
  }

  /// `Payment Settings`
  String get payment_settings_ucf {
    return Intl.message(
      'Payment Settings',
      name: 'payment_settings_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get rating_ucf {
    return Intl.message('Rating', name: 'rating_ucf', desc: '', args: []);
  }

  /// `Total Orders`
  String get total_orders_ucf {
    return Intl.message(
      'Total Orders',
      name: 'total_orders_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Total Sales`
  String get total_sales_ucf {
    return Intl.message(
      'Total Sales',
      name: 'total_sales_ucf',
      desc: '',
      args: [],
    );
  }

  /// `hi, welcome to`
  String get hi_welcome_to_all_lower {
    return Intl.message(
      'hi, welcome to',
      name: 'hi_welcome_to_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `login to your account`
  String get login_to_your_account_all_lower {
    return Intl.message(
      'login to your account',
      name: 'login_to_your_account_all_lower',
      desc: '',
      args: [],
    );
  }

  /// `In case of any difficulties, contact with admin.`
  String get in_case_of_any_difficulties_contact_with_admin {
    return Intl.message(
      'In case of any difficulties, contact with admin.',
      name: 'in_case_of_any_difficulties_contact_with_admin',
      desc: '',
      args: [],
    );
  }

  /// `Pending Balance`
  String get pending_balance_ucf {
    return Intl.message(
      'Pending Balance',
      name: 'pending_balance_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Send Withdraw Request`
  String get send_withdraw_request_ucf {
    return Intl.message(
      'Send Withdraw Request',
      name: 'send_withdraw_request_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Premium Package for Seller`
  String get premium_package_for_seller_ucf {
    return Intl.message(
      'Premium Package for Seller',
      name: 'premium_package_for_seller_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Type`
  String get select_payment_type_ucf {
    return Intl.message(
      'Select Payment Type',
      name: 'select_payment_type_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Select Payment Option`
  String get select_payment_option_ucf {
    return Intl.message(
      'Select Payment Option',
      name: 'select_payment_option_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Enter phone number`
  String get enter_phone_number_ucf {
    return Intl.message(
      'Enter phone number',
      name: 'enter_phone_number_ucf',
      desc: '',
      args: [],
    );
  }

  /// `We will send you a OTP code if the mail id is correct.`
  String get we_will_send_you_a_OTP_code_if_the_mail_id_is_correct_ucf {
    return Intl.message(
      'We will send you a OTP code if the mail id is correct.',
      name: 'we_will_send_you_a_OTP_code_if_the_mail_id_is_correct_ucf',
      desc: '',
      args: [],
    );
  }

  /// `We will send you a OTP code if the phone no is correct.`
  String get we_will_send_you_a_OTP_code_if_the_phone_no_is_correct_ucf {
    return Intl.message(
      'We will send you a OTP code if the phone no is correct.',
      name: 'we_will_send_you_a_OTP_code_if_the_phone_no_is_correct_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Reset Password`
  String get reset_password_ucf {
    return Intl.message(
      'Reset Password',
      name: 'reset_password_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Bank payment`
  String get bank_payment {
    return Intl.message(
      'Bank payment',
      name: 'bank_payment',
      desc: '',
      args: [],
    );
  }

  /// `Cash payment`
  String get cash_payment {
    return Intl.message(
      'Cash payment',
      name: 'cash_payment',
      desc: '',
      args: [],
    );
  }

  /// `Bank account number`
  String get bank_account_number {
    return Intl.message(
      'Bank account number',
      name: 'bank_account_number',
      desc: '',
      args: [],
    );
  }

  /// `Bank account name`
  String get bank_account_name {
    return Intl.message(
      'Bank account name',
      name: 'bank_account_name',
      desc: '',
      args: [],
    );
  }

  /// `Bank Name`
  String get bank_name_ucf {
    return Intl.message('Bank Name', name: 'bank_name_ucf', desc: '', args: []);
  }

  /// `Bank Routing Number`
  String get bank_routing_number_ucf {
    return Intl.message(
      'Bank Routing Number',
      name: 'bank_routing_number_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Refund Requests`
  String get no_more_refund_requests_ucf {
    return Intl.message(
      'No More Refund Requests',
      name: 'no_more_refund_requests_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Approved`
  String get approved_ucf {
    return Intl.message('Approved', name: 'approved_ucf', desc: '', args: []);
  }

  /// `Approve`
  String get approve_ucf {
    return Intl.message('Approve', name: 'approve_ucf', desc: '', args: []);
  }

  /// `Rejected`
  String get rejected_ucf {
    return Intl.message('Rejected', name: 'rejected_ucf', desc: '', args: []);
  }

  /// `Reject`
  String get reject_ucf {
    return Intl.message('Reject', name: 'reject_ucf', desc: '', args: []);
  }

  /// `Support Tickets`
  String get support_tickets_ucf {
    return Intl.message(
      'Support Tickets',
      name: 'support_tickets_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options_ucf {
    return Intl.message('Options', name: 'options_ucf', desc: '', args: []);
  }

  /// `Amount is invalid`
  String get amount_is_invalid {
    return Intl.message(
      'Amount is invalid',
      name: 'amount_is_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Message is invalid`
  String get message_is_invalid {
    return Intl.message(
      'Message is invalid',
      name: 'message_is_invalid',
      desc: '',
      args: [],
    );
  }

  /// `Coupon`
  String get coupon_ucf {
    return Intl.message('Coupon', name: 'coupon_ucf', desc: '', args: []);
  }

  /// `Withdraw`
  String get withdraw_ucf {
    return Intl.message('Withdraw', name: 'withdraw_ucf', desc: '', args: []);
  }

  /// `Conversation`
  String get conversation_ucf {
    return Intl.message(
      'Conversation',
      name: 'conversation_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Wholesale Prices`
  String get wholesale_prices_ucf {
    return Intl.message(
      'Wholesale Prices',
      name: 'wholesale_prices_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Minimum Quantity`
  String get min_quantity_ucf {
    return Intl.message(
      'Minimum Quantity',
      name: 'min_quantity_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Maximum Quantity`
  String get max_quantity_ucf {
    return Intl.message(
      'Maximum Quantity',
      name: 'max_quantity_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Add More`
  String get add_more_ucf {
    return Intl.message('Add More', name: 'add_more_ucf', desc: '', args: []);
  }

  /// `OR`
  String get or {
    return Intl.message('OR', name: 'or', desc: '', args: []);
  }

  /// `Registration`
  String get registration {
    return Intl.message(
      'Registration',
      name: 'registration',
      desc: '',
      args: [],
    );
  }

  /// `Be a seller`
  String get be_a_seller {
    return Intl.message('Be a seller', name: 'be_a_seller', desc: '', args: []);
  }

  /// `Personal Info`
  String get personal_info_ucf {
    return Intl.message(
      'Personal Info',
      name: 'personal_info_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Basic Info`
  String get basic_info_ucf {
    return Intl.message(
      'Basic Info',
      name: 'basic_info_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Shop Name`
  String get shop_name {
    return Intl.message('Shop Name', name: 'shop_name', desc: '', args: []);
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Verify Now`
  String get verify_now {
    return Intl.message('Verify Now', name: 'verify_now', desc: '', args: []);
  }

  /// `Verify your account`
  String get verify_your_account {
    return Intl.message(
      'Verify your account',
      name: 'verify_your_account',
      desc: '',
      args: [],
    );
  }

  /// `Your account is unverified`
  String get your_account_is_unverified {
    return Intl.message(
      'Your account is unverified',
      name: 'your_account_is_unverified',
      desc: '',
      args: [],
    );
  }

  /// `Verification Form`
  String get verification_form_ucf {
    return Intl.message(
      'Verification Form',
      name: 'verification_form_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Cancel Order`
  String get cancel_order_ucf {
    return Intl.message(
      'Cancel Order',
      name: 'cancel_order_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Reorder`
  String get re_order_ucf {
    return Intl.message('Reorder', name: 're_order_ucf', desc: '', args: []);
  }

  /// `Info`
  String get info_ucf {
    return Intl.message('Info', name: 'info_ucf', desc: '', args: []);
  }

  /// `Min Qty`
  String get min_qty_ucf {
    return Intl.message('Min Qty', name: 'min_qty_ucf', desc: '', args: []);
  }

  /// `Max Qty`
  String get max_qty_ucf {
    return Intl.message('Max Qty', name: 'max_qty_ucf', desc: '', args: []);
  }

  /// `Invoice`
  String get invoice_ucf {
    return Intl.message('Invoice', name: 'invoice_ucf', desc: '', args: []);
  }

  /// `No File Chosen`
  String get no_file_chosen_ucf {
    return Intl.message(
      'No File Chosen',
      name: 'no_file_chosen_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Product File`
  String get product_file_ucf {
    return Intl.message(
      'Product File',
      name: 'product_file_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Purchase Price`
  String get purchase_price_ucf {
    return Intl.message(
      'Purchase Price',
      name: 'purchase_price_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Digital Products`
  String get digital_product_ucf {
    return Intl.message(
      'Digital Products',
      name: 'digital_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Refunded`
  String get refunded_ucf {
    return Intl.message('Refunded', name: 'refunded_ucf', desc: '', args: []);
  }

  /// `Bid For Product `
  String get bid_for_product_ucf {
    return Intl.message(
      'Bid For Product ',
      name: 'bid_for_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Min Bid Amount`
  String get min_bid_amount_ucf {
    return Intl.message(
      'Min Bid Amount',
      name: 'min_bid_amount_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Place Bid Price `
  String get place_bid_price_ucf {
    return Intl.message(
      'Place Bid Price ',
      name: 'place_bid_price_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out this form`
  String get please_fill_out_this_form {
    return Intl.message(
      'Please fill out this form',
      name: 'please_fill_out_this_form',
      desc: '',
      args: [],
    );
  }

  /// `Value must be greater than\n minimum bid`
  String get value_must_be_greater {
    return Intl.message(
      'Value must be greater than\n minimum bid',
      name: 'value_must_be_greater',
      desc: '',
      args: [],
    );
  }

  /// `Value must be greater than\n or equal to Minimum bid`
  String get value_must_be_greater_or_equal {
    return Intl.message(
      'Value must be greater than\n or equal to Minimum bid',
      name: 'value_must_be_greater_or_equal',
      desc: '',
      args: [],
    );
  }

  /// `Support Ticket`
  String get seller_dashboard_support_ticket_ucf {
    return Intl.message(
      'Support Ticket',
      name: 'seller_dashboard_support_ticket_ucf',
      desc: '',
      args: [],
    );
  }

  /// `View a Ticket`
  String get view_a_ticket {
    return Intl.message(
      'View a Ticket',
      name: 'view_a_ticket',
      desc: '',
      args: [],
    );
  }

  /// `Visit store`
  String get visit_store_ucf {
    return Intl.message(
      'Visit store',
      name: 'visit_store_ucf',
      desc: '',
      args: [],
    );
  }

  /// `OFF`
  String get off {
    return Intl.message('OFF', name: 'off', desc: '', args: []);
  }

  /// `Min Spend`
  String get min_spend_ucf {
    return Intl.message('Min Spend', name: 'min_spend_ucf', desc: '', args: []);
  }

  /// `From`
  String get from {
    return Intl.message('From', name: 'from', desc: '', args: []);
  }

  /// `Store to get`
  String get store_to_get {
    return Intl.message(
      'Store to get',
      name: 'store_to_get',
      desc: '',
      args: [],
    );
  }

  /// `OFF on total orders`
  String get off_on_total_orders {
    return Intl.message(
      'OFF on total orders',
      name: 'off_on_total_orders',
      desc: '',
      args: [],
    );
  }

  /// `Code`
  String get code {
    return Intl.message('Code', name: 'code', desc: '', args: []);
  }

  /// `In House Products`
  String get in_house_products_ucf {
    return Intl.message(
      'In House Products',
      name: 'in_house_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Coupon Products`
  String get coupon_products_ucf {
    return Intl.message(
      'Coupon Products',
      name: 'coupon_products_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading Coupons ...`
  String get loading_coupons_ucf {
    return Intl.message(
      'Loading Coupons ...',
      name: 'loading_coupons_ucf',
      desc: '',
      args: [],
    );
  }

  /// `No More Coupons`
  String get no_more_coupons_ucf {
    return Intl.message(
      'No More Coupons',
      name: 'no_more_coupons_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Address  Required`
  String get address_required {
    return Intl.message(
      'Address  Required',
      name: 'address_required',
      desc: '',
      args: [],
    );
  }

  /// `Country Name  Required`
  String get country_required {
    return Intl.message(
      'Country Name  Required',
      name: 'country_required',
      desc: '',
      args: [],
    );
  }

  /// `State Name  Required`
  String get state_required {
    return Intl.message(
      'State Name  Required',
      name: 'state_required',
      desc: '',
      args: [],
    );
  }

  /// `City Name  Required`
  String get city_required {
    return Intl.message(
      'City Name  Required',
      name: 'city_required',
      desc: '',
      args: [],
    );
  }

  /// `Postal Code  Required`
  String get postal_code_required {
    return Intl.message(
      'Postal Code  Required',
      name: 'postal_code_required',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number  Required`
  String get phone_number_required {
    return Intl.message(
      'Phone Number  Required',
      name: 'phone_number_required',
      desc: '',
      args: [],
    );
  }

  /// `Select`
  String get select_ucf {
    return Intl.message('Select', name: 'select_ucf', desc: '', args: []);
  }

  /// `Pos Manager`
  String get pos_manager {
    return Intl.message('Pos Manager', name: 'pos_manager', desc: '', args: []);
  }

  /// `Sub Total`
  String get sub_total {
    return Intl.message('Sub Total', name: 'sub_total', desc: '', args: []);
  }

  /// `Tax`
  String get tax {
    return Intl.message('Tax', name: 'tax', desc: '', args: []);
  }

  /// `Total`
  String get total {
    return Intl.message('Total', name: 'total', desc: '', args: []);
  }

  /// `Shipping`
  String get shipping {
    return Intl.message('Shipping', name: 'shipping', desc: '', args: []);
  }

  /// `Place Order`
  String get place_order {
    return Intl.message('Place Order', name: 'place_order', desc: '', args: []);
  }

  /// `No customer information selected.`
  String get no_customer_info {
    return Intl.message(
      'No customer information selected.',
      name: 'no_customer_info',
      desc: '',
      args: [],
    );
  }

  /// `Confirm with Cash`
  String get confirm_with_cash {
    return Intl.message(
      'Confirm with Cash',
      name: 'confirm_with_cash',
      desc: '',
      args: [],
    );
  }

  /// `Order Summery`
  String get order_summery {
    return Intl.message(
      'Order Summery',
      name: 'order_summery',
      desc: '',
      args: [],
    );
  }

  /// `Offline Payment Info`
  String get offline_payment_info {
    return Intl.message(
      'Offline Payment Info',
      name: 'offline_payment_info',
      desc: '',
      args: [],
    );
  }

  /// `Payment Proof`
  String get payment_proof {
    return Intl.message(
      'Payment Proof',
      name: 'payment_proof',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back_ucf {
    return Intl.message('Back', name: 'back_ucf', desc: '', args: []);
  }

  /// `No Notification Found!`
  String get no_notification_ucf {
    return Intl.message(
      'No Notification Found!',
      name: 'no_notification_ucf',
      desc: '',
      args: [],
    );
  }

  /// `You already have an account with this information. Please Login first.`
  String get already_have_account {
    return Intl.message(
      'You already have an account with this information. Please Login first.',
      name: 'already_have_account',
      desc: '',
      args: [],
    );
  }

  /// `Add New Classified Product`
  String get add_new_classified_product_ucf {
    return Intl.message(
      'Add New Classified Product',
      name: 'add_new_classified_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Condition `
  String get condition_ucf {
    return Intl.message(
      'Condition ',
      name: 'condition_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Description `
  String get descriptions_ucf {
    return Intl.message(
      'Description ',
      name: 'descriptions_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Thumbnail Image`
  String get thumbnail_image_ucf {
    return Intl.message(
      'Thumbnail Image',
      name: 'thumbnail_image_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Video Form`
  String get video_form_ucf {
    return Intl.message(
      'Video Form',
      name: 'video_form_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Video Url`
  String get video_url_ucf {
    return Intl.message('Video Url', name: 'video_url_ucf', desc: '', args: []);
  }

  /// `document`
  String get document {
    return Intl.message('document', name: 'document', desc: '', args: []);
  }

  /// `Choose File`
  String get choose_file {
    return Intl.message('Choose File', name: 'choose_file', desc: '', args: []);
  }

  /// `Browse`
  String get browse {
    return Intl.message('Browse', name: 'browse', desc: '', args: []);
  }

  /// `Unit Price (base price)`
  String get custom_unit_price_and_base_price {
    return Intl.message(
      'Unit Price (base price)',
      name: 'custom_unit_price_and_base_price',
      desc: '',
      args: [],
    );
  }

  /// `Meta Tags`
  String get meta_tags_ucf {
    return Intl.message('Meta Tags', name: 'meta_tags_ucf', desc: '', args: []);
  }

  /// `Meta Description`
  String get meta_description_ucf {
    return Intl.message(
      'Meta Description',
      name: 'meta_description_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Save Product`
  String get save_product_ucf {
    return Intl.message(
      'Save Product',
      name: 'save_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Type and hit submit`
  String get type_and_hit_submit_ucf {
    return Intl.message(
      'Type and hit submit',
      name: 'type_and_hit_submit_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Gallery Images`
  String get gallery_images {
    return Intl.message(
      'Gallery Images',
      name: 'gallery_images',
      desc: '',
      args: [],
    );
  }

  /// `Product Name Required`
  String get product_name_required {
    return Intl.message(
      'Product Name Required',
      name: 'product_name_required',
      desc: '',
      args: [],
    );
  }

  /// `Name Required`
  String get name_required {
    return Intl.message(
      'Name Required',
      name: 'name_required',
      desc: '',
      args: [],
    );
  }

  /// `Email Required`
  String get email_required {
    return Intl.message(
      'Email Required',
      name: 'email_required',
      desc: '',
      args: [],
    );
  }

  /// `Product Unit Required`
  String get product_unit_required {
    return Intl.message(
      'Product Unit Required',
      name: 'product_unit_required',
      desc: '',
      args: [],
    );
  }

  /// `Location Required`
  String get location_required {
    return Intl.message(
      'Location Required',
      name: 'location_required',
      desc: '',
      args: [],
    );
  }

  /// `Product Tag Required`
  String get product_tag_required {
    return Intl.message(
      'Product Tag Required',
      name: 'product_tag_required',
      desc: '',
      args: [],
    );
  }

  /// `Product Description Required`
  String get product_description_required {
    return Intl.message(
      'Product Description Required',
      name: 'product_description_required',
      desc: '',
      args: [],
    );
  }

  /// `Your classified product upload limit has been reached. Please buy a package.`
  String get classified_product_limit_expired {
    return Intl.message(
      'Your classified product upload limit has been reached. Please buy a package.',
      name: 'classified_product_limit_expired',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get status_ucf {
    return Intl.message('Status', name: 'status_ucf', desc: '', args: []);
  }

  /// `Published`
  String get published_ucf {
    return Intl.message('Published', name: 'published_ucf', desc: '', args: []);
  }

  /// `Unpublished`
  String get unpublished_ucf {
    return Intl.message(
      'Unpublished',
      name: 'unpublished_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading`
  String get loading_ucf {
    return Intl.message('Loading', name: 'loading_ucf', desc: '', args: []);
  }

  /// `Enter Correct Email`
  String get enter_correct_email {
    return Intl.message(
      'Enter Correct Email',
      name: 'enter_correct_email',
      desc: '',
      args: [],
    );
  }

  /// `Shipping Address Required`
  String get shipping_address_required {
    return Intl.message(
      'Shipping Address Required',
      name: 'shipping_address_required',
      desc: '',
      args: [],
    );
  }

  /// `If you have already used the same mail address or phone number before, Please `
  String get existing_email_address {
    return Intl.message(
      'If you have already used the same mail address or phone number before, Please ',
      name: 'existing_email_address',
      desc: '',
      args: [],
    );
  }

  /// ` first to continue!`
  String get first_to_continue {
    return Intl.message(
      ' first to continue!',
      name: 'first_to_continue',
      desc: '',
      args: [],
    );
  }

  /// `Pay With Flutterwave`
  String get pay_with_flutterwave {
    return Intl.message(
      'Pay With Flutterwave',
      name: 'pay_with_flutterwave',
      desc: '',
      args: [],
    );
  }

  /// `Pay With Khalti`
  String get pay_with_khalti {
    return Intl.message(
      'Pay With Khalti',
      name: 'pay_with_khalti',
      desc: '',
      args: [],
    );
  }

  /// `This is a pirated app. Do not use this. It may have security issues.`
  String get pirated_app {
    return Intl.message(
      'This is a pirated app. Do not use this. It may have security issues.',
      name: 'pirated_app',
      desc: '',
      args: [],
    );
  }

  /// `Login/Registration`
  String get login_or_reg {
    return Intl.message(
      'Login/Registration',
      name: 'login_or_reg',
      desc: '',
      args: [],
    );
  }

  /// `Make Payment`
  String get make_payment_ucf {
    return Intl.message(
      'Make Payment',
      name: 'make_payment_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Last View Product`
  String get last_view_product_ucf {
    return Intl.message(
      'Last View Product',
      name: 'last_view_product_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Delete Selection`
  String get delete_selection {
    return Intl.message(
      'Delete Selection',
      name: 'delete_selection',
      desc: '',
      args: [],
    );
  }

  /// `Select All`
  String get select_all {
    return Intl.message('Select All', name: 'select_all', desc: '', args: []);
  }

  /// `Nothing is Selected`
  String get nothing_selected {
    return Intl.message(
      'Nothing is Selected',
      name: 'nothing_selected',
      desc: '',
      args: [],
    );
  }

  /// `You Order `
  String get your_order {
    return Intl.message('You Order ', name: 'your_order', desc: '', args: []);
  }

  /// ` Has been `
  String get has_been {
    return Intl.message(' Has been ', name: 'has_been', desc: '', args: []);
  }

  /// `View More...`
  String get view_more {
    return Intl.message('View More...', name: 'view_more', desc: '', args: []);
  }

  /// `All Classified Ads`
  String get all_classified_ads {
    return Intl.message(
      'All Classified Ads',
      name: 'all_classified_ads',
      desc: '',
      args: [],
    );
  }

  /// `Less`
  String get less {
    return Intl.message('Less', name: 'less', desc: '', args: []);
  }

  /// `All Blogs`
  String get all_blogs_ucf {
    return Intl.message('All Blogs', name: 'all_blogs_ucf', desc: '', args: []);
  }

  /// `Wholesale`
  String get Wholesale {
    return Intl.message('Wholesale', name: 'Wholesale', desc: '', args: []);
  }

  /// `My Classified Ads`
  String get my_classified_ads {
    return Intl.message(
      'My Classified Ads',
      name: 'my_classified_ads',
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

  /// `Upload file`
  String get upload_file {
    return Intl.message('Upload file', name: 'upload_file', desc: '', args: []);
  }

  /// `Blog List`
  String get blog_list {
    return Intl.message('Blog List', name: 'blog_list', desc: '', args: []);
  }

  /// `Permission Required`
  String get permission_required_ucf {
    return Intl.message(
      'Permission Required',
      name: 'permission_required_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Agree`
  String get agree_ucf {
    return Intl.message('Agree', name: 'agree_ucf', desc: '', args: []);
  }

  /// `Are you sure you want to logout?`
  String get logout_warning_description {
    return Intl.message(
      'Are you sure you want to logout?',
      name: 'logout_warning_description',
      desc: '',
      args: [],
    );
  }

  /// `To upload files, the app needs access to your device's storage.`
  String get upload_file_permission_purpose {
    return Intl.message(
      'To upload files, the app needs access to your device\'s storage.',
      name: 'upload_file_permission_purpose',
      desc: '',
      args: [],
    );
  }

  /// `Permission is required to upload files.`
  String get upload_file_permission_denied {
    return Intl.message(
      'Permission is required to upload files.',
      name: 'upload_file_permission_denied',
      desc: '',
      args: [],
    );
  }

  /// `Sign in with Apple`
  String get sign_in_with_apple {
    return Intl.message(
      'Sign in with Apple',
      name: 'sign_in_with_apple',
      desc: '',
      args: [],
    );
  }

  /// `Jomlah.com`
  String get app_name_splash_ucf {
    return Intl.message(
      'Jomlah.com',
      name: 'app_name_splash_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Choose Language`
  String get choose_language_ucf {
    return Intl.message(
      'Choose Language',
      name: 'choose_language_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Ryial`
  String get ryial_ucf {
    return Intl.message('Ryial', name: 'ryial_ucf', desc: '', args: []);
  }

  /// `On the way`
  String get on_the_way2_ucf {
    return Intl.message(
      'On the way',
      name: 'on_the_way2_ucf',
      desc: '',
      args: [],
    );
  }

  /// `District`
  String get district_ucf {
    return Intl.message('District', name: 'district_ucf', desc: '', args: []);
  }

  /// `Enter district`
  String get enter_district_ucf {
    return Intl.message(
      'Enter district',
      name: 'enter_district_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading district...`
  String get loading_district_ucf {
    return Intl.message(
      'Loading district...',
      name: 'loading_district_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Select district`
  String get select_district_ucf {
    return Intl.message(
      'Select district',
      name: 'select_district_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Area`
  String get area_ucf {
    return Intl.message('Area', name: 'area_ucf', desc: '', args: []);
  }

  /// `Enter area`
  String get enter_area_ucf {
    return Intl.message(
      'Enter area',
      name: 'enter_area_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Loading area...`
  String get loading_area_ucf {
    return Intl.message(
      'Loading area...',
      name: 'loading_area_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Select area`
  String get select_area_ucf {
    return Intl.message(
      'Select area',
      name: 'select_area_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Enter street name`
  String get enter_streetName_ucf {
    return Intl.message(
      'Enter street name',
      name: 'enter_streetName_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Street name`
  String get street_name_ucf {
    return Intl.message(
      'Street name',
      name: 'street_name_ucf',
      desc: '',
      args: [],
    );
  }

  /// `Order Re Payment`
  String get order_Re_payment {
    return Intl.message(
      'Order Re Payment',
      name: 'order_Re_payment',
      desc: '',
      args: [],
    );
  }

  /// `Contact us`
  String get contact_ucf {
    return Intl.message('Contact us', name: 'contact_ucf', desc: '', args: []);
  }

  /// `no items found`
  String get no_items {
    return Intl.message('no items found', name: 'no_items', desc: '', args: []);
  }

  /// `Please select a city first`
  String get please_select_a_city_first {
    return Intl.message(
      'Please select a city first',
      name: 'please_select_a_city_first',
      desc: '',
      args: [],
    );
  }

  /// `Newest`
  String get newest {
    return Intl.message('Newest', name: 'newest', desc: '', args: []);
  }

  /// `Oldest`
  String get oldest {
    return Intl.message('Oldest', name: 'oldest', desc: '', args: []);
  }

  /// `Smallest`
  String get smallest {
    return Intl.message('Smallest', name: 'smallest', desc: '', args: []);
  }

  /// `Largest`
  String get largest {
    return Intl.message('Largest', name: 'largest', desc: '', args: []);
  }

  /// `To set your profile picture, this app needs to collect your image from the gallery.`
  String get to_set_your_profile_picture {
    return Intl.message(
      'To set your profile picture, this app needs to collect your image from the gallery.',
      name: 'to_set_your_profile_picture',
      desc: '',
      args: [],
    );
  }

  // skipped getter for the 'permission_denied_to_access_photos.' key
}

class AppLocalizationDelegate extends LocalizationsDelegate<AppLocalizations> {
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
  Future<AppLocalizations> load(Locale locale) => AppLocalizations.load(locale);
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
