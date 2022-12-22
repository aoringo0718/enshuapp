Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  get "/" => "home#top"
  get "nintendo" => "home#nintendo"
  get "newyork" => "home#newyork"
  get "hollywood" => "home#hollywood"
  get "jurassic" => "home#jurassic"
  get "harrypotter" => "home#harrypotter"
end
