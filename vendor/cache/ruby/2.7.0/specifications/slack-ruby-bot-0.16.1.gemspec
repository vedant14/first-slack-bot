# -*- encoding: utf-8 -*-
# stub: slack-ruby-bot 0.16.1 ruby lib

Gem::Specification.new do |s|
  s.name = "slack-ruby-bot".freeze
  s.version = "0.16.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Doubrovkine".freeze]
  s.date = "2020-12-04"
  s.email = "dblock@dblock.org".freeze
  s.homepage = "https://github.com/slack-ruby/slack-ruby-bot".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.3".freeze)
  s.rubygems_version = "3.1.2".freeze
  s.summary = "The easiest way to write a Slack bot in Ruby.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<slack-ruby-client>.freeze, [">= 0.14.0"])
    s.add_development_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_development_dependency(%q<rake>.freeze, [">= 0"])
    s.add_development_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_development_dependency(%q<rubocop>.freeze, ["= 0.80.1"])
    s.add_development_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_development_dependency(%q<webmock>.freeze, [">= 0"])
  else
    s.add_dependency(%q<activesupport>.freeze, [">= 0"])
    s.add_dependency(%q<hashie>.freeze, [">= 0"])
    s.add_dependency(%q<slack-ruby-client>.freeze, [">= 0.14.0"])
    s.add_dependency(%q<rack-test>.freeze, [">= 0"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, [">= 0"])
    s.add_dependency(%q<rubocop>.freeze, ["= 0.80.1"])
    s.add_dependency(%q<vcr>.freeze, [">= 0"])
    s.add_dependency(%q<webmock>.freeze, [">= 0"])
  end
end
