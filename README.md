redmine_hide_versions
=====================

This Redmine plugin allows you to hide specific "versions" from reports and menus.

## Installing this plugin into Redmine

More info from Redmine [here](http://www.redmine.org/projects/redmine/wiki/Plugins)

1. Download this plugin
2. Move it into your Redmine installation's plugins directory: `<redmine-install-dir>/htdocs/plugins`
3. Run the small migration: `rake redmine:plugins:migrate RAILS_ENV=production`
4. Restart Redmine

You should now be able to see the plugin list in Administration -> Plugins.

## How to use this plugin

1. Login to Redmine using an administrator account.
2. Go to the settings page of a project.
3. Choose the "Versions" tab.
4. Edit a particular version.
5. Use the checkbox "Hidden" to show or hide that version.

## Uninstalling this plugin from Redmine

1. Remove the small migration: `rake redmine:plugins:migrate NAME=redmine_hide_versions VERSION=0 RAILS_ENV=production`
2. Remove the plugin code: `rm -r <redmine-install-dir>/htdocs/plugins/redmine_hide_versions`
3. Restart Redmine

The plugin should now be gone from the plugin list in Administration -> Plugins.
