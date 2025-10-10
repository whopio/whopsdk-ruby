# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Experiences#attach
    class ExperienceAttachParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute product_id
      #   The ID of the Access Pass to add the Experience to.
      #
      #   @return [String]
      required :product_id, String

      # @!method initialize(product_id:, request_options: {})
      #   @param product_id [String] The ID of the Access Pass to add the Experience to.
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
