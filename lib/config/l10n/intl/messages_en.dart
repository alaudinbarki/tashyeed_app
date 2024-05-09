// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(attribute) => "Any ${attribute}";

  static String m1(point) => "Your available points: ${point}";

  static String m2(state) => "Bluetooth Adapter is ${state}";

  static String m3(day) => "${day} days ago";

  static String m4(total) => "~${total} km";

  static String m5(timeLeft) => "Ends in ${timeLeft}";

  static String m6(message) => "Error: ${message}";

  static String m7(time) => "Expiring in ${time}";

  static String m8(total) => ">${total} km";

  static String m9(hour) => "${hour} hours ago";

  static String m10(message) =>
      "There is an issue with the app during request the data, please contact admin for fixing the issues: ${message}";

  static String m11(size) => "Maximum file size: ${size} MB";

  static String m12(minute) => "${minute} minutes ago";

  static String m13(month) => "${month} months ago";

  static String m14(itemCount) => "${itemCount} items";

  static String m15(price) => "Options total: ${price}";

  static String m16(total) => "Qty: ${total}";

  static String m17(percent) => "Sale ${percent}%";

  static String m18(second) => "${second} seconds ago";

  static String m19(totalCartQuantity) =>
      "Shopping cart, ${totalCartQuantity} items";

  static String m20(numberOfUnitsSold) => "Sold: ${numberOfUnitsSold}";

  static String m21(total) => "${total} products";

  static String m22(date) => "Valid til ${date}";

  static String m23(message) => "Warning: ${message}";

  static String m24(defaultCurrency) =>
      "The currently selected currency is not available for the Wallet feature, please change it to ${defaultCurrency}";

  static String m25(length) => "We found ${length} products";

  static String m26(week) => "Week ${week}";

  static String m27(year) => "${year} years ago";

  static String m28(total) => "You have assigned to order #${total}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "ababsbNumberBranchNumber": MessageLookupByLibrary.simpleMessage(
            "ABA/BSB number (Branch Number)"),
      };
}
