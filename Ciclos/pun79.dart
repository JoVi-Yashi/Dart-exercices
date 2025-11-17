/* 

79. Una pequeña Librería de la Ciudad desea controlar los datos de los diferentes autores cuyos libros
están a la venta. Cada autor ha escrito diversos libros, pudiendo estos ser clasificados de acuerdo al
género: ciencia ficción, romance, acción, terror, novela, autoayuda y académico. Para cada texto se
conoce: código, género y número de páginas. Escriba un programa, que permita calcular y mostrar:
• Por autor:
 Apellido
 Total, de páginas escritas o Código del libro con mayor número de páginas y
cantidad de páginas.

• En General:
 Porcentaje de libros de ciencia ficción, respecto al total de libros.
 Cantidad de libros de ciencia ficción y romance que hay en existencia.
 Apellido del autor con mayor cantidad de libros escritos y cantidad de libros
escritos.

*/

import 'dart:io';

void main() {
  int totalLibros = 0;
  int librosCienciaFiccion = 0;
  int librosRomance = 0;

  String autorMayorLibros = '';
  int maxLibrosAutor = 0;

  stdout.write("Ingrese número de autores: ");
  int numAutores = int.parse(stdin.readLineSync()!);

  for (int a = 1; a <= numAutores; a++) {
    stdout.write("\nIngrese apellido del autor: ");
    String apellido = stdin.readLineSync()!;

    stdout.write("Ingrese número de libros del autor: ");
    int numLibros = int.parse(stdin.readLineSync()!);

    if (numLibros > maxLibrosAutor) {
      maxLibrosAutor = numLibros;
      autorMayorLibros = apellido;
    }

    int maxPaginas = 0;
    String codigoMayorLibro = '';

    for (int l = 1; l <= numLibros; l++) {
      stdout.write("\nIngrese código del libro: ");
      String codigo = stdin.readLineSync()!;

      stdout.write(
        "Ingrese género (ciencia ficción, romance, acción, terror, novela, autoayuda, académico): ",
      );
      String genero = stdin.readLineSync()!.toLowerCase();

      stdout.write("Ingrese número de páginas: ");
      int paginas = int.parse(stdin.readLineSync()!);

      totalLibros++;

      // Contar géneros específicos
      if (genero == 'ciencia ficción') librosCienciaFiccion++;
      if (genero == 'romance') librosRomance++;

      // Libro con más páginas del autor
      if (paginas > maxPaginas) {
        maxPaginas = paginas;
        codigoMayorLibro = codigo;
      }
    }

    print("\n--- Autor: $apellido ---");
    print("Total de páginas escritas: $maxPaginas");
    print(
      "Libro con mayor número de páginas: $codigoMayorLibro ($maxPaginas páginas)",
    );
  }

  double porcentajeCF = totalLibros == 0
      ? 0
      : (librosCienciaFiccion / totalLibros) * 100;

  print("\n=== Estadísticas Generales ===");
  print(
    "Porcentaje de libros de Ciencia Ficción: ${porcentajeCF.toStringAsFixed(2)} %",
  );
  print("Cantidad de libros de Ciencia Ficción: $librosCienciaFiccion");
  print("Cantidad de libros de Romance: $librosRomance");
  print(
    "Autor con mayor cantidad de libros: $autorMayorLibros ($maxLibrosAutor libros)",
  );
}
