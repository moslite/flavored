enum Flavor { dev, hml, prod }

Flavor getFlavor() {
  const flavorString = String.fromEnvironment('FLUTTER_APP_FLAVOR');
  return switch (flavorString) {
    'dev' => Flavor.dev,
    'hml' => Flavor.hml,
    'prod' => Flavor.prod,
    _ => throw UnsupportedError('Unsupported flavor: $flavorString'),
  };
}
