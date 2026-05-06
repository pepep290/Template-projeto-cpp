#include "bib.hpp"

bool verificarDadoValido(int lados) {
    int validos[] = {4, 6, 8, 10, 12, 20};
    for (int i = 0; i < 6; i++) {
        if (lados == validos[i]) return true;
    }
    return false;
}

bool ehCritico(int valorTirado, int lados) {
    return valorTirado == lados;
}