# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

article1 = Article.create(title: 'La Neurología Minero', text: 'Suspendisse imperdiet dui sit amet efficitur vulputate. Duis suscipit venenatis ullamcorper. Suspendisse in diam quis ante dignissim pretium vitae sit amet orci. Pellentesque quis mi scelerisque, ullamcorper eros ut, pulvinar felis. Cras tincidunt leo ut sapien finibus consectetur. Suspendisse viverra turpis non bibendum ullamcorper. In rhoncus massa eget nunc egestas, at posuere dui iaculis. Phasellus eleifend neque in sem commodo, at placerat eros pharetra. Cras mattis tincidunt velit. Maecenas accumsan eleifend ligula, nec elementum arcu dictum et.')
article2 = Article.create(title: 'La Guitarra Estadista', text: 'In sem libero, commodo ut finibus ac, consequat quis ante. Integer hendrerit tortor vitae ornare varius. Duis laoreet vel nulla faucibus aliquet. Cras commodo, magna id faucibus viverra, mauris nisl maximus dolor, ac volutpat purus magna sit amet felis. Maecenas quis dui sodales, posuere sapien et, ullamcorper elit. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Duis ornare ultrices nunc.')
article3 = Article.create(title: 'La Golosina Mandril', text: 'Vestibulum vulputate ac enim at posuere. Donec posuere lacinia cursus. Vivamus non vehicula eros. Fusce ac scelerisque ex. Quisque vel tellus blandit, eleifend augue et, ultricies quam. Cras vel dolor erat. Morbi vestibulum turpis quis lorem facilisis, at ornare tortor maximus. Praesent tempor risus ut justo cursus, ut porttitor lorem placerat.')
article4 = Article.create(title: 'La Ametralladora Especialista', text: 'Duis in maximus nisl, quis feugiat libero. Sed eleifend est non molestie dictum. Sed ligula lorem, consequat id bibendum non, varius a lectus. Etiam pellentesque ipsum nulla, auctor aliquam eros cursus sed. Proin placerat nunc nec augue posuere, nec mollis nibh iaculis. In rutrum efficitur aliquam. Vestibulum ut pharetra nisl. Morbi posuere varius justo, vel fringilla nunc finibus et.')

Author.create(name: 'Eleodoro Sanabria Serrato', email: 'eleodoro@example.com', password: 'eleodoro', articles: [article1, article3])
Author.create(name: 'Gualtiero Almanza Navarro', email: 'gualtiero@example.com', password: 'gualtiero', articles: [article2])
Author.create(name: 'Madu Barreto Arenas', email: 'madu@example.com', password: 'madu', articles: [article4])

Comment.create(commenter: 'Treena S. Windley', body: 'Integer tincidunt mi eu egestas gravida. Proin in elementum turpis. Fusce eget vehicula sem, ullamcorper volutpat massa. Morbi in turpis velit. Integer sagittis augue augue, a congue dolor varius sed.', article: article1)
Comment.create(commenter: 'Alton Y. Boyers', body: 'Aliquam eget auctor lacus, non tempus lacus. Etiam vitae pulvinar quam. Curabitur elementum viverra justo nec gravida. Suspendisse potenti.', article: article1)
Comment.create(commenter: 'Jolianne Y. Bradford', body: 'Phasellus porttitor mauris et arcu dictum, id blandit erat ullamcorper. Pellentesque efficitur eleifend sagittis.', article: article2)
Comment.create(commenter: 'Emmitt L. Swanson', body: 'Sed sit amet erat suscipit ex aliquam maximus in nec nisi.', article: article3)
Comment.create(commenter: 'Azura K. Minchew', body: 'Mauris condimentum quam vel purus vulputate maximus. Donec tristique libero purus, sit amet ultrices libero porta vitae.', article: article3)
Comment.create(commenter: 'Isaac D. Xie', body: 'Curabitur a ipsum elementum, porta nunc sed, aliquet velit.', article: article3)
Comment.create(commenter: 'Annick G. Stott', body: 'Pellentesque eu dui commodo, pharetra odio id, dictum enim.', article: article4)
