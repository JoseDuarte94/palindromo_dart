bool esPalindromo(String palabra, int idx) =>
    palabra[idx].contains(RegExp(r'[\da-zA-Z]'));

class palindromo {
  static bool check(String palabra) {
    int i = 0, f = palabra.length - 1;
    while (i < f) {
      if (palabra[i].toLowerCase() != palabra[f].toLowerCase()) return false;
      i++;
      f--;
    }
    return true;
  }
}

void main() {
  String s = "aLa";
  print('La palabra ${s}: es un palindromo');
  print(palindromo.check(s));
  print(palindromo.check('ojo'));
}
