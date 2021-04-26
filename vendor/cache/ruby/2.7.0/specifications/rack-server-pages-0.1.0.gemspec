# -*- encoding: utf-8 -*-
# stub: rack-server-pages 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "rack-server-pages".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Masato Igarashi".freeze, "Daniel Doubrovkine".freeze]
  s.date = "2017-01-05"
  s.description = "Rack middleware and appilcation for serving dynamic pages in very simple way.\n                     There are no controllers and no models, just only views like a asp, jsp and php!".freeze
  s.email = ["m@igrs.jp".freeze]
  s.homepage = "http://github.com/migrs/rack-server-pages".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.1.2".freeze
  s.summary = "Rack middleware and appilcation for serving dynamic pages in very simple way.".freeze

  s.installed_by_version = "3.1.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4
  end

  if s.respond_to? :add_runtime_dependency then
    s.add_runtime_dependency(%q<rack>.freeze, [">= 0"])
  else
    s.add_dependency(%q<rack>.freeze, [">= 0"])
  end
end
