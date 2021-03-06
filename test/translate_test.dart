import 'package:cuneiform/translate.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('For alphabetic characters only', () {
    var letter = 'aciohstriovhaoierhg';
    var translatedChar = 'ππ«πΏπ°π©π’πΌππΏπ°ππ©ππ°πΏπππ©π';
    var answer = Translate.Execute(letter);
    expect(answer, translatedChar);
  });

  test('If it contains characters that cannot be converted', () {
    var letter = 'a1cio22hstriovhaoierhg';
    var translatedChar = 'π1π«πΏπ°22π©π’πΌππΏπ°ππ©ππ°πΏπππ©π';
    var answer = Translate.Execute(letter);
    expect(answer, translatedChar);
  });

  test('If there are only characters that cannot be converted', () {
    var letter = 'γγγγγ123';
    var translatedChar = 'γγγγγ123';
    var answer = Translate.Execute(letter);
    expect(answer, translatedChar);
  });
}
