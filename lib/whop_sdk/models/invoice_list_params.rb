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

      # @!attribute collection_methods
      #   Filter invoices by their collection method
      #
      #   @return [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil]
      optional :collection_methods,
               -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::CollectionMethod] },
               nil?: true

      # @!attribute created_after
      #   The minimum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_after, Time, nil?: true

      # @!attribute created_before
      #   The maximum creation date to filter by
      #
      #   @return [Time, nil]
      optional :created_before, Time, nil?: true

      # @!attribute direction
      #   The direction of the sort.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }, nil?: true

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

      # @!attribute product_ids
      #   Return only invoices created for these specific product ids
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String], nil?: true

      # @!attribute statuses
      #   The statuses to filter the invoices by
      #
      #   @return [Array<Symbol, WhopSDK::Models::InvoiceStatus>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::InvoiceStatus] }, nil?: true

      # @!method initialize(company_id:, after: nil, before: nil, collection_methods: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_ids: nil, statuses: nil, request_options: {})
      #   @param company_id [String] The ID of the company to list invoices for
      #
      #   @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      #   @param collection_methods [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil] Filter invoices by their collection method
      #
      #   @param created_after [Time, nil] The minimum creation date to filter by
      #
      #   @param created_before [Time, nil] The maximum creation date to filter by
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      #   @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::InvoiceListParams::Order, nil] Which columns can be used to sort.
      #
      #   @param product_ids [Array<String>, nil] Return only invoices created for these specific product ids
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::InvoiceStatus>, nil] The statuses to filter the invoices by
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

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
