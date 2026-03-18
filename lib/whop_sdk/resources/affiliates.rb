# frozen_string_literal: true

module WhopSDK
  module Resources
    # Affiliates
    class Affiliates
      # Affiliates
      # @return [WhopSDK::Resources::Affiliates::Overrides]
      attr_reader :overrides

      # Creates or finds an affiliate for a company and user.
      #
      # Required permissions:
      #
      # - `affiliate:create`
      #
      # @overload create(company_id:, user_identifier:, request_options: {})
      #
      # @param company_id [String] The ID of the company to create the affiliate for.
      #
      # @param user_identifier [String] The user identifier (username, email, user ID, or Discord ID).
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Affiliate]
      #
      # @see WhopSDK::Models::AffiliateCreateParams
      def create(params)
        parsed, options = WhopSDK::AffiliateCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "affiliates",
          body: parsed,
          model: WhopSDK::Affiliate,
          options: options
        )
      end

      # Retrieves the details of an existing affiliate.
      #
      # Required permissions:
      #
      # - `affiliate:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier of the affiliate.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Affiliate]
      #
      # @see WhopSDK::Models::AffiliateRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["affiliates/%1$s", id],
          model: WhopSDK::Affiliate,
          options: params[:request_options]
        )
      end

      # Returns a paginated list of affiliates for the actor in context, with optional
      # filtering by status, search, and sorting.
      #
      # Required permissions:
      #
      # - `affiliate:basic:read`
      #
      # @overload list(company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, order: nil, query: nil, status: nil, request_options: {})
      #
      # @param company_id [String] The unique identifier of the company to list affiliates for.
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param order [Symbol, WhopSDK::Models::AffiliateListParams::Order, nil] Which columns can be used to sort.
      #
      # @param query [String, nil] Search affiliates by username.
      #
      # @param status [Symbol, WhopSDK::Models::Status, nil] Statuses for resources
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::AffiliateListResponse>]
      #
      # @see WhopSDK::Models::AffiliateListParams
      def list(params)
        parsed, options = WhopSDK::AffiliateListParams.dump_request(params)
        query = WhopSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "affiliates",
          query: query,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::AffiliateListResponse,
          options: options
        )
      end

      # Archives an existing Affiliate
      #
      # Required permissions:
      #
      # - `affiliate:update`
      #
      # @overload archive(id, request_options: {})
      #
      # @param id [String] The internal ID of the affiliate to archive.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AffiliateArchiveParams
      def archive(id, params = {})
        @client.request(
          method: :post,
          path: ["affiliates/%1$s/archive", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Unarchives an existing Affiliate
      #
      # Required permissions:
      #
      # - `affiliate:update`
      #
      # @overload unarchive(id, request_options: {})
      #
      # @param id [String] The internal ID of the affiliate to archive.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::AffiliateUnarchiveParams
      def unarchive(id, params = {})
        @client.request(
          method: :post,
          path: ["affiliates/%1$s/unarchive", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [WhopSDK::Client]
      def initialize(client:)
        @client = client
        @overrides = WhopSDK::Resources::Affiliates::Overrides.new(client: client)
      end
    end
  end
end
