Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :article, function: Mutations::Article.new
end
