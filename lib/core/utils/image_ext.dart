/// Created this extension as it is much easier and quicker for implementation
/// Code credits => Kluivert

extension ImageFormat on String {
  String get png {
    return 'assets/images/$this.png';
  }
  String get svg {
    return 'assets/icons/$this.svg';
  }
  String get json {
    return '$this.json';
  }
}
