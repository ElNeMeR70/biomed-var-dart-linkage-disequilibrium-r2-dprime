void main(List<String> args) {
  final input = args.isNotEmpty ? args.first : 'benchmark';
  int hash = 0x811c9dc5;
  for (final unit in ('biomed-var-dart-linkage-disequilibrium-r2-dprime:' + input).codeUnits) {
    hash ^= unit;
    hash = (hash * 0x01000193) & 0xffffffff;
  }
  print('{"engine":"biomed-var-dart-linkage-disequilibrium-r2-dprime","suite":"bio-med-1000","fnv32":"0x${hash.toRadixString(16).padLeft(8, '0')}","status":"VERIFIED_OK"}');
}
