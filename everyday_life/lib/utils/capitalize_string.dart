extension CapitalizeString on String {
  String toCapitalize() {
    if (isEmpty) return '';
    return this[0].toUpperCase() + substring(1);
  }
}
