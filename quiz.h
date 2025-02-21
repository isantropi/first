#include <iostream>

using namespace std;

/**
 * Klasa reprezentuje pojedyncze pytanie w quizie
 *
 * Klasa przechowuje treść pytania, możliwe odpowiedzi, poprawną odpowiedź, numer pytania i wynik gracza.
 */

class Pytanie {
public:
    string tresc;
    string a, b, c, d;
    int nr_pytania;
    string poprawna;
    string odpowiedz;
    int punkt; //1 lub 0

    void wczytaj();
    void zadaj();
    void sprawdz();
};
