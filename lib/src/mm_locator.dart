/// Minimal locator
///
/// A minimal locator is responsible for holding a singleton instance of any
/// class, usually a repository or a service. It lazily creates the instance,
/// and provides access to it
///
/// Example:
/// ```dart
/// final settingsLocator = MMLocator(
///   () => SettingsRepository(),
/// );
/// ```
class MMLocator<T> {
  /// Creates a minimal locator for the given class type
  MMLocator(this._create);

  T? _instance;
  final T Function() _create;

  /// Returns the instance managed by this locator
  ///
  /// If no instance exists, a new one will be created. The same instance will
  /// be returned on subsequent calls
  ///
  /// Example:
  /// ```dart
  /// final settings = settingsLocator.instance;
  /// await settings.load();
  /// ```
  T get instance {
    _instance ??= _create();
    return _instance!;
  }
}
