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
  attr_reader :button_type

  def initialize(name = "", html_options = {}, disabled: false, button_type: :filled)
    @name         = name
    @html_options = disabled ? html_options.merge(disabled: "disabled") : html_options
    @disabled     = disabled
    @button_type  = button_type
  end

  def container_classes
    send :"#{button_type}_button_container_classes"
  end

  def content_classes
    send :"#{button_type}_button_content_classes"
  end

  def overlay_classes
    send :"#{button_type}_button_overlay_classes"
  end

  private

  def filled_button_container_classes
    sanitize <<-CLASSES
    material-relative #{icon ? "material-pl-4 material-pr-6" : "material-px-6"}
    material-h-10  material-rounded-full #{disabled ?
    "material-bg-disabled-container dark:material-bg-disabled-container-on-dark
    material-cursor-default" : "material-bg-primary
    dark:material-bg-primary-on-dark hover:material-shadow"}
    CLASSES
  end

  def filled_button_content_classes
    sanitize <<-CLASSES
    material-flex material-items-center #{disabled ? "material-text-on-surface
    dark:material-text-on-surface-on-dark material-opacity-disabled-content" :
    "material-text-on-primary dark:material-text-on-primary-on-dark"}
    material-text-label-large material-font-medium material-font-label
    material-leading-label-large material-tracking-label-large
    CLASSES
  end

  def filled_button_overlay_classes
    sanitize <<-CLASSES
    material-absolute material-w-full material-inset-0 material-rounded-full
    material-bg-on-primary dark:material-bg-on-primary-on-dark
    material-opacity-0 hover:material-opacity-hover focus:material-opacity-focus
    active:material-opacity-pressed
    CLASSES
  end

  def tonal_button_container_classes
    sanitize <<-CLASSES
    material-relative #{icon ? "material-pl-4 material-pr-6" : "material-px-6"}
    material-h-10  material-rounded-full #{disabled ?
    "material-bg-disabled-container dark:material-bg-disabled-container-on-dark
    material-cursor-default" : "material-bg-secondary-container
    dark:material-bg-secondary-container-on-dark hover:material-shadow"}
    CLASSES
  end

  def tonal_button_content_classes
    sanitize <<-CLASSES
    material-flex material-items-center #{disabled ? "material-text-on-surface
    dark:material-text-on-surface-on-dark material-opacity-disabled-content" :
    "material-text-on-secondary-container dark:material-text-on-secondary-container-on-dark"}
    material-text-label-large material-font-medium material-font-label
    material-leading-label-large material-tracking-label-large
    CLASSES
  end

  def tonal_button_overlay_classes
    sanitize <<-CLASSES
    material-absolute material-w-full material-inset-0 material-rounded-full
    material-bg-on-surface dark:material-bg-on-surface-on-dark
    material-opacity-0 hover:material-opacity-hover focus:material-opacity-focus
    active:material-opacity-pressed
    CLASSES
  end

  def outlined_button_container_classes
    sanitize <<-CLASSES
    material-relative #{icon ? "material-pl-4 material-pr-6" : "material-px-6"}
    material-h-10 dark:material-outline-on-dark material-rounded-full
    #{disabled ? "material-outline-disabled material-cursor-default
    dark:material-outline-disabled-on-dark" : "material-bg-surface
    dark:material-bg-surface-on-dark material-outline-default
    hover:material-shadow"}
    CLASSES
  end

  def outlined_button_content_classes
    sanitize <<-CLASSES
    material-flex material-items-center #{disabled ? "material-text-on-surface
    dark:material-text-on-surface-on-dark material-opacity-disabled-content" :
    "material-text-primary dark:material-text-primary-on-dark"}
    material-text-label-large material-font-medium material-font-label
    material-leading-label-large material-tracking-label-large
    CLASSES
  end

  def outlined_button_overlay_classes
    sanitize <<-CLASSES
    material-absolute material-w-full material-inset-0 material-rounded-full
    material-bg-primary dark:material-bg-primary-on-dark material-opacity-0
    hover:material-opacity-hover focus:material-opacity-focus
    active:material-opacity-pressed
    CLASSES
  end

  def elevated_button_container_classes
    sanitize <<-CLASSES
    material-relative #{icon ? "material-pl-4 material-pr-6" : "material-px-6"}
    material-h-10 material-rounded-full
    #{disabled ? "material-bg-disabled-container
    dark:material-bg-disabled-container-on-dark material-cursor-default" :
    "material-bg-surface dark:material-bg-surface-on-dark material-shadow
    hover:material-shadow-md"}
    CLASSES
  end

  def elevated_button_content_classes
    sanitize <<-CLASSES
    material-flex material-items-center #{disabled ? "material-text-on-surface
    dark:material-text-on-surface-on-dark material-opacity-disabled-content" :
    "material-text-primary dark:material-text-primary-on-dark"}
    material-text-label-large material-font-medium material-font-label
    material-leading-label-large material-tracking-label-large
    CLASSES
  end

  def elevated_button_overlay_classes
    sanitize <<-CLASSES
    material-absolute material-w-full material-inset-0 material-rounded-full
    material-bg-primary dark:material-bg-primary-on-dark material-opacity-0
    hover:material-opacity-hover focus:material-opacity-focus
    active:material-opacity-pressed
    CLASSES
  end

  def text_button_container_classes
    sanitize <<-CLASSES
    material-relative #{icon ? "material-pl-3 material-pr-4" : "material-px-3"}
    material-h-10 material-rounded-full #{disabled ? "material-cursor-default" :
    "hover:material-shadow"}
    CLASSES
  end

  def text_button_content_classes
    sanitize <<-CLASSES
    material-flex material-items-center #{disabled ? "material-text-on-surface
    dark:material-text-on-surface-on-dark material-opacity-disabled-content" :
    "material-text-primary dark:material-text-primary-on-dark"}
    material-text-label-large material-font-medium material-font-label
    material-leading-label-large material-tracking-label-large
    CLASSES
  end

  def text_button_overlay_classes
    sanitize <<-CLASSES
    material-absolute material-w-full material-inset-0 material-rounded-full
    material-bg-primary dark:material-bg-primary-on-dark material-opacity-0
    hover:material-opacity-hover focus:material-opacity-focus
    active:material-opacity-pressed
    CLASSES
  end
end
