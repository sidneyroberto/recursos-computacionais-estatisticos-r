# Cria um vetor de dados
x <- c(1, -4, 10.5587987, -54.48, 9.983827, 10)
x
s <- (67)
s

nomes <- c("andre", "robson", "luiz")
nomes

# Arredondar casas decimais
round(x, digits=2)
round(x[3], digits=2)
floor(x)
ceiling(x)

# Quantidade de elementos do vetor
length(x)

# Funções básicas
sum(x)
prod(x)
max(x)
min(x)
range(x)

rangeReal <- max(x) - min(x)
rangeReal

# Indexação de vetores
x[2];x[4]
c(x[2], x[4])
x[c(2, 4)]
sum(x[2], x[4])

# Pegar todos os elementos exceto o da terceira posição
x2 <- x[-3]
x2

# Pegar slices
x3 <- x[c(2:4)]
x3
x4 <- x[-c(2:4)]
x4
x5 <- x[x >= 5 & x <= 50]
x5

# Outras funções
sqrt(abs(x))
sqrt(x[x > 0])

library(pracma)

raizCubica <- abs(x) ^ (1/3)
raizCubica
raizCubica <- nthroot(x, 3)
raizCubica

# Operações entre 2 vetores
y = x ^ 2
x
y
x * y

# Criando um vetor
aves <- c(22, 28, 27, 34, 13, 24, 39, 5, 33, 32)
aves

aves[3] <- 37
aves

letras <- c("a", "b", "c", "da", "edw")
letras
palavras <- c("Manaus", "Boa Vista", "Belém", "Brasília")
palavras

max(aves)
min(aves)
sum(aves)
prod(aves)
sum(aves^2)
sum(aves)^2

# Estatística descritiva
quantidadeAves <- length(aves)
quantidadeAves
mediaAves <- sum(aves) / quantidadeAves
mediaAves
mediaAves <- mean(aves)
mediaAves

sd(aves)
var(aves)
median(aves)

erroPadrao <- function(conj) {
  return(sd(conj) / sqrt(length(conj)))
}

erroPadrao(aves)

# Acessando posições
aves[5]
palavras[3]
aves[c(5, 8, 10)]

# Removendo elementos
aves2 <- aves[-5]
aves2

# Removendo variáveis da memória
rm(s)

# Alterar um valor
aves
aves[1] <- 100
aves
aves[1] <- 22
aves

aves <- edit(aves)
aves
aves[1] <- 22

avesLog <- log10(aves)
avesLog

# Realizando cálculos com sequências
seq1 <- 1:5
seq1
seq2 <- 100:1
seq2
seq3 <- 6:10
seq1
seq3
seq1 + seq3

# Criar um jogo de dados chamado t
t <- c(0, 4, 2, 1, 0, 4, 0, 3, 0, 3, 3, 3, 4, 4, 2, 2, 0)
# Pegar todos os valores de t que sejam menores que 3
t[t < 3]
length(t[t < 3])
t == 0
t == 1
t[t != 0]


# Lista as variáveis ativas
ls()
rm(avesLog)
ls()
ls.str()
str(aves)
class(aves)
str(palavras)
class(palavras)

# Criar sequências

seq(1, 10, 2)
seq(0, 100, 5)

# Criar repetições
rep(2, 5)
rep("a", 5)
rep(1:4, 2)
rep(1:4, each = 2)
rep(c("A", "B"), 5)
rep(c("A", "B"), each = 5)
rep(c("Três", "Dois", "Sete", "Quatro"), c(3, 2, 7, 4))

fred <- list(happy = 1:10, name = "squash")
fred
fred$happy
fred$name

# Gerar dados aleatórios
runif(4, min = 0, max = 1)
round(runif(6, 1, 60), digits = 0)
temp <- runif(200, 80, 100)
temp
hist(temp)

temp2 <- rnorm(200, 0, 1)
hist(temp2)

sample(1:60, 6)
sample(1:10, 5, replace = TRUE)

moeda <- c("CARA", "COROA")
jogadas <- sample(moeda, 10, replace = TRUE)
jogadas


dado <- (1:6)
dado
sample(dado, 7, replace = TRUE)

