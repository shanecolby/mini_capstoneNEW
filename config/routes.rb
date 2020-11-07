Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  # EXAMPLE JSON ROUTE WITH API NAMESPACE
  namespace :api do
    get "/first_product" => "products#first"
    get "/product/:id" => "products#first"
    get "/all_products" => "products#total"
  end
end
