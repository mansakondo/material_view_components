Rails.application.routes.draw do
  get 'components/index'
  mount MaterialViewComponents::Engine => "/material"
end
