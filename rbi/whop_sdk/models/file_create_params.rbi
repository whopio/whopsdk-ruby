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

      # The name of the file including its extension (e.g., "photo.png" or
      # "document.pdf").
      sig { returns(String) }
      attr_accessor :filename

      # Controls whether an uploaded file is publicly accessible or requires
      # authentication to access.
      sig do
        returns(T.nilable(WhopSDK::FileCreateParams::Visibility::OrSymbol))
      end
      attr_accessor :visibility

      sig do
        params(
          filename: String,
          visibility:
            T.nilable(WhopSDK::FileCreateParams::Visibility::OrSymbol),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The name of the file including its extension (e.g., "photo.png" or
        # "document.pdf").
        filename:,
        # Controls whether an uploaded file is publicly accessible or requires
        # authentication to access.
        visibility: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            filename: String,
            visibility:
              T.nilable(WhopSDK::FileCreateParams::Visibility::OrSymbol),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Controls whether an uploaded file is publicly accessible or requires
      # authentication to access.
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
