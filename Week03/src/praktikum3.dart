void main() {
  for (int i = 10; i < 27; i++) {
    print(i);
    if (i ==21) {
      break;
    } else if (i > 25 || i < 7) {
      continue;
    }
    print(i);
  }
}