# Ordenar elementos
exemplo <- runif(10, 1, 100)
exemplo
sort(exemplo)

# Trabalhando com matrizes
matrizA <- matrix(c(1:10), 2, 5, 1)
matrizA

matrizB <- matrix(exemplo, 2, 5, 1)
matrizB

matrizC <-matrix(sample(1:30, 9, replace = TRUE), 3, 3, 0)
matrizC

s <- c(13, 20, 10, 99, 8, 5, 7, 2, 1)
s
s1 <- c(3, 17, 50, 25, 3, 2, 60, 12, 0)
s1

tabela <- rbind(s, s1)
tabela
tabela <- cbind(s, s1)
tabela

x1 <- rbind(1:3, c(1, 3, -1), c(5, 6, 12))
x1

s <- 1:5
s
t <- 6:10
t
h <- cbind(s, t)
h

# Montando a matriz com vetores
s <- c(22, 28, 37)
m <- c(5, 33, "na")
n <- c(34, 13, 24)

x3 <- rbind(s, m, n)
x3
class(x3)
str(x3)
x4 <- cbind(s, m, n)
x4

x5 <- as.numeric(x4)
x5

x6 <- matrix(x5, 3, 3, 1)
x6

# Acessando os valores de uma matriz
matrizA[2, 4]
matrizA[2, 4] - matrizB[1, 2]
matrizA[2,]
matrizA1 <- matrizA[, 2:4]
matrizA1

# Operações com matrizes
matrizA * matrizB
t(matrizA) # transposta de A

# Trabalhando com data frames
notasInform <- data.frame(freq = c(100, 75, 80, 40),
                          turma = c("tp1", "tp1", "tp2", "tp3"),
                          notas = c(10.3, 9.3, 14.2, 15))
notasInform
str(notasInform)
notasInform[2, 2]
notasInform[, -2]
notasInform$freq
notasInform$turma
notasInform$notas

subset(notasInform, freq >= 80 & notas >=12)

# Selecionando com indexação
notasInform[notasInform$freq >= 80 & notasInform$notas >= 12, ]
notasInform[notasInform$notas > 14, "freq"]
notasInform[notasInform$turma == "tp1", c("freq", "notas")]

# Utilizando attach
attach(notasInform)
notasInform[notas > 4, ]

detach(notasInform)

# Listar todos os arquivos que estão atachados
tabela <- data.frame(animais = seq(1:20),
                     trat = rep(c("t1", "t2", "t3", "t4", "t5")),
                     pesonascer = rnorm(20, 28, 4))
tabela

tabela1 <- data.frame(parcelas = seq(1:30),
                      trat = rep(c("0", "1%", "2%"), 10),
                      altura = round(rnorm(30, 50, 7), digits = 2))
tabela1

attach(tabela)
attach(tabela1)

trat
pesonascer
tabela$trat

intersect(search(), objects()) # lista todos os dados atachados

# Realiza a limpeza dos atachamentos
detach(tabela)
detach(tabela1)
detach(notasInform)

intersect(search(), objects())

# Acrescentando novas colunas
resultado <- c("aprovado", "oral", "aprovado", "aprovado")
notasInform$resultado <- resultado
notasInform
notasAlteradas <- notasInform[, -3]
notasAlteradas

# Plotando gráficos
plot(rnorm(10))

attach(alturas_pesos)
View(alturas_pesos)
par(mfrow = c(1, 1))
plot(altura, peso, xlab = "Altura", ylab = "Peso")

par(mfrow = c(2, 2))
?plot(rnorm(10))
plot(rnorm(20))
plot(rnorm(30))
plot(rnorm(40))

a <- 1:50
plot(a, a ^ 2, type = "l")
points(rev(a ^ 2), pch=10, col = 10)

# Gráfico com dados textuais
sexo <- c("Ma", "Ma", "Ma", "Ma", "Ma", "Fe", "Fe", "Fe", "Fe", "Fe")
peso <- c(110, 120, 90, 70, 50, 80, 40, 40, 50, 30)
plot(sexo, peso) # dá erro, pois não é numérico
sexoFem <- factor(sexo)
stripchart(peso ~ sexo)
stripchart(peso ~ sexo, vertical = T, at = c(1.3, 1.7), method = "stack")
























