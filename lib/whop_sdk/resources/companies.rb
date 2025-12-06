# frozen_string_literal: true

module WhopSDK
  module Resources
    class Companies
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CompanyCreateParams} for more details.
      #
      # Create a new connected account for your platform
      #
      # Required permissions:
      #
      # - `company:create_child`
      # - `company:basic:read`
      #
      # @overload create(email:, parent_company_id:, title:, metadata: nil, send_customer_emails: nil, request_options: {})
      #
      # @param email [String] The email of the user who the company will belong to.
      #
      # @param parent_company_id [String] The company ID of the platform creating this company.
      #
      # @param title [String] The name of the company being created.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] Additional metadata for the account
      #
      # @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails to customers on behalf of this company.
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
      # @param id [String] The ID or route of the company
      #
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CompanyUpdateParams} for more details.
      #
      # Update an existing company. Either a regular company, platform company, or one
      # of a platform's connected accounts
      #
      # Required permissions:
      #
      # - `company:update`
      # - `company:basic:read`
      #
      # @overload update(id, logo: nil, send_customer_emails: nil, title: nil, request_options: {})
      #
      # @param id [String] The ID of the company to update
      #
      # @param logo [WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::CompanyUpdateParams::Logo::AttachmentInputWithID, nil] The logo for the company in png, jpeg, or gif format
      #
      # @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails to customers on behalf of this company.
      #
      # @param title [String, nil] The title of the company
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Company]
      #
      # @see WhopSDK::Models::CompanyUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::CompanyUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["companies/%1$s", id],
          body: parsed,
          model: WhopSDK::Company,
          options: options
        )
      end

      # Lists companies the current user has access to
      #
      # Required permissions:
      #
      # - `company:basic:read`
      #
      # @overload list(parent_company_id:, after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, request_options: {})
      #
      # @param parent_company_id [String] The ID of the parent company to list connected accounts for
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
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
