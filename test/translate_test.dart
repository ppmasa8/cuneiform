import 'package:cuneiform/translate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('For alphabetic characters only', () {
    var letter = 'aciohstriovhaoierhg';
    var translatedChar = '𒀀𒋫𒄿𒃰𒄩𒋢𒋼𒊒𒄿𒃰𒐊𒄩𒀀𒃰𒄿𒂊𒊒𒄩𒄖';
    var answer = Translate.Execute(letter);
    expect(answer, translatedChar);
  });
}
