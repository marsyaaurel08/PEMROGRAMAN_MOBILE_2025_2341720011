void main() {
  String nama = "Marsya Aurelia Sefira";
  String nim = "2341720011";

  int angka = 0;

  do {
    int pembagi  = 0;
    for (int i = 1; i<= angka; i++) {
      if (angka % i == 0) {
        pembagi++;
      }
    }
    if (pembagi == 2) {
      print("$angka bilangan prima");
      print("Nama : $nama");
      print("NIM : $nim");
    }

    angka++;
  } while (angka <= 201);
}