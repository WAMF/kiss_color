import 'package:flutter/material.dart';

final class BrandColors {
  final BaseColors primary;
  final BaseColors secondary;

  const BrandColors({
    required this.primary,
    required this.secondary,
  });

  BrandColors copyWith({
    BaseColors? primary,
    BaseColors? secondary,
  }) {
    return BrandColors(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
    );
  }

  @override
  int get hashCode => primary.hashCode ^ secondary.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BrandColors &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary;
}

final class StateColors {
  final BaseColors success;
  final BaseColors error;
  final BaseColors warning;
  final BaseColors disabled;
  final BaseColors? hover;

  const StateColors({
    required this.success,
    required this.error,
    required this.warning,
    required this.disabled,
    this.hover,
  });

  StateColors copyWith({
    BaseColors? success,
    BaseColors? error,
    BaseColors? warning,
    BaseColors? disabled,
    BaseColors? hover,
  }) {
    return StateColors(
      success: success ?? this.success,
      error: error ?? this.error,
      warning: warning ?? this.warning,
      disabled: disabled ?? this.disabled,
      hover: hover ?? this.hover,
    );
  }

  @override
  int get hashCode =>
      success.hashCode ^
      error.hashCode ^
      warning.hashCode ^
      disabled.hashCode ^
      hover.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is StateColors &&
          runtimeType == other.runtimeType &&
          success == other.success &&
          error == other.error &&
          warning == other.warning &&
          disabled == other.disabled &&
          hover == other.hover;
}

final class BaseColors {
  final Color background;
  final Color foreground;
  final Color outline;
  final Color shadow;

  const BaseColors({
    required this.background,
    required this.foreground,
    required this.outline,
    required this.shadow,
  });

  BaseColors copyWith({
    Color? background,
    Color? foreground,
    Color? outline,
    Color? shadow,
  }) {
    return BaseColors(
      background: background ?? this.background,
      foreground: foreground ?? this.foreground,
      outline: outline ?? this.outline,
      shadow: shadow ?? this.shadow,
    );
  }

  @override
  int get hashCode =>
      background.hashCode ^
      foreground.hashCode ^
      outline.hashCode ^
      shadow.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is BaseColors &&
          runtimeType == other.runtimeType &&
          background == other.background &&
          foreground == other.foreground &&
          outline == other.outline &&
          shadow == other.shadow;
}

final class SemanticColorsData {
  final BaseColors primary;
  final BaseColors secondary;
  final BrandColors brand;
  final StateColors state;

  const SemanticColorsData({
    required this.primary,
    required this.secondary,
    required this.brand,
    required this.state,
  });

  SemanticColorsData copyWith({
    BaseColors? primary,
    BaseColors? secondary,
    BrandColors? brand,
    StateColors? state,
  }) {
    return SemanticColorsData(
      primary: primary ?? this.primary,
      secondary: secondary ?? this.secondary,
      brand: brand ?? this.brand,
      state: state ?? this.state,
    );
  }

  @override
  int get hashCode =>
      primary.hashCode ^ secondary.hashCode ^ brand.hashCode ^ state.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SemanticColorsData &&
          runtimeType == other.runtimeType &&
          primary == other.primary &&
          secondary == other.secondary &&
          brand == other.brand &&
          state == other.state;
}

class SemanticColors extends InheritedWidget {
  final SemanticColorsData data;

  const SemanticColors({
    super.key,
    required this.data,
    required super.child,
  });

  static SemanticColors of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<SemanticColors>();
    if (provider == null) {
      throw FlutterError(
        'SemanticColors.of() called but there is no SemanticColors in the context.',
      );
    }
    return provider;
  }

  @override
  bool updateShouldNotify(SemanticColors oldWidget) {
    return oldWidget.data != data;
  }
}

extension BaseColorVisualizer on BaseColors {
  Widget visualizer(String name) => Container(
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          color: background,
          border: Border.all(color: outline),
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: shadow,
              offset: Offset(0, 2),
              blurRadius: 4,
            ),
          ],
        ),
        child: Text(name, style: TextStyle(color: foreground)),
      );
}

extension SemanticColorVisualizer on SemanticColors {
  Widget visualizer(String name) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          spacing: 8.0,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(name),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: [
                data.primary.visualizer('primary'),
                data.secondary.visualizer('secondary'),
                data.brand.primary.visualizer('brand.primary'),
                data.brand.secondary.visualizer('brand.secondary'),
                data.state.success.visualizer('state.success'),
                data.state.error.visualizer('state.error'),
                data.state.warning.visualizer('state.warning'),
                data.state.disabled.visualizer('state.disabled'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

extension SemanticColorExtension on SemanticColors {
  ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: data.primary.background,
          primary: data.primary.background,
          onPrimary: data.primary.foreground,
          secondary: data.secondary.background,
          onSecondary: data.secondary.foreground,
          error: data.state.error.background,
          onError: data.state.error.foreground,
          surface: data.secondary.background,
          onSurface: data.secondary.foreground,
          shadow: data.primary.shadow,
          outline: data.primary.outline,
        ),
      );
}
