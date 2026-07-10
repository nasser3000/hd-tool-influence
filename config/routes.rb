Rails.application.routes.draw do
  mount LetterOpenerWeb::Engine, at: "/letter_opener" if Rails.env.development?

  root "home#index"

  get  "stores", to: "home#index"
  get  "participations/new", to: "participations#new", as: :new_participation
  post "participations", to: "participations#create", as: :participations
  get  "participations/:token", to: "participations#show", as: :participation
  get  "diag/xk9mq2", to: "diagnostics#run"
end
