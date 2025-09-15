void main() {
  
  var record = ('first', a:2, b: true, 'last');
  print(record);

  (int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
  }

  var record2 = tukar((1, 2));
  print(record2);

  (String, int) mahasiswa;
  mahasiswa = ('MARSYA AURELIA SEFIRA', 2341720011);
  print(mahasiswa);

  var mahasiswa2 = ('Marsya', a:2341720011, b: true, 'Aurelia');
  print(mahasiswa2.$1);
  print(mahasiswa2.a);
  print(mahasiswa2.b);
  print(mahasiswa2.$2);
}

