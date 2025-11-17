/*

72.Conociendo la masa y distancia de dos cuerpos se puede determinar la Fuerza de atracción que se
ejerce entre ambos. Se desea determinar las fuerzas de atracción ejercida entre la tierra y diversos
satélites ubicados a distintas alturas. Para lo cual la NASA le ha solicitado a usted construir un
programa que responda a los siguientes requerimientos:
a) Cuál es la mayor y menor fuerza de atracción ejercida por los satélites en estudio
b) La fuerza de atracción promedio ejercida por los satélites en estudio
c) La mayor masa de todos los satélites estudiados
d) La masa promedio de los satélites
e) La menor y mayor altura de los satélites
La fórmula para determinar la Fuerza de atracción es:

F = G m M
r
2

donde:
m: masa satélite;
M: Masa tierra (5,97 * 10 24 Kg);
r: distancia de los cuerpos;
G: Constante Gravitatoria (6,67259 * 10-11 N*m2
)
Kg2

Considere la siguiente muestra para realizar la prueba del Programa:
Satélite País Masa Altura
Kg. Mts
Canada 1 Canadá 8.300 31.200.000
Alfa 1 Chile 5.500 36.000.000
Boby 4 EE.UU. 12.000 33.450.000
Che 3 Argentina 3.350 34.200.000

*/

void main() {
  const double G = 6.67259e-11;
  const double M_tierra = 5.97e24;

  // Datos de prueba
  List<Map<String, dynamic>> satelites = [
    {
      "nombre": "Canada 1",
      "pais": "Canada",
      "masa": 8300.0,
      "altura": 31200000.0,
    },
    {"nombre": "Alfa 1", "pais": "Chile", "masa": 5500.0, "altura": 36000000.0},
    {
      "nombre": "Boby 4",
      "pais": "EE.UU.",
      "masa": 12000.0,
      "altura": 33450000.0,
    },
    {
      "nombre": "Che 3",
      "pais": "Argentina",
      "masa": 3350.0,
      "altura": 34200000.0,
    },
  ];

  double fuerzaMayor = double.negativeInfinity;
  double fuerzaMenor = double.infinity;
  double sumaFuerza = 0;

  double masaMayor = double.negativeInfinity;
  double sumaMasa = 0;

  double alturaMayor = double.negativeInfinity;
  double alturaMenor = double.infinity;

  for (var sat in satelites) {
    double masa = sat["masa"];
    double altura = sat["altura"];
    double r =
        altura; // considerando altura desde el centro de la Tierra (aprox. la altura suministrada)
    double fuerza = G * masa * M_tierra / (r * r);

    // Fuerza
    if (fuerza > fuerzaMayor) fuerzaMayor = fuerza;
    if (fuerza < fuerzaMenor) fuerzaMenor = fuerza;
    sumaFuerza += fuerza;

    // Masa
    if (masa > masaMayor) masaMayor = masa;
    sumaMasa += masa;

    // Altura
    if (altura > alturaMayor) alturaMayor = altura;
    if (altura < alturaMenor) alturaMenor = altura;
  }

  int n = satelites.length;
  double fuerzaPromedio = sumaFuerza / n;
  double masaPromedio = sumaMasa / n;

  print("--- RESULTADOS ---");
  print("Mayor fuerza: ${fuerzaMayor.toStringAsExponential(4)} N");
  print("Menor fuerza: ${fuerzaMenor.toStringAsExponential(4)} N");
  print("Fuerza promedio: ${fuerzaPromedio.toStringAsExponential(4)} N");
  print("Mayor masa: ${masaMayor} Kg");
  print("Masa promedio: ${masaPromedio.toStringAsFixed(2)} Kg");
  print("Mayor altura: ${alturaMayor.toStringAsFixed(0)} m");
  print("Menor altura: ${alturaMenor.toStringAsFixed(0)} m");
}
