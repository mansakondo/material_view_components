# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  def identifier
    klass = self.class

    klass.name
      .tableize
      .singularize
      .gsub("/", "--")
      .gsub("_", "-")
  end

  def classes(string)
    string
      .strip
      .gsub(/\s{2,}|\n/, " ")
  end
end
