# Minimal_CRUD_Hotwire

* ruby -v (3.1.0)

* rails -v (7.1.0)

### Generate resources:

* rails new Minimal_CRUD_Hotwire -j esbuild -c bootstrap -d=postgresql -T

* bin/rails g scaffold Post title content:text vote:integer

* bin/rails active_storage:install

* bin/rails action_text:install

* bin/rails db:migrate

* bin/rails db:setup
