Rails.application.routes.draw do
  get 'issue/index'
  get "issue/show/:id" => "issue#show"
  get "issue/edit/:id" => "issue#edit"
  get 'issue/new'
  post "issue/create"
  post "issue/update"
end
