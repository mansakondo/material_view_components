# frozen_string_literal: true

class Material::ButtonComponent < ApplicationComponent
  renders_one :text, -> (text) do
    content_tag :span do
      text
    end
  end

  renders_one :icon, -> (name = nil, &block) do
    if block
      content_tag :span, class: "material-pr-2" do
        block.call
      end
    else
      content_tag :span, class: "material-icons material-pr-2" do
        name
      end
    end
  end

  def initialize(name = "", html_options = {})
    @name         = name
    @html_options = html_options
  end

  def classes
    super <<-CLASSES
    material-relative #{icon ? "material-pl-4 material-pr-6" : "material-px-6"}
    material-h-10 material-bg-primary material-rounded-full
    material-text-on-primary material-text-label-large material-font-medium
    material-font-label material-leading-label-large
    CLASSES
  end
end
