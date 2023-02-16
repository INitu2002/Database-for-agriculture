# Database-for-agriculture
Proiectul este realizat pe baza a șase tabele care au ca punct central tema agriculturii, aceasta fiind o ramură a economiei naționale care, din punctul meu de vedere, merită să primească atenția cuvenită. O altă temă folosită este întâlnirea dintre cerere și ofertă.

Obiectivul proiectului este acela de a descrie într-o mică măsură o parte a realității vieții de producător (cel care deține pământul, recoltele, dar și utilajele) în relația cu magazinele (piața de desfacere a produselor).

Tabelele fac parte din aceeași bază de date, iar denumirile lor sunt sugestiv alese pentru a reflecta întocmai tema aleasă: RECOLTE, UTILAJE, PRODUCĂTORI, LOC_RECOLTE, SOLICITĂRI, MAGAZINE.

Tabelele sunt legate între ele prin intermediul anumitor atribute reprezentând chei externe: RECOLTE și UTILAJE (id_recolta), UTILAJE și PRODUCATORI (id_utilaj), SOLICITARI și RECOLTE (id_recolta), LOC_RECOLTE și RECOLTE (id_recolta), SOLICITARI și MAGAZINE (id_magazin). Fiecare tabelă este normalizată în FN3.

Restricțiile folosite în general sunt de tipul PRIMARY KEY, FOREIGN KEY și NOT NULL, dar sunt și câteva exemple de UNIQUE și CHECK. Câteva exemple sunt: fk_id_magazin, pk_id_recolta, pk_id_magazin, fk_loc_rec_id_recolta, uq_id_utilaj, nn_pret, ck_id_sef etc.
