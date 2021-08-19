## Exercícios de Revisão

### 1. Quais as principais características de uma arquitetura Harvard?  
Em uma arquitetura Harvard, a unidade de controle e ULA ficam separadas, com duas memórias divididas de forma independente.
  1. **Memórias independentes**: existe uma memória para os dados e outra para as instruções
  2. **Processamento paralelo**: é possível ler uma instrução ou ler/escrever um dado ao mesmo tempo, já que possuem memórias separadas
  3. **Maior eficiência de cache**
  4. **Aumento de custo**: ao ter duas memórias, duplica a taxa de transferência entre memória e processador, gastando mais dinheiro e energia

### 2. Diferencie arquitetura de Von Neumann de arquitetura Harvard.  
  - A arquitetura de Von Neumann possui uma memória unificada para dados e instruções. Os dados de entrada e saída são controlados pelo acumulador.
  - A arquitetura de Harvard possui duas memórias independentes, uma para dados e outra para instruções, permitindo o processamento paralelo.

### 3. Explique o que é o gargalo de Von Neumann.  
O gargalo de Von Neumann ocorre pela crescente diferença na evolução tecnológica de processadores e memórias ao longo do tempo.
Dessa forma, cada vez que o processador quiser processar algo, vai ter que esperar muito tempo para acessar na memória.
Ou seja, mesmo com um processador veloz, a execução do computador será na velocidade da memória.

### 4. Como podemos minimizar o gargalo de Von Neumann?  
1. Mais registradores, de acesso rápido, para evitar o acesso à memória
2. Reduzir ou eliminar o número de instruções que podem buscar operadores na memória: uso apenas de `LOAD` e `STORE`
3. Explorar o uso de caches para permitir o reuso de dados e instruções
4. Usar hierarquia de memória

### 5. Atualmente, qual modelo de arquitetura mais usado nos computadores? Explique.  
O modelo híbrido é o mais usado atualmente. Se abrirmos o gabinete, vemos o modelo de Von Neumann ao identificarmos um chip de processador + memória RAM.
Entratanto, ao abrir o chip do processador, vemos o modelo de Harvard: temos duas caches, uma para instruções e outra para dados, em um Pentium, por exemplo.

### 6. Explique para que serve e como funciona a hierarquia de memória nos computadores atuais.  
A organização hierárquica ordena as memórias em questão de velocidade e proximidade com o processador.
Quanto mais próximo do CPU (registradores e caches, que estão dentro do chip), mais rápido ela é, mas com uma baixa capacidade de armazenamento e alto custo de compra.
Dessa forma, ao ordenar as memórias de forma hierárquica, algoritmos implementados em hardware podem fazer essa alocação de forma especulativa, alocando o que é mais importante para os caches ou registradores.

### 7. Desenhe, em forma de pirâmide, a organização hierárquica da memória nos sistemas computacionais  atuais,  indicando  as  tecnologias  de  memória  utilizadas  e  suas  características (ex.: alta velocidade).  
<img src="https://i.imgur.com/PDxdqPJ.jpg">

### 8. Explique como funciona o modo de endereçamento indireto.  
No endereçamento indireto, o endereço na instrução aponta para um endereço intermediário na memória, que só após, aponta para o operando.
Dessa forma, eu não tenho restrição de bits da instrução para acessar a memória.
Ao apontar para um endereço armazenado na própria memória, eu consigo acessar uma quantidade muito maior de memória.

### 9. Explique como funciona o modo de endereçamento indireto base + deslocamento com registrador.   
No endereçamento indireto base + deslocamento com registrador, a instrução possui dois campos de endereços.
O primeiro campo aponta para um registrador, que contém a base do endereço final.
O segundo campo possui um endereço de deslocamento de modo indireto, que incrementa o endereço base.

Dessa forma, ao manter um endereço base fixo com um deslocamento flexível, é possível acessar uma quantidade de memória ainda maior, gastando poucos bits.

