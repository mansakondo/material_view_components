# frozen_string_literal: true

class Material::ButtonComponent < ViewComponent::Base
  def initialize(text: nil)
    @text = text
  end
end
