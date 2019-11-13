import 'dart:io';
int Saldo =  0;
int MenuPilih = 0;
void main() {



stdout.write("Masukan PIN "); 

var jawab = stdin.readLineSync();

final  pin = ['1123','2233','3344']; 
  final x = jawab;
  if (pin.contains(x)) {
    switch (x){
      case "1123":
      
       Saldo = 20000000;
      print ("PIN is 1123");
      print('Saldo Rp. ' + Saldo.toString());
      
      menu();
    
      break;
      case "2233":

    
      Saldo = 40000000;
      print ("PIN is 2233");
      print('Saldo Rp. ' + Saldo.toString());
      menu();

      break;
      case "3344":
      
      Saldo = 7000000;
      print ("PIN is 3344");
      print('Saldo Rp. ' + Saldo.toString());
      menu();

      break;
    }

  }
  
}

 menu() {

  print ("Selamat Datang Eudeka BANK");
  print ("1. Tarik Tunai");
  print ("2. Setor Tunai");
  print ("3. Cek Saldo");
  print ("4. Ganti Akun");
  print ("5. Keluar Aplikasi");
  stdout.write("Pilih Menu "); 
  MenuPilih = int.parse(stdin.readLineSync());
  
  clearScreen();


  switch (MenuPilih){
    case 1:
        print ("== Tarik Tunai ==");
        printSaldo();
        print ("Masukan nominal penarikan Rp. ");
        int Amount =  int.parse(stdin.readLineSync());  
        Saldo = Saldo - Amount ; 
        printSaldo();
        break;
    
    case 2:
        print ("== Setor Tunai ==");
        printSaldo();
        print ("Masukan nominal setoran Rp. ");
        int Amount =  int.parse(stdin.readLineSync());  
        Saldo = Saldo + Amount ; 
        printSaldo();
        break;
    
    case 3:
        print ("== Cek Saldo ==");
        print ("PIN is 1123");
        printSaldo();
        break;
    
    case 4:
        print ("== Ganti Akun ==");
        break;
    
    case 5:
        break;
  }
}

printSaldo (){
  print('Saldo Rp. ' + Saldo.toString());
}
clearScreen(){

  for(int i = 0; i < stdout.terminalLines; i++) {
  stdout.writeln();
}
}