# frozen_string_literal: true

module WhopSDK
  module Resources
    class Affiliates
      # Affiliates
      class Overrides
        # Creates a commission override for an affiliate.
        #
        # Required permissions:
        #
        # - `affiliate:create`
        #
        # @overload create(id, body:, request_options: {})
        #
        # @param id [String] The affiliate ID.
        #
        # @param body [WhopSDK::Models::Affiliates::OverrideCreateParams::Body::CreateAffiliateOverrideInputOverrideTypeStandard, WhopSDK::Models::Affiliates::OverrideCreateParams::Body::CreateAffiliateOverrideInputOverrideTypeRevShare] Parameters for CreateAffiliateOverride
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Affiliates::OverrideCreateResponse]
        #
        # @see WhopSDK::Models::Affiliates::OverrideCreateParams
        def create(id, params)
          parsed, options = WhopSDK::Affiliates::OverrideCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["affiliates/%1$s/overrides", id],
            body: parsed[:body],
            model: WhopSDK::Models::Affiliates::OverrideCreateResponse,
            options: options
          )
        end

        # Retrieves the details of a specific affiliate override.
        #
        # Required permissions:
        #
        # - `affiliate:basic:read`
        #
        # @overload retrieve(override_id, id:, request_options: {})
        #
        # @param override_id [String] The override ID.
        #
        # @param id [String] The affiliate ID.
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Affiliates::OverrideRetrieveResponse]
        #
        # @see WhopSDK::Models::Affiliates::OverrideRetrieveParams
        def retrieve(override_id, params)
          parsed, options = WhopSDK::Affiliates::OverrideRetrieveParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["affiliates/%1$s/overrides/%2$s", id, override_id],
            model: WhopSDK::Models::Affiliates::OverrideRetrieveResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {WhopSDK::Models::Affiliates::OverrideUpdateParams} for more details.
        #
        # Updates an existing affiliate override.
        #
        # Required permissions:
        #
        # - `affiliate:update`
        #
        # @overload update(override_id, id:, applies_to_payments: nil, commission_type: nil, commission_value: nil, revenue_basis: nil, request_options: {})
        #
        # @param override_id [String] Path param: The override ID.
        #
        # @param id [String] Path param: The affiliate ID.
        #
        # @param applies_to_payments [Symbol, WhopSDK::Models::Affiliates::AffiliateAppliesToPayments, nil] Body param: Whether the affiliate commission applies to the first payment or all
        #
        # @param commission_type [Symbol, WhopSDK::Models::Affiliates::AffiliatePayoutTypes, nil] Body param: The types of payouts an affiliate can have
        #
        # @param commission_value [Float, nil] Body param: The commission value (percentage 1-100 or flat fee in dollars).
        #
        # @param revenue_basis [Symbol, WhopSDK::Models::Affiliates::AffiliateRevenueBases, nil] Body param: The calculation method for affiliate rev-share percentages
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Models::Affiliates::OverrideUpdateResponse]
        #
        # @see WhopSDK::Models::Affiliates::OverrideUpdateParams
        def update(override_id, params)
          parsed, options = WhopSDK::Affiliates::OverrideUpdateParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["affiliates/%1$s/overrides/%2$s", id, override_id],
            body: parsed,
            model: WhopSDK::Models::Affiliates::OverrideUpdateResponse,
            options: options
          )
        end

        # Returns a paginated list of overrides for an affiliate.
        #
        # Required permissions:
        #
        # - `affiliate:basic:read`
        #
        # @overload list(id, after: nil, before: nil, first: nil, last: nil, override_type: nil, request_options: {})
        #
        # @param id [String] The affiliate ID.
        #
        # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
        #
        # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
        #
        # @param first [Integer, nil] Returns the first _n_ elements from the list.
        #
        # @param last [Integer, nil] Returns the last _n_ elements from the list.
        #
        # @param override_type [Symbol, WhopSDK::Models::Affiliates::AffiliateOverrideRoles, nil] The role of an affiliate override (standard or rev_share)
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::Affiliates::OverrideListResponse>]
        #
        # @see WhopSDK::Models::Affiliates::OverrideListParams
        def list(id, params = {})
          parsed, options = WhopSDK::Affiliates::OverrideListParams.dump_request(params)
          query = WhopSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["affiliates/%1$s/overrides", id],
            query: query,
            page: WhopSDK::Internal::CursorPage,
            model: WhopSDK::Models::Affiliates::OverrideListResponse,
            options: options
          )
        end

        # Deletes an affiliate override.
        #
        # Required permissions:
        #
        # - `affiliate:update`
        #
        # @overload delete(override_id, id:, request_options: {})
        #
        # @param override_id [String] The override ID.
        #
        # @param id [String] The affiliate ID.
        #
        # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Boolean]
        #
        # @see WhopSDK::Models::Affiliates::OverrideDeleteParams
        def delete(override_id, params)
          parsed, options = WhopSDK::Affiliates::OverrideDeleteParams.dump_request(params)
          id =
            parsed.delete(:id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["affiliates/%1$s/overrides/%2$s", id, override_id],
            model: WhopSDK::Internal::Type::Boolean,
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
end
