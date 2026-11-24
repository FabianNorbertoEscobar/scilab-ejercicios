# Ejercicios de Cálculo Numérico con Scilab

Colección de prácticas de **Cálculo Numérico** implementadas principalmente con [Scilab](https://www.scilab.org/) y complementadas con notebooks de Wolfram Mathematica. El repositorio reúne algoritmos iterativos, resolución de ecuaciones, sistemas lineales, integración, interpolación y ecuaciones diferenciales ordinarias.

> Repositorio académico y de aprendizaje: las funciones están organizadas como ejercicios independientes y muestran una implementación directa de los métodos numéricos.

## Contenido

- [Tecnologías y stack](#tecnologías-y-stack)
- [Prácticas implementadas](#prácticas-implementadas)
- [Estructura del repositorio](#estructura-del-repositorio)
- [Cómo usar las prácticas](#cómo-usar-las-prácticas)
- [Archivos destacados](#archivos-destacados)
- [Convenciones](#convenciones)
- [Nota de uso](#nota-de-uso)

## Tecnologías y stack

| Tecnología | Uso |
|---|---|
| **Scilab** | Implementación de funciones y experimentación con métodos numéricos |
| **Lenguaje Scilab (`.sci`)** | Funciones reutilizables, bucles, matrices y vectores |
| **Scripts Scilab (`.sce`)** | Ejecución directa de prácticas |
| **Wolfram Mathematica (`.nb`)** | Notebooks de gráficos, ejercicios y comprobaciones |
| **Git / GitHub** | Control de versiones y distribución del material |

El repositorio no requiere dependencias externas ni un framework de ejecución. Cada práctica puede ejecutarse de forma independiente.

## Prácticas implementadas

### Resolución de ecuaciones no lineales

- **Método de bisección**
  - `biseccion_cantidad de iteraciones.sci`
  - `biseccion_cota del error admitido.sci`
  - `biseccion_error y tope a la cantidad de iteraciones.sci`
  - `biseccion_ejercicio 16.sci`
- **Método de Newton-Raphson**
  - `newton-raphson_cantidad de iteraciones.sci`
  - `newton-raphson_cota del error admitido.sci`
  - `newton-raphson_error y tope a la cantidad de iteraciones.sci`
  - `newton_ejercicio 16.sci`
- **Punto fijo**: `punto_fijo.sci`
- **Experimentación gráfica y de convergencia**: notebooks sobre `cos(x) = x` y sobre la raíz cúbica de 5.

Los criterios de parada incluyen cantidad máxima de iteraciones, tolerancia sobre el error y combinaciones de ambos.

### Sistemas de ecuaciones lineales

- **Método de Jacobi**: `jacobi_cantidad de iteraciones.sci`
- **Método de Gauss-Seidel**: `gauss-seidel_cantidad de iteraciones.sci`

Ambos algoritmos reciben la matriz de coeficientes, el vector de términos independientes y la cantidad de iteraciones.

### Interpolación y polinomios

- `diferencias_divididas.sci`: cálculo de diferencias divididas.
- `horner.sci`: evaluación eficiente de polinomios mediante el método de Horner.
- `epol.sci`: construcción/evaluación relacionada con interpolación polinómica.
- `derivada_b_ej_17.sci`, `derivada_funcion_a_ej_17.sci`, `funcion_a_ej_17.sci` y `funcion_b_ej_17.sci`: funciones auxiliares para ejercicios de derivación e interpolación.

### Integración numérica

- **Método del punto medio**: `punto_medio.sci`
- **Regla del trapecio**: `trapecio.sci`, `trapecios_cantidad de iteraciones.sce`
- **Método de Simpson**:
  - `simpson.sci`
  - `simpson_cantidad de intervalos.sci`
  - `simpson_longitud de intervalos.sci`

Estas variantes permiten dividir el intervalo por cantidad de subintervalos o por longitud de paso.

### Resolución de ecuaciones diferenciales ordinarias

- **Euler**: `euler_cantidad de iteraciones y paso.sci`
- **Punto medio / Runge-Kutta 2**: `rk2_runge kutta 2_cantidad de iteraciones y paso.sci`
- **Runge-Kutta 4**: `rk4_runge kutta 4_cantidad de iteraciones y paso.sci`
- **Taylor**: `taylor.sci`
- **Taylor de segundo orden**: `taylor2_cantidad de iteraciones y paso.sci`

Las funciones auxiliares `f(t,y)=...sci`, `g(t,y)=...sci`, `G(...).sci` y `G1(...).sci` representan sistemas y ecuaciones diferenciales utilizadas por estos métodos.

### Otros ejercicios

- `extremo_inferior.sci` y `extremo_superior.sci`: extremos de intervalos.
- `fijo.sci`, `f.sci`, `f1.sci`, `g.sci`, `seno.sci`: funciones matemáticas auxiliares.
- `vector_de_imagenes.sci`: evaluación de una función sobre vectores de datos.
- `tp1.nb` y `tp2.nb`: trabajos prácticos realizados en Wolfram Mathematica.

## Estructura del repositorio

Los archivos se encuentran directamente en la raíz del repositorio. No existe una jerarquía por unidades o trabajos prácticos.

```text
.
├── *.sci   # funciones de Scilab
├── *.sce   # script ejecutable de Scilab
├── *.nb    # notebooks de Wolfram Mathematica
└── README.md
```

Los nombres describen el método y, cuando corresponde, el criterio de ejecución: cantidad de iteraciones, tolerancia o longitud del paso.

## Cómo usar las prácticas

### Ejecutar una función de Scilab

1. Instalar Scilab.
2. Abrir Scilab y situarse en la carpeta del repositorio.
3. Cargar el archivo deseado con `exec`:

```scilab
exec("biseccion_cantidad de iteraciones.sci");
```

4. Definir la función a estudiar y llamar al método:

```scilab
deff("y=f(x)", "y=x-cos(x)");
raiz = biseccion(0, 1, f, 20);
disp(raiz);
```

Para cargar varias funciones `.sci` ubicadas en el directorio activo puede utilizarse `getd(pwd())`, siempre que el archivo no tenga errores de sintaxis.

### Ejecutar el script incluido

Desde Scilab:

```scilab
exec("trapecios_cantidad de iteraciones.sce");
```

### Abrir notebooks de Mathematica

Los archivos `.nb` deben abrirse con Wolfram Mathematica 10 o una versión compatible. También pueden utilizarse como referencia visual e histórica de los ejercicios correspondientes.

## Archivos destacados

| Archivo | Funcionalidad |
|---|---|
| `biseccion_cantidad de iteraciones.sci` | Aproximación de una raíz por bisección |
| `newton-raphson_cantidad de iteraciones.sci` | Aproximación de una raíz por Newton-Raphson |
| `jacobi_cantidad de iteraciones.sci` | Resolución iterativa de sistemas por Jacobi |
| `gauss-seidel_cantidad de iteraciones.sci` | Resolución iterativa de sistemas por Gauss-Seidel |
| `diferencias_divididas.sci` | Cálculo de coeficientes de interpolación |
| `simpson_cantidad de intervalos.sci` | Integración aproximada por Simpson |
| `euler_cantidad de iteraciones y paso.sci` | Integración de una EDO con el método de Euler |
| `rk4_runge kutta 4_cantidad de iteraciones y paso.sci` | Aproximación de una EDO con Runge-Kutta de cuarto orden |

## Convenciones

- Los parámetros y resultados se explican mediante comentarios al final de cada archivo.
- Las iteraciones se representan habitualmente con `n` o `m`.
- `h` identifica el tamaño de paso; `tol` o `E` representan tolerancias.
- Los vectores se usan para coeficientes, valores independientes y resultados tabulados.
- Algunas funciones reciben directamente una función Scilab como parámetro, por ejemplo `f`.
- Los nombres conservan la terminología de las consignas originales y pueden contener espacios o caracteres especiales.

## Nota de uso

El objetivo de estas prácticas es estudiar el comportamiento de los métodos numéricos, no ofrecer una biblioteca generalizada de producción. Resultados, criterios de convergencia y validaciones pueden variar según la función, la matriz, el intervalo o la condición inicial elegida.

Antes de reutilizar una implementación conviene verificar:

- continuidad y existencia de raíz en el intervalo;
- convergencia y valores iniciales apropiados;
- tolerancia, cantidad de iteraciones y tamaño de paso;
- condiciones adecuadas sobre la matriz para métodos iterativos;
- precisión esperada y propagación de errores.
