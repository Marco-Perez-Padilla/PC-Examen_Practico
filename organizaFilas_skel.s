# // Organiza filas primera Julio 23-24

# Marco Pérez Padilla

# #include <iostream>
# #include <iomanip>
# #include <cmath>

# typedef struct {
#   int nFil;
nFil = 0
#   int nCol;
nCol = 4
#   double elementos[];
elementos = 8
# } structMat;

sizeD = 8	# Numero de bytes de un float
LF = 10		# Caracter salto de línea

	.data
# structMat mat1 {
#   6,
#   6,
#   {
#     11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
#     21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
#     31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
#     41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
#     51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
#     61.61, 62.62, 63.63, 64.64, 65.65, 66.66
#   }
# };
mat1:	.word	6
	.word	6
	.double	11.11, 12.12, 13.13, 14.14, 15.15, 16.16,
	.double	21.21, 22.22, 23.23, 24.24, 25.25, 26.26,
	.double	31.31, 32.32, 33.33, 34.34, 35.35, 36.36,
	.double	41.41, 42.42, 43.43, 44.44, 45.45, 46.46,
	.double	51.51, 52.52, 53.53, 54.54, 55.55, 56.56,
	.double	61.61, 62.62, 63.63, 64.64, 65.65, 66.66


# structMat mat2 {
#   8,
#   9,
#   {
#     -80.891, -82.781, -79.839, 89.993, 33.783, -44.175, 66.429, -92.138, -46.655,
#     -24.006, -93.38, -21.174, 35.933, -23.515, -85.043, 67.668, -52.41, -57.284,
#     93.761, -15.051, -10.688, -62.945, 17.153, 49.872, 90.846, 67.25, -18.781,
#     -24.214, -40.152, 68.999, -68.865, -5.584, -26.282, 46.217, 51.177, -41.154,
#     -78.208, -70.256, 1.287, 30.436, -26.044, 22.812, 46.933, 59.731, 87.37,
#     -89.536, 80.733, 25.478, 66.535, 76.438, 2.831, 20.574, 42.064, -37.573,
#     94.806, -58.047, -52.258, 97.913, 84.083, 16.275, 96.847, 7.845, 2.752,
#     59.884, 72.417, -93.072, 98.597, -78.629, 39.259, 24.445, -29.24, 43.345,
#   }
# };

mat2:	.word	8
	.word	9
	.double	-80.891, -82.781, -79.839, 89.993, 33.783, -44.175, 66.429, -92.138, -46.655,
	.double	-24.006, -93.38, -21.174, 35.933, -23.515, -85.043, 67.668, -52.41, -57.284,
	.double	93.761, -15.051, -10.688, -62.945, 17.153, 49.872, 90.846, 67.25, -18.781,
	.double	-24.214, -40.152, 68.999, -68.865, -5.584, -26.282, 46.217, 51.177, -41.154,
	.double	-78.208, -70.256, 1.287, 30.436, -26.044, 22.812, 46.933, 59.731, 87.37,
	.double	-89.536, 80.733, 25.478, 66.535, 76.438, 2.831, 20.574, 42.064, -37.573,
	.double	94.806, -58.047, -52.258, 97.913, 84.083, 16.275, 96.847, 7.845, 2.752,
	.double	59.884, 72.417, -93.072, 98.597, -78.629, 39.259, 24.445, -29.24, 43.345,


# structMat mat3 {
#   1,
#   6,
#   {
#     -76.763, -20.617, 4.107, 43.278, -20.337, 1.128
#   }
# };
mat3:	.word	1
	.word	6
	.double	-76.763, -20.617, 4.107, 43.278, -20.337, 1.128

# structMat mat4 {
#   14,
#   1,
#   { -79.601, -84.485, -86.295, 13.708, -94.507, -15.226, 47.955,
#   -22.76, -6.558, 8.868, -20.178, -21.284, 1.958, -25.302
#    }
# };
mat4:	.word	14
	.word	1
	.double	-79.601, -84.485, -86.295, 13.708, -94.507, -15.226, 47.955,
	.double	-22.76, -6.558, 8.868, -20.178, -21.284, 1.958, -25.302

