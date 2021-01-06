require_relative "filters/version"

require "trestle"

module Trestle
  module Filters
    extend ActiveSupport::Autoload

    require_relative "filters/builder"
    require_relative "filters/controller"
    require_relative "filters/resource"

  end
end

require_relative "filters/engine" if defined?(Rails)
