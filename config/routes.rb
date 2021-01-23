Rails.application.routes.draw do
  get 'issue/index'
  get 'issue/show'
  get 'issue/new'
  post "issue/create"
end
