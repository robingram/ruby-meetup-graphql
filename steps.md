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


## 7

Run a mutation.

    mutation {
      updateArticle(id: 1, title: "My updated title") {
        title
        text
      }
    }

    mutation {
      updateArticle(id: 1, title: "My even more updated title", text: "A very short article") {
        title
        text
      }
    }

Force an error.

    mutation {
      updateArticle(id: 11, title: "My even more updated title", text: "A very short article") {
        title
        text
      }
    }

## 8

Allow article creation.

    mutation {
      article(title: "My new article", text: "GraphQL rocks!!!", author_id: 2) {
        title
        text
      }
    }


## 9

Add devise:

Alter Author to add devise modules.
Install and set up `devise-token_authenticatable`.
Define an input type for the user details.
Add mutation for registering a user
  - Note conversion of camel case arguments to snake case
Add to mutation type.

Sign up query:

  mutation {
    signUp(registrationDetails: {
      name: "Rob Ingram",
      email: "rob@headcrash.org",
      password: "secret"
    }) {
      name
    }
  }

Sign in:

Authentication return type.
Sign-in mutation.

  mutation {
    signIn(email: "rob@headcrash.org", password: "secret") {
      authenticationToken
    }
  }

Authorization

Add `current_author` to GraphQL context.
Check for current user before executing mutation.

## Further Reading

https://www.howtographql.com/

Authentication with JWT:
https://blog.codeship.com/how-to-implement-a-graphql-api-in-rails/

Authorisation with Pundit
https://medium.com/@NickPoorman/graphql-ruby-and-authorization-with-pundit-3d8d2102533d


## Credits



Authentication with Devise:
https://chunksofco.de/rails-graphql-server-tips-part-1-authentication-bced6cf7ac63

Testing?
Relay?
