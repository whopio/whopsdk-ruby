# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#list
    class InvoiceListResponse < Whopsdk::Internal::Type::BaseModel
      # @!attribute data
      #   A list of nodes.
      #
      #   @return [Array<Whopsdk::Models::InvoiceListItem, nil>, nil]
      required :data,
               -> { Whopsdk::Internal::Type::ArrayOf[Whopsdk::Models::InvoiceListItem, nil?: true] },
               nil?: true

      # @!attribute page_info
      #   Information to aid in pagination.
      #
      #   @return [Whopsdk::Models::PageInfo]
      required :page_info, -> { Whopsdk::PageInfo }

      # @!method initialize(data:, page_info:)
      #   The connection type for Invoice.
      #
      #   @param data [Array<Whopsdk::Models::InvoiceListItem, nil>, nil] A list of nodes.
      #
      #   @param page_info [Whopsdk::Models::PageInfo] Information to aid in pagination.
    end
  end
end
