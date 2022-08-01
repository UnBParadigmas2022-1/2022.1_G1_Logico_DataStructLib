# Biblioteca de Estruturas de Dados (Prolog)

**Disciplina**: FGA0210 - PARADIGMAS DE PROGRAMAÇÃO - T01 <br>
**Nro do Grupo**: 01<br>
**Paradigma**: Lógico<br>

## Alunos
|Matrícula | Aluno |
| -- | -- |
| 18/0013637 | Arthur Paiva Tavares |
| 18/0117548 | Bruno Carmo Nunes |
| 16/0028361 | Gabriel Batista Albino Silva |
| 14/0156909 | Nathalia Lorena Cardoso Dias |
| 17/0051277 | Nicolas Georgeos Mantzos |
| 17/0114333 | Sofia Costa Patrocinio |
| 19/0048760 | Wellington Jonathan de Souza Rodrigues |
## Sobre 
O objetivo é construir uma biblioteca que agrege as principais estruturas de dados acompanhadas de seus algoritmos
principais para as operações de inserção, ordenação, deleção e busca implementados no paradigma lógico. 

Acompanhada dessas implementações, serão realizadas análises comparativas de desempenho e complexidade em relação ao que foi escrito no paradigma anterior (funcional) .
## Screenshots


## Instalação 
### Prolog

Inicialmente é necessario que  instale a plataforma do SWI Prolog. Se você estiver no linux baseado no Debian, basta copiar a seguinte linha no seu terminal:
```
 $ sudo apt-add-repository ppa:swi-prolog/stable
 $ sudo apt-get update
 $ sudo apt-get install swi-prolog
```

Clone este repositório:

```
$ git clone <https://github.com/UnBParadigmas2022-1/2022.1_G1_Logico_DataStructLib>
```

## Uso 
- Executar, no diretório do projeto, o comando `swipl` para acesso ao interpretador prolog
- Carregar o módulo principal digitando `[main].`.
- Adentrar no menu digitando `menu.`.


# Vídeo

## Participações
A tabela abaixo sintetiza, nas palavras do contribuidor, as contribuições acompanhadas de sua respectiva significância.
|Nome do Membro | Contribuição | Significância da Contribuição para o Projeto (Excelente/Boa/Regular/Ruim/Nula) |
| -- | ---- | - |
| Arthur Paiva Tavares  | - | - |
| Bruno Carmo Nunes  | - | - |
| Gabriel Batista Albino Silva | Adicionado algoritmo de encontrar a menor distância em um grafo utiliando o backtracking do Prolog. A implementação encontra-se no arquivo "graph/shortest_path.pl" e sua implementação utiliza bastante do paradigma lógico e a camada de controle do prolog, ao inves da implementação que fiz no paradigma funcional onde era utilizado kruskals ou bellman ford para o calculo da menor distância. |
| Nathalia Lorena Cardoso Dias  | - | - |
| Nicolas Georgeos Mantzos  | - | - |
| Sofia Costa Patrocinio  | - | - |
| Wellington Jonathan de Souza -  | - | - |

## Percepções gerais, lições aprendidas, fragilidades superadas...
A tabela abaixo compila as percepções e lições aprendidas por cada participante no desenvolvimento do segundo módulo do projeto.

|Nome do Membro | Comentário | 
| -- | ---- |
| Arthur Paiva Tavares  | - |
| Bruno Carmo Nunes  |- | 
| Gabriel Batista Albino Silva  | Um dos desafios que eu tive durante a implementação desse projeto foi a dificuldade de implementar algoritmos otimizados de menor caminho possível em grafos, uma vez que esses algoritmos necessitam de estruturas de controle de estado que são dificeis de gerenciar no paradigma lógico. Já existem imlementações realizadas anteriormente desses algoritmos em prolog como  citado na referência, porém a implementação foi realizada de maneira demasiadamente imperativa, conforme o próprio autor destaca. Portanto, ao invés de implementar esses algoritmos, decidi implementar algo mais voltado para o pardigma lógico, utilizando recursos de backtracking e recursão para encontrar o menor caminho possível entre dois pontos em um grafo. No meu entender a implementação realizada está de acordo com as espectativas do projeto, que é comparar algoritmos em diferentes paradigmas, e creio que a implementação no paradigma lógico se destaca das demais no quesito de ser única. |
| Nathalia Lorena Cardoso Dias  | -|
| Nicolas Georgeos Mantzos  | -   |
| Sofia Costa Patrocinio  | - |
| Wellington Jonathan de Souza Rodrigues  | -  |

## Trabalhos Futuros

* Realizar a implementação de algoritmos classícos de busca em grafos para contrastar com a visão lógica apresentada. 


## Fontes
- Menu: Obtido do moodle, arquivo "Menu de escolha.zip".
- Usado como referência inicial para implementação de grafos: [AI L9 P1 Prolog: Introduction to Prolog with graph search](https://www.youtube.com/watch?v=odZ1tnlhYSY)
- Usado como referência para consulta dos algoritmos padrões em prolog (Não foi implementado, consultar percepções do Gabriel Albino para detalhes): [Bellman-Ford algorithm implemented in Prolog](https://github.com/tchap/prolog-bellman-ford/blob/master/bf.pl)
