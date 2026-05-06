#include <iostream>
#include <cassert>
#include "bib.hpp"

int main() {
    // Testes da funcionalidade Validação
    assert(verificarDadoValido(20) == true);
    
    // Testes: Acerto Crítico
    assert(ehCritico(20, 20) == true);  // Tirou 20 num d20 -> Crítico!
    assert(ehCritico(5, 20) == false);  // Tirou 5 num d20 -> Normal.
    assert(ehCritico(6, 6) == true);    // Tirou 6 num d6 -> Crítico!

    std::cout << "TESTES REGRESSIVOS (VALIDACAO + CRITICO): PASSOU" << std::endl;
    return 0;
}