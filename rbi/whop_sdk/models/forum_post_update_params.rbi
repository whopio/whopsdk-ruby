# typed: strong

module WhopSDK
  module Models
    class ForumPostUpdateParams < WhopSDK::Internal::Type::BaseModel
      extend WhopSDK::Internal::Type::RequestParameters::Converter
      include WhopSDK::Internal::Type::RequestParameters

      OrHash =
        T.type_alias do
          T.any(WhopSDK::ForumPostUpdateParams, WhopSDK::Internal::AnyHash)
        end

      # The attachments for this post
      sig do
        returns(
          T.nilable(
            T::Array[
              T.any(
                WhopSDK::ForumPostUpdateParams::Attachment::DirectUploadID,
                WhopSDK::ForumPostUpdateParams::Attachment::ID
              )
            ]
          )
        )
      end
      attr_accessor :attachments

      # This is the main body of the post in Markdown format. Hidden if paywalled and
      # user hasn't purchased access to it.
      sig { returns(T.nilable(String)) }
      attr_accessor :content

      # Whether the post is pinned. You can only pin a top level posts (not comments).
      sig { returns(T.nilable(T::Boolean)) }
      attr_accessor :is_pinned

      # The title of the post. Only visible if paywalled.
      sig { returns(T.nilable(String)) }
      attr_accessor :title

      sig do
        params(
          attachments:
            T.nilable(
              T::Array[
                T.any(
                  WhopSDK::ForumPostUpdateParams::Attachment::DirectUploadID::OrHash,
                  WhopSDK::ForumPostUpdateParams::Attachment::ID::OrHash
                )
              ]
            ),
          content: T.nilable(String),
          is_pinned: T.nilable(T::Boolean),
          title: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T.attached_class)
      end
      def self.new(
        # The attachments for this post
        attachments: nil,
        # This is the main body of the post in Markdown format. Hidden if paywalled and
        # user hasn't purchased access to it.
        content: nil,
        # Whether the post is pinned. You can only pin a top level posts (not comments).
        is_pinned: nil,
        # The title of the post. Only visible if paywalled.
        title: nil,
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
                    WhopSDK::ForumPostUpdateParams::Attachment::DirectUploadID,
                    WhopSDK::ForumPostUpdateParams::Attachment::ID
                  )
                ]
              ),
            content: T.nilable(String),
            is_pinned: T.nilable(T::Boolean),
            title: T.nilable(String),
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
              WhopSDK::ForumPostUpdateParams::Attachment::DirectUploadID,
              WhopSDK::ForumPostUpdateParams::Attachment::ID
            )
          end

        class DirectUploadID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ForumPostUpdateParams::Attachment::DirectUploadID,
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

        class ID < WhopSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                WhopSDK::ForumPostUpdateParams::Attachment::ID,
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
            T::Array[WhopSDK::ForumPostUpdateParams::Attachment::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
