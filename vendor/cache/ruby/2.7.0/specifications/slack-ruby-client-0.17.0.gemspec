# -*- encoding: utf-8 -*-
# stub: slack-ruby-client 0.17.0 ruby lib

Gem::Specification.new do |s|
  s.name = "slack-ruby-client".freeze
  s.version = "0.17.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Doubrovkine".freeze]
  s.date = "2021-03-07"
  s.email = "dblock@dblock.org".freeze
  s.executables = ["slack".freeze]
  s.files = ["bin/slack".freeze]
  s.homepage = "http://github.com/slack-ruby/slack-ruby-client".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Slack Web and RealTime API client.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<faraday>.freeze, [">= 1.0"])
    s.add_runtime_dependency(%q<faraday_middleware>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<gli>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<websocket-driver>.freeze, [">= 0"])
    s.add_development_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_development_dependency(%q<erubis>.freeze, [">= 0"])
    s.add_development_dependency(%q<json-schema>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, ["~> 10"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["~> 0.82.0"])
    s.add_development_dependency(%q<rubocop-performance>.freeze, ["~> 1.5.2"])
    s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 1.39.0"])
    s.add_development_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
  else
    s.add_dependency(%q<faraday>.freeze, [">= 1.0"])
    s.add_dependency(%q<faraday_middleware>.freeze, [">= 0"])
    s.add_dependency(%q<gli>.freeze, [">= 0"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_dependency(%q<websocket-driver>.freeze, [">= 0"])
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<erubis>.freeze, [">= 0"])
    s.add_dependency(%q<json-schema>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, ["~> 10"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["~> 0.82.0"])
    s.add_dependency(%q<rubocop-performance>.freeze, ["~> 1.5.2"])
    s.add_dependency(%q<rubocop-rspec>.freeze, ["~> 1.39.0"])
    s.add_dependency(%q<timecop>.freeze, [">= 0"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
