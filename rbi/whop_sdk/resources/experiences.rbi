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
          name: T.nilable(String),
          section_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def create(
        # The ID of the app to create the experience for
        app_id:,
        # The ID of the company to create the experience for
        company_id:,
        # The name of the experience
        name: nil,
        # The ID of the section to create the experience in
        section_id: nil,
        request_options: {}
      )
      end

      # Retrieves an experience by ID
      sig do
        params(
          id: String,
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def retrieve(id, request_options: {})
      end

      # Required permissions:
      #
      # - `experience:update`
      sig do
        params(
          id: String,
          access_level:
            T.nilable(WhopSDK::ExperienceUpdateParams::AccessLevel::OrSymbol),
          logo: T.nilable(WhopSDK::ExperienceUpdateParams::Logo::OrHash),
          name: T.nilable(String),
          order: T.nilable(String),
          section_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(WhopSDK::Experience)
      end
      def update(
        id,
        # The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
        access_level: nil,
        # The logo for the experience
        logo: nil,
        # The name of the experience.
        name: nil,
        # The order of the experience in the section.
        order: nil,
        # The ID of the section to update.
        section_id: nil,
        request_options: {}
      )
      end

      # Lists experiences for a company
      #
      # Required permissions:
      #
      # - `experience:hidden_experience:read`
      sig do
        params(
          company_id: String,
          after: T.nilable(String),
          app_id: T.nilable(String),
          before: T.nilable(String),
          first: T.nilable(Integer),
          last: T.nilable(Integer),
          product_id: T.nilable(String),
          request_options: WhopSDK::RequestOptions::OrHash
        ).returns(
          WhopSDK::Internal::CursorPage[WhopSDK::Models::ExperienceListResponse]
        )
      end
      def list(
        # The ID of the company to filter experiences by
        company_id:,
        # Returns the elements in the list that come after the specified cursor.
        after: nil,
        # The ID of the app to filter experiences by
        app_id: nil,
        # Returns the elements in the list that come before the specified cursor.
        before: nil,
        # Returns the first _n_ elements from the list.
        first: nil,
        # Returns the last _n_ elements from the list.
        last: nil,
        # The ID of the product to filter experiences by
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
      def delete(id, request_options: {})
      end

      # Adds an experience to an product, making it accessible to the product's
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
        id,
        # The ID of the Access Pass to add the Experience to.
        product_id:,
        request_options: {}
      )
      end

      # Removes an experience from an product, making it inaccessible to the product's
      # customers.
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
        id,
        # The ID of the Access Pass to add the Experience to.
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
        id,
        # The name of the new experience
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
