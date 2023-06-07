#include <math.h>
#include <stdio.h>
#include <stdlib.h>
#ifdef _WIN32
#define CLEAR "cls"
#else
#define CLEAR "clear"
#endif


void clearScreen() {
  system(CLEAR);
}

void opcion1() {
  clearScreen();
  float pi = 3.14159, r = (14.5 * 14.5), h = 26.79;
  float re = ((pi * r * h) / 3);
  printf("\t\t--------BIENVENIDO--------\n");
  printf("Según las indicaciones, el resultado para hallar el volumen\nde un cono con un radio de la base de 14,5 y una altura de 26,79 es: ");
  printf("%.3f\n", re);
}

void opcion2() {
  clearScreen();
  double rf, c;
  printf("Por favor, ingrese un número real de grados Fahrenheit que quiera convertir:\n");
  scanf("%lf", &rf);
  c = (rf - 32) / 1.8;
  printf("El número ingresado convertido a grados Celsius es: C°%.2lf\n", c);
}

void opcion3() {
  clearScreen();
  int is, h, m, s;
  printf("Por favor, ingrese el tiempo transcurrido en segundos:\n");
  scanf("%d", &is);
  h = is / 3600;
  is %= 3600;
  m = is / 60;
  s = is % 60;
  printf("El número ingresado en horas es: %d h\n", h);
  printf("El número ingresado en minutos es: %d m\n", m);
  printf("El número restante equivalente en segundos es: %d s\n", s);
}void opcion4() {
  clearScreen();
    float parcial_PR1, taller_PR1, quiz1, ejercicio_clase, quiz2, exposicion;
    float nota_final;

    // Solicitar las calificaciones al usuario
    printf("Ingrese la calificación del Parcial PR1 (80%%): ");
    scanf("%f", &parcial_PR1);

    printf("Ingrese la calificación del Taller PR1 (20%%): ");
    scanf("%f", &taller_PR1);

    printf("Ingrese la calificación del Quiz 1 (25%%): ");
    scanf("%f", &quiz1);

    printf("Ingrese la calificación del Ejercicio Clase (25%%): ");
    scanf("%f", &ejercicio_clase);

    printf("Ingrese la calificación del Quiz 2 (25%%): ");
    scanf("%f", &quiz2);

    printf("Ingrese la calificación de la Exposición (25%%): ");
    scanf("%f", &exposicion);

    // Calcular la nota final
   
    float nota_70 = (parcial_PR1 * 0.8 + taller_PR1 * 0.2 )*0.7;
    float nota_30 = (quiz1 * 0.25 + ejercicio_clase * 0.25 + quiz2 * 0.25 + exposicion * 0.25)* 0.3;
    float rt = nota_70 + nota_30;

    // Mostrar la nota final
    printf("La nota final obtenida es: %.2f\n", rt);

    return 0;
}

void opcion5() {
  clearScreen();
  printf("En la siguiente expresión, se necesita que ingreses las variables para obtener un resultado\n");
  printf("\t     4                         3 + d (2 + a) \n");
  printf("\t............. - 9(a + b c) + ...............\n");
  printf("\t 3 (r + 34)                     a + b d    \n");
  double r, a, b, c, d;
  printf("Por favor, ingrese la variable r:\n");
  scanf("%lf", &r);
  printf("Por favor, ingrese la variable a:\n");
  scanf("%lf", &a);
  printf("Por favor, ingrese la variable b:\n");
  scanf("%lf", &b);
  printf("Por favor, ingrese la variable c:\n");
  scanf("%lf", &c);
  printf("Por favor, ingrese la variable d:\n");
  scanf("%lf", &d);

  double resultado = (4 / (3 * (r + 34))) - 9 * (a + (b * c)) + (3 + d * (2 + a)) / (a + b * d);

  printf("Esta es la operación relacionada con las variables ingresadas: %.2lf\n", resultado);
}

