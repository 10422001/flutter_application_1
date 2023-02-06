import 'dart:math';

import 'voc100.dart';

class VocGenerator {
  /// Returns a list of random words.
  /// [count] is the number of words to return.
  // List<String> randomNouns([int count = 2]) {
  //   if (count < 2) {
  //     throw Exception('Count must be at least 2');
  //   }
  //   final random = Random();
  //   final vocs = <String>[];
  //   for (var i = 0; i < count; i++) {
  //     var voc = '';
  //     for (var j = 0; j < count; j++) {
  //       voc += vocs[random.nextInt(vocs.length)];
  //     }
  //     vocs.add(voc);
  //   }
  //   return vocs;
  // }

  // /// Returns a random names.
  // /// [count] is the number of words to return.
  // List<String> randomNames([int count = 2]) {
  //   if (count < 2) {
  //     throw Exception('Count must be at least 2');
  //   }
  //   final random = Random();
  //   final vocs = <String>[];
  //   for (var i = 0; i < count; i++) {
  //     var name = '';
  //     for (var j = 0; j < count; j++) {
  //       name += names[random.nextInt(names.length)];
  //     }
  //     vocs.add(name);
  //   }
  //   return vocs;
  // }

  /// Returns a random name.
  String randomName() {
    final random = Random();
    return names[random.nextInt(names.length)];
  }
}
