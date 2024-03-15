import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/src/communication/native_api.g.dart',
  kotlinOut:
      '../example/android/app/src/main/java/com/rnloginsdkexample/Messages.g.kt',
  kotlinOptions: KotlinOptions(package: 'com.rnloginsdkexample'),
  swiftOut: '../example/ios/Messages.g.swift',
  swiftOptions: SwiftOptions(),
  dartPackageName: 'flutter_login_sdk',
))
@FlutterApi()
abstract class FlutterCounterApi {
  void setText(String text);

  void setJson(String json);

  void setScreen(String screen);

  void setClicks(int value);

  void setTheme(String theme);
}

@HostApi()
abstract class HostCounterApi {
  void setText(String text);

  void setJson(String json);

  void setScreen(String screen);

  void setClicks(int value);
}
