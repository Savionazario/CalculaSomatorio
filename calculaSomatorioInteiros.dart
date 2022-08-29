import 'dart:io';

int calculaSomatorioInteirosDivisiveis(int x){
  int somatorioInteiros = 0;

  for(int i = 1; i < x; i++){
    if(i % 3 == 0 || i % 5 == 0){
      somatorioInteiros = i + somatorioInteiros; 
    }
  }
  return somatorioInteiros;
}

inputError(){
  print("Digite um numero inteiro positivo. Strings, zero ou números negativos não são aceitos");
}

void main(){
    int somatorioInteiros = 0;
    int numero = 0;

    print("Digite um numero inteiro positivo:");
    while(true){
      try{
        numero = int.parse(stdin.readLineSync()!);
        if(numero == 0){
          inputError();
        }
      }catch (e){
        inputError();
        numero = 0;
      }
      
      if(numero < 0){
        inputError();
      }
      
      if(numero > 0){
        break;
      }

    }
    
    somatorioInteiros = calculaSomatorioInteirosDivisiveis(numero);

    print("Somatório: $somatorioInteiros");
}