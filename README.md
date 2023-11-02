# testeprime



Automatização WEB:

    Primeiramente é necessário instalar o Python em sua máquina para realizar todos os outros comandos, neste site tem todas as instruções para a instalação do python e adição do mesmo nas váriaveis de ambiente do windows: https://docs.python.org/pt-br/3/using/windows.html
	Após a instalação do Python abra o prompt de comando e na seguinte ordem instale o robot e suas bibliotecas:

    pip install robotframework
    pip install robotframework-faker
    pip install robotframework-requests
	
	Com essas duas bibliotecas instaladas será possível realizar tanto os testes WEB quanto os de API


	Antes de iniciar os testes WEB peço que acesse a pasta testeprime e copie a pasta prime para a base do seu disco local C em sua máquina para que o caminho fique como o exemplo . Exemplo: C:\\prime/download.jpg


	Certifique-se de possuir o navegador Microsoft Edge instalado em seu computador


	Com todos esses passos feitos, abra a pasta testeprime com um editor de código, eu indico o VScode, com a pasta prime aberta abra um terminal integrado a pasta TestePrimeWeb, o caminho será parecido com esse : \testeprime\TestePrimeWeb> 


	No terminal integrado adicione o seguinte comando e depois a tecla enter para iniciar a automação: robot alterarinfo.robot


    Pronto, os testes devem começar a rodar no seu navegador.


Automatização de API:


    Para a automação da API caso já tenha instalado a biblioteca Requests não será necessária nenhuma outra ação para iniciá-lo

	Apenas abra um terminal integrado à página TestePrimeAPI, o caminho ficará parecido com esse : \testeprime\TestePrimeAPI>
    
	Com o terminal aberto digite o comando robot gerarpessoa.robot e os testes serão iniciados.




	
			