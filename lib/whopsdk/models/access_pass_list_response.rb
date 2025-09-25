# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::AccessPasses#list
    class AccessPassListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #   A list of nodes.
      #
      #   @return [Array<Whopsdk::Models::AccessPassListItem, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::AccessPassListItem, nil?: true] },
               nil?: true

      # @!attribute page_info
      #   Information to aid in pagination.
      #
      #   @return [Whopsdk::Models::PageInfo]
      required :page_info, -> { Whopsdk::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for PublicAccessPass.
      #
      #   @param data [Array<Whopsdk::Models::AccessPassListItem, nil>, nil] A list of nodes.
      #
      #   @param page_info [Whopsdk::Models::PageInfo] Information to aid in pagination.
    end
  end
end
