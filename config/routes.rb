Rails.application.routes.draw do

  scope path_names: {new: 'nowe'} do
    resources :confessions, path: 'wyznania' do

    end
  end

  get 'static/index'
  root 'static#index'

end