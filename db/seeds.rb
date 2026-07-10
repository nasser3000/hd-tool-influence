Participation.destroy_all
Store.destroy_all

stores = [
  # ─── FRANCE ───────────────────────────────────────────────────────────────

  {
    name: "Häagen-Dazs Aéroville",
    city: "Roissy-en-France",
    country: "FR",
    address: "Zone Commerciale Aéroville, 95700 Roissy-en-France",
    offer: "-50% sur une boisson fraîche sur achat d'une création (hors Red Bull)\n📅 Dates : à confirmer",
    active: true
  },
  {
    name: "Häagen-Dazs Bourges",
    city: "Bourges",
    country: "FR",
    address: "Centre Commercial Carrefour, 18000 Bourges",
    offer: "1 boule achetée = 1 boule offerte\n📅 Juillet · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Clermont-Ferrand",
    city: "Clermont-Ferrand",
    country: "FR",
    address: "Centre Commercial Jaude, 63000 Clermont-Ferrand",
    offer: "-15% sur les Lemonades\n📅 Tout juillet · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Colmar",
    city: "Colmar",
    country: "FR",
    address: "Centre Commercial, 68000 Colmar",
    offer: "-30% sur les sorbets Lemonades\n📅 Juillet + Août · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Les Halles",
    city: "Paris",
    country: "FR",
    address: "Forum des Halles, 101 Porte Berger, 75001 Paris",
    offer: "1 topping offert par boule achetée\n📅 15 juillet au 15 août · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Lille Rue Neuve",
    city: "Lille",
    country: "FR",
    address: "Rue Neuve, 59000 Lille",
    offer: "-20% sur les sorbets Lemonades\n📅 Juillet · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Euralille",
    city: "Lille",
    country: "FR",
    address: "Centre Commercial Euralille, 59777 Euralille",
    offer: "-20% sur les sorbets Lemonades\n📅 Juillet · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Qwartz",
    city: "Villeneuve-la-Garenne",
    country: "FR",
    address: "Centre Commercial Qwartz, 92390 Villeneuve-la-Garenne",
    offer: "1 topping offert par boule achetée\n📅 Juillet + Août · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Parinor",
    city: "Aulnay-sous-Bois",
    country: "FR",
    address: "Centre Commercial Parinor, 93600 Aulnay-sous-Bois",
    offer: "-20% sur les créations et les shakes\n📅 Août · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Wagram",
    city: "Paris",
    country: "FR",
    address: "186 Avenue de Wagram, 75017 Paris",
    offer: "1 topping offert par boule achetée\n📅 Juillet + Août · Sur mention d'un code",
    active: true
  },
  {
    name: "Häagen-Dazs Strasbourg",
    city: "Strasbourg",
    country: "FR",
    address: "Centre Ville, 67000 Strasbourg",
    offer: "-30% sur les sorbets Lemonades\n📅 Juillet + Août · Sur mention d'un code",
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
  }
]

stores.each { |attrs| Store.create!(attrs) }
puts "✓ #{Store.count} boutiques créées (#{Store.france.count} France · #{Store.belgique.count} Belgique)"
