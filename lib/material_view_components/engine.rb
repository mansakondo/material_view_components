require "view_component/engine"

module MaterialViewComponents
  class Engine < ::Rails::Engine
    isolate_namespace MaterialViewComponents
  end
end
