# typed: strong

module WhopSDK
  module Models
    class Audience < WhopSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias { T.any(WhopSDK::Audience, WhopSDK::Internal::AnyHash) }

      # Audience ID, prefixed `adaud_`.
      sig { returns(String) }
      attr_accessor :id

      # Unix timestamp when the audience was created.
      sig { returns(Float) }
      attr_accessor :created_at

      # Processing error message. `null` unless processing is partial or failed.
      sig { returns(T.nilable(String)) }
      attr_accessor :error_message

      # Rows successfully uploaded to connected ad accounts.
      sig { returns(Float) }
      attr_accessor :matched_rows

      # Audience display name.
      sig { returns(String) }
      attr_accessor :name

      sig { returns(T::Array[String]) }
      attr_accessor :platform_audience_ids

      # Rows processed from the uploaded CSV.
      sig { returns(Float) }
      attr_accessor :processed_rows

      # Processing progress from 0 to 100.
      sig { returns(Float) }
      attr_accessor :progress_percent

      # Current state of the audience import. `syncing` means Whop is sending matched
      # rows to connected ad accounts. When status is `partial` or `failed`,
      # `error_message` explains what went wrong.
      sig { returns(WhopSDK::Audience::Status::TaggedSymbol) }
      attr_accessor :status

      # Total rows detected in the uploaded CSV.
      sig { returns(Float) }
      attr_accessor :total_rows

      # Unix timestamp when the audience was last updated.
      sig { returns(Float) }
      attr_accessor :updated_at

      sig do
        params(
          id: String,
          created_at: Float,
          error_message: T.nilable(String),
          matched_rows: Float,
          name: String,
          platform_audience_ids: T::Array[String],
          processed_rows: Float,
          progress_percent: Float,
          status: WhopSDK::Audience::Status::OrSymbol,
          total_rows: Float,
          updated_at: Float
        ).returns(T.attached_class)
      end
      def self.new(
        # Audience ID, prefixed `adaud_`.
        id:,
        # Unix timestamp when the audience was created.
        created_at:,
        # Processing error message. `null` unless processing is partial or failed.
        error_message:,
        # Rows successfully uploaded to connected ad accounts.
        matched_rows:,
        # Audience display name.
        name:,
        platform_audience_ids:,
        # Rows processed from the uploaded CSV.
        processed_rows:,
        # Processing progress from 0 to 100.
        progress_percent:,
        # Current state of the audience import. `syncing` means Whop is sending matched
        # rows to connected ad accounts. When status is `partial` or `failed`,
        # `error_message` explains what went wrong.
        status:,
        # Total rows detected in the uploaded CSV.
        total_rows:,
        # Unix timestamp when the audience was last updated.
        updated_at:
      )
      end

      sig do
        override.returns(
          {
            id: String,
            created_at: Float,
            error_message: T.nilable(String),
            matched_rows: Float,
            name: String,
            platform_audience_ids: T::Array[String],
            processed_rows: Float,
            progress_percent: Float,
            status: WhopSDK::Audience::Status::TaggedSymbol,
            total_rows: Float,
            updated_at: Float
          }
        )
      end
      def to_hash
      end

      # Current state of the audience import. `syncing` means Whop is sending matched
      # rows to connected ad accounts. When status is `partial` or `failed`,
      # `error_message` explains what went wrong.
      module Status
        extend WhopSDK::Internal::Type::Enum

        TaggedSymbol = T.type_alias { T.all(Symbol, WhopSDK::Audience::Status) }
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        PENDING = T.let(:pending, WhopSDK::Audience::Status::TaggedSymbol)
        PROCESSING = T.let(:processing, WhopSDK::Audience::Status::TaggedSymbol)
        SYNCING = T.let(:syncing, WhopSDK::Audience::Status::TaggedSymbol)
        READY = T.let(:ready, WhopSDK::Audience::Status::TaggedSymbol)
        PARTIAL = T.let(:partial, WhopSDK::Audience::Status::TaggedSymbol)
        FAILED = T.let(:failed, WhopSDK::Audience::Status::TaggedSymbol)

        sig do
          override.returns(T::Array[WhopSDK::Audience::Status::TaggedSymbol])
        end
        def self.values
        end
      end
    end
  end
end
