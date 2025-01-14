import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:kiss_color/kiss_color.dart';

void main() {
  test(
    'SemanticColors passed to context',
    () {
      final _ = SemanticColors(
        data: SemanticColorsData(
          primary: BaseColors(
            background: Colors.white,
            foreground: Colors.black,
            outline: Colors.grey,
            shadow: Colors.grey,
          ),
          secondary: BaseColors(
            background: Colors.pink,
            foreground: Colors.white,
            outline: Colors.grey,
            shadow: Colors.grey,
          ),
          brand: BrandColors(
            primary: BaseColors(
              background: Colors.blue,
              foreground: Colors.white,
              outline: Colors.grey,
              shadow: Colors.grey,
            ),
            secondary: BaseColors(
              background: Colors.green,
              foreground: Colors.white,
              outline: Colors.grey,
              shadow: Colors.grey,
            ),
          ),
          state: StateColors(
            success: BaseColors(
              background: Colors.green,
              foreground: Colors.white,
              outline: Colors.grey,
              shadow: Colors.grey,
            ),
            error: BaseColors(
              background: Colors.red,
              foreground: Colors.white,
              outline: Colors.grey,
              shadow: Colors.grey,
            ),
            warning: BaseColors(
              background: Colors.yellow,
              foreground: Colors.white,
              outline: Colors.grey,
              shadow: Colors.grey,
            ),
            disabled: BaseColors(
              background: Colors.grey,
              foreground: Colors.white,
              outline: Colors.grey,
              shadow: Colors.grey,
            ),
          ),
        ),
        child: Builder(
          builder: (context) {
            final semanticColors = SemanticColors.of(context);
            expect(semanticColors.data.primary.background, Colors.white);
            expect(semanticColors.data.primary.foreground, Colors.black);
            expect(semanticColors.data.primary.outline, Colors.grey);
            expect(semanticColors.data.secondary.background, Colors.pink);
            expect(semanticColors.data.secondary.foreground, Colors.white);
            expect(semanticColors.data.secondary.outline, Colors.grey);
            expect(semanticColors.data.brand.primary.background, Colors.blue);
            expect(semanticColors.data.brand.primary.foreground, Colors.white);
            expect(semanticColors.data.brand.primary.outline, Colors.grey);
            expect(
                semanticColors.data.brand.secondary.background, Colors.green);
            expect(
                semanticColors.data.brand.secondary.foreground, Colors.white);
            expect(semanticColors.data.brand.secondary.outline, Colors.grey);
            expect(semanticColors.data.state.success.background, Colors.green);
            expect(semanticColors.data.state.success.foreground, Colors.white);
            expect(semanticColors.data.state.success.outline, Colors.grey);
            expect(semanticColors.data.state.error.background, Colors.red);
            expect(semanticColors.data.state.error.foreground, Colors.white);
            expect(semanticColors.data.state.error.outline, Colors.grey);
            expect(semanticColors.data.state.warning.background, Colors.yellow);
            expect(semanticColors.data.state.warning.foreground, Colors.white);
            expect(semanticColors.data.state.warning.outline, Colors.grey);
            expect(semanticColors.data.state.disabled.background, Colors.grey);
            expect(semanticColors.data.state.disabled.foreground, Colors.white);
            expect(semanticColors.data.state.disabled.outline, Colors.grey);
            return semanticColors.visualizer('semanticColors');
          },
        ),
      );
    },
  );
}
