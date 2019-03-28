# SubwaySpStatus

Ruby crawler for searching informations about São Paulo subway status

## Installation

```
$ bundle
```

## Usage

To list all available lines use:

```
SubwaySpStatus::Crawler.all
#=> [{:name=>"Linha 1", :status=>"Operação Normal"}, {:name=>"Linha 2", :status=>"Operação Normal"}, {:name=>"Linha 3", :status=>"Operação Normal"}, {:name=>"Linha 15", :status=>"Operação Normal"}, {:name=>"Linha 4", :status=>"Operação Normal"}]
```

To search for especific line use:

```
SubwaySpStatus::Crawler.find_by_name "Linha 1"
#=> {:name=>"Linha 1", :status=>"Operação Normal"}
```

## Benchmark

```
$ ruby lib/subway_sp_status/bechmark.rb
```

## Thanks community
  - [Mechanize](https://github.com/sparklemotion/mechanize#mechanize-)
  - [Benchmark-ips](https://github.com/evanphx/benchmark-ips)

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/subway_sp_status. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the SubwaySpStatus project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/subway_sp_status/blob/master/CODE_OF_CONDUCT.md).

## Todo

 - Unit tests
 - Docs
