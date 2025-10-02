# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Products#delete
    class ProductDeleteParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!method initialize(request_options: {})
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