void opcion6() {
  clearScreen();
  int x = 12;
  int y = 3;
  double lambda = 1.11695, alfa = 328.67, sigma = 2.1836, f;

  f = 3 * ((x + sigma * y) / ((x * x) - (y * y))) - lambda * (alfa - 13.7);

  printf("El valor resultante de la fórmula en donde f es igual a:\n");
  printf("\t          (x+sigma*y)\n");
  printf("\tf = 3 * _______________ - lambda * (alfa-13.7)\n");
  printf("\t          (x^2-y^2)\n");
  printf("tiene un resultado de: %lf\n", f);
}

void opcion7() {
  clearScreen();
  double sbase, cd, cc, sb, rt_irpf, sneto;
  int h_ex, h, hdsmd;
  double prc_irpf;
  printf("......ingresar los datos para poder calcularlo......\n");
  printf("Sueldo base: "); //solicitando los datos
  scanf("%lf", &sbase);
  printf("Complemento de destino: ");
  scanf("%lf", &cd);
  printf("Complemento de cargo académico: ");
  scanf("%lf", &cc);
  printf("Horas extra realizadas: ");
  scanf("%d", &h_ex);
  printf("Hijos: ");
  scanf("%d", &h);
  printf("Mayores dependientes: ");
  scanf("%d", &hdsmd);

  sb = sbase + cd + cc + (h_ex * 23); // el caluculo del sueldo bruto es la suma del base, mas el complemento destino, más el cargo, más las horas extra, las extra multiplicadas por 23 que es lo que se le paga por hora extra

  prc_irpf = 24 - (2 * h) - hdsmd; //se calcula restándole al 24 dos puntos por hijo y un punto por hijo depentiente, al ser el 24 un porcentaje de el impuesto

  rt_irpf = (sb * prc_irpf) / 100; //se multiplica el sueldo base por porcentaje irpf y luego se divide entre 100 para encontrar el valor correspondiente de retención en el porcentaje

  sneto = sb - rt_irpf; //se calcula el sueldo neto, restandole al sueldo bruto la retencion de impuestos, esto para hallar el sueldo total del empleado

  //se calcula en orden dependiendo de lo que primero se declare

  printf("\n ______Este es el cálculo de la nómina_____\n");
  printf("Sueldo base: %.2lf $\n", sbase);
  printf("Complemento de destino: %.2lf $\n", cd);
  printf("Complemento de cargo académico: %.2lf $\n", cc);
  printf("Horas extra realizadas: %d\n", h_ex);
  printf("Hijos: %d\n", h);
  printf("Mayores dependientes: %d\n", hdsmd);
  printf("Sueldo bruto: %.2lf $\n", sb);
  printf("Porcentaje de IRPF: %.2lf %%\n", prc_irpf);
  printf("Retención por IRPF: %.2lf $\n", rt_irpf);
  printf("Sueldo neto: %.2lf $\n", sneto);
}
void opcion8 (){ 
clearScreen();
int a = 1;
    double d = 1.0;
    int a1, a2, a3;
    double d1, d2;
    printf("\nINICIADO. . .\n");
    printf("Presiona enter para ver cada uno de los resultados \n");

    getchar();

    // Expresión 1
    a1 = 46 % 9 + 4 * 4 - 2;
    printf("Resultado de la expresión 1: %d\n", a1);
    getchar();
    // Expresión 2
    a2 = 45 + 43 % 5 * (23 * 3 % 2);
    printf("Resultado de la expresión 2: %d\n", a2);
    getchar();
    // Expresión 3
    a3 = 45 + 45 * 50 % (a--);
    printf("Resultado de la expresión 3: %d\n", a3);
    getchar();
    // Expresión 4
    d1 = 1.5 * 3 + (++d);
    printf("Resultado de la expresión 4: %.2lf\n", d1);
    getchar();
    // Expresión 5
    d2 = 1.5 * 3 + (d++);
    printf("Resultado de la expresión 5: %.2lf\n", d2);
    getchar();
    // Expresión 6
    double aux = (double)3 / a;
    a = a % ((int)aux + 3);
    printf("Resultado de la expresión 6: %d\n", a);
    getchar();
    getchar();
      

    }
    double cAT(double l1, double l2, double a);
    void opcion9() {
    clearScreen();
     double l1, l2, a, area;

    printf("por favor ingrese el valor del lado 1: ");
    scanf("%lf", &l1);

    printf("por favor ingrese el valor del lado 2: ");
    scanf("%lf", &l2);

    printf("por favor ingrese el valor del ángulo en radianes: ");
    scanf("%lf", &a);

    area = cAT(l1, l2, a);

    printf("El área del triángulo calculada mediante la ley del seno es: %.2lf\n", area);

    return 0;
}

