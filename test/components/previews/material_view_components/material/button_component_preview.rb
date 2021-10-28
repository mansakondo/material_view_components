class Material::ButtonComponentPreview < ViewComponent::Preview
  def default
    render(Material::ButtonComponent.new)
  end
end
