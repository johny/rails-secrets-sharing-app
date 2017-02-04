Rails.application.routes.draw do

  scope path_names: {new: 'nowe'} do
    resources :confessions, path: 'wyznania' do
      collection do
        get 'special'
      end
    end
  end

  root 'confessions#special'

end
