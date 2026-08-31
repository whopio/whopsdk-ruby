# typed: strong

module WhopSDK
  module Models
    class FileCreateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::FileCreateParams, WhopSDK::Internal::AnyHash)
        end

      # The name of the file including its extension, e.g. `terms.pdf`.
      sig { returns(String) }
      attr_accessor :filename

      # The file's size in bytes. Required when `multipart` is `true`. Multipart uploads
      # support at most 10,000 parts of 5MB each (about 50 GB).
      sig { returns(T.nilable(Integer)) }
      attr_reader :byte_size

      sig { params(byte_size: Integer).void }
      attr_writer :byte_size

      # Upload the file in 5MB parts. Required for files larger than 5GB; useful above
      # ~100MB. The file must be larger than 5MB.
      sig { returns(T.nilable(T::Boolean)) }
      attr_reader :multipart

      sig { params(multipart: T::Boolean).void }
      attr_writer :multipart

      # `public` files are served via an unsigned CDN URL — use for assets anyone may
      # see. `private` files are served via a signed, expiring URL — use for sensitive
      # documents. Defaults to `private`.
      sig do
        returns(T.nilable(WhopSDK::FileCreateParams::Visibility::OrSymbol))
      end
      attr_reader :visibility

      sig do
        params(visibility: WhopSDK::FileCreateParams::Visibility::OrSymbol).void
      end
      attr_writer :visibility

      sig { returns(T.nilable(String)) }
      attr_reader :api_version_date

      sig { params(api_version_date: String).void }
      attr_writer :api_version_date

      sig { returns(T.nilable(String)) }
      attr_reader :idempotency_key

      sig { params(idempotency_key: String).void }
      attr_writer :idempotency_key

      sig do
        params(
          filename: String,
          byte_size: Integer,
          multipart: T::Boolean,
          visibility: WhopSDK::FileCreateParams::Visibility::OrSymbol,
          api_version_date: String,
          idempotency_key: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the file including its extension, e.g. `terms.pdf`.
        filename:,
        # The file's size in bytes. Required when `multipart` is `true`. Multipart uploads
        # support at most 10,000 parts of 5MB each (about 50 GB).
        byte_size: nil,
        # Upload the file in 5MB parts. Required for files larger than 5GB; useful above
        # ~100MB. The file must be larger than 5MB.
        multipart: nil,
        # `public` files are served via an unsigned CDN URL — use for assets anyone may
        # see. `private` files are served via a signed, expiring URL — use for sensitive
        # documents. Defaults to `private`.
        visibility: nil,
        api_version_date: nil,
        idempotency_key: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filename: String,
            byte_size: Integer,
            multipart: T::Boolean,
            visibility: WhopSDK::FileCreateParams::Visibility::OrSymbol,
            api_version_date: String,
            idempotency_key: String,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # `public` files are served via an unsigned CDN URL — use for assets anyone may
      # see. `private` files are served via a signed, expiring URL — use for sensitive
      # documents. Defaults to `private`.
      module Visibility
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias { T.all(Symbol, WhopSDK::FileCreateParams::Visibility) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PUBLIC =
          T.let(:public, WhopSDK::FileCreateParams::Visibility::TaggedSymbol)
        PRIVATE =
          T.let(:private, WhopSDK::FileCreateParams::Visibility::TaggedSymbol)

        sig do
          override.returns(
            T::Array[WhopSDK::FileCreateParams::Visibility::TaggedSymbol]
          )
        end
        def self.values
        end
      end
    end
  end
end
