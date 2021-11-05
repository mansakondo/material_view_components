# frozen_string_literal: true

class ApplicationComponent < ViewComponent::Base
  def classes(string)
    string
      .strip
      .gsub(/\s{2,}|\n/, " ")
  end
end
