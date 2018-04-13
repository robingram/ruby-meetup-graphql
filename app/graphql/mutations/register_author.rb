module Mutations
  class RegisterAuthor < GraphQL::Function
    argument :registrationDetails, !Types::Input::AuthorInputType

    type Types::AuthorType

    def call(obj, args, ctx)
      input = Hash[args['registrationDetails'].to_h.map { |k, v| [k.to_s.underscore.to_sym, v] }]
      begin
        @author = Author.create!(input)
      rescue ActiveRecord::RecordInvalid => invalid
        GraphQL::ExecutionError.new("Invalid Attributes for #{invalid.record.class.name}: #{invalid.record.errors.full_messages.join(', ')}")
      end
    end
  end
end
