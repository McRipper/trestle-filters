# Trestle Filters (trestle-filters)

> Search plugin for the Trestle admin framework


## Getting Started

These instructions assume you have a working Trestle application. To integrate trestle-search, first add it to your application's Gemfile:

```ruby
gem 'trestle-filters'
```

Run `bundle install`, and then restart your Rails server.

To enable search capabilities within an admin resource, define a `search` block:

```ruby
Trestle.resource(:articles) do
  filters do |query|
    if query
      Article.where("title ILIKE ?", "%#{query}%")
    else
      Article.all
    end
  end
end
```

## License

The gem is available as open source under the terms of the [LGPLv3 License](https://opensource.org/licenses/LGPL-3.0).
