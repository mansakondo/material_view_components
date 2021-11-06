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

  attr_reader :disabled

  def initialize(name = "", html_options = {}, disabled: false)
    @name         = name
    @html_options = disabled ? html_options.merge(disabled: "disabled") : html_options
    @disabled     = disabled
  end

  def classes
    sanitize <<-CLASSES
    material-relative #{icon ? "material-pl-4 material-pr-6" : "material-px-6"}
    material-h-10  material-rounded-full
    #{disabled ? "material-text-on-surface material-cursor-default" :
    "material-bg-primary material-text-on-primary"} material-text-label-large
    material-font-medium material-font-label material-leading-label-large
    CLASSES
  end

  def content_classes
    sanitize <<-CLASSES
    material-flex material-items-center #{"material-opacity-disabled-content" if
    disabled}
    CLASSES
  end

  def overlay_classes
    state_classes =
      if disabled
        "material-bg-on-surface material-opacity-disabled-container"
      else
        <<-CLASSES
        material-bg-on-primary material-opacity-0 hover:material-opacity-hover
        focus:material-opacity-focus active:material-opacity-pressed
        CLASSES
      end

    sanitize <<-CLASSES
    material-absolute material-w-full material-inset-0 material-rounded-full
    #{state_classes}
    CLASSES
  end
end
