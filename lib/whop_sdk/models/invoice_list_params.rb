# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Invoices#list
    class InvoiceListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

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
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

      # @!attribute filters
      #   The filters to apply to the invoices
      #
      #   @return [WhopSDK::Models::InvoiceListParams::Filters, nil]
      optional :filters, -> { WhopSDK::InvoiceListParams::Filters }, nil?: true

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
      #   Which columns can be used to sort.
      #
      #   @return [Symbol, WhopSDK::Models::InvoiceListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::InvoiceListParams::Order }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, direction: nil, filters: nil, first: nil, last: nil, order: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list invoices for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param filters [WhopSDK::Models::InvoiceListParams::Filters, nil] The filters to apply to the invoices
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::InvoiceListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      class Filters < WhopSDK::Internal::Type::BaseModel
        # @!attribute access_pass_ids
        #   The access pass IDs to filter the invoices by
        #
        #   @return [Array<String>, nil]
        optional :access_pass_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

        # @!attribute collection_methods
        #   The collection methods to filter the invoices by
        #
        #   @return [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil]
        optional :collection_methods,
                 -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::CollectionMethod] },
                 nil?: true

        # @!attribute statuses
        #   The statuses to filter the invoices by
        #
        #   @return [Array<Symbol, WhopSDK::Models::InvoiceStatus>, nil]
        optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::InvoiceStatus] }, nil?: true

        # @!method initialize(access_pass_ids: nil, collection_methods: nil, statuses: nil)
        #   The filters to apply to the invoices
        #
        #   @param access_pass_ids [Array<String>, nil] The access pass IDs to filter the invoices by
        #
        #   @param collection_methods [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil] The collection methods to filter the invoices by
        #
        #   @param statuses [Array<Symbol, WhopSDK::Models::InvoiceStatus>, nil] The statuses to filter the invoices by
      end

      # Which columns can be used to sort.
      module Order
        extend WhopSDK::Internal::Type::Enum

        ID = :id
        CREATED_AT = :created_at
        DUE_DATE = :due_date

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
