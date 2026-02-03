# frozen_string_literal: true

module WhopSDK
  module Resources
    class Leads
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::LeadCreateParams} for more details.
      #
      # Creates a new lead
      #
      # Required permissions:
      #
      # - `lead:manage`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      #
      # @overload create(company_id:, metadata: nil, product_id: nil, referrer: nil, user_id: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to create a lead for.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Custom metadata for the lead.
      #
      # @param product_id [String, nil] The ID of the product the lead is interested in.
      #
      # @param referrer [String, nil] The url referrer of the lead, if any.
      #
      # @param user_id [String, nil] The ID of the user to create a lead for. If the request is made by a user, that
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Lead]
      #
      # @see WhopSDK::Models::LeadCreateParams
      def create(params)
        parsed, options = WhopSDK::LeadCreateParams.dump_request(params)
        @client.request(method: :post, path: "leads", body: parsed, model: WhopSDK::Lead, options: options)
      end

      # Retrieves a lead by ID
      #
      # Required permissions:
      #
      # - `lead:basic:read`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the lead
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Lead]
      #
      # @see WhopSDK::Models::LeadRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["leads/%1$s", id],
          model: WhopSDK::Lead,
          options: params[:request_options]
        )
      end

      # Updates a lead
      #
      # Required permissions:
      #
      # - `lead:manage`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      #
      # @overload update(id, metadata: nil, referrer: nil, request_options: {})
      #
      # @param id [String] The ID of the lead to update.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Custom metadata for the lead.
      #
      # @param referrer [String, nil] The url referrer of the lead.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Lead]
      #
      # @see WhopSDK::Models::LeadUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::LeadUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["leads/%1$s", id],
          body: parsed,
          model: WhopSDK::Lead,
          options: options
        )
      end

      # Lists leads for a company
      #
      # Required permissions:
      #
      # - `lead:basic:read`
      # - `member:email:read`
      # - `access_pass:basic:read`
      # - `member:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, product_ids: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to list leads for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_ids [Array<String>, nil] The product IDs to filter the leads by
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::LeadListResponse>]
      #
      # @see WhopSDK::Models::LeadListParams
      def list(params)
        parsed, options = WhopSDK::LeadListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "leads",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::LeadListResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
