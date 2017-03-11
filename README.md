# HerCacheUnmodified
Easy way to begin support 304 status, so on ther side if data was not changed
You will load it from local cache. Of course, other side must support
Of course, other side must support 304 status also.

## Usage

At the very begonning you have to include this middleware to `Her`


```
# config/initilizers/her.rb
...
  Her::API.new.setup do |connection|
    ...
    connection.use Her::Middleware::CacheUnmodified
  end
```  

Here is Rails controller example with this support:

```
class Post < ApplicationController
  before_action :check_changes

   private

   def check_changes
     return unless request.headers['HTTP_IF_MODIFIED_SINCE']
     return if request.headers['HTTP_IF_MODIFIED_SINCE'].to_datetime > resource.updated_at
     render body: nil, status: 304
  end
end
```

Feel free to update is as you like

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'her_cache_unmodified'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install her_cache_unmodified
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
