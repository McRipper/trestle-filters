Trestle.configure do |config|
  config.persistent_params << :q

  config.hook("stylesheets") do
    stylesheet_link_tag "trestle/filters"
  end

  config.hook("resource.index.header") do
    render "trestle/filters/filters"
  end

end
