# typed: strong

module WhopSDK
  module Resources
    class Experiences
      # Required permissions:
      #
      # - `experience:create`
      sig do
        params(
          app_id: String,
          company_id: String,
          is_public: T.nilable(T::Boolean),
          logo: T.nilable(WhopSDK::ExperienceCreateParams::Logo::OrHash),
          name: T.nilable(String),
          section_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def create(
        # The unique identifier of the app that powers this experience.
        app_id:,
        # The unique identifier of the company to create this experience for.
        company_id:,
        # Whether the experience is publicly accessible without a membership.
        is_public: nil,
        # A logo image displayed alongside the experience name.
        logo: nil,
        # The display name of the experience. Defaults to the app's name if not provided.
        name: nil,
        # The unique identifier of the section to place the experience in.
        section_id: nil,
        request_options: {}
      )
      end

      # Retrieves the details of an existing experience.
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def retrieve(
        # The unique identifier of the experience.
        id,
        request_options: {}
      )
      end

      # Required permissions:
      #
      # - `experience:update`
      sig do
        params(
          id: String,
          access_level:
            T.nilable(WhopSDK::ExperienceUpdateParams::AccessLevel::OrSymbol),
          is_public: T.nilable(T::Boolean),
          logo: T.nilable(WhopSDK::ExperienceUpdateParams::Logo::OrHash),
          name: T.nilable(String),
          order: T.nilable(String),
          section_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def update(
        # The unique identifier of the experience to update.
        id,
        # The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
        access_level: nil,
        # Whether the experience is publicly accessible without a membership.
        is_public: nil,
        # A logo image displayed alongside the experience name.
        logo: nil,
        # The display name of the experience.
        name: nil,
        # The position of the experience within its section for display ordering.
        order: nil,
        # The unique identifier of the section to move the experience into.
        section_id: nil,
        request_options: {}
      )
      end

      # Returns a paginated list of experiences belonging to a company, with optional
      # filtering by product and app.
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          app_id: T.nilable(String),
          before: T.nilable(String),
          created_after: T.nilable(Time),
          created_before: T.nilable(Time),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::ExperienceListResponse]
        )
      end
      def list(
        # The unique identifier of the company to list experiences for.
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # Filter to only experiences powered by this app identifier.
        app_id: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Only return experiences created after this timestamp.
        created_after: nil,
        # Only return experiences created before this timestamp.
        created_before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # Filter to only experiences attached to this product identifier.
        product_id: nil,
        request_options: {}
      )
      end

      # Required permissions:
      #
      # - `experience:delete`
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(T::Boolean)
      end
      def delete(
        # The unique identifier of the experience to delete.
        id,
        request_options: {}
      )
      end

      # Attach an experience to a product, making it accessible to the product's
      # customers.
      #
      # Required permissions:
      #
      # - `experience:attach`
      sig do
        params(
          id: String,
          product_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def attach(
        # The unique identifier of the experience to attach.
        id,
        # The unique identifier of the product to attach the experience to.
        product_id:,
        request_options: {}
      )
      end

      # Detach an experience from a product, removing customer access to it through that
      # product.
      #
      # Required permissions:
      #
      # - `experience:detach`
      sig do
        params(
          id: String,
          product_id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def detach(
        # The unique identifier of the experience to detach.
        id,
        # The unique identifier of the product to detach the experience from.
        product_id:,
        request_options: {}
      )
      end

      # Duplicates an existing experience. The name will be copied, unless provided. The
      # new experience will be attached to the same products as the original experience.
      # If duplicating a Forum or Chat experience, the new experience will have the same
      # settings as the original experience, e.g. who can post, who can comment, etc. No
      # content, e.g. posts, messages, lessons from within the original experience will
      # be copied.
      #
      # Required permissions:
      #
      # - `experience:create`
      sig do
        params(
          id: String,
          name: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def duplicate(
        # The unique identifier of the experience to duplicate.
        id,
        # The display name for the duplicated experience. Defaults to the original
        # experience's name.
        name: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: WhopSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
