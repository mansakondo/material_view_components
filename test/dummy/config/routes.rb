Rails.application.routes.draw do
  mount MaterialViewComponents::Engine => "/material_view_components"
  get 'components/index'
end
