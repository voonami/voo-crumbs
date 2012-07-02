# Voonami::Crumbs

A rails extension to allow simple generation of breadcrumbs.

## Installation

*For now we don't see this as generally useful, so the only way to install is
from the git repo*.

Add this line to your application's Gemfile:

``` ruby
gem 'voo-crumbs', git: "https://github.com/Thinkatomic/voo-crumbs", tag: "v1.0.0"
```

And then execute:

``` console
$ bundle
```

Or install it yourself as:

``` console
$ gem install voo-crumbs
```

## Usage

Simply call `drop_crumb` to add a path and caption to your rails app. I use it like
this:

``` ruby
# /app/controllers/application_controller.rb

class ApplicationController < ActionController::Base
  drop_crumb "Home", :root_path
  # ...
end
```

``` ruby
# /app/controllers/accounts_controller.rb
class AccountsController < ApplicationController
  drop_crumb "Accounts", :accounts_path

  def index
    # Code ...
  end

  def show
    # Code ...
    drop_crumb @account.name, account_path(@account)
  end
end
```

Then use it in `app/layouts/application.html.erb` with something like this (note
that `breadcrumbs` is a helper method added by Voonami::Crumbs):

``` erb
<div class="breadcrumbs">
  <% breadcrumbs.each do |caption, url| %>
    <%= link_to caption, url %> -->
  <% end %>
</div>
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
