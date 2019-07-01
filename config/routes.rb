Rails.application.routes.draw do
  #get 'home/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
#Ruta para ir a la pagina principal direccion= localhost:3000/Bienvenida
  get "Bienvenida", to:"home#index"

#Ruta para ir al nuevo registro de un articulo localhost:3000/article/new
  get "articles/new" , to: "articles#new"
  post "articles", to: "articles#create"

#Ruta para ir a la consulta "se utiliza un tipo comidin este se delcara con : y luego el nombre"
#localhost:3000/articles/show
  get "articles/:id", to: "articles#show"

#Ruta para ir a la edicion de un articulo localhost:3000/articles/edit
  patch "articles/:id", to: "articles#update", as: :article
  get "articles/:id/edit", to: "articles#edit"
end
