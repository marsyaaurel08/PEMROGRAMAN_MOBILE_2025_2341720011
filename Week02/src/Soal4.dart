void main() {
  // NULL SAFETY
  String? alamat;   // bisa null
  alamat = null;    // valid

  String nama = "Marsya Aurelia Sefira";

  print(nama);
  print("Alamat : ${alamat}");
  
  
  // LATE VARIABEL
  late String kalimat;   // deklarasi dulu
  kalimat = "Belajar Dart Soal 4"; // inisialisasi belakangan

  print(kalimat);
}
