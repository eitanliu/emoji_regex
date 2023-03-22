import 'package:test/test.dart';

import 'package:emoji_regex/emoji_regex.dart';

import 'emoji_test_text.dart';

void main() {
  test('emojiRegexRGI', () {
    final regex = emojiRegexRGI();
    final matches = regex.allMatches(text);
    print("matches ${matches.length}");
    matches.forEach((element) {
      print("matche ${element.group(0)} ${element.start} ${element.end}");
    });
  });

  test('emojiRegex', () {
    final regex = emojiRegex();
    final matches = regex.allMatches(text);
    print("matches ${matches.length}");
    matches.forEach((element) {
      print("matche ${element.group(0)} ${element.start} ${element.end}");
    });
  });

  test('emojiRegexText', () {
    final regex = emojiRegexText();
    final matches = regex.allMatches(text);
    print("matches ${matches.length}");
    matches.forEach((element) {
      print("matche ${element.group(0)} ${element.start} ${element.end}");
    });
  });
}
