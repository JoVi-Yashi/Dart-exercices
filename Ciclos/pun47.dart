/*

47. Escriba un programa que imprima todos los enteros positivos impares menores que 100
omitiéndose aquellos que sean divisibles por 7.

*/

void numeimpasiete()
{
  for (int i = 1; i < 100; i++)
  {
    if (i % 2 != 0 && i % 7 != 0)
    {
      print(i);
    }
  }
}

void main(List<String> args)
{
  numeimpasiete();
}
