# Organização de Computadores II [2018/1]

* Breno Augusto Martins | @brenoam |  brenoam@dcc.ufmg.br, brenoaugmartins@gmail.com
* Evandro Lucas Figueiredo Teixeira | @EvandroLucas | lucasfigteixeira@dcc.ufmg.br lucasfigteixeira@gmail.com
* Fernanda Aparecida Rodrigues Silva | @fernandaars | fernandaars@dcc.ufmg.br, fernandaaprsilva@gmail.com
* Rafael Augusto Botelho Perez | @r-perez | rafael.perez@dcc.ufmg.br, rafaelperez1279@gmail.com

## Trabalhos

* Trabalho Prático 1 | Data de Entrega:10/05 | [Especificação](https://github.com/fernandaars/UFMG-5-OC2/blob/master/TP1/tp1_spec.pdf)
* Trabalho Prático 2 | Data de Entrega:12/06 | [Especificação](https://github.com/fernandaars/UFMG-5-OC2/blob/master/TP1/tp1_spec.pdf)
* Trabalho Prático 3 | Data de Entrega:05/07 | [Especificação](https://github.com/fernandaars/UFMG-5-OC2/blob/master/TP1/tp1_spec.pdf)

### Links das Documentações

* [Trabalho Prático 1](https://www.overleaf.com/15100030tndqfqyxsyzy)
* [Trabalho Prático 2](https://www.overleaf.com/15100030tndqfqyxsyzy)
* [Trabalho Prático 3](https://www.overleaf.com/15100030tndqfqyxsyzy)

### Dicas Sobre Quartus

```
* Colocar o nome de pastas, projeto e arquivo high-lvl igual ao nome do módulo;
* (warning 18236) colocar comando: set_global_assignment -name NUM_PARALLEL_PROCESSORS 2 nos arquivos [nome].qsf e /assignment_defaults.qdf (criar arquivo se ele não existir);
* (warning 332012) criar arquivo [nome].sdc;
* (warning 332148) colocar comando: derive_clocks -period 10 -waveform {0 5} no arquivo [nome].sdc;
* (warning 169085) Assignment -> Back-Annotate Assignments marque a opção "Pin&device Assignment" e ok (como já estava marcado, /desmarquei e marquei novamente e o warning sumiu);
* (warning 15714) conferir em fitter -> resource section -> I/O Assignment Warning o problema dos pinos, caso for missing drive /strength and slew rate faça: abrir pin planner, na lista de pinos setar current strength para max_current e slew rate para (fastest) / em todos os pinos que apresentarem o problema;
* Fazer a simulação a primeira vez com copiar o log da simulação e colocar na pasta simulation/modelsim a partir da pasta raiz do /projeto, salvar como .do
```

## Provas
### Data das Provas

* Prova 1 | Data:10/04
* Prova 2 | Data:15/05
* Prova 3 | Data:26/06

## Monitoriais
### Horários

* Segundas-Feiras, das 10:00 às 12:00 e das 14:00 às 16:00;
* Quartas-Feiras, das 14:00 às 16:00;

### Sala

* 2310

### Contato dos Monitores

* Luis Eduardo Pedraza Caballero | lpedrazac1@gmail.com
* Laysson Oliveira Luz | layssonoliveir4@gmail.com
