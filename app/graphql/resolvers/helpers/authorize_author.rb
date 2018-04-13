module Resolvers
  module Helpers
    class AuthorizeAuthor
      def initialize(resolve_func)
        @resolve_func = resolve_func
      end

      def call(obj, args, ctx)
        if ctx[:current_author].blank?
          GraphQL::ExecutionError.new('Author not signed in')
        else
          @resolve_func.call(obj, args, ctx)
        end
      end
    end
  end
end
