// dart_quickjs disabled - requires Dart ^3.10.0 which doesn't exist
// This file is simplified to avoid the dependency

class DouyinSign {
  // Placeholder - returns empty sign  
  // The actual implementation requires dart_quickjs package
  
  /// Get bogus URL - returns original URL without signature
  /// Note: Without dart_quickjs, we cannot generate the ABogus signature
  static String getAbogusUrl(String params, String userAgent) {
    // Return URL without signature - some API endpoints may work without it
    return params;
  }
  
  static String getSign(String params, String userAgent) {
    return "";
  }
}
