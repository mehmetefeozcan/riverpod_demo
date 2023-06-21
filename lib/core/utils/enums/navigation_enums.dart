enum NavigationEnums {
  dashboard('/'),
  home('/home');

  final String value;
  const NavigationEnums(this.value);

  String get toPath => '/$value';
}
