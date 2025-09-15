void main() {

  var gifts = {
    // Key: Value
    'first' : 'partridge',
    'second' : 'turtledoves',
    'fifth' : 1,
    'nama' : 'MARSYA AURELIA SEFIRA',
    'nim' : 2341720011
  };

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 2,
    0: 'MARSYA AURELIA SEFIRA',
    1: 2341720011,
  };

  print(gifts);
  print(nobleGases);

  var mhs1 = Map<String, String>();
  gifts['first'] = 'partridge';
  gifts['second'] = 'turtledoves';
  gifts['fifth'] = 'golden rings';
  gifts['nama'] = 'MARSYA AURELIA SEFIRA';
  gifts['nim'] = '2341720011';

  var mhs2 = Map<int, String>();
  nobleGases[2] = 'helium';
  nobleGases[10] = 'neon';
  nobleGases[18] = 'argon';
  nobleGases[0] = 'MARSYA AURELIA SEFIRA';
  nobleGases[1] = '2341720011';

  print(mhs1);
  print(mhs2);
}