module Trestle
  module Filters
    class Engine < ::Rails::Engine
      config.assets.precompile << "trestle/filters.css"

      config.to_prepare do
        Trestle::ResourceController.send(:prepend, Trestle::Filters::Controller)
      end

      initializer :extensions do
        Trestle::Resource.send(:include, Trestle::Filters::Resource)
        Trestle::Resource::Builder.send(:include, Trestle::Filters::Builder)
      end
    end
  end
end