double cAT(double l1, double l2, double a) {
    double area;

    area = 0.5 * l1 * l2 * sin(a);

    return area;

}
double ccm(double capital, double interes, int plazo);
double ca(double cuota, double im);
double ci(double cuota, double im); 
void opcion10 () {
clearScreen();
double capital, ia;
    int plazo;
    double cm, tPagado, tAmortizacion, tIntereses;
    double im;

    printf("Ingrese el capital prestado: ");
    scanf("%lf", &capital);

    printf("Ingrese el interés anual: ");
    scanf("%lf", &ia);

    printf("Ingrese el número de años de duración del préstamo: ");
    scanf("%d", &plazo);

    im = ia / 12;
    cm = ccm(capital, ia, plazo);
    tPagado = cm * plazo;
    tAmortizacion = ca(cm, im) * plazo;
    tIntereses = tPagado - tAmortizacion;

    printf("La cuota mensual a pagar es: %.2lf\n", cm);
    printf("El total pagado al final del plazo es: %.2lf\n", tPagado);
    printf("La cantidad de amortización es: %.2lf\n", tAmortizacion);
    printf("La cantidad de intereses es: %.2lf\n", tIntereses);

    return 0;
}

double ccm(double capital, double interes, int plazo) {
    double ratio = interes / 100.0 / 12.0; // Interés mensual
    double factor = pow(1 + ratio, -plazo); // (1 + ratio/100)^-plazo
    double cuota = (capital * ratio) / (1 - factor); // Fórmula de cuota mensual
    return cuota;
}

double ca(double cuota, double im) {
    return cuota - im;
}

double calcularIntereses(double cuota, double im) {
    return im;
}

int main() {
  int opcion;

  do {
    clearScreen();
    printf("\n---------- MENÚ PRINCIPAL ----------\n");
    printf("1. Calcular volumen de un cono\n");
    printf("2. Convertir grados Fahrenheit a Celsius\n");
    printf("3. Convertir segundos a horas, minutos y segundos\n");
    printf("4. Calificación de informatica\n");
    printf("5. Realizar operación matemática\n");
    printf("6. Calcular valor de fórmula\n");
    printf("7. Calcular nómina\n");
    printf("8. Resultado de las operaciones\n");
    printf("9. El área de un triángulo mediante la ley del seno:\n");
    printf("10. Préstamo hipotecario\n");
    printf("0. Salir\n");
    printf("Ingrese la opción deseada: ");
    scanf("%d", &opcion);

    switch (opcion) {
      case 0:
        clearScreen();
        printf("¡Hasta luego!\n");
        break;
      case 1:
        opcion1();
        break;
      case 2:
        opcion2();
        break;
      case 3:
        opcion3();
        break;
      case 4:
        opcion4();
        break;
      case 5:
        opcion5();
        break;
      case 6:
        opcion6();
        break;
      case 7:
        opcion7();
        break;
      case 8:
        opcion8();
        break;
      case 9:
        opcion9();
        break;
      case 10:
        opcion10();
        break;
    }

    if (opcion != 0) {
      printf("\nPresione Enter para volver al menú principal...");
      while (getchar() != '\n');
      getchar();
    }
  } while (opcion != 0);

  return 0;
}

