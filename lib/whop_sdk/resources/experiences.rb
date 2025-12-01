# frozen_string_literal: true

module WhopSDK
  module Resources
    class Experiences
      # Required permissions:
      #
      # - `experience:create`
      #
      # @overload create(app_id:, company_id:, name: nil, section_id: nil, request_options: {})
      #
      # @param app_id [String] The ID of the app to create the experience for
      #
      # @param company_id [String] The ID of the company to create the experience for
      #
      # @param name [String, nil] The name of the experience
      #
      # @param section_id [String, nil] The ID of the section to create the experience in
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Experience]
      #
      # @see WhopSDK::Models::ExperienceCreateParams
      def create(params)
        parsed, options = WhopSDK::ExperienceCreateParams.dump_request(params)
        @client.request(
          method: :post,
          path: "experiences",
          body: parsed,
          model: WhopSDK::Experience,
          options: options
        )
      end

      # Retrieves an experience by ID
      #
      # @overload retrieve(id, request_options: {})
      #
      # @param id [String] The ID of the experience
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Experience]
      #
      # @see WhopSDK::Models::ExperienceRetrieveParams
      def retrieve(id, params = {})
        @client.request(
          method: :get,
          path: ["experiences/%1$s", id],
          model: WhopSDK::Experience,
          options: params[:request_options]
        )
      end

      # Required permissions:
      #
      # - `experience:update`
      #
      # @overload update(id, access_level: nil, logo: nil, name: nil, order: nil, section_id: nil, request_options: {})
      #
      # @param id [String] The id of the experience to update.
      #
      # @param access_level [Symbol, WhopSDK::Models::ExperienceUpdateParams::AccessLevel, nil] The different access levels for experiences (PUBLIC IS NEVER USED ANYMORE).
      #
      # @param logo [WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithDirectUploadID, WhopSDK::Models::ExperienceUpdateParams::Logo::AttachmentInputWithID, nil] The logo for the experience
      #
      # @param name [String, nil] The name of the experience.
      #
      # @param order [String, nil] The order of the experience in the section.
      #
      # @param section_id [String, nil] The ID of the section to update.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Experience]
      #
      # @see WhopSDK::Models::ExperienceUpdateParams
      def update(id, params = {})
        parsed, options = WhopSDK::ExperienceUpdateParams.dump_request(params)
        @client.request(
          method: :patch,
          path: ["experiences/%1$s", id],
          body: parsed,
          model: WhopSDK::Experience,
          options: options
        )
      end

      # Lists experiences for a company
      #
      # Required permissions:
      #
      # - `experience:hidden_experience:read`
      #
      # @overload list(company_id:, after: nil, app_id: nil, before: nil, created_after: nil, created_before: nil, first: nil, last: nil, product_id: nil, request_options: {})
      #
      # @param company_id [String] The ID of the company to filter experiences by
      #
      # @param after [String, nil] Returns the elements in the list that come after the specified cursor.
      #
      # @param app_id [String, nil] The ID of the app to filter experiences by
      #
      # @param before [String, nil] Returns the elements in the list that come before the specified cursor.
      #
      # @param created_after [Time, nil] The minimum creation date to filter by
      #
      # @param created_before [Time, nil] The maximum creation date to filter by
      #
      # @param first [Integer, nil] Returns the first _n_ elements from the list.
      #
      # @param last [Integer, nil] Returns the last _n_ elements from the list.
      #
      # @param product_id [String, nil] The ID of the product to filter experiences by
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Internal::CursorPage<WhopSDK::Models::ExperienceListResponse>]
      #
      # @see WhopSDK::Models::ExperienceListParams
      def list(params)
        parsed, options = WhopSDK::ExperienceListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "experiences",
          query: parsed,
          page: WhopSDK::Internal::CursorPage,
          model: WhopSDK::Models::ExperienceListResponse,
          options: options
        )
      end

      # Required permissions:
      #
      # - `experience:delete`
      #
      # @overload delete(id, request_options: {})
      #
      # @param id [String] The internal ID of the experience to delete.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Boolean]
      #
      # @see WhopSDK::Models::ExperienceDeleteParams
      def delete(id, params = {})
        @client.request(
          method: :delete,
          path: ["experiences/%1$s", id],
          model: WhopSDK::Internal::Type::Boolean,
          options: params[:request_options]
        )
      end

      # Adds an experience to an product, making it accessible to the product's
      # customers.
      #
      # Required permissions:
      #
      # - `experience:attach`
      #
      # @overload attach(id, product_id:, request_options: {})
      #
      # @param id [String] The ID of the Experience to be added to an Access Pass.
      #
      # @param product_id [String] The ID of the Access Pass to add the Experience to.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Experience]
      #
      # @see WhopSDK::Models::ExperienceAttachParams
      def attach(id, params)
        parsed, options = WhopSDK::ExperienceAttachParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["experiences/%1$s/attach", id],
          body: parsed,
          model: WhopSDK::Experience,
          options: options
        )
      end

      # Removes an experience from an product, making it inaccessible to the product's
      # customers.
      #
      # Required permissions:
      #
      # - `experience:detach`
      #
      # @overload detach(id, product_id:, request_options: {})
      #
      # @param id [String] The ID of the Experience to be added to an Access Pass.
      #
      # @param product_id [String] The ID of the Access Pass to add the Experience to.
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Experience]
      #
      # @see WhopSDK::Models::ExperienceDetachParams
      def detach(id, params)
        parsed, options = WhopSDK::ExperienceDetachParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["experiences/%1$s/detach", id],
          body: parsed,
          model: WhopSDK::Experience,
          options: options
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
      #
      # @overload duplicate(id, name: nil, request_options: {})
      #
      # @param id [String] The ID of the experience to duplicate
      #
      # @param name [String, nil] The name of the new experience
      #
      # @param request_options [WhopSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [WhopSDK::Models::Experience]
      #
      # @see WhopSDK::Models::ExperienceDuplicateParams
      def duplicate(id, params = {})
        parsed, options = WhopSDK::ExperienceDuplicateParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["experiences/%1$s/duplicate", id],
          body: parsed,
          model: WhopSDK::Experience,
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
