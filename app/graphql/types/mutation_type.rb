Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :article, function: Mutations::Article.new
  field :signUp, function: Mutations::RegisterAuthor.new
  field :signIn, function: Mutations::SignIn.new
end
