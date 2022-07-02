# MaterialViewComponents
Material Design with ViewComponents and TailwindCSS.

## Usage
Currently, only Material buttons components are available. 

### Buttons
Button components are wrapper around the [`button_to`](https://edgeapi.rubyonrails.org/classes/ActionView/Helpers/UrlHelper.html#method-i-button_to) helper.

#### Regular buttons
```erb
<%= render Material::ButtonComponent.new do |button| %>
	<%= button.icon "add" %>
	<%= button.text "Button" %>
<% end %>

<%= render Material::ButtonComponent.new(disabled: true) do |button| %>
	<%= button.icon "add" %>
	<%= button.text "Button" %>    
<% end %>    
	
<%= render Material::ButtonComponent.new(button_type: :tonal) do |button| %>    
	<%= button.icon "add" %>    
	<%= button.text "Button" %>    
<% end %>    
	
<%= render Material::ButtonComponent.new(button_type: :tonal, disabled: true) do |button| %>    
	<%= button.icon "add" %>    
	<%= button.text "Button" %>    
<% end %>    
	 
<%= render Material::ButtonComponent.new(button_type: :outlined) do |button| %>    
	<%= button.icon "add" %>    
	<%= button.text "Button" %>    
<% end %>        
	 
<%= render Material::ButtonComponent.new(button_type: :outlined, disabled: true) do |button| %>    
	<%= button.icon "add" %>    
	<%= button.text "Button" %>    
<% end %>    
	 
<%= render Material::ButtonComponent.new(button_type: :elevated) do |button| %>    
	<%= button.icon "add" %>    
	<%= button.text "Button" %>    
<% end %>    

<%= render Material::ButtonComponent.new(button_type: :elevated, disabled: true) do |button| %>
	<%= button.icon "add" %>
	<%= button.text "Button" %>
<% end %>
```

#### FABs
```erb
<%= render Material::FABComponent.new do |fab| %>
	<%= fab.icon "add" %>
<% end %>
```

## Installation
Add this line to your application's Gemfile:

```ruby
gem "material_view_components"
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install material_view_components
```

Link the assets in your manifest:
```js
//= link material_view_components_manifest.js
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
