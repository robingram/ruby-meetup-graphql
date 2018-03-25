module Types
  CommentType = GraphQL::ObjectType.define do
    name "Comment"
    description "a comment on an article"

    field :id, !types.Int
    field :commenter, !types.String
    field :body, !types.String
    field :createdAt, !types.String, property: :created_at
    field :updatedAt, !types.String, property: :updated_at
  end
end
