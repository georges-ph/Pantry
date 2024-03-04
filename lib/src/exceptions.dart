class PantryException implements Exception {
  final String message;
  final String? error;

  PantryException(this.message, [this.error]);

  @override
  String toString() => 'PantryException(message: $message, error: $error)';
}
