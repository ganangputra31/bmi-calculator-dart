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

  double tinggiM = tinggiCm / 100;
  double bmi = beratKg / (tinggiM * tinggiM);

  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  print("BMI Anda: ${bmi.toStringAsFixed(2)}");
  print("Kategori: $kategori");
}
