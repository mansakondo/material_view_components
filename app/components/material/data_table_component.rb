# frozen_string_literal: true

class Material::DataTableComponent < ApplicationComponent
  attr_reader :headers
  attr_reader :items

  def initialize(headers:, items:)
    @headers = headers
    @items   = items
  end
end
