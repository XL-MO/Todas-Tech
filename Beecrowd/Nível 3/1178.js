var lines = ["200.0000"];

// Ler um valor X
var X = parseFloat(lines.shift());

// Array
var N = [];

// Preencher as posições subsequentes de N
N[0] = X;
for (var i = 1; i < 100; i++) {
    var metade = N[i - 1] / 2;
    N[i] = parseFloat(metade);
}

// Listar o vetor N com 4 casas decimais
for (var i = 0; i < N.length; i++) {
  console.log("N[" + i + "] = " + N[i].toFixed(4));
}
