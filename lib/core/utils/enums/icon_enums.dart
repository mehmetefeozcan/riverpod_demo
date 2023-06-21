enum IconEnums {
  icon('');

  final String value;
  const IconEnums(this.value);

  String get toPng => 'assets/icon/ic_$value.png';
  String get toSvg => 'assets/icon/ic_$value.svg';
}
