Rails.application.routes.draw do
  devise_for :users
  resources :articles
=begin
verbos del https, rutas y metodos que manda a llamar en el controlador
verbo 		ruta 			metodo
get		"/articles" 		index
post 	"/articles"			create
delete 	"/articles/:id"			delete
get		"/articles/:id" 	show
get		"/articles/new" 	new
get		"articles/:id/edit" edit
patch	"/articles/:id" 	update
put 	"/article/:id" 		update

=end

  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
