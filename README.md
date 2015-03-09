# UserAgent  [![BuildStatus](https://travis-ci.org/545ch4/useragent.svg)](https://travis-ci.org/545ch4/useragent)

UserAgent is a Ruby library that parses and compares HTTP User Agents.


## Installation

  $ gem install useragent


## Examples

### Reporting

```ruby
  string = 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_6_8) AppleWebKit/536.5 (KHTML, like Gecko) Chrome/19.0.1084.56 Safari/536.5'
  user_agent = UserAgent.parse(string)
  user_agent.browser
  # => 'Chrome'
  user_agent.version
  # => '19.0.1084.56'
  user_agent.platform
  # => 'Macintosh'
```


### Comparison

```ruby
  Browser = Struct.new(:browser, :version)
  SupportedBrowsers = [
    Browser.new("Safari", "3.1.1"),
    Browser.new("Firefox", "2.0.0.14"),
    Browser.new("Internet Explorer", "7.0")
  ]

  user_agent = UserAgent.parse(request.user_agent)
  SupportedBrowsers.detect { |browser| user_agent >= browser }
```

## License

Copyright (c) 2013 Joshua Peek, released under the MIT license
