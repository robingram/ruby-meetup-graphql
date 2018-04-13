module Types
  module Input
    AuthorInputType = GraphQL::InputObjectType.define do
      name 'AuthorInputType'
      description 'Properties for registering a new Author'

      argument :name, !types.String
      argument :email, !types.String
      argument :password, !types.String
    end
  end
end
