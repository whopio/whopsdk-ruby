# frozen_string_literal: true

module Whop_sdk
  module Channels
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

      # List channels you can access.
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
      # @option params [Boolean, nil] :include_total_count
      # @option params [Whop_sdk::Channels::Types::ListChannelsRequestKindItem, nil] :kind
      # @option params [Whop_sdk::Channels::Types::ListChannelsRequestSupportRole, nil] :support_role
      # @option params [String, nil] :account_id
      # @option params [String, nil] :query
      # @option params [Whop_sdk::Channels::Types::ListChannelsRequestStatus, nil] :status
      # @option params [Boolean, nil] :awaiting_reply
      # @option params [Boolean, nil] :unread
      # @option params [Boolean, nil] :pinned
      # @option params [Boolean, nil] :viewed
      # @option params [Boolean, nil] :requested
      # @option params [Whop_sdk::Channels::Types::ListChannelsRequestOrder, nil] :order
      # @option params [Boolean, nil] :include_members
      # @option params [Boolean, nil] :include_last_message
      # @option params [Whop_sdk::Channels::Types::ListChannelsRequestDirection, nil] :direction
      # @option params [String, nil] :created_before
      # @option params [String, nil] :created_after
      #
      # @example
      #   client.channels.list(kind: ["private"])
      #
      # @return [Whop_sdk::Channels::Types::ListChannelsResponse]
      def list(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        query_params = {}
        query_params["first"] = params[:first] if params.key?(:first)
        query_params["after"] = params[:after] if params.key?(:after)
        query_params["last"] = params[:last] if params.key?(:last)
        query_params["before"] = params[:before] if params.key?(:before)
        query_params["include_total_count"] = params[:include_total_count] if params.key?(:include_total_count)
        query_params["kind"] = params[:kind] if params.key?(:kind)
        query_params["support_role"] = params[:support_role] if params.key?(:support_role)
        query_params["account_id"] = params[:account_id] if params.key?(:account_id)
        query_params["query"] = params[:query] if params.key?(:query)
        query_params["status"] = params[:status] if params.key?(:status)
        query_params["awaiting_reply"] = params[:awaiting_reply] if params.key?(:awaiting_reply)
        query_params["unread"] = params[:unread] if params.key?(:unread)
        query_params["pinned"] = params[:pinned] if params.key?(:pinned)
        query_params["viewed"] = params[:viewed] if params.key?(:viewed)
        query_params["requested"] = params[:requested] if params.key?(:requested)
        query_params["order"] = params[:order] if params.key?(:order)
        query_params["include_members"] = params[:include_members] if params.key?(:include_members)
        query_params["include_last_message"] = params[:include_last_message] if params.key?(:include_last_message)
        query_params["direction"] = params[:direction] if params.key?(:direction)
        query_params["created_before"] = params[:created_before] if params.key?(:created_before)
        query_params["created_after"] = params[:created_after] if params.key?(:created_after)

        Whop_sdk::Internal::CursorItemIterator.new(
          cursor_field: :end_cursor,
          item_field: :data,
          initial_cursor: query_params["after"]
        ) do |next_cursor|
          query_params["after"] = next_cursor
          request = Whop_sdk::Internal::JSON::Request.new(
            base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
            method: "GET",
            path: "channels",
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
            parsed_response = (response.body.to_s.empty? ? nil : Whop_sdk::Channels::Types::ListChannelsResponse.load(response.body))
            [parsed_response, response]
          else
            error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
            raise error_class.new(response.body, code: code)
          end
        end
      end

      # Create a private, community or support channel. Returns an existing private or support channel unchanged with
      # `200`, or a new channel with `201`.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::CreateChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      #
      # @example
      #   client.channels.create(kind: "private")
      #
      # @return [Whop_sdk::Types::Channel]
      def create(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels",
          body: Whop_sdk::Channels::Types::CreateChannelsRequest.new(params).to_h,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::Channel.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Retrieve a channel.
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
      #   client.channels.retrieve(id: "id")
      #
      # @return [Whop_sdk::Types::Channel]
      def retrieve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "GET",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        if code.between?(200, 299)
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::Channel.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Delete a channel. Deleting a support channel requires `support_chat:create` on the account. Community channels
      # delete their backing experience and accept account API keys with the `experience:delete` permission. Private and
      # support channels require a user identity with channel management permission; account API keys cannot act as a
      # channel participant.
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
      #   client.channels.delete(id: "id")
      #
      # @return [untyped]
      def delete(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "DELETE",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Update a channel. Community icon changes update the experience logo and require `experience:update`. Group
      # private channel icon changes set the channel's own icon and require a group member. One-to-one private and
      # support channels reject icon changes. Support rename and notification changes require `support_chat:create`.
      # Private and support writes require a user identity with channel management permission. Account API keys can
      # update community channels only.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::UpdateChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.update(id: "id")
      #
      # @return [Whop_sdk::Types::Channel]
      def update(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::UpdateChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "PATCH",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::Channel.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Accept a direct-message request.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::AcceptChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.accept(id: "id")
      #
      # @return [Whop_sdk::Types::ChannelMember]
      def accept(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::AcceptChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/accept",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChannelMember.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Decline a DM request by hiding the channel from your inbox.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::HideChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.hide(id: "id")
      #
      # @return [Whop_sdk::Types::ChannelMember]
      def hide(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::HideChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/hide",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChannelMember.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Mark a channel as read and optionally record viewed messages.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::MarkReadChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.mark_read(id: "id")
      #
      # @return [Whop_sdk::Types::ChannelMember]
      def mark_read(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::MarkReadChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/mark_read",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChannelMember.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Mark a channel as unread for the authenticated user. Experience channels are unchanged.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::MarkUnreadChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.mark_unread(id: "id")
      #
      # @return [Whop_sdk::Types::ChannelMember]
      def mark_unread(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::MarkUnreadChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/mark_unread",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::ChannelMember.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Pin a private or support channel for yourself. Omit position to append a new pin or keep an existing pin in
      # place. An explicit zero-based position inserts or moves the pin and shifts the rest. At most 12 channels can be
      # pinned.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::PinChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.pin(id: "id")
      #
      # @return [untyped]
      def pin(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::PinChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/pin",
          body: body,
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end

      # Reopen a resolved support channel.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::ReopenChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.reopen(id: "id")
      #
      # @return [Whop_sdk::Types::Channel]
      def reopen(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::ReopenChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/reopen",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::Channel.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Resolve a support channel.
      #
      # @param request_options [Hash]
      # @param params [Whop_sdk::Channels::Types::ResolveChannelsRequest]
      # @option request_options [String] :base_url
      # @option request_options [Hash{String => Object}] :additional_headers
      # @option request_options [Hash{String => Object}] :additional_query_parameters
      # @option request_options [Hash{String => Object}] :additional_body_parameters
      # @option request_options [Integer] :timeout_in_seconds
      # @option params [String] :id
      #
      # @example
      #   client.channels.resolve(id: "id")
      #
      # @return [Whop_sdk::Types::Channel]
      def resolve(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request_data = Whop_sdk::Channels::Types::ResolveChannelsRequest.new(params).to_h
        non_body_param_names = %w[id]
        body = request_data.except(*non_body_param_names)

        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/resolve",
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
          (response.body.to_s.empty? ? nil : Whop_sdk::Types::Channel.load(response.body))
        else
          error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
          raise error_class.new(response.body, code: code)
        end
      end

      # Remove a channel from your pins and compact the remaining order. Your discarded memberships and inaccessible
      # channels can be unpinned. Does not return channel data or grant read access.
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
      #   client.channels.unpin(id: "id")
      #
      # @return [untyped]
      def unpin(request_options: {}, **params)
        params = Whop_sdk::Internal::Types::Utils.normalize_keys(params)
        request = Whop_sdk::Internal::JSON::Request.new(
          base_url: request_options[:base_url] || @base_url || @environment&.dig(:api),
          method: "POST",
          path: "channels/#{URI.encode_uri_component(params[:id].to_s)}/unpin",
          request_options: request_options
        )
        begin
          response = @client.send(request)
        rescue Net::HTTPRequestTimeout
          raise Whop_sdk::Errors::TimeoutError
        end
        code = response.code.to_i
        return if code.between?(200, 299)

        error_class = Whop_sdk::Errors::ResponseError.subclass_for_code(code)
        raise error_class.new(response.body, code: code)
      end
    end
  end
end
