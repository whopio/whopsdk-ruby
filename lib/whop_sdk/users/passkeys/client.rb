# frozen_string_literal: true

module Whop_sdk
  module Users
    module Passkeys
      class Client
        # @param client [Whop_sdk::Internal::Http::RawClient]
        #
        # @return [void]
        def initialize(client:)
          @client = client
        end

        # Lists the authenticated user's own passkeys, newest first. The list is always the caller's own; there is no
        # parameter for reading another user's passkeys. Requires a user session: an API key or an OAuth token is
        # refused, because a passkey confirms the account holder before a sensitive action and no app may enumerate one.
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
        # @option params [Whop_sdk::Users::Passkeys::Types::ListPasskeysRequestOrder, nil] :order
        # @option params [Whop_sdk::Users::Passkeys::Types::ListPasskeysRequestDirection, nil] :direction
        #
        # @example
        #   client.users.passkeys.list
        #
        # @return [Whop_sdk::Users::Passkeys::Types::ListPasskeysResponse]
        def list(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          query_params = {}
          query_params["first"] = params[:first] if params.key?(:first)
          query_params["after"] = params[:after] if params.key?(:after)
          query_params["last"] = params[:last] if params.key?(:last)
          query_params["before"] = params[:before] if params.key?(:before)
          query_params["order"] = params[:order] if params.key?(:order)
          query_params["direction"] = params[:direction] if params.key?(:direction)

          Whop_sdk::Internal::CursorItemIterator.new(
            cursor_field: :end_cursor,
            item_field: :data,
            initial_cursor: query_params["after"]
          ) do |next_cursor|
            query_params["after"] = next_cursor
            request = Whop_sdk::Internal::JSON::Request.new(
              base_url: request_options[:base_url],
              method: "GET",
              path: "users/me/passkeys",
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
              parsed_response = Whop_sdk::Users::Passkeys::Types::ListPasskeysResponse.load(response.body)
              [parsed_response, response]
            else
              error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
              raise error_class.new(response.body, code: code)
            end
          end
        end

        # Registers a passkey for the authenticated user from the attestation a browser produced for a `registration`
        # challenge. Mint that challenge first with `POST /users/me/passkeys/challenge`; it is single-use and expires 5
        # minutes after it is issued. Requires a user session.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Users::Passkeys::Types::CreatePasskeysRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.users.passkeys.create(
        #     attestation_object: "YXR0ZXN0YXRpb24",
        #     client_data_json: "Y2xpZW50LWRhdGE",
        #     credential_id: "bmV3LWNyZWRlbnRpYWw",
        #     nickname: "Work laptop"
        #   )
        #
        # @return [Whop_sdk::Types::Passkey]
        def create(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "users/me/passkeys",
            body: Whop_sdk::Users::Passkeys::Types::CreatePasskeysRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Types::Passkey.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Mints the challenge a browser needs to run a WebAuthn ceremony against the authenticated user's own passkeys.
        # A `registration` challenge enrolls a new passkey; a `deletion` challenge is bound to the one passkey named by
        # `passkey_id` and proves the user still holds it. Challenges are single-use and expire 5 minutes after they are
        # issued, so send a fresh `Idempotency-Key` per ceremony — a replayed key returns the original challenge, which
        # may already have expired. Requires a user session.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Users::Passkeys::Types::ChallengePasskeysRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        #
        # @example
        #   client.users.passkeys.challenge(challenge_type: "registration")
        #
        # @return [Whop_sdk::Users::Passkeys::Types::ChallengePasskeysResponse]
        def challenge(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "POST",
            path: "users/me/passkeys/challenge",
            body: Whop_sdk::Users::Passkeys::Types::ChallengePasskeysRequest.new(params).to_h,
            request_options: request_options
          )
          begin
            response = @client.send(request)
          rescue Net::HTTPRequestTimeout
            raise Whop_sdk::Errors::TimeoutError
          end
          code = response.code.to_i
          if code.between?(200, 299)
            Whop_sdk::Users::Passkeys::Types::ChallengePasskeysResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end

        # Deletes one of the authenticated user's own passkeys. The request body carries a WebAuthn assertion from the
        # passkey being deleted, so possession of the credential is proven before it is removed: mint a `deletion`
        # challenge for it first, run the ceremony with that passkey, and send the result here. Deleting the user's last
        # passkey is allowed — their other step-up factors remain. Requires a user session.
        #
        # @param request_options [Hash]
        # @param params [Whop_sdk::Users::Passkeys::Types::DeletePasskeysRequest]
        # @option request_options [String] :base_url
        # @option request_options [Hash{String => Object}] :additional_headers
        # @option request_options [Hash{String => Object}] :additional_query_parameters
        # @option request_options [Hash{String => Object}] :additional_body_parameters
        # @option request_options [Integer] :timeout_in_seconds
        # @option params [String] :id
        #
        # @example
        #   client.users.passkeys.delete(
        #     id: "id",
        #     authenticator_data: "YXV0aGVudGljYXRvci1kYXRh",
        #     client_data_json: "Y2xpZW50LWRhdGE",
        #     signature: "c2lnbmF0dXJl"
        #   )
        #
        # @return [Whop_sdk::Users::Passkeys::Types::DeletePasskeysResponse]
        def delete(request_options: {}, **params)
          params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
          request_data = Whop_sdk::Users::Passkeys::Types::DeletePasskeysRequest.new(params).to_h
          non_body_param_names = %w[id]
          body = request_data.except(*non_body_param_names)

          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "DELETE",
            path: "users/me/passkeys/#{URI.encode_uri_component(params[:id].to_s)}",
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
            Whop_sdk::Users::Passkeys::Types::DeletePasskeysResponse.load(response.body)
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end
    end
  end
end
