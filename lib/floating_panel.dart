import 'floating_panel_platform_interface.dart';

export 'src/floating_panel_config.dart';

/// A Flutter plugin for creating floating panels on macOS.
///
/// This plugin allows you to create a floating panel window that stays on top
/// of other windows and can be positioned anywhere on the screen.
class FloatingPanel {
  FloatingPanel._();

  static final FloatingPanel instance = FloatingPanel._();

  /// Shows the floating panel.
  ///
  /// Optionally provide [width] and [height] to set the panel size.
  /// Optionally provide [x] and [y] to set the panel position.
  /// Returns true if the panel was shown successfully.
  Future<bool> show({
    double? width,
    double? height,
    double? x,
    double? y,
  }) {
    return FloatingPanelPlatform.instance.show(
      width: width,
      height: height,
      x: x,
      y: y,
    );
  }

  /// Hides the floating panel.
  ///
  /// Returns true if the panel was hidden successfully.
  Future<bool> hide() {
    return FloatingPanelPlatform.instance.hide();
  }

  /// Checks if the floating panel is currently visible.
  ///
  /// Returns true if the panel is visible, false otherwise.
  Future<bool> isVisible() {
    return FloatingPanelPlatform.instance.isVisible();
  }

  /// Sets the size of the floating panel.
  ///
  /// [width] and [height] are required parameters in points.
  /// Returns true if the size was set successfully.
  Future<bool> setSize(double width, double height) {
    return FloatingPanelPlatform.instance.setSize(width, height);
  }

  /// Sets the position of the floating panel.
  ///
  /// [x] and [y] are required parameters in points from the bottom-left corner.
  /// Returns true if the position was set successfully.
  Future<bool> setPosition(double x, double y) {
    return FloatingPanelPlatform.instance.setPosition(x, y);
  }
}
