/// Configuration class for FloatingPanel.
class FloatingPanelConfig {
  /// Width of the panel in points.
  final double? width;

  /// Height of the panel in points.
  final double? height;

  /// X position of the panel in points from the bottom-left corner.
  final double? x;

  /// Y position of the panel in points from the bottom-left corner.
  final double? y;

  const FloatingPanelConfig({
    this.width,
    this.height,
    this.x,
    this.y,
  });

  /// Creates a copy of this config with the given fields replaced with new values.
  FloatingPanelConfig copyWith({
    double? width,
    double? height,
    double? x,
    double? y,
  }) {
    return FloatingPanelConfig(
      width: width ?? this.width,
      height: height ?? this.height,
      x: x ?? this.x,
      y: y ?? this.y,
    );
  }
}
