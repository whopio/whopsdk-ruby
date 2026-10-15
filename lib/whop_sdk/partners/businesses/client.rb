# frozen_string_literal: true

module Whop_sdk
  module Partners
    module Businesses
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        # @param base_url [String, nil]
        # @param environment [Hash[Symbol, String], nil]
        #
        # @return [void]
        def initialize(client:, base_url: nil, environment: nil)
          @client = client
          @base_url = base_url
          @environment = environment
        end

        # Lists the businesses the authenticated user referred onto Whop, most recent first.
        #
        # @param request_options [Hash]
        # @param params [Hash]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String, nil] :referring_account_id
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestAdvanceStatus, nil] :advance_status
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestStatus, nil] :status
        # @option params [Boolean, nil] :has_earnings
        # @option params [Integer, nil] :first
        # @option params [String, nil] :after
        # @option params [Integer, nil] :last
        # @option params [String, nil] :before
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestOrder, nil] :order
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestDirection, nil] :direction
        # @option params [String, nil] :created_before
        # @option params [String, nil] :created_after
        # @option params [String, nil] :referred_user_id
        # @option params [String, nil] :referred_username
        # @option params [Whop_sdk::Partners::Businesses::Types::ListBusinessesRequestTier, nil] :tier
        # @option params [String, nil] :business_prefix_query
        #
        # @example
        #   client.partners.businesses.list
        #
        # @return [Whop_sdk::Partners::Businesses::Types::ListBusinessesResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["referring_account_id"] = params[:referring_account_id] if params.key?(:referring_account_id)
          query_params["advance_status"] = params[:advance_status] if params.key?(:advance_status)
          query_params["status"] = params[:status] if params.key?(:status)
          query_params["has_earnings"] = params[:has_earnings] if params.key?(:has_earnings)
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["last"] = params[:last] if params.key?(:last)
          query_params["before"] = params[:before] if params.key?(:before)
          query_params["order"] = params[:order] if params.key?(:order)
          query_params["direction"] = params[:direction] if params.key?(:direction)
          query_params["created_before"] = params[:created_before] if params.key?(:created_before)
          query_params["created_after"] = params[:created_after] if params.key?(:created_after)
          query_params["referred_user_id"] = params[:referred_user_id] if params.key?(:referred_user_id)
          query_params["referred_username"] = params[:referred_username] if params.key?(:referred_username)
          query_params["tier"] = params[:tier] if params.key?(:tier)
          query_params["business_prefix_query"] = params[:business_prefix_query] if params.key?(:business_prefix_query)

          Whop_sdk::Internal::CursorItemIterator.new(
            cursor_field: :end_cursor,
            item_field: :data,
            initial_cursor: query_params["after"]
          ) do |next_cursor|
            query_params["after"] = next_cursor
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
              method: "GET",
              path: "partners/businesses",
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
              parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::Partners::Businesses::Types::ListBusinessesResponse.load(response.body))
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Retrieves a single referred business and its referral terms. The original referrer or a caller with
        # company:basic:read on the business credited for the referral can read it.
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
        #   client.partners.businesses.retrieve(id: "id")
        #
        # @return [Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponse]
        def retrieve(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "partners/businesses/#{URI.encode_uri_component(params[:id].to_s)}",
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            (response.body.to_s.empty? ? nil : Whop_sdk::Partners::Businesses::Types::RetrieveBusinessesResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Save annual projections for a business referred by the authenticated partner. Projections cannot be changed
        # after saving; repeating the same values is allowed. Public API access requires a partner OAuth token; business
        # API keys are not supported.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Partners::Businesses::Types::UpdateBusinessesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.partners.businesses.update(
        #     id: "id",
        #     annual_processing_usd: "1200000"
        #   )
        #
        # @return [Whop_sdk::Partners::Businesses::Types::UpdateBusinessesResponse]
        def update(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Partners::Businesses::Types::UpdateBusinessesRequest.new(params).to_h
          non_body_param_names = %w[id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "PATCH",
            path: "partners/businesses/#{URI.encode_uri_component(params[:id].to_s)}",
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
            (response.body.to_s.empty? ? nil : Whop_sdk::Partners::Businesses::Types::UpdateBusinessesResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Accept the authenticated partner's CPA offer with the reviewed terms and signed offer token. Public API access
        # requires a partner OAuth token; business API keys are not supported.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Partners::Businesses::Types::AcceptCommissionAdvanceBusinessesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.partners.businesses.accept_commission_advance(
        #     id: "id",
        #     acknowledgments: %w[commission_replacement clawback term],
        #     expected_amount_usd: "1079.99",
        #     offer_token: "eyJfcmFpbHMiOnsiZGF0YSI6MSwicHVyIjoiYmxvYl9pZCJ9fQ==--xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx",
        #     terms_version: "2026-01-01"
        #   )
        #
        # @return [Whop_sdk::Partners::Businesses::Types::AcceptCommissionAdvanceBusinessesResponse]
        def accept_commission_advance(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Partners::Businesses::Types::AcceptCommissionAdvanceBusinessesRequest.new(params).to_h
          non_body_param_names = %w[id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "POST",
            path: "partners/businesses/#{URI.encode_uri_component(params[:id].to_s)}/accept_commission_advance",
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
            (response.body.to_s.empty? ? nil : Whop_sdk::Partners::Businesses::Types::AcceptCommissionAdvanceBusinessesResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Re-emails an outstanding invite to claim ownership of a referred business. Find the invite in the business's
        # `pending_owner_invites`. Only the first-tier partner can resend, from a whop.com session or the Whop CLI or
        # MCP with `partner:handoff`. Rate limited to one resend per invite every five minutes.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.partners.businesses.resend_invite(
        #     id: "id",
        #     invite_id: "ausri_xxxxxxxxxxxxxx"
        #   )
        #
        # @return [Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponse]
        def resend_invite(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesRequest.new(params).to_h
          non_body_param_names = %w[id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "POST",
            path: "partners/businesses/#{URI.encode_uri_component(params[:id].to_s)}/resend_invite",
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
            (response.body.to_s.empty? ? nil : Whop_sdk::Partners::Businesses::Types::ResendInviteBusinessesResponse.load(response.body))
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # @return [Whop_sdk::Earnings::Client]
        def earnings
          @earnings ||= Whop_sdk::Partners::Businesses::Earnings::Client.new(client: @client, base_url: @base_url, environment: @environment)
        end
      end
    end
  end
end
