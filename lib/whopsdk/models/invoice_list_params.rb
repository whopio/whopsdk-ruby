# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#list
    class InvoiceListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute direction
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil]
      optional :direction, enum: -> { Whopsdk::InvoiceListParams::Direction }, nil?: true

      # @!attribute filters
      #
      #   @return [Whopsdk::Models::InvoiceListParams::Filters, nil]
      optional :filters, -> { Whopsdk::InvoiceListParams::Filters }, nil?: true

      # @!attribute first
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::InvoiceListParams::Order }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, filters: nil, first: nil, last: nil, order: nil, request_options: {})
      #   @param company_id [String]
      #   @param after [String, nil]
      #   @param before [String, nil]
      #   @param direction [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil]
      #   @param filters [Whopsdk::Models::InvoiceListParams::Filters, nil]
      #   @param first [Integer, nil]
      #   @param last [Integer, nil]
      #   @param order [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil]
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      module Direction
        extend Whopsdk::Internal::Type::Enum

        ASC = :asc
        DESC = :desc

        # @!method self.values
        #   @return [Array<Symbol>]
      end

      class Filters < Whopsdk::Internal::Type::BaseModel
        # @!attribute access_pass_ids
        #
        #   @return [Array<String>, nil]
        optional :access_pass_ids, Whopsdk::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute collection_methods
        #
        #   @return [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::CollectionMethod>, nil]
        optional :collection_methods,
                 -> {
                   Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::InvoiceListParams::Filters::CollectionMethod]
                 },
                 nil?: true

        # @!attribute statuses
        #
        #   @return [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::Status>, nil]
        optional :statuses,
                 -> { Whopsdk::Internal::Type::ArrayOf[enum: Whopsdk::InvoiceListParams::Filters::Status] },
                 nil?: true

        # @!method initialize(access_pass_ids: nil, collection_methods: nil, statuses: nil)
        #   @param access_pass_ids [Array<String>, nil]
        #   @param collection_methods [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::CollectionMethod>, nil]
        #   @param statuses [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::Status>, nil]

        module CollectionMethod
          extend Whopsdk::Internal::Type::Enum

          SEND_INVOICE = :send_invoice
          CHARGE_AUTOMATICALLY = :charge_automatically

          # @!method self.values
          #   @return [Array<Symbol>]
        end

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
