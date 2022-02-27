class Translate {
  static String Execute(String text) {
    Map<dynamic, dynamic> hash = {
      // Alphabet
      'a': '\u{12000}',
      'b': '\u{1204D}',
      'c': '\u{122EB}',
      'd': '\u{12072}',
      'e': '\u{1208A}',
      'f': '\u{12137}',
      'g': '\u{12116}',
      'h': '\u{12129}',
      'i': '\u{1213F}',
      'j': '\u{12363}',
      'k': '\u{121A0}',
      'l': '\u{12292}',
      'm': '\u{1222C}',
      'n': '\u{12261}',
      'o': '\u{120F0}',
      'p': '\u{1204D}',
      'q': '\u{122E1}',
      'r': '\u{12292}',
      's': '\u{122E2}',
      't': '\u{122FC}',
      'u': '\u{1230B}',
      'v': '\u{1240A}',
      'w': '\u{1227E}',
      'x': '\u{1230B}',
      'y': '\u{1227E}',
      'z': '\u{1236A}',
    };

    List<String> result = [];
    List<String> strings = text.toLowerCase().split('');
    for (var str in strings) {
      String temp;
      if (hash[str] != null) {
        Runes input = Runes(hash[str]);
        temp = String.fromCharCodes(input);
      } else {
        temp = '';
      }
      // print(temp);
      // print(temp.isNotEmpty);
      temp.isNotEmpty ? result.add(temp) : result.add(str);
      // print(result);
    }
    return result.join('');
  }
}
