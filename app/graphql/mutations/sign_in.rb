module Mutations
  class SignIn < GraphQL::Function
    argument :email, !types.String
    argument :password, !types.String

    type Types::AuthType

    def call(_obj, args, _ctx)
      @author = Author.find_for_database_authentication(email: args[:email])
      if @author
        if @author.valid_password?(args[:password])
          authentication_token = @author.authentication_token
          return OpenStruct.new(authentication_token: authentication_token)
        else
          GraphQL::ExecutionError.new('Incorrect Email/Password')
        end
      else
        GraphQL::ExecutionError.new('Author not registered on this application')
      end
    end
  end
end
