# -*- encoding: utf-8 -*-
# stub: activeadmin-sortable-tree 0.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "activeadmin-sortable-tree"
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Francesco Disperati"]
  s.date = "2014-11-21"
  s.description = "Show ActiveAdmin index as a nested tree, with drag'n'drop"
  s.email = ["nebirhos@aol.com"]
  s.files = ["MIT-LICENSE", "README.rdoc", "Rakefile", "app/assets", "app/assets/javascripts", "app/assets/javascripts/active_admin", "app/assets/javascripts/active_admin/sortable.js.coffee", "app/assets/stylesheets", "app/assets/stylesheets/active_admin", "app/assets/stylesheets/active_admin/sortable.css.sass", "lib/active_admin", "lib/active_admin/sortable", "lib/active_admin/sortable.rb", "lib/active_admin/sortable/controller_actions.rb", "lib/active_admin/sortable/engine.rb", "lib/active_admin/sortable/version.rb", "lib/active_admin/views", "lib/active_admin/views/index_as_block_decorator.rb", "lib/active_admin/views/index_as_sortable.rb", "lib/activeadmin-sortable-tree.rb", "lib/tasks", "lib/tasks/activeadmin-tree_tasks.rake"]
  s.homepage = "https://github.com/nebirhos/activeadmin-sortable-tree"
  s.rubygems_version = "2.2.2"
  s.summary = "Show ActiveAdmin index as a nested tree, with drag'n'drop"

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.2"])
      s.add_runtime_dependency(%q<activeadmin>, [">= 0"])
      s.add_development_dependency(%q<sqlite3>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.2"])
      s.add_dependency(%q<activeadmin>, [">= 0"])
      s.add_dependency(%q<sqlite3>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.2"])
    s.add_dependency(%q<activeadmin>, [">= 0"])
    s.add_dependency(%q<sqlite3>, [">= 0"])
  end
end
