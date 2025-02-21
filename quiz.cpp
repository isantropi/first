#include <iostream>
#include "quiz.h"
#include <fstream>
#include <cstdlib>

using namespace std;

/**
 * Funkcja wczytuje pytanie i odpowiedzi z pliku tekstowego.
 *
 * Otwiera plik "quiz.txt" i pobiera dane dla pytania.
 * Dane są przechowywane w odpowiednich polach obiektu.
 */

void Pytanie::wczytaj() {
    fstream plik;
    plik.open("quiz.txt", ios::in);

    if(plik.good() == false) {
        cout << "Nie udalo sie otworzyc pliku";
        exit(0);
    }

    int nr_linii = (nr_pytania - 1) * 6 + 1;
    int aktualny_nr = 1;
    string linia;

    while(getline(plik, linia)) {
        if(aktualny_nr == nr_linii)
            tresc = linia;
        if(aktualny_nr == nr_linii + 1)
            a = linia;
        if(aktualny_nr == nr_linii + 2)
            b = linia;
        if(aktualny_nr == nr_linii + 3)
            c = linia;
        if(aktualny_nr == nr_linii + 4)
            d = linia;
        if(aktualny_nr == nr_linii + 5)
            poprawna = linia;
        aktualny_nr++;
    }
    plik.close();
}

/**
 * Funkcja zadaje pytanie i pobiera odpowiedź od użytkownika.
 *
 * Wyświetla pytanie i cztery możliwe odpowiedzi.
 * Następnie oczekuje na wpisanie odpowiedzi przez użytkownika.
 */

void Pytanie::zadaj() {
    cout << endl << tresc << endl << a << endl << b << endl << c << endl << d << endl;
    cout << "Podaj odpowiedz: ";
    cin >> odpowiedz;
}

/**
 * Funkcja sprawdza poprawność odpowiedzi użytkownika.
 *
 * Porównuje odpowiedź użytkownika z poprawną odpowiedzią.
 * Jeśli odpowiedź jest poprawna, przyznaje punkt.
 */

void Pytanie::sprawdz() {
    if(odpowiedz == poprawna) {
        cout << "Poprawnie!";
        punkt = 1;
    }
    else {
        cout << "Smuteczek";
        punkt = 0;
    }
}
