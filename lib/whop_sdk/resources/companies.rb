# frozen_string_literal: true

module WhopSDK
  module Resources
    class Companies
      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CompanyCreateParams} for more details.
      #
      # Create a new company. Pass parent_company_id to create a connected account under
      # a platform, or omit it to create a company for the current user.
      #
      # Required permissions:
      #
      # - `company:create`
      # - `company:basic:read`
      #
      # @overload create(title:, business_type: nil, description: nil, email: nil, industry_type: nil, logo: nil, metadata: nil, parent_company_id: nil, send_customer_emails: nil, request_options: {})
      #
      # @param title [String] The display name of the company shown to customers.
      #
      # @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      # @param description [String, nil] A promotional pitch displayed to potential customers on the company's store page
      #
      # @param email [String, nil] The email address of the user who will own the connected account. Required when
      #
      # @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      # @param logo [WhopSDK::Models::CompanyCreateParams::Logo, nil] The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      # @param metadata [Hash{Symbol=>Object}, nil] A key-value JSON object of custom metadata to store on the company.
      #
      # @param parent_company_id [String, nil] The unique identifier of the parent platform company. When provided, creates a c
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

      # Retrieve a single company by its unique identifier or route slug.
      #
      # Required permissions:
      #
      # - `company:basic:read`
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The unique identifier or route slug of the company.
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
      # @overload update(id, banner_image: nil, business_type: nil, description: nil, industry_type: nil, logo: nil, send_customer_emails: nil, title: nil, request_options: {})
      #
      # @param id [String] The unique identifier of the company to update.
      #
      # @param banner_image [WhopSDK::Models::CompanyUpdateParams::BannerImage, nil] The company's banner image. Accepts PNG or JPEG format.
      #
      # @param business_type [Symbol, WhopSDK::Models::BusinessTypes, nil] The different business types a company can be.
      #
      # @param description [String, nil] A promotional pitch displayed to potential customers on the company's store page
      #
      # @param industry_type [Symbol, WhopSDK::Models::IndustryTypes, nil] The different industry types a company can be in.
      #
      # @param logo [WhopSDK::Models::CompanyUpdateParams::Logo, nil] The company's logo image. Accepts PNG, JPEG, or GIF format.
      #
      # @param send_customer_emails [Boolean, nil] Whether Whop sends transactional emails (receipts, renewals, cancelations) to cu
      #
      # @param title [String, nil] The display name of the company shown to customers.
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

      # Some parameter documentations has been truncated, see
      # {WhopSDK::Models::CompanyListParams} for more details.
      #
      # List companies. When parent_company_id is provided, lists connected accounts
      # under that platform. When omitted, lists companies the current user has access
      # to.
      #
      # Required permissions:
      #
      # - `company:basic:read`
      #
      # @overload list(after: nil, before: nil, created_after: nil, created_before: nil, direction: nil, first: nil, last: nil, parent_company_id: nil, request_options: {})
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] Only return companies created after this datetime.
      #
      # @param created_before [Time, nil] Only return companies created before this datetime.
      #
      # @param direction [Symbol, WhopSDK::Models::Direction, nil] The direction of the sort.
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param parent_company_id [String, nil] The unique identifier of the parent platform company. When provided, lists conne
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::CompanyListResponse>]
      #
      # @see WhopSDK::Models::CompanyListParams
      def list(params = {})
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