# structMat mat5 {
#   1,
#   1,
#   { 67.788 }
# };
mat5:	.word	1
	.word	1
	.double	67.788

# structMat mat6 {
#   0,
#   0,
#   { INFINITY }
# };
mat6:	.word	0
	.word	0
	.word	0x7FF0000000000000

# Cadenas de caracteres
str_matTiene:	.asciiz	"\n\nLa matriz tiene dimension "
str_comienza:	.asciiz	"\nComienza programa organiza filas\n"
str_suman:	.asciiz	"Los elementos suman "
str_menu:	.ascii	"\n\n"
		.ascii	"(1) Cambiar la matriz de trabajo\n"
		.ascii	"(3) Organizar filas\n"
		.ascii	"(7) Terminar el programa\n"
		.asciiz	"\nIntroduce opción elegida: "
str_elije:	.asciiz	"\nElije la matriz de trabajo (1..6): "
str_matIncorr:	.asciiz	"Numero de matriz de trabajo incorrecto\n"
str_indFilIni:	.asciiz	"\nIndice de fila inicial: "
str_errorFila:	.asciiz	"Error: dimension incorrecta.  Numero de fila incorrecto\n"
str_indFilFin:	.asciiz	"Indice de fila final: "
str_valCota:	.asciiz	"Valor para la cota: "
str_cambios:	.asciiz	"Cambios realizados = "
str_errorOpc:	.asciiz	"Error: opcion incorrecta\n"
str_termina:	.asciiz	"\nTermina el programa\n"

	.text

# $a0	-> 	Matriz de trabajo
# $s0	-> 	nFil
# $s1	->	nCol
# $s2	->	elem
# $s3	-> 	indice i para el bucle for
# $s4 	-> 	indice c para el segundo for
# $f20	->	acumulado	
# $f22	->	dato

print_suma:
# double print_suma(structMat* mat) {
	addi	$sp, $sp, -8
	sw	$ra, 4($sp)
	sw	$a0, 0($sp)
#   double acumulado = 0.0;
	li.d	$f20, 0.0
#   int nFil = mat->nFil;
	lw	$s0, nFil($a0)
#   int nCol = mat->nCol;
	lw	$s1, nCol($a0)
#   double* elem = mat->elementos;
	la	$s2, elementos($a0)
#   std::cout << "\n\nLa matriz tiene dimension " << nFil << 'x' << nCol << '\n';
	li	$v0, 4
	la 	$a0, str_matTiene
	syscall
	li 	$v0, 1
	move 	$a0, $s0
	syscall
	li	$v0, 11
	li	$a0, 'x'
	syscall
	li 	$v0, 1
	move 	$a0, $s1
	syscall	
	li	$v0, 11
	li	$a0, '\n'
	syscall
	
	li 	$s3, 0
#   for(int f = 0; f < nFil; f++) {
for_i_condicion:
	bge	$s3, $s0, fin_for
	li 	$s4, 0
	b 	for_c_condicion
#     for(int c = 0; c < nCol; c++) {
for_c_condicion:
	bge	$s4, $s1, fin_c_for
#       double dato = elem[f*nCol + c];
	mul 	$t0, $s3, $s1
	add 	$t0, $t0, $s4
	mul 	$t0, $t0, sizeD
	add 	$t0, $t0, $s2
	l.d 	$f22, 0($t0)
#       std::cout << dato << ' ';
	li 	$v0, 3
	mov.d	$f12, $f22
	syscall
	li 	$v0, 11
	li 	$a0, ' '
	syscall
#       acumulado += dato;
	add.d	$f20, $f20, $f22
	addi 	$s4, $s4, 1
	b 	for_c_condicion
