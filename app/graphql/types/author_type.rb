module Types
  AuthorType = GraphQL::ObjectType.define do
    name "Author"
    description "the author of an article"

    field :id, !types.Int
    field :name, !types.String
    field :email, !types.String
    field :createdAt, !types.String, property: :created_at
    field :updatedAt, !types.String, property: :updated_at
  end
end
