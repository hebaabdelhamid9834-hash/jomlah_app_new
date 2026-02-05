// import 'dart:convert';

// import 'package:active_ecommerce_cms_demo_app/app_config.dart';
// import 'package:active_ecommerce_cms_demo_app/data_model/delivery_info_response.dart';
// import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
// import 'package:active_ecommerce_cms_demo_app/repositories/api-request.dart';

// class ShippingRepository {
//   Future<dynamic> getDeliveryInfo() async {
//     String url = ("${AppConfig.BASE_URL}/delivery-info");

//     String postBody;
//     if (guest_checkout_status.$ && !is_logged_in.$) {
//       postBody = jsonEncode({"temp_user_id": temp_user_id.$});
//     } else {
//       postBody = jsonEncode({"user_id": user_id.$});
//     }

//     final response = await ApiRequest.post(
//       url: url,
//       body: postBody,
//       headers: {
//         "Content-Type": "application/json",
//         "Authorization": "Bearer ${access_token.$}",
//         "App-Language": app_language.$!,
//       },
//     );
//     print("shipping cost ${response.body}");
//     return deliveryInfoResponseFromJson(response.body);
//   }
// }

import 'dart:convert';

import 'package:active_ecommerce_cms_demo_app/app_config.dart';
import 'package:active_ecommerce_cms_demo_app/data_model/delivery_info_response.dart';
import 'package:active_ecommerce_cms_demo_app/helpers/shared_value_helper.dart';
import 'package:active_ecommerce_cms_demo_app/repositories/api-request.dart';

class ShippingRepository {
  // 1. Update the method to accept an optional guestAddress parameter
  Future<dynamic> getDeliveryInfo({String? guestAddress}) async {
    String url = ("${AppConfig.BASE_URL}/delivery-info");

    Map<String, dynamic> postBodyMap = {};

    // 2. Build the request body based on user type
    if (guest_checkout_status.$ && !is_logged_in.$) {
      // For GUESTS, send the temp_user_id AND the shipping address
      postBodyMap['temp_user_id'] = temp_user_id.$;
      if (guestAddress != null) {
        // The address is a JSON string, so decode it to an object before sending
        postBodyMap['address'] = jsonDecode(guestAddress);
      }
    } else {
      // For LOGGED-IN users, send the user_id
      postBodyMap['user_id'] = user_id.$;
    }

    // Convert the whole map to a JSON string
    String postBody = jsonEncode(postBodyMap);

    final response = await ApiRequest.post(
      url: url,
      body: postBody,
      headers: {
        "Content-Type": "application/json",
        "Authorization": "Bearer ${access_token.$}",
        "App-Language": app_language.$!,
      },
    );

    print("Shipping Response Body: ${response.body}");

    return deliveryInfoResponseFromJson(response.body);
  }
}
