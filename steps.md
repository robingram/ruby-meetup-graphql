## 1

Install GraphQL gem. Adds a `graphql` controller and installs the `graphiql` query tool.

Also adds `app/graphql/types` and `app/graphql/mutations` with some dummy implementations.

[Demo querying the test field, showing autocomplete]

    query {
      testField
    }


## 2

Add article type.

[Demo querying for schema and type details]

    query {
      __schema {
        types {
          name
          kind
          description
          fields {
            name
          }
        }
      }
    }

    query {
      __type(name: "Article") {
        name
        kind
        description
        fields {
          name
        }
      }
    }

[Demo querying for an article]

    query {
      article(id: 2) {
        title
      }
    }

## 3

Add `allArticles` query.

[Demo querying for all articles]

    query {
      allArticles {
        title
      }
    }

## 4

Add comment type and refrence from article.

[Demo querying a comment]

    query {
      comment(id: 1) {
        commenter,
        body
      }
    }

[Demo querying an article with comments]

  query {
    allArticles {
      title,
      comments {
        commenter,
        body
      }
    }
  }

## 5

Add author type linked from article.

[Demo querying an author and all authors]

    query {
      author(id: 1) {
        name,
        email
      }
    }

    query {
      allAuthors {
        name,
        email
      }
    }

[Demo querying article with comments and author]

    query {
      allArticles {
        title,
        comments {
          commenter,
          body
        },
        author {
          name,
          email
        }
      }
    }

## 6

Implement a naive search.

    query {
      articleSearch(query: "tincidunt") {
        title,
        text
      }
    }

