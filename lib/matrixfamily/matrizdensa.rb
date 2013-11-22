class Matriz_densa < Matriz

#RECIBE ARGUNMENTOS
	def [] (*ij)
		return @matriz[*ij] if ij.size == 1  #si el numero de argumentos es solo 1, entonces devolvemos toda la fila indicada.
	    @matriz[ij.first][ij.last]  #si son 2, devuelveme el elemento indicado.
	end

end


#SUMA
	def +(other)
		matriz3 = Array.new(@dimension) {|i|   #creamos un array de arrays, de dimension @dimension, y cuyo contenido en la posicion[i][j] será el resultado del bloque.
    		Array.new(@dimension) {|j|
      		@matriz[i][j] + other[i][j]
    		}
    	}
   end

#RESTA
   def -(other)
		matriz3 = Array.new(@dimension) {|i|   #creamos un array de arrays, de dimension @dimension, y cuyo contenido en la posicion[i][j] será el resultado del bloque.
    		Array.new(@dimension) {|j|
      		@matriz[i][j] - other[i][j]
    		}
    	}
   end

#MULTIPLICACIÓN
   def *(other)
   	matriz3 = Array.new(@dimension) {|i|   #creamos un array de arrays, de dimension @dimension, y cuyo contenido en la posicion[i][j] será el resultado del bloque.
   		Array.new(@dimension) {|j|
   			(0...@dimension).inject(0) do |resultado, k|  #El inject(0) inicializa a 0 el primer argumento (resultado).
          		resultado + @matriz[i][k] * other[k][j]   #Operacion para realizar la multiplicacion de matrices.
        		end
   		}
   	}
   end
