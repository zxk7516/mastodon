# frozen_string_literal: true

lock '3.9.1'

set :repo_url, ENV.fetch('REPO', 'https://github.com/tootsuite/mastodon.git')
set :branch, ENV.fetch('BRANCH', 'master')

set :application, 'mastodon'
set :rbenv_type, :user
set :rbenv_ruby, '2.4.1'
set :migration_role, :app

append :linked_files, '.env.production'
append :linked_dirs, 'vendor/bundle', 'public/system'
