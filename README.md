# kiss_color

A Flutter package that provides a flexible and maintainable way to manage semantic color systems in your application. This package helps you organize colors based on their semantic meaning and context, making it easier to maintain consistent theming across your app.

## Features

- Hierarchical color organization with semantic meaning
- Type-safe color management
- Easy theme integration
- Built-in color visualization tools
- Immutable color data structures with copy support
- InheritedWidget implementation for efficient updates

## Installation

Add this to your package's `pubspec.yaml` file:

```yaml
dependencies:
  kiss_color: ^1.0.0
```

## Usage

### Basic Setup

1. First, create your semantic colors configuration:

```dart
final semanticColors = SemanticColorsData(
  primary: BaseColors(
    background: Colors.blue,
    foreground: Colors.white,
    outline: Colors.blue[700]!,
    shadow: Colors.blue.withOpacity(0.3),
  ),
  secondary: BaseColors(
    background: Colors.grey[200]!,
    foreground: Colors.black87,
    outline: Colors.grey[400]!,
    shadow: Colors.black12,
  ),
  brand: BrandColors(
    primary: BaseColors(...),
    secondary: BaseColors(...),
  ),
  state: StateColors(
    success: BaseColors(...),
    error: BaseColors(...),
    warning: BaseColors(...),
    disabled: BaseColors(...),
  ),
);
```

2. Wrap your app with the SemanticColors widget:

```dart
void main() {
  runApp(
    SemanticColors(
      data: semanticColors,
      child: MyApp(),
    ),
  );
}
```

### Accessing Colors

You can access the semantic colors anywhere in your widget tree:

```dart
Widget build(BuildContext context) {
  final colors = SemanticColors.of(context);
  
  return Container(
    color: colors.data.primary.background,
    child: Text(
      'Hello',
      style: TextStyle(color: colors.data.primary.foreground),
    ),
  );
}
```

### Theme Integration

The package provides an extension to easily convert semantic colors to a ThemeData:

```dart
Widget build(BuildContext context) {
  final colors = SemanticColors.of(context);
  
  return MaterialApp(
    theme: colors.theme,
    home: MyHomePage(),
  );
}
```

### Color Visualization

The package includes built-in visualization tools for debugging and design:

```dart
Widget build(BuildContext context) {
  final colors = SemanticColors.of(context);
  
  return colors.visualizer('My Theme Colors');
}
```

## Color Structure

- **BaseColors**: Basic color unit containing background, foreground, outline, and shadow colors
- **BrandColors**: Brand-specific colors with primary and secondary variants
- **StateColors**: Status-related colors (success, error, warning, disabled, hover)
- **SemanticColorsData**: Top-level container for all semantic colors

## Guide

See [GUIDE.md](GUIDE.md) for bird's eye view of the color system.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## License

This project is licensed under the MIT License - see the LICENSE file for details.