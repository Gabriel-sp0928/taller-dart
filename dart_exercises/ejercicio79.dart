import 'dart:io';
void main(){
  var input=stdin;
  int autores=int.parse(input.readLineSync()!);
  int totalLibros=0;
  int cienciaF=0, romance=0;
  String autorMas='';
  int masLibros=0;
  for(int i=0;i<autores;i++){
    String apellido=input.readLineSync()!;
    int libros=int.parse(input.readLineSync()!);
    totalLibros+=libros;
    int totalPag=0;
    int mayorPag=0;
    int codMayor=0;
    for(int j=0;j<libros;j++){
      var parts=input.readLineSync()!.split(' ');
      int codigo=int.parse(parts[0]);
      String genero=parts[1].toLowerCase();
      int paginas=int.parse(parts[2]);
      totalPag+=paginas;
      if(paginas>mayorPag){ mayorPag=paginas; codMayor=codigo; }
      if(genero=='cienciaficcion' || genero=='ciencia' || genero=='ciencia_ficcion') cienciaF++;
      if(genero=='romance') romance++;
    }
    if(libros>masLibros){ masLibros=libros; autorMas=apellido; }
    print('$apellido $totalPag $codMayor $mayorPag');
  }
  print('Pct ciencia ficcion: \${(cienciaF*100/totalLibros).toStringAsFixed(2)}%');
  print('Cantidad ciencia y romance: \$cienciaF \$romance');
  print('Autor con mas libros: \$autorMas \$masLibros');
}