var this_year = DateTime.now().year.toString();

class AppConfig {
  //configure this
  static String copyright_text = "@ Jomlah.com $this_year"; //this shows in the splash screen
  static String app_name = "Jomlah"; //this shows in the splash screen
  static String app_name_splash = "Jomlah.com"; //this shows in the splash screen
  static String app_version = "3.3.4";
  static String search_bar_text = "Search in Jomlah..."; //this will show in app Search bar.
  static String purchase_code = "dd9578d3-01a5-4e4a-a5e8-6ea7bc5482f3";
  static String system_key = r"$2y$10$I8CialgZLXGXEYRMIkpaoeYQmyzQ5k8.2R6LPrSGJXf5FZ3KTM6T6";

  //Default language config
  static String default_language = "ar";
  static String mobile_app_code = "ar";
  static bool app_language_rtl = true;

  //configure this
  static const bool HTTPS = true; //if you are using localhost , set this to false
  static const DOMAIN_PATH = "jomlah.com"; //use only domain name without http:// or https://www.

  //do not configure these below
  static const String API_ENDPATH = "api/v2";
  static const String PROTOCOL = HTTPS ? "https://" : "http://";
  static const String RAW_BASE_URL = "$PROTOCOL$DOMAIN_PATH";
  static const String BASE_URL = "$RAW_BASE_URL/$API_ENDPATH";
}
