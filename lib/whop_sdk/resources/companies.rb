# frozen_string_literal: true

module WhopSDK
  module Resources
    class Companies
      # Create a new sub company for your platform
      #
      # Required permissions:
      #
      # - `company:create_child`
      # - `company:basic:read`
      #
      # @overload create(email:, parent_company_id:, title:, metadata: nil, request_options: {})
      #
      # @param email [String] The email of the user who the company will belong to.
      #
      # @param parent_company_id [String] The company ID of the platform creating this company.
      #
      # @param title [String] The name of the company being created.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Additional metadata for the account
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Company]
      #
      # @see WhopSDK::Models::CompanyCreateParams
      def create(params)
        parsed, options = WhopSDK::CompanyCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "companies",
          body: parsed,
          model: WhopSDK::Company,
          options: options
        )
      end

      # Retrieves an company by ID or its url route
      #
      # Required permissions:
      #
      # - `company:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String]
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Company]
      #
      # @see WhopSDK::Models::CompanyRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["companies/%1$s", id],
          model: WhopSDK::Company,
          options: params[:request_options]
        )
      end

      # Lists companies the current user has access to
      #
      # Required permissions:
      #
      # - `company:basic:read`
      #
      # @overload list(parent_company_id:, after: nil, before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param parent_company_id [String] The ID of the parent company to list sub companies for
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
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CompanyListResponse>]
      #
      # @see WhopSDK::Models::CompanyListParams
      def list(params)
        parsed, options = WhopSDK::CompanyListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "companies",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::CompanyListResponse,
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
