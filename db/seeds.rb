GENERIC_OFFER = "Pas d'offre locale spécifique pour le moment — l'équipe est ravie de t'accueillir pour ta dégustation !\n📅 Été 2026".freeze

stores = [
  # ─── FRANCE ───────────────────────────────────────────────────────────────

  {
    name: "Häagen-Dazs Aéroville",
    city: "Roissy-en-France",
    country: "FR",
    address: "Centre Commercial Aéroville, 30 Rue des Buissons, Tremblay-en-France, 95700 Roissy-en-France",
    offer: "-50% sur une boisson fraîche sur achat d'une création (hors Red Bull)\n📅 Dates : à confirmer",
    active: true
  },
  {
    name: "Häagen-Dazs Bourges",
    city: "Bourges",
    country: "FR",
    address: "Centre Commercial Carrefour, 18000 Bourges",
    offer: "1 boule achetée = 1 boule offerte\n📅 Juillet · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Clermont-Ferrand",
    city: "Clermont-Ferrand",
    country: "FR",
    address: "Centre Commercial Jaude, 63000 Clermont-Ferrand",
    offer: "-15% sur les Lemonades\n📅 Tout juillet · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Colmar",
    city: "Colmar",
    country: "FR",
    address: "Centre Commercial, 68000 Colmar",
    offer: "-30% sur les sorbets Lemonades\n📅 Juillet + Août · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Les Halles",
    city: "Paris",
    country: "FR",
    address: "Forum des Halles, 101 Porte Berger, 75001 Paris",
    offer: "1 topping offert par boule achetée\n📅 15 juillet au 15 août · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Lille Rue Neuve",
    city: "Lille",
    country: "FR",
    address: "Rue Neuve, 59000 Lille",
    offer: "-20% sur les sorbets Lemonades\n📅 Juillet · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Euralille",
    city: "Lille",
    country: "FR",
    address: "Centre Commercial Euralille, 59777 Euralille",
    offer: "-20% sur les sorbets Lemonades\n📅 Juillet · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Qwartz",
    city: "Villeneuve-la-Garenne",
    country: "FR",
    address: "Centre Commercial Qwartz, 92390 Villeneuve-la-Garenne",
    offer: "1 topping offert par boule achetée\n📅 Juillet + Août · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Parinor",
    city: "Aulnay-sous-Bois",
    country: "FR",
    address: "Centre Commercial Parinor, 93600 Aulnay-sous-Bois",
    offer: "-20% sur les créations et les shakes\n📅 Août · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Wagram",
    city: "Paris",
    country: "FR",
    address: "186 Avenue de Wagram, 75017 Paris",
    offer: "1 topping offert par boule achetée\n📅 Juillet + Août · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Strasbourg",
    city: "Strasbourg",
    country: "FR",
    address: "Centre Ville, 67000 Strasbourg",
    offer: "-30% sur les sorbets Lemonades\n📅 Juillet + Août · Sur présentation du screenshot de la storie",
    active: true
  },
  {
    name: "Häagen-Dazs Polygone Riviera",
    city: "Cagnes-sur-Mer",
    country: "FR",
    address: "Centre Commercial Polygone Riviera, 06800 Cagnes-sur-Mer",
    offer: "-50% sur le 2ème milkshake\n📅 Septembre",
    active: true
  },

  # ─── BELGIQUE ─────────────────────────────────────────────────────────────

  {
    name: "Häagen-Dazs Bruxelles — Gare du Midi 1",
    city: "Bruxelles",
    country: "BE",
    address: "Gare du Midi, Avenue Fonsny, 1060 Bruxelles",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },
  {
    name: "Häagen-Dazs Bruxelles — Gare du Midi 2",
    city: "Bruxelles",
    country: "BE",
    address: "Gare du Midi, Avenue Fonsny, 1060 Bruxelles",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },
  {
    name: "Häagen-Dazs Bruxelles — Toison d'Or",
    city: "Bruxelles",
    country: "BE",
    address: "Galerie de la Toison d'Or, Avenue de la Toison d'Or, 1050 Bruxelles",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },
  {
    name: "Häagen-Dazs Bruxelles — Bourse",
    city: "Bruxelles",
    country: "BE",
    address: "Place de la Bourse, 1000 Bruxelles",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },
  {
    name: "Häagen-Dazs Charleroi",
    city: "Charleroi",
    country: "BE",
    address: "Centre Commercial, 6000 Charleroi",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },
  {
    name: "Häagen-Dazs Liège — Médiacité",
    city: "Liège",
    country: "BE",
    address: "Shopping Médiacité, Rue du Viaduc 49, 4020 Liège",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },
  {
    name: "Häagen-Dazs Liège — Belle-Île",
    city: "Liège",
    country: "BE",
    address: "Shopping Belle-Île, Rue de Mons 3, 4000 Liège",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },
  {
    name: "Häagen-Dazs Anvers",
    city: "Anvers",
    country: "BE",
    address: "Meir 78, 2000 Antwerpen",
    offer: "-50% sur 3 sorbets Lemonades\n📅 Un jeudi + un vendredi en juillet (date à confirmer)",
    active: true
  },

  # ─── BOUTIQUES PARTICIPANTES SANS OFFRE LOCALE SPÉCIFIQUE ────────────────
  # NOTE: adresses à confirmer avec l'équipe terrain avant mise en ligne.

  {
    name: "Häagen-Dazs Bastia",
    city: "Bastia",
    country: "FR",
    address: "Adresse à confirmer, Bastia",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Cannes Hoche",
    city: "Cannes",
    country: "FR",
    address: "16 Rue Hoche, 06400 Cannes",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Cap 3000",
    city: "Saint-Laurent-du-Var",
    country: "FR",
    address: "Cap 3000, Av. Eugène Donadeï, 06700 Saint-Laurent-du-Var",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Créteil",
    city: "Créteil",
    country: "FR",
    address: "Centre Commercial Créteil Soleil, 101 Av. du Général de Gaulle, 94000 Créteil",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Evry",
    city: "Évry",
    country: "FR",
    address: "Centre Commercial Évry 2, Bd de l'Europe-Valéry Giscard d'Estaing, 91000 Évry-Courcouronnes",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Grenoble",
    city: "Grenoble",
    country: "FR",
    address: "8 Pl. Grenette, 38000 Grenoble",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Lyon République 2",
    city: "Lyon",
    country: "FR",
    address: "65 Rue de la République, 69002 Lyon",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Martinique",
    city: "Fort-de-France",
    country: "FR",
    address: "7 Rue de la Liberté, 97200 Fort-de-France",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Monaco",
    city: "Monaco",
    country: "FR",
    address: "Quai Albert 1er, 98000 Monaco",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Montpellier Loge",
    city: "Montpellier",
    country: "FR",
    address: "12 Rue de la Loge, 34000 Montpellier",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Montpellier Triangle",
    city: "Montpellier",
    country: "FR",
    address: "Centre Commercial Le Triangle, All. Jules Milhau, 34000 Montpellier",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs Nice Masséna",
    city: "Nice",
    country: "FR",
    address: "34 Rue Masséna, 06000 Nice",
    offer: GENERIC_OFFER,
    active: true
  },
  {
    name: "Häagen-Dazs St Michel",
    city: "Paris",
    country: "FR",
    address: "30 Rue de la Huchette, 75005 Paris",
    offer: GENERIC_OFFER,
    active: true
  }
]

stores.each do |attrs|
  store = Store.find_or_initialize_by(name: attrs[:name])
  store.assign_attributes(attrs)
  store.save!
end

puts "✓ #{Store.count} boutiques (#{Store.france.count} France · #{Store.belgique.count} Belgique)"
