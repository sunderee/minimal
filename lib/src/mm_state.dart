/// Minimal state
///
/// A state represents any immutable data that can change over time and needs
/// to be managed by a notifier. This could be UI state (like widget data),
/// application state (like authentication), or any other type of state
///
/// Example:
/// ```dart
/// // UI State example
/// class CounterState extends MMState {
///   const CounterState({required this.count});
///
///   final int count;
/// }
///
/// // Application State example
/// class AuthState extends MMState {
///   const AuthState({required this.isAuthenticated, this.user});
///
///   final bool isAuthenticated;
///   final User? user;
/// }
/// ```
abstract class MMState {
  /// Creates an immutable state
  const MMState();
}
