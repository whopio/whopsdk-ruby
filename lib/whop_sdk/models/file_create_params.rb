# frozen_string_literal: true

module WhopSDK
  module Models
    # @see WhopSDK::Resources::Files#create
    class FileCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      # @!attribute filename
      #   The name of the file including its extension, e.g. `terms.pdf`.
      #
      #   @return [String]
      required :filename, String

      # @!attribute byte_size
      #   The file's size in bytes. Required when `multipart` is `true`. Multipart uploads
      #   support at most 10,000 parts of 5MB each (about 50 GB).
      #
      #   @return [Integer, nil]
      optional :byte_size, Integer

      # @!attribute multipart
      #   Upload the file in 5MB parts. Required for files larger than 5GB; useful above
      #   ~100MB. The file must be larger than 5MB.
      #
      #   @return [Boolean, nil]
      optional :multipart, WhopSDK::Internal::Type::Boolean

      # @!attribute visibility
      #   `public` files are served via an unsigned CDN URL — use for assets anyone may
      #   see. `private` files are served via a signed, expiring URL — use for sensitive
      #   documents. Defaults to `private`.
      #
      #   @return [Symbol, WhopSDK::Models::FileCreateParams::Visibility, nil]
      optional :visibility, enum: -> { WhopSDK::FileCreateParams::Visibility }

      # @!attribute api_version_date
      #
      #   @return [String, nil]
      optional :api_version_date, String

      # @!attribute idempotency_key
      #
      #   @return [String, nil]
      optional :idempotency_key, String

      # @!method initialize(filename:, byte_size: nil, multipart: nil, visibility: nil, api_version_date: nil, idempotency_key: nil, request_options: {})
      #   Some parameter documentations has been truncated, see
      #   {WhopSDK::Models::FileCreateParams} for more details.
      #
      #   @param filename [String] The name of the file including its extension, e.g. `terms.pdf`.
      #
      #   @param byte_size [Integer] The file's size in bytes. Required when `multipart` is `true`. Multipart uploads
      #
      #   @param multipart [Boolean] Upload the file in 5MB parts. Required for files larger than 5GB; useful above ~
      #
      #   @param visibility [Symbol, WhopSDK::Models::FileCreateParams::Visibility] `public` files are served via an unsigned CDN URL — use for assets anyone may se
      #
      #   @param api_version_date [String]
      #
      #   @param idempotency_key [String]
      #
      #   @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}]

      # `public` files are served via an unsigned CDN URL — use for assets anyone may
      # see. `private` files are served via a signed, expiring URL — use for sensitive
      # documents. Defaults to `private`.
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        PUBLIC = :public
        PRIVATE = :private

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
