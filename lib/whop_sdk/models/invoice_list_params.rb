# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Invoices#list
    class InvoiceListParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute after
      #   Returns the elements in the list that come after the specified cursor.
      #
      #   @return [String, nil]
      optional :after, String

      # @!attribute before
      #   Returns the elements in the list that come before the specified cursor.
      #
      #   @return [String, nil]
      optional :before, String

      # @!attribute collection_methods
      #   Filter invoices by their collection method.
      #
      #   @return [Array<Symbol, WhopSDK::Models::CollectionMethod>, nil]
      optional :collection_methods, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::CollectionMethod] }

      # @!attribute company_id
      #   The unique identifier of the company to list invoices for.
      #
      #   @return [String, nil]
      optional :company_id, String

      # @!attribute created_after
      #   Only return invoices created after this timestamp.
      #
      #   @return [Time, nil]
      optional :created_after, Time

      # @!attribute created_before
      #   Only return invoices created before this timestamp.
      #
      #   @return [Time, nil]
      optional :created_before, Time

      # @!attribute direction
      #   The sort direction for ordering results, either ascending or descending.
      #
      #   @return [Symbol, WhopSDK::Models::Direction, nil]
      optional :direction, enum: -> { WhopSDK::Direction }

      # @!attribute first
      #   Returns the first _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :first, Integer

      # @!attribute last
      #   Returns the last _n_ elements from the list.
      #
      #   @return [Integer, nil]
      optional :last, Integer

      # @!attribute order
      #   The field to order results by, such as creation date or due date.
      #
      #   @return [Symbol, WhopSDK::Models::InvoiceListParams::Order, nil]
      optional :order, enum: -> { WhopSDK::InvoiceListParams::Order }

      # @!attribute product_ids
      #   Filter invoices to only those associated with these specific product
      #   identifiers.
      #
      #   @return [Array<String>, nil]
      optional :product_ids, WhopSDK::Internal::Type::ArrayOf[String]

      # @!attribute statuses
      #   Filter invoices by their current status.
      #
      #   @return [Array<Symbol, WhopSDK::Models::InvoiceStatus>, nil]
      optional :statuses, -> { WhopSDK::Internal::Type::ArrayOf[enum: WhopSDK::InvoiceStatus] }

      # @!method initialize(after: nil, before: nil, collection_methods: nil, company_id: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, order: nil, product_ids: nil, statuses: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::InvoiceListParams} for more details.
      #
      #   @param after [String] Returns the elements in the list that come after the specified cursor.
      #
      #   @param before [String] Returns the elements in the list that come before the specified cursor.
      #
      #   @param collection_methods [Array<Symbol, WhopSDK::Models::CollectionMethod>] Filter invoices by their collection method.
      #
      #   @param company_id [String] The unique identifier of the company to list invoices for.
      #
      #   @param created_after [Time] Only return invoices created after this timestamp.
      #
      #   @param created_before [Time] Only return invoices created before this timestamp.
      #
      #   @param direction [Symbol, WhopSDK::Models::Direction] The sort direction for ordering results, either ascending or descending.
      #
      #   @param first [Integer] Returns the first _n_ elements from the list.
      #
      #   @param last [Integer] Returns the last _n_ elements from the list.
      #
      #   @param order [Symbol, WhopSDK::Models::InvoiceListParams::Order] The field to order results by, such as creation date or due date.
      #
      #   @param product_ids [Array<String>] Filter invoices to only those associated with these specific product identifiers
      #
      #   @param statuses [Array<Symbol, WhopSDK::Models::InvoiceStatus>] Filter invoices by their current status.
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # The field to order results by, such as creation date or due date.
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
