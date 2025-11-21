# typed: strong

module WhopSDK
  module Models
    CourseLessonMarkAsCompletedResponse =
      T.let(T::Boolean, WhopSDK::Internal::Type::Converter)
  end
end
