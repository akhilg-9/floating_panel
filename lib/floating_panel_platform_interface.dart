import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'floating_panel_method_channel.dart';

abstract class FloatingPanelPlatform extends PlatformInterface {
  /// Constructs a FloatingPanelPlatform.
  FloatingPanelPlatform() : super(token: _token);

  static final Object _token = Object();

  static FloatingPanelPlatform _instance = MethodChannelFloatingPanel();

  /// The default instance of [FloatingPanelPlatform] to use.
  ///
  /// Defaults to [MethodChannelFloatingPanel].
  static FloatingPanelPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [FloatingPanelPlatform] when
  /// they register themselves.
  static set instance(FloatingPanelPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<bool> show({double? width, double? height, double? x, double? y}) {
    throw UnimplementedError('show() has not been implemented.');
  }

  Future<bool> hide() {
    throw UnimplementedError('hide() has not been implemented.');
  }

  Future<bool> isVisible() {
    throw UnimplementedError('isVisible() has not been implemented.');
  }

  Future<bool> setSize(double width, double height) {
    throw UnimplementedError('setSize() has not been implemented.');
  }

  Future<bool> setPosition(double x, double y) {
    throw UnimplementedError('setPosition() has not been implemented.');
  }
}
