Types::MutationType = GraphQL::ObjectType.define do
  name "Mutation"

  field :updateArticle, function: Mutations::UpdateArticle.new
end
