# frozen_string_literal: true

class Material::ButtonComponent < ViewComponent::Base
  renders_one :text, -> (text) do
    content_tag :span do
      text
    end
  end

  def classes
    string = <<-CLASSES
    material-bg-primary material-px-6 material-h-10 material-rounded-full
    material-text-on-primary material-text-label-large material-font-medium
    material-font-label material-leading-label-large
    CLASSES

    string
      .strip
      .gsub(/\s{2,}|\n/, " ")
  end
end
