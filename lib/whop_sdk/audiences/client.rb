# frozen_string_literal: true

module Whop_sdk
  module Audiences
    class Client
      # @param client [Whop_sdk::Internal::Http::RawClient]
      #
      # @return [void]
      def initialize(client:)
        @client = client
      end

      # Lists uploaded customer-list audiences for an account. Pass `audience_id` to return a specific audience.
      #
      # @param request_options [Hash]
      # @param params [Hash]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :account_id
      # @option params [String, nil] :audience_id
      # @option params [Whop_sdk::Audiences::Types::ListAudiencesRequestAudienceType, nil] :audience_type
      # @option params [Whop_sdk::Audiences::Types::ListAudiencesRequestSourceType, nil] :source_type
      # @option params [Integer, nil] :first
      # @option params [String, nil] :after
      #
      # @example
      #   client.audiences.list(account_id: "account_id")
      #
      # @return [Whop_sdk::Audiences::Types::ListAudiencesResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["audience_id"] = params[:audience_id] if params.key?(:audience_id)
        query_params["audience_type"] = params[:audience_type] if params.key?(:audience_type)
        query_params["source_type"] = params[:source_type] if params.key?(:source_type)
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url],
            method: "GET",
            path: "audiences",
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
            parsed_response = Whop_sdk::Audiences::Types::ListAudiencesResponse.load(response.body)
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Creates an audience. Default (`audience_type` omitted or `custom`): creates one audience from an uploaded
      # customer identity CSV file (`name`, `column_mapping`, and `file_id` required) and starts processing it; responds
      # with the audience object. With `filters`: creates an audience from saved People filters (`name` required) —
      # membership is built from the account's People data, and `auto_refresh` decides whether it keeps tracking the
      # filters or keeps whoever matched at creation. With `audience_type: lookalike`: creates a ladder of Meta
      # lookalike audiences from an existing ready custom audience (`source_audience_id`, `count`, and `percentage`
      # required) — `count` equal similarity bands slicing the top `percentage`% (3 audiences at 6% = 0–2%, 2–4%, 4–6%),
      # each returned as its own audience in a `{ data: [...] }` envelope.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Audiences::Types::CreateAudiencesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.audiences.create(account_id: "biz_xxxxxxxxxxxxxx")
      #
      # @return [Whop_sdk::Audiences::Types::CreateAudiencesResponse]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "audiences",
          body: Whop_sdk::Audiences::Types::CreateAudiencesRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Audiences::Types::CreateAudiencesResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Deletes an audience so it is no longer available for targeting.
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
      #   client.audiences.delete(id: "id")
      #
      # @return [Whop_sdk::Audiences::Types::DeleteAudiencesResponse]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "DELETE",
          path: "audiences/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          Whop_sdk::Audiences::Types::DeleteAudiencesResponse.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Renames an audience. For an audience built from People filters that keeps itself up to date, pass `filters` to
      # replace them, which rebuilds membership immediately. Whether an audience auto refreshes is set when it is
      # created.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Audiences::Types::UpdateAudiencesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.audiences.update(id: "id")
      #
      # @return [Whop_sdk::Types::Audience]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Audiences::Types::UpdateAudiencesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "PATCH",
          path: "audiences/#{URI.encode_uri_component(params[:id].to_s)}",
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
          Whop_sdk::Types::Audience.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Adds users from a new CSV file to an existing uploaded custom audience. The file uses the audience's saved
      # column mapping, processing happens in the background, and existing audience members remain unchanged.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Audiences::Types::AddPeopleAudiencesRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.audiences.add_people(
      #     id: "id",
      #     file_id: "file_xxxxxxxxxxxxxx"
      #   )
      #
      # @return [Whop_sdk::Types::Audience]
      def add_people(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Audiences::Types::AddPeopleAudiencesRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url],
          method: "POST",
          path: "audiences/#{URI.encode_uri_component(params[:id].to_s)}/add_people",
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
          Whop_sdk::Types::Audience.load(response.body)
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end
    end
  end
end
