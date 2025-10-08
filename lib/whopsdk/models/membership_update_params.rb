# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Memberships#update
    class MembershipUpdateParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute metadata
      #   The metadata to update the membership with.
      #
      #   @return [Hash{Symbol=>Object}, nil]
      optional :metadata, Whopsdk::Internal::Type::HashOf[Whopsdk::Internal::Type::Unknown], nil?: true

      # @!method initialize(metadata: nil, request_options: {})
      #   @param metadata [Hash{Symbol=>Object}, nil] The metadata to update the membership with.
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]
    end
  end
end
