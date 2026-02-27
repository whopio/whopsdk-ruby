# frozen_string_literal: true

module WhopSDK
  module Resources
    class Leads
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::LeadCreateParams} for more details.
      #
      # Record a new lead for a company, capturing a potential customer's interest in a
      # specific product.
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
      # @param company_id [String] The unique identifier of the company to create the lead for, starting with
      # 'biz\_
      #
      # @param metadata [Hash{Symbol=>Object}, nil] A JSON object of custom metadata to attach to the lead for tracking purposes.
      #
      # @param product_id [String, nil] The unique identifier of the product the lead is interested in, starting with 'p
      #
      # @param referrer [String, nil] The referral URL that brought the lead to the company, such as 'https://example.
      #
      # @param user_id [String, nil] The unique identifier of the user to record as the lead. If authenticated as a u
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

      # Retrieves the details of an existing lead.
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
      # @param id [String] The unique identifier of the lead to retrieve.
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::LeadUpdateParams} for more details.
      #
      # Update the metadata or referrer information on an existing lead record.
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
      # @param id [String] The unique identifier of the lead to update, starting with 'lead\_'.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] A JSON object of custom metadata to set on the lead, replacing any existing meta
      #
      # @param referrer [String, nil] The updated referral URL for the lead, such as 'https://example.com/landing'.
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

      # Returns a paginated list of leads for a company, with optional filtering by
      # product and creation date.
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
      # @param company_id [String] The unique identifier of the company to list leads for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return leads created after this timestamp.
      #
      # @param created_before [Time, nil] Only return leads created before this timestamp.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_ids [Array<String>, nil] Filter leads to only those associated with these specific product identifiers.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::LeadListResponse>]
      #
      # @see WhopSDK::Models::LeadListParams
      def list(params)
        parsed, options = WhopSDK::LeadListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "leads",
          query: query,
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