### 10. Quais são as principais características dos processadores RISC e CISC? Processadores CISC são mais rápidos que processadores RISC? Explique.  
CISC e RISC são duas linhas diferentes de processadores, que usam diferentes abordagens, sendo a RISC a mais moderna e rápida dentre elas.

As arquiteturas CISC, Complex Instruction Set Computer, foram desenvolvidas quando os programas eram programados em chaves ou linguagens de montagem — baixo nível, assembly.
Dessa forma, acreditava-se que quanto maior o conjunto de instruções, ou seja, instruções mais específicas e complexas, trariam um maior aumento de desempenho.
Nessa arquitetura, havia um conjunto muito grande de instruções e era preciso dar muita manutenção ao hardware.

As arquiteturas RISC, Reduced Instruction Set Computer, foram desenvolvidas quando já existia programação de alto nível.
Dessa forma, acreditava-se que quanto menor o conjunto de instruções, ou seja, instruções mais genéricas e reduzidas, trariam um maior aumento de desempenho.
Diversos motivos levaram a criação do RISC, como o efeito negativo das instruções complexas do CISC e o avanço tecnológico dos compiladores, o que permitiu possuir instruções menores, mais dáceis de compilar, mais rápidas e de uso escalável.

### 11. Explique  as  três  grandes  etapas  que  são  comuns  para  a  execução  de  qualquer instrução.
Uma instrução é formada por um opcode, um modo de acesso a memória e um ou mais endereços, dependendo do número de operandos. O fluxo de execução é:
  1. Busca da instrução na memória e levado ao processador
  2. Decodificação da instrução (opcode): é identificado qual é a instrução buscada
  3. Execução da instrução

### 12. Considerando  processadores  RISC,  apresente  as  suas  três  principais  classes  de instruções.  Cite  exemplos  de  instruções  que  se  enquadram  em  cada  uma  destas classes.  
1. De transferência de dados: `load, store e move (em CISCs)`
2. Aritméticas e lógicas: `add, sub, mul, div, and, or, xor, not`
3. De teste/desvio, ou de controle de execução: `jump, jump on negative (JN), jump on zero (JZ), branch on equal (beq)`

### 13. Considere arquiteturas de processadores com diferentes números de operandos: 4  operandos, 3 operandos, 2 operandos, 1 operando e nenhum operando.  
### Explique,  para  cada  arquitetura,  para  que  servem  os  operandos  presentes  na instrução.  
  1. 4 operandos: o primeiro e segundo endereço guardam os dois operandos que será feito o cálculo. O terceiro endereço guarda o destino de onde será armazenado o resultado. O quarto endereço guarda o endereço da próxima instrução. Nesse caso, o código será sequencial, sem necessidade de desvio.
  2. 3 operandos: o primeiro e segundo endereço guardam os dois operandos que será feito o cálculo. O terceiro endereço guarda o destino de onde será armazenado o resultado. Por não ter um quarto endereço com a próxima instrução, necessita o uso do program counter e desvio de fluxo.
  3. 2 operandos: o primeiro endereço guarda o primeiro operando e segundo endereço guarda o segundo operando + o resultado do cálculo. Nesse caso, o segundo endereço sempre é sobrescrito com o resultado final.
  4. 1 operando:  o primeiro e único endereço guarda um dos operandos. Nesse caso, é preciso usar o program counter + desvio de fluxo + acumulador. É no acumulador que será armazenado o segundo operando e o resultado final.

### Explique como funciona uma arquitetura com formato de instrução sem nenhum operando. 
A implementação de uma instrução sem nenhum operando, ou seja, com zero endereço, ocorre por meio da implementação de uma estrutura de dado específica, como uma pilha.

Dessa forma, os operandos não são armazenados de forma implícita: os operandos são retirados do topo da pilha e o resultado armazenado no topo, fazendo o uso das interfaces `PUSH` e `POP`
