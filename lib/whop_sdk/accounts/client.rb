# frozen_string_literal: true

module Whop_sdk
  module Accounts
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists accounts visible to the credential. User tokens return the user's business accounts; Account API keys
      # return the requesting account and its connected accounts. Pass `parent_account_id` to return only that parent
      # account's connected accounts.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      # @option params [Integer, nil] :last
      # @option params [String, nil] :before
      # @option params [Whop_sdk::Accounts::Types::ListAccountsRequestOrder, nil] :order
      # @option params [Whop_sdk::Accounts::Types::ListAccountsRequestDirection, nil] :direction
      # @option params [Whop_sdk::Accounts::Types::ListAccountsRequestStatus, nil] :status
      # @option params [String, nil] :query
      # @option params [String, nil] :created_after
      # @option params [String, nil] :created_before
      # @option params [Integer, nil] :volume_min
      # @option params [Integer, nil] :volume_max
      # @option params [String, nil] :parent_account_id
      #
      # @example
      #   client.accounts.list
      #
      # @return [Whop_sdk::Accounts::Types::ListAccountsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["volume_min"] = params[:volume_min] if params.key?(:volume_min)
        query_params["volume_max"] = params[:volume_max] if params.key?(:volume_max)
        query_params["parent_account_id"] = params[:parent_account_id] if params.key?(:parent_account_id)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "accounts",
            query: query_params,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            parsed_response = Whop_sdk::Accounts::Types::ListAccountsResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates an account. User tokens create business accounts; Account API keys create connected accounts. Tax fields
      # (`tax_remitted_by`, `tax_type`, `product_tax_code_id`, `business_address`, `tax_identifiers`) are configured
      # with Update Account, not at creation.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Accounts::Types::CreateAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.accounts.create
      #
      # @return [Whop_sdk::Types::Account]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "accounts",
          body: Whop_sdk::Accounts::Types::CreateAccountsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Account.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves the account associated with the current Account API key.
      #
      # @param request_options [Hash]
      # @param _params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.accounts.me
      #
      # @return [Whop_sdk::Types::Account]
      def me(request_options: {}, **_params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "accounts/me",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Account.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieves a single account by ID or public route when it is visible to the credential, including its crypto
      # wallet. The reserved id `me` retrieves the account associated with the current Account API key; user tokens have
      # no single account, so they must address one by ID or route.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.accounts.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::Account]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "GET",
          path: "accounts/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Account.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Updates an account. User tokens can update business accounts; Account API keys can update connected accounts.
      # The reserved id `me` — accepted on Retrieve Account — resolves to the requesting account, which an Account API
      # key cannot edit, so updates must name the connected account by its `biz_` id.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Accounts::Types::UpdateAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.accounts.update(id: "id")
      #
      # @return [Whop_sdk::Types::Account]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Accounts::Types::UpdateAccountsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "accounts/#{URI.encode_uri_component(params[:id].to_s)}",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Account.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Starts an LLC or C-Corp formation for a business account. Defaults to an LLC; set `entity_type` to `c_corp` to
      # form a C-Corp, which additionally requires `share_structure` and officer `roles` on every founder. On
      # submission, the application is validated and the response returns a hosted checkout URL. Once paid, the filing
      # is submitted. Track progress through the account's
      # [`company_formation`](/api-reference/beta/accounts/retrieve-account) field on Retrieve Account.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Accounts::Types::FormCompanyAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.accounts.form_company(
      #     id: "id",
      #     business_address: {
      #       city: "Austin",
      #       country: "US",
      #       line1: "4180 Burnet Rd",
      #       line2: "Suite 2",
      #       postal_code: "78756",
      #       state: "TX"
      #     },
      #     business_name: "Shine Time Auto Detailing",
      #     business_phone: "+15125550142",
      #     business_type: "brick_and_mortar",
      #     business_website: "https://shinetime.example",
      #     entity_suffix: "LLC",
      #     entity_type: "llc",
      #     expedite_ein: true,
      #     formation_state: "WY",
      #     founders: [{
      #       address: {
      #         city: "Austin",
      #         country: "US",
      #         line1: "907 Ridgemont Dr",
      #         line2: "Apt 4",
      #         postal_code: "78704",
      #         state: "TX"
      #       },
      #       date_of_birth: "1988-03-14",
      #       email: "marcus@shinetime.example",
      #       first_name: "Marcus",
      #       is_primary: true,
      #       last_name: "Webb",
      #       ownership_percentage: 100,
      #       phone: "+15125550142",
      #       roles: ["president"],
      #       ssn: "123-45-6789"
      #     }],
      #     industry_group: "automotive",
      #     industry_type: "car_wash",
      #     share_structure: {
      #       number_of_shares: 123,
      #       value: 123
      #     },
      #     use_registered_agent: true
      #   )
      #
      # @return [Whop_sdk::Accounts::Types::FormCompanyAccountsResponse]
      def form_company(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Accounts::Types::FormCompanyAccountsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "accounts/#{URI.encode_uri_component(params[:id].to_s)}/form_company",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Accounts::Types::FormCompanyAccountsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Suspends a connected account directly owned by the authenticated platform account. This cannot suspend the
      # platform account itself or an account owned by another platform.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.accounts.suspend(id: "id")
      #
      # @return [Whop_sdk::Types::Account]
      def suspend(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "accounts/#{URI.encode_uri_component(params[:id].to_s)}/suspend",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Types::Account.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Transfers ownership of the account to another user, identified by user ID or email address. If the recipient
      # already holds the owner role, ownership moves immediately; otherwise they get an invite and ownership moves when
      # they accept.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Accounts::Types::TransferOwnershipAccountsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.accounts.transfer_ownership(
      #     id: "id",
      #     identifier: "marcus@shinetime.example"
      #   )
      #
      # @return [Whop_sdk::Accounts::Types::TransferOwnershipAccountsResponse]
      def transfer_ownership(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Accounts::Types::TransferOwnershipAccountsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "accounts/#{URI.encode_uri_component(params[:id].to_s)}/transfer_ownership",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Accounts::Types::TransferOwnershipAccountsResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # @return [Whop_sdk::Preferences::Client]
      def preferences
        @preferences ||= Whop_sdk::Accounts::Preferences::Client.new(client: @client)
      end

      # @return [Whop_sdk::Reserves::Client]
      def reserves
        @reserves ||= Whop_sdk::Accounts::Reserves::Client.new(client: @client)
      end
    end
  end
end
