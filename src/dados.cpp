#include <dados.hpp>
using namespace std;

int rolarDados(int tipoDado){

    int valor = (rand() % tipoDado) + 1;

    cout << "O dado d" << tipoDado << " deu " << valor << "\n";

    return valor;
}