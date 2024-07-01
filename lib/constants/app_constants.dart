abstract class ThingsboardAppConstants {
  static const thingsBoardApiEndpoint = 'http://<your_device_ip>:8080';  //add your device Ip address where the thingsboard server is running.
  static const thingsboardOAuth2CallbackUrlScheme = 'org.thingsboard.app.auth';

  /// Not for production (only for debugging)
  static const thingsboardOAuth2AppSecret = ''; //add oauth2 code
}
