# frozen_string_literal: true

class Material::FABComponent < ApplicationComponent
  renders_one :icon, -> (name) do
    content_tag :span, class: "material-icons" do
      name
    end
  end

  def initialize(name = "", html_options = {})
    @name         = name
    @html_options = html_options
  end

  def container_classes
    sanitize <<-CLASSES
    material-relative material-flex material-items-center
    material-justify-center material-h-56px material-w-56px
    material-bg-primary-container dark:material-bg-primary-container-on-dark
    material-rounded-xl material-elevation-3
    CLASSES
  end

  def content_classes
    sanitize <<-CLASSES
    material-flex material-items-center material-justify-center
    material-text-on-primary-container
    dark:material-text-on-primary-container-on-dark
    CLASSES
  end

  def overlay_classes
    sanitize <<-CLASSES
    material-absolute material-inset-0 material-w-full
    material-bg-on-primary-container dark:material-bg-on-primary-on-dark
    material-rounded-xl material-opacity-0 hover:material-opacity-hover
    focus:material-opacity-focus active:material-opacity-pressed
    hover:material-elevation-4 focus:material-elevation-3 active:material-elevation-3
    CLASSES
  end
end
