module Trestle
  module Filters
    module Controller
      def index
        if admin.filtrable? && params[:q].present?
          breadcrumb t("admin.search.results", default: "Search Results"), { q: params[:q] }
        end

        super
      end
    end
  end
end
