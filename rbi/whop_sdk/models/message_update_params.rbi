# typed: strong

module WhopSDK
  module Models
    class MessageUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::MessageUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The attachments for this message
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
                WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithID
              )
            ]
          )
        )
      end
      attr_accessor :attachments

      # The content of the message in Markdown format
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Whether this message is pinned
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_pinned

      sig do
        params(
          attachments:
            T.nilable(
              T::Array[
                T.any(
                  WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithDirectUploadID::OrHash,
                  WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithID::OrHash
                )
              ]
            ),
          content: T.nilable(String),
          is_pinned: T.nilable(T::Boolean),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The attachments for this message
        attachments: nil,
        # The content of the message in Markdown format
        content: nil,
        # Whether this message is pinned
        is_pinned: nil,
        request_options: {}
      )
      end

      sig do
        override.returns(
          {
            attachments:
              T.nilable(
                T::Array[
                  T.any(
                    WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
                    WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithID
                  )
                ]
              ),
            content: T.nilable(String),
            is_pinned: T.nilable(T::Boolean),
            request_options: WhopSDK::RequestOptions
          }
        )
      end
      def to_hash
      end

      # Input for an attachment
      module Attachment
        extend WhopSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
              WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithID
            )
          end

        class AttachmentInputWithDirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithDirectUploadID,
                WhopSDK::Internal::AnyHash
              )
            end

          # This ID should be used the first time you upload an attachment. It is the ID of
          # the direct upload that was created when uploading the file to S3 via the
          # mediaDirectUpload mutation.
          sig { returns(String) }
          attr_accessor :direct_upload_id

          # Input for an attachment
          sig { params(direct_upload_id: String).returns(T.attached_class) }
          def self.new(
            # This ID should be used the first time you upload an attachment. It is the ID of
            # the direct upload that was created when uploading the file to S3 via the
            # mediaDirectUpload mutation.
            direct_upload_id:
          )
          end

          sig { override.returns({ direct_upload_id: String }) }
          def to_hash
          end
        end

        class AttachmentInputWithID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::MessageUpdateParams::Attachment::AttachmentInputWithID,
                WhopSDK::Internal::AnyHash
              )
            end

          # The ID of an existing attachment object. Use this when updating a resource and
          # keeping a subset of the attachments. Don't use this unless you know what you're
          # doing.
          sig { returns(String) }
          attr_accessor :id

          # Input for an attachment
          sig { params(id: String).returns(T.attached_class) }
          def self.new(
            # The ID of an existing attachment object. Use this when updating a resource and
            # keeping a subset of the attachments. Don't use this unless you know what you're
            # doing.
            id:
          )
          end

          sig { override.returns({ id: String }) }
          def to_hash
          end
        end

        sig do
          override.returns(
            T::Array[WhopSDK::MessageUpdateParams::Attachment::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
