#include <iostream>
#include "quiz.h"

using namespace std;

int main() {
    Pytanie p[5];
    int suma = 0;
    for(int i = 1; i <= 5; i++) {
        p[i].nr_pytania = i;
        p[i].wczytaj();
        p[i].zadaj();
        p[i].sprawdz();
        suma += p[i].punkt;
    }
    cout << "Koniec quizu! Suma zdobytych punktow to:  " << suma << "\n";
    //koniec
    return(0);
}
