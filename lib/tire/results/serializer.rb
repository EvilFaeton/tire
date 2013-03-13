module Tire
  module Results

    # Adds support for ActiveModel::Serializer
    #
    module Serializer
      def to_json options = {}
        active_model_serializer.new(self).to_json options
      end

      def as_json options={}
        active_model_serializer.new(self).as_json options
      end
    end
  end
end