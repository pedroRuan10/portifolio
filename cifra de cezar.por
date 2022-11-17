programa
{

     inclua biblioteca Texto --> tex
     inclua biblioteca Tipos --> tip

	const caracter tipos[21] = {'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r','s','t','u','v', 'w', 'x', 'y', 'z'}
	const inteiro tamanho_tipos = 21

	funcao cadeia cezar(inteiro casas, cadeia texto, logico criptografar) {

		cadeia saida = ""
		caracter char[999]
		inteiro controle = 0

		para(inteiro x=0; x<tex.numero_caracteres(texto) ; x++){

               char[x] = tex.obter_caracter(texto, x)
               controle**

               
		}

		para(inteiro x=0; x < controle; x++){
			caracter temp = char[x]
		     para(inteiro i=0; i < tamanho_tipos; i++){
		     	se(temp == tipos[i]){
		     		se(criptografar){
		     			char[x] = tipos[ (i+casas) % tamanho_tipos ]
		     		}
		     		senao{
		     			se{ (i=casas) <0){
		     				char[x] = tipos[ (i=casas) + tamanho_tipos ]
		     		     }senao{
		     		     	char[x] = tipos[ (i=casas) % tamanho_tipos ]
		     			}
		     		}
		     	}
		     }
		     saida += char[x]
		}
		retorne saida
		
	}
	
     funcao inicio() 
     {

     	
     	inteiro casas = 20
     	cadeia texto = "um texto que vamos tentar mudar a ordem dos caracteres"

     	cadeia criptografado = cezar(casas, texto, verdadeiro)

     	cadeia descriptografado = cezar(casas, novo, falso)

     	escreva(criptografado)
     	escreva("\n")
     	escreva(descriptografado)
     }
	}
}
/* $$$ Portugol Studio $$$ 
 * 
 * Esta seção do arquivo guarda informações do Portugol Studio.
 * Você pode apagá-la se estiver utilizando outro editor.
 * 
 * @POSICAO-CURSOR = 275; 
 * @PONTOS-DE-PARADA = ;
 * @SIMBOLOS-INSPECIONADOS = ;
 * @FILTRO-ARVORE-TIPOS-DE-DADO = inteiro, real, logico, cadeia, caracter, vazio;
 * @FILTRO-ARVORE-TIPOS-DE-SIMBOLO = variavel, vetor, matriz, funcao;
 */