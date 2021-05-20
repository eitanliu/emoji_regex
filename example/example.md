```dart
import 'package:emoji_regex/emoji_regex.dart';

const text = r"""\u{231A}: ⌚ default emoji presentation character (Emoji_Presentation)
\u{2194}\u{FE0F}: ↔️ default text presentation character rendered as emoji
\u{1F469}: 👩 emoji modifier base (Emoji_Modifier_Base)
\u{1F469}\u{1F3FF}: 👩🏿 emoji modifier base followed by a modifier
""";

/// This is the recommended regular expression to use. It matches all
/// emoji recommended for general interchange, as defined via the
/// `RGI_Emoji` property in the Unicode Standard.
/// https://unicode.org/reports/tr51/#def_rgi_set
/// When in doubt, use this!
final regex = emojiRegexRGI();
final matches = regex.allMatches(text);
print("matches ${matches.length}");
matches.forEach((element) {
  print("matche ${element.group(0)} ${element.start} ${element.end}");
});

/// This is the old regular expression, prior to `RGI_Emoji` being
/// standardized. In addition to all `RGI_Emoji` sequences, it matches
/// some emoji you probably don’t want to match (such as emoji component
/// symbols that are not meant to be used separately).
final regex = emojiRegex();
final matches = regex.allMatches(text);
print("matches ${matches.length}");
matches.forEach((element) {
  print("matche ${element.group(0)} ${element.start} ${element.end}");
});

/// This regular expression matches even more emoji than the previous
/// one, including emoji that render as text instead of icons (i.e.
/// emoji that are not `Emoji_Presentation` symbols and that aren’t
/// forced to render as emoji by a variation selector).
final regex = emojiRegexText();
final matches = regex.allMatches(text);
print("matches ${matches.length}");
matches.forEach((element) {
  print("matche ${element.group(0)} ${element.start} ${element.end}");
});
```