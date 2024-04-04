# Note
Questo progetto è stato realizzato in un pomeriggio e lascia molte porte aperte a miglioramenti, eccone alcuni che mi sono venuti in mente ma non ho implementato per questioni di tempo:
- ulitizzare sideqik e redis per i job asincroni
- utilizzare un dbms più adeguato come postgres o mysql
- creare una quote placeholder e utilizzare actioncable per notificare il frontend quando una nuova quote viene scaricata da api-ninjas ed aggiornare la entry di conseguenza
- aggiungere validazioni sui modelli e testarli adeguadatemente
- testare il frontend con capybara
- rendere l'ordinamento dipendente da parametri passati da querystring invece che renderlo fisso per ordine decrescente di ID
- Migliorare il report di errori dei job asincroni in caso di fallimento per mancanza di API KEY

# Requirements
- ruby-3.3.0
- sqlite3

# Setup
- `bin/setup`
- `export API_NINJAS_KEY=TOKEN` dove `TOKEN` è la stringa che vi da api-ninjas
- `bundle exec rails server`
- Per eseguire i test `bundle exec rails test`

# Consegna

- [x] Uno scaffold completo per un modello che abbia 3 campi
  - [x] text quote
  - [x] text author
  - [x] enum category

- [x] Frontend html e css, senza uso di javascript
- [x] Pagina index con un bottone per aggiungere una quote random da https://api.api-ninjas.com/v1/quotes
- [x] Paginazione e ordinamento nella index
- [x] La quote deve essere scaricata asicronamente
- [x] Testare l'applicazione
