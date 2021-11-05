# frozen_string_literal: true

class Material::ButtonComponent < ViewComponent::Base
  renders_one :text, -> (text) do
    content_tag :span do
      text
    end
  end

  renders_one :icon, -> (name) do
    content_tag :span, class: "material-icons material-pr-2" do
      name
    end
  end

  def classes
    string = <<-CLASSES
    material-flex material-items-center #{icon ? "material-pl-4 material-pr-6" :
    "material-px-6"} material-h-10 material-bg-primary material-rounded-full
    material-text-on-primary material-text-label-large material-font-medium
    material-font-label material-leading-label-large
    CLASSES

    string
      .strip
      .gsub(/\s{2,}|\n/, " ")
  end
end