#     }
fin_c_for:
	li 	$v0, 11
	li	$a0, '\n'
	syscall
	addi	$s3, $s3, 1
	b	for_i_condicion
#     std::cout << '\n';
#   }
fin_for:
#   std::cout << '\n';
	li 	$v0, 11
	li 	$a0, '\n'
	syscall
	mov.d	$f12, $f20
	
#   return acumulado;
# }
	lw	$a0, 0($sp)
	lw	$ra, 4($sp)
	addi 	$sp, $sp, 8
	
	jr	$ra
print_suma_fin:


	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s1
	# La cota ya esta en f12
#     int numc = reparte_vectores(f1, f2, nCol, cota);

# $a0	->	f1
# $a1	->	f2
# $a2	->	nCol
# $f12	->	cota
# $t0	->	numCambios
# $t1	->	i para el for
# $t2	->	indice para elem1 y elem2
# $f4	->	elem1
# $f6	->	0.0 para la comparacion
# $f8	->	elem2
# $f10 	-> 	-1.0

reparte_vectores:
# int reparte_vectores(double* v1, double* v2, int numElem, double cota) {
	addi	$sp, $sp, -24
	sw	$ra, 20($sp)
	sw	$a0, 16($sp)
	sw	$a1, 12($sp)
	sw	$a2, 8($sp)
	s.d	$f12, 0($sp)
#   int numCambios = 0;
	li 	$t0, 0
	li 	$t1, 0
#   for(int i = 0; i < numElem; i++) {
reparte_for_condicion:
	bge	$t1, $a2, fin_reparte_for
#     double elem1 = v1[i];
	mul 	$t2, $t1, sizeD
	add 	$t2, $t2, $a0
	l.d	$f4, 0($t2)
	li.d	$f6, 0.0	# Para el if
#     if ((elem1 > cota) || (elem1 < 0)) {
if_condicion:
	c.lt.d 	$f4, $f12
	bc1t	else
	c.lt.d	$f6, $f4
	bc1t	else
#       double elem2 = v2[i];
	l.d	$f8, 0($t2)
#       v1[i] = elem2;
	s.d	$f8, 0($t2)
#       v2[i] = elem1;
	s.d	$f4, 0($t2)
#       numCambios++;
	addi 	$t0, $t0, 1
	addi 	$t1, $t1, 1
	b 	reparte_for_condicion
#     } else {
else:
#       v1[i] = -elem1;
	mul.d 	$f4, $f4, $f10
	s.d	$f4, 0($t2)
	addi 	$t1, $t1, 1
	b 	reparte_for_condicion
#     }
#   }
fin_reparte_for:
	
#   return numCambios;
# }
	move 	$v0, $t0
	l.d	$f12, 0($sp)
	lw	$a2, 8($sp)
	lw	$a1, 12($sp)
	lw	$a0, 16($sp)
	lw	$ra, 20($sp)
	addi 	$sp, $sp, 24
	
	jr 	$ra
reparte_vectores_fin:

# $a0	->	Matriz de trabajo
# $a1	->	IndIni
# $a2	->	IndFin
# $f12	->	Cota
# $s0	->	totIntercambios
# $s1	->	nCol
# $s2	-> 	elem
# $s3	->	f1, dirección primer elemento fila inicial
# $s4 	-> 	indice f para el for
# $s5	->	f2, dirección primer elemento fila actual
# $s6	->	numc

organiza_filas:
# int organiza_filas(structMat* mat, int inicial, int final, double cota) {
	addi	$sp, $sp, -24
	sw	$ra, 20($sp)
	sw	$a0, 16($sp)
	sw	$a1, 12($sp)
	sw	$a2, 8($sp)
	s.d	$f12, 0($sp)
#   int totIntercambios = 0;
	li 	$s0, 0
#   int nCol = mat->nCol;
	lw 	$s1, nCol($a0)
#   double* elem = mat->elementos;
	la	$s2, elementos($a0)
