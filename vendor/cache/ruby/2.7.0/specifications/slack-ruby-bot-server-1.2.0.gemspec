# -*- encoding: utf-8 -*-
# stub: slack-ruby-bot-server 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "slack-ruby-bot-server".freeze
  s.version = "1.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Doubrovkine".freeze]
  s.date = "2020-11-28"
  s.email = ["dblock@dblock.org".freeze]
  s.homepage = "https://github.com/slack-ruby/slack-ruby-bot-server".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "A Grape API serving a Slack bot to multiple teams.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<async>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<foreman>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<grape>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<grape-roar>.freeze, [">= 0.4.0"])
    s.add_runtime_dependency(%q<grape-swagger>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<kaminari-grape>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rack-cors>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rack-rewrite>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<rack-server-pages>.freeze, [">= 0"])
    s.add_runtime_dependency(%q<slack-ruby-client>.freeze, [">= 0"])
  else
    s.add_dependency(%q<async>.freeze, [">= 0"])
    s.add_dependency(%q<foreman>.freeze, [">= 0"])
    s.add_dependency(%q<grape>.freeze, [">= 0"])
    s.add_dependency(%q<grape-roar>.freeze, [">= 0.4.0"])
    s.add_dependency(%q<grape-swagger>.freeze, [">= 0"])
    s.add_dependency(%q<kaminari-grape>.freeze, [">= 0"])
    s.add_dependency(%q<rack-cors>.freeze, [">= 0"])
    s.add_dependency(%q<rack-rewrite>.freeze, [">= 0"])
    s.add_dependency(%q<rack-server-pages>.freeze, [">= 0"])
    s.add_dependency(%q<slack-ruby-client>.freeze, [">= 0"])
  end
end
