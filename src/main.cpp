#include "dados.hpp"
using namespace std;

int main(){
    int quantidadeDados, tipoDice;
    srand(time(NULL));
    cout << "Digite a quantidade e os tipos de dados (quantos lados) que você deseja jogar: ";
    cin >> quantidadeDados >> tipoDice;
    int total = 0;
    for(int i = 0; i < quantidadeDados; i++){
        total += rolarDados(tipoDice);
    }
    cout << "O total foi " << total << "\n";

    return 0;
}