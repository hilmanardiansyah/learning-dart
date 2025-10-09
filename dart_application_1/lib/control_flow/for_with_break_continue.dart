void main() {
  for (int i = 1; i <= 10; i++) {
    if (i == 5) {
      print('Skip number 5 (using continue)');

      continue; // skip this iteration
    }

    if (i == 8) {
      print('Stop loop at number 8 (using break)');

      break; // stop the loop completely
    }

    print('Number: $i');
  }
}
