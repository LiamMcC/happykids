Rails.application.routes.draw do

  devise_for :user


  
  

  root 'happykid#home'
  
  get '/contact' =>'happykid#contact'

####################### Admin routes here ###################################



#Admin
  get '/admin' => "happykid#admin"



  # Admin opening times
  
  get '/add/openigtime' => 'happykid#addtime'
  post "/add/openigtime" => 'happykid#maketime'
  get '/edittime/:id' => 'happykid#edittime'
  post '/edittime/:id' => 'happykid#changetime'
  get '/deletetime/:id' => 'happykid#deletetime'



  # Admin promo details 
  get 'add/promo' =>'happykid#addpromo'

# Post request to make a new promo
  post 'add/promo' =>'happykid#makepromo'
  
# Get request to open edit promo form  
  get 'editpromo/:id' =>'happykid#editpromo'


  # Post request to update edit promo form  
  post 'editpromo/:id' =>'happykid#changepromo'

# get request to add news form 
get 'add/news' =>'happykid#addnews'

# Post request to make a new news
post 'add/news' =>'happykid#makenews'


# Get request to open edit news form  
get 'editnews/:id' =>'happykid#editnews'

# Post request to edit news item  
post 'editnews/:id' =>'happykid#changenews'


# Get request to delete news
get '/deletnews/:id' => 'happykid#deletenews'


####################### Admin routes end here ###################################


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