#   double* f1 = &elem[inicial * nCol + 0]; //dirección primer elemento fila inicial
	mul	$t0, $a1, $s1
	mul	$t0, $t0, sizeD
	add 	$s3, $t0, $s2
	add 	$t0, $a1, 1
	move 	$s4, $t0
#   for(int f = (inicial+1); f <= final; f++) {
for_condicion:
	bgt	$s4, $a2, fin_for_condicion
#     double* f2 = &elem[f * nCol + 0];  // dirección primer elemento fila actual
	mul 	$t0, $s4, $s1
	mul 	$t0, $t0, sizeD
	move 	$s5, $t0
	
	move	$a0, $s3
	move	$a1, $s5
	move	$a2, $s1
	# La cota ya esta en f12
	jal 	reparte_vectores
#     int numc = reparte_vectores(f1, f2, nCol, cota);
	move 	$s6, $v0
#     totIntercambios += numc;
	add 	$s0, $s0, $s6
	addi 	$s4, $s4, 1
	b 	for_condicion
#   }
fin_for_condicion:
#   return totIntercambios;
	move 	$v0, $s0
	l.d	$f12, 0($sp)
	lw	$a2, 8($sp)
	lw	$a1, 12($sp)
	lw	$a0, 16($sp)
	lw	$ra, 20($sp)
	addi 	$sp, $sp, 24
# }
	jr	$ra
organiza_filas_fin:


main: 
# int main() {
#   std::cout << std::setprecision(18);  // ignorar
#   std::cout << "\nComienza programa organiza filas\n";
	li	$v0, 4
	la	$a0, str_comienza
	syscall
	
#   structMat* matTrabajo = &mat1;
	la	$s0, mat1
#   while(true) {
while:
	move	$a0, $s0
#     double sumaTotal = print_suma(matTrabajo);
	jal	print_suma
	move 	$s0, $a0
	mov.d	$f20, $f12
#     std::cout << "Los elementos suman " << sumaTotal;
	li 	$v0, 4
	la 	$a0, str_suman
	syscall
	
	li 	$v0, 3
	mov.d	$f12, $f20
	syscall
#     std::cout << "\n\n"
#     "(1) Cambiar la matriz de trabajo\n"
#     "(3) Organizar filas\n"
#     "(7) Terminar el programa\n"
#     "\nIntroduce opción elegida: ";
	li 	$v0, 4
	la 	$a0, str_menu
	syscall
#     int opcion;
#     std::cin >> opcion;
	li 	$v0, 5
	syscall
	move	$t0, $v0
	
	beq 	$t0, 7, opcion_7
	beq	$t0, 1, opcion_1
	beq 	$t0, 3, opcion_3
	b	opcion_incorrecta
	
#     if(opcion == 7) {	
opcion_7:
#       break;
	b 	final_programa
#     }

#     // Opción 1 ////////////////////////////////////////////////////////////
#     if(opcion == 1) {
opcion_1:
#       std::cout << "\nElije la matriz de trabajo (1..6): ";
	li 	$v0, 4
	la 	$a0, str_elije
	syscall
#       int matT;
#       std::cin >> matT;
	li 	$v0, 5
	syscall
	move 	$t0, $v0
	
	beq 	$t0, 1, MAT1
	beq 	$t0, 2, MAT2
	beq 	$t0, 3, MAT3
	beq 	$t0, 4, MAT4
	beq 	$t0, 5, MAT5
	beq 	$t0, 6, MAT6
	b 	MAT_incorrecta
	
#       if (matT == 1) {
MAT1:
#         matTrabajo = &mat1;
	la 	$s0, mat1
#         continue;  // volvemos al principio del bucle
	b 	while
#       }
#       if (matT == 2) {
MAT2:
#         matTrabajo = &mat2;
	la	$s0, mat2
#         continue;  // volvemos al principio del bucle
	b 	while
