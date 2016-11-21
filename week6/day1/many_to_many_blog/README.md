Many To Many Associations
=========================

Many to many associations need an additional model to work.
In the industry it's known as a _join table_.
I call it the _middle man_.
In the `Post` and `Tag` example, I named it `PostTag`.
Here are the commands that I used to generate the models:


```bash
$ rails generate model  Post     title:string     text:text       user:belongs_to
$ rails generate model  Tag      name:string

$ rails generate model  PostTag  post:belongs_to  tag:belongs_to
```

See the final schema in [the `db/schema.rb`](db/schema.rb).


See the three models for the specific wiring:
- [`Post` model](app/models/post.rb#L4-L5)
- [`Tag` model](app/models/tag.rb#L2-L3)
- [`PostTag` model](app/models/post_tag.rb#L2-L3)


Once the wiring is complete,
see examples of using the association
[in the `seeds.rb` file](db/seeds.rb#L33-L42).


Even though there are 3 approaches to make a many to many connection,
they all have the same result.
Here are the 3 approaches:

1. [Creating a row in the join table with the IDs](db/seeds.rb#L33-L34)
2. [Creating a row in the join table with the `belongs_to`](db/seeds.rb#L37-L38)
3. [Push to the `has_many` association](db/seeds.rb#L41-L42)


Read more about many to many associations in Rails in the
[Rails Guide](http://guides.rubyonrails.org/association_basics.html#the-has-many-through-association).
