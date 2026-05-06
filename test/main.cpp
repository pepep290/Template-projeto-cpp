#include <iostream>
#include <cassert>
#include "bib.hpp"

int main() {
    // Casos que devem ser aceitos
    assert(verificarDadoValido(6) == true);
    assert(verificarDadoValido(20) == true);
    
    // Casos que devem ser rejeitados
    assert(verificarDadoValido(7) == false);
    assert(verificarDadoValido(100) == false);

    std::cout << "Testes de restricao de dados: PASSOU!" << std::endl;
    return 0;
}