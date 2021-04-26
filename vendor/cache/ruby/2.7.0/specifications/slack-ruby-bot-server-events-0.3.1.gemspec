# -*- encoding: utf-8 -*-
# stub: slack-ruby-bot-server-events 0.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "slack-ruby-bot-server-events".freeze
  s.version = "0.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Daniel Doubrovkine".freeze]
  s.date = "2021-02-04"
  s.email = ["dblock@dblock.org".freeze]
  s.homepage = "https://github.com/slack-ruby/slack-ruby-bot-server-events".freeze
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Slack commands, interactive buttons, and events extension for slack-ruby-bot-server.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<slack-ruby-bot-server>.freeze, [">= 0.12.0"])
  else
    s.add_dependency(%q<slack-ruby-bot-server>.freeze, [">= 0.12.0"])
  end
end
