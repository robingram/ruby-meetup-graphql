module Mutations
  class UpdateArticle < GraphQL::Function
    # define the required input arguments for this mutation
    argument :id, !types.Int
    argument :title, !types.String
    argument :text, types.String

    # define what the return type will be
    type Types::ArticleType

    # resolve the field, perfoming the mutation and its response
    def call(obj, args, ctx)
      article = Article.find(args[:id])
      article.update_attributes(args.to_h)
      article
    rescue ActiveRecord::RecordNotFound => e
      GraphQL::ExecutionError.new("No Article with ID #{args[:id]} found.")
    rescue ActiveRecord::RecordInvalid => e
      GraphQL::ExecutionError.new("Invalid input: #{e.record.errors.full_messages.join(', ')}")
    end
  end
end
