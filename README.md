# Twitter typeahead for Rails 3

Provides an easy-to-use Rails 3.1 or higher asset for [typeahead.js](http://twitter.github.io/typeahead.js/)
This gem includes the standard and minified versions of the assets.

## Installation

Add this line to your application's Gemfile:

    gem 'typeahead-rails'

And then execute:

    $ bundle

Or install it yourself as:

  $ gem install typeahead-rails


## Configuration

### Javascript

Add the following to your app/assets/javascripts/application.js:

Standard version
```js
//= require typeahead
```

Minified version : 
```js
//= require typeahead.min
```

### Css

You can use a css example via the asset pipeline (app/assets/stylesheets/application.css) :
```css
*= require typeahead-rails
```

## Usage

```js

// instantiate the bloodhound suggestion engine
var numbers = new Bloodhound({
  datumTokenizer: Bloodhound.tokenizers.obj.whitespace('num'),
  queryTokenizer: Bloodhound.tokenizers.whitespace,
  local: [
    { num: 'one' },
    { num: 'two' },
    { num: 'three' },
    { num: 'four' },
    { num: 'five' },
    { num: 'six' },
    { num: 'seven' },
    { num: 'eight' },
    { num: 'nine' },
    { num: 'ten' }
  ]
});

// initialize the bloodhound suggestion engine
numbers.initialize();

// instantiate the typeahead UI
$('.example-numbers .typeahead').typeahead(null, {
  displayKey: 'num',
  source: numbers.ttAdapter()
});
```


## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
