Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :article, Types::ArticleType do
    description "an article"
    argument :id, types.Int
    resolve -> (obj, args, ctx) {
      Article.find(args[:id])
    }
  end

  field :allArticles, types[Types::ArticleType] do
    description "an article"
    resolve ->(obj, args, ctx){
      Article.all
    }
  end

  field :articleSearch, types[Types::ArticleType] do
    description "search for an article"
    argument :query, types.String
    resolve ->(obj, args, ctx){
      Article
        .where('title LIKE ?', "%#{args[:query]}%")
        .or(Article.where('text LIKE ?', "%#{args[:query]}%"))
    }
  end

  field :comment, Types::CommentType do
    description "a comment on an article"
    argument :id, types.Int
    resolve -> (obj, args, ctx) {
      Comment.find(args[:id])
    }
  end

  field :author, Types::AuthorType do
    description "a author"
    argument :id, types.Int
    resolve -> (obj, args, ctx) {
      Author.find(args[:id])
    }
  end

  field :allAuthors, types[Types::AuthorType] do
    description "all authors"
    resolve ->(obj, args, ctx){
      Author.all
    }
  end
end
