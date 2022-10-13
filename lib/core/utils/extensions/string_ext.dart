extension StringExtensions on String {
  String get capitalize => '${this[0].toUpperCase()}${substring(1)}';

  String get allInCaps => toUpperCase();

  String get capitalizeFirstOfEach =>
      split(' ').map((String str) => str.capitalize).join(' ');

  String get svg => 'assets/images/svg/$this.svg';

  String get png => 'assets/images/png/$this.png';

  String get gif => 'assets/images/gif/$this.gif';
}
