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





