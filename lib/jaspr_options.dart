// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/jaspr.dart';
import 'package:jaspr_content/components/_internal/code_block_copy_button.dart'
    as prefix0;
import 'package:jaspr_content/components/_internal/zoomable_image.dart'
    as prefix1;
import 'package:jaspr_content/components/callout.dart' as prefix2;
import 'package:jaspr_content/components/code_block.dart' as prefix3;
import 'package:jaspr_content/components/image.dart' as prefix4;
import 'package:jaspr_content/components/sidebar_toggle_button.dart' as prefix5;
import 'package:jaspr_content/components/theme_toggle.dart' as prefix6;
import 'package:my_jaspr_site/components/clicker.dart' as prefix7;

/// Default [JasprOptions] for use with your jaspr project.
///
/// Use this to initialize jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'jaspr_options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultJasprOptions,
///   );
///
///   runApp(...);
/// }
/// ```
JasprOptions get defaultJasprOptions => JasprOptions(
  clients: {
    prefix0.CodeBlockCopyButton: ClientTarget<prefix0.CodeBlockCopyButton>(
      'jaspr_content:components/_internal/code_block_copy_button',
    ),

    prefix1.ZoomableImage: ClientTarget<prefix1.ZoomableImage>(
      'jaspr_content:components/_internal/zoomable_image',
      params: _prefix1ZoomableImage,
    ),

    prefix5.SidebarToggleButton: ClientTarget<prefix5.SidebarToggleButton>(
      'jaspr_content:components/sidebar_toggle_button',
    ),

    prefix6.ThemeToggle: ClientTarget<prefix6.ThemeToggle>(
      'jaspr_content:components/theme_toggle',
    ),

    prefix7.Clicker: ClientTarget<prefix7.Clicker>('components/clicker'),
  },
  styles: () => [
    ...prefix1.ZoomableImage.styles,
    ...prefix2.Callout.styles,
    ...prefix3.CodeBlock.styles,

    ...prefix4.Image.styles,

    ...prefix6.ThemeToggleState.styles,
    ...prefix7.ClickerState.styles,
  ],
);

Map<String, dynamic> _prefix1ZoomableImage(prefix1.ZoomableImage c) => {
  'src': c.src,
  'alt': c.alt,
  'caption': c.caption,
};
