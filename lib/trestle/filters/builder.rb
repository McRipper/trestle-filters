module Trestle
  module Filters
    module Builder

      def filters(collection=nil, &block)
        ransackable(collection)
        admin.filters = Trestle::Form.new(&block)
      end

       def ransackable(base_collection=nil)
         q = nil

         before_action do
           @q = q
         end

         collection do |params|
           if base_collection.nil?
             q = model.ransack(params[:q])
           else
             q = base_collection.call.ransack(params[:q])
           end
           q.result
        end
      end

    end
  end
end
