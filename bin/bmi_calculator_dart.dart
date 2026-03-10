import 'dart:io';

void main() {
  stdout.write("Masukkan tinggi badan (cm): ");
  double? tinggiCm = double.tryParse(stdin.readLineSync() ?? "");

  stdout.write("Masukkan berat badan (kg): ");
  double? beratKg = double.tryParse(stdin.readLineSync() ?? "");

  if (tinggiCm == null || beratKg == null || tinggiCm <= 0 || beratKg <= 0) {
    print("Input tidak valid. Masukkan angka lebih dari 0.");
    return;
  }

  print("Input valid.");
}