#       }
#       if (matT == 3) {
MAT3:
#         matTrabajo = &mat3;
	la 	$s0, mat3
#         continue;  // volvemos al principio del bucle
	b 	while
#       }
MAT4:
#       if (matT == 4) {
#         matTrabajo = &mat4;
	la 	$s0, mat4
#         continue;  // volvemos al principio del bucle
	b 	while
#       }
MAT5:
#       if (matT == 5) {
#         matTrabajo = &mat5;
	la 	$s0, mat5
#         continue;  // volvemos al principio del bucle
	b 	while
#       }
MAT6:
#       if (matT == 6) {
#         matTrabajo = &mat6;
	la 	$s0, mat6
#         continue;  // volvemos al principio del bucle
	b 	while
#       }
MAT_incorrecta:
#       std::cout << "Numero de matriz de trabajo incorrecto\n";
	li 	$v0, 4
	la 	$a0, str_matIncorr
	syscall
#       continue;  // volvemos al principio del bucle
	b 	while
#     }

#     // Opción 3 //////////////////////////////////////////////////////////
#     if(opcion == 3) {
opcion_3:
#       int numFilas = matTrabajo->nFil;
	lw	$s1, nFil($s0)
#       std::cout << "\nIndice de fila inicial: ";
	li 	$v0, 4
	la 	$a0, str_indFilIni
	syscall
#       int indFilIni;
#       std::cin >> indFilIni;
	li 	$v0, 5
	syscall
	move 	$s2, $v0
#       if ((indFilIni < 0) || (indFilIni >= numFilas)) {
	blt	$s2, 0, dim_inc
	bge	$s2, $s1, dim_inc
	b	pedir_fila_final
dim_inc:
#         std::cerr << "Error: dimension incorrecta.  Numero de fila incorrecto\n";
	li 	$v0, 4
	la 	$a0, str_errorFila
	syscall
#         continue;  // volvemos al principio del bucle
	b	while
#       }
pedir_fila_final:
#       std::cout << "Indice de fila final: ";
	li 	$v0, 4
	la 	$a0, str_indFilFin
	syscall
#       int indFilFin;
#       std::cin >> indFilFin;
	li	$v0, 5
	syscall
	move 	$s3, $v0
#       if ((indFilFin < 0) || (indFilFin >= numFilas)) {
	blt	$s3, 0, dim_inc
	bge	$s3, $s1, dim_inc
	b	pedir_cota
#         std::cerr << "Error: dimension incorrecta.  Numero de fila incorrecto\n";
#         continue;  // volvemos al principio del bucle
#       }
pedir_cota:
#       std::cout << "Valor para la cota: ";
	li 	$v0, 4
	la 	$a0, str_valCota
	syscall
#       double cota;
#       std::cin >> cota;
	li 	$v0, 7
	syscall
	mov.d	$f22, $f12
#       int totCambios = organiza_filas(matTrabajo, indFilIni, indFilFin, cota);
	mov.d	$f12, $f22
	move	$a0, $s0
	move 	$a1, $s2
	move	$a2, $s3
	jal 	organiza_filas
#       std::cout << "Cambios realizados = " << totCambios;
	move	$s0, $a0
	move	$s2, $a1
	move	$s3, $a2
	mov.d	$f22, $f12
	move 	$s4, $v0
	li 	$v0, 4
	la 	$a0, str_cambios
	syscall
	li 	$v0, 5
	move 	$a0, $s4
	syscall
#       continue;  // volvemos al principio del bucle
	b 	while
#     }

#     // Opción Incorrecta ///////////////////////////////////////////////////////
#     std::cout << "Error: opcion incorrecta\n";
opcion_incorrecta:
	li 	$v0, 4
	la 	$a0, str_errorOpc
	syscall
	b 	while
#   }
final_programa:
#   std::cout << "\nTermina el programa\n";
	li 	$v0, 4
	la 	$a0, str_termina
	syscall
	
	li 	$v0, 10
	syscall
# }
