# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#list
    class InvoiceListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   The ID of the company to list invoices for
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute direction
      #   The direction to sort the invoices by
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil]
      optional :direction, enum: -> { Whopsdk::InvoiceListParams::Direction }, nil?: true

      # @!attribute filters
      #   The filters to apply to the invoices
      #
      #   @return [Whopsdk::Models::InvoiceListParams::Filters, nil]
      optional :filters, -> { Whopsdk::InvoiceListParams::Filters }, nil?: true

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #   The order to sort the invoices by
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::InvoiceListParams::Order }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, filters: nil, first: nil, last: nil, order: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list invoices for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil] The direction to sort the invoices by
      #
      #   @param filters [Whopsdk::Models::InvoiceListParams::Filters, nil] The filters to apply to the invoices
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil] The order to sort the invoices by
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The direction to sort the invoices by
      module Direction
        extend Whopsdk::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Filters < Whopsdk::Internal::Type::BaseModel
        # @!attribute access_pass_ids
        #   The access pass IDs to filter the invoices by
        #
        #   @return [Array<String>, nil]
        optional :access_pass_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute collection_methods
        #   The collection methods to filter the invoices by
        #
        #   @return [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::CollectionMethod, nil>, nil]
        optional :collection_methods,
                 -> {
                   Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::InvoiceListParams::Filters::CollectionMethod,
                                                    nil?: true]
                 },
                 nil?: true

        # @!attribute statuses
        #   The statuses to filter the invoices by
        #
        #   @return [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::Status, nil>, nil]
        optional :statuses,
                 -> {
                   Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::InvoiceListParams::Filters::Status,
                                                    nil?: true]
                 },
                 nil?: true

        # @!method initialize(access_pass_ids: nil, collection_methods: nil, statuses: nil)
        #   The filters to apply to the invoices
        #
        #   @param access_pass_ids [Array<String>, nil] The access pass IDs to filter the invoices by
        #
        #   @param collection_methods [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::CollectionMethod, nil>, nil] The collection methods to filter the invoices by
        #
        #   @param statuses [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::Status, nil>, nil] The statuses to filter the invoices by

        # The method of collection for an invoice.
        module CollectionMethod
          extend Whopsdk::Internal::Type::Enum

          SEND_INVOICE = :send_invoice
          CHARGE_AUTOMATICALLY = :charge_automatically

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The different statuses an invoice can be in
        module Status
          extend Whopsdk::Internal::Type::Enum

          OPEN = :open
          PAID = :paid
          PAST_DUE = :past_due
          VOID = :void

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end

      # The order to sort the invoices by
      module Order
        extend Whopsdk::Internal::Type::Enum

        ID = :id
        CREATED_AT = :created_at
        DUE_DATE = :due_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
