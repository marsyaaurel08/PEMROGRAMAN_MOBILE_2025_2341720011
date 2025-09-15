void main () {

  final list = List<dynamic>.filled(5, null, growable: false); 

  list[1] = "MARSYA AURELIA SEFIRA";
  list[2] = "2341720011";

  assert(list.length == 5);
  assert(list[1] == "MARSYA AURELIA SEFIRA");

  print(list.length);
  print(list[1]);
  print(list[2]);

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);
}