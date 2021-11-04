# frozen_string_literal: true

class Material::ButtonComponent < ViewComponent::Base
  attr_reader :text

  def initialize(text:)
    @text = text
  end
end
