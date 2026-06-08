# typed: strong

module WhopSDK
  module Models
    class CardCreateDisputeAttachmentParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(
            WhopSDK::CardCreateDisputeAttachmentParams,
            WhopSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :id

      sig { returns(String) }
      attr_accessor :dispute_id

      sig { returns(WhopSDK::CardCreateDisputeAttachmentParams::Attachment) }
      attr_reader :attachment

      sig do
        params(
          attachment:
            WhopSDK::CardCreateDisputeAttachmentParams::Attachment::OrHash
        ).void
      end
      attr_writer :attachment

      sig do
        params(
          id: String,
          dispute_id: String,
          attachment:
            WhopSDK::CardCreateDisputeAttachmentParams::Attachment::OrHash,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(id:, dispute_id:, attachment:, request_options: {})
      end

      sig do
        override.returns(
          {
            id: String,
            dispute_id: String,
            attachment: WhopSDK::CardCreateDisputeAttachmentParams::Attachment,
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      class Attachment < WhopSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              WhopSDK::CardCreateDisputeAttachmentParams::Attachment,
              WhopSDK::Internal::AnyHash
            )
          end

        # The ID of an existing file object.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # The direct upload ID returned when uploading the file to storage.
        sig { returns(T.nilable(String)) }
        attr_reader :direct_upload_id

        sig { params(direct_upload_id: String).void }
        attr_writer :direct_upload_id

        sig do
          params(id: String, direct_upload_id: String).returns(T.attached_class)
        end
        def self.new(
          # The ID of an existing file object.
          id: nil,
          # The direct upload ID returned when uploading the file to storage.
          direct_upload_id: nil
        )
        end

        sig { override.returns({ id: String, direct_upload_id: String }) }
        def to_hash
        end
      end
    end
  end
end
