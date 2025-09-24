# frozen_string_literal: true

module Whopsdk
  module Models
    # @see Whopsdk::Resources::Invoices#list
    class InvoiceListParams < Whopsdk::Internal::Type::BaseModel
      extend Whopsdk::Internal::Type::RequestParameters::Converter
      include Whopsdk::Internal::Type::RequestParameters

      # @!attribute company_id
      #   Represents a unique identifier that is Base64 obfuscated. It is often used to
      #   refetch an object or as key for a cache. The ID type appears in a JSON response
      #   as a String; however, it is not intended to be human-readable. When expected as
      #   an input type, any string (such as `"VXNlci0xMA=="`) or integer (such as `4`)
      #   input value will be accepted as an ID.
      #
      #   @return [String]
      required :company_id, String

      # @!attribute after
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :after, String, nil?: true

      # @!attribute before
      #   Represents textual data as UTF-8 character sequences. This type is most often
      #   used by GraphQL to represent free-form human-readable text.
      #
      #   @return [String, nil]
      optional :before, String, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil]
      optional :direction, enum: -> { Whopsdk::InvoiceListParams::Direction }, nil?: true

      # @!attribute filters
      #   Filters for the invoices table.
      #
      #   @return [Whopsdk::Models::InvoiceListParams::Filters, nil]
      optional :filters, -> { Whopsdk::InvoiceListParams::Filters }, nil?: true

      # @!attribute first
      #   Represents non-fractional signed whole numeric values. Int can represent values
      #   between -(2^31) and 2^31 - 1.
      #
      #   @return [Integer, nil]
      optional :first, Integer, nil?: true

      # @!attribute last
      #   Represents non-fractional signed whole numeric values. Int can represent values
      #   between -(2^31) and 2^31 - 1.
      #
      #   @return [Integer, nil]
      optional :last, Integer, nil?: true

      # @!attribute order
      #   Which columns can be used to sort.
      #
      #   @return [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil]
      optional :order, enum: -> { Whopsdk::InvoiceListParams::Order }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, filters: nil, first: nil, last: nil, order: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {Whopsdk::Models::InvoiceListParams} for more details.
      #
      #   @param company_id [String] Represents a unique identifier that is Base64 obfuscated. It is often used to re
      #
      #   @param after [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param before [String, nil] Represents textual data as UTF-8 character sequences. This type is most often us
      #
      #   @param direction [Symbol, Whopsdk::Models::InvoiceListParams::Direction, nil] The direction of the sort.
      #
      #   @param filters [Whopsdk::Models::InvoiceListParams::Filters, nil] Filters for the invoices table.
      #
      #   @param first [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      #   @param last [Integer, nil] Represents non-fractional signed whole numeric values. Int can represent values
      #
      #   @param order [Symbol, Whopsdk::Models::InvoiceListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param request_options [Whopsdk::RequestOptions, Hash{Symbol=>Object}]

      # The direction of the sort.
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
        #   Filters for the invoices table.
        #
        #   @param access_pass_ids [Array<String>, nil]
        #   @param collection_methods [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::CollectionMethod>, nil]
        #   @param statuses [Array<Symbol, Whopsdk::Models::InvoiceListParams::Filters::Status>, nil]

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

      # Which columns can be used to sort.
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
