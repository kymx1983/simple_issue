Rails.application.routes.draw do
  get 'issue/index'
  get "issue/show/:id" => "issue#show"
  get 'issue/new'
  post "issue/create"

end
