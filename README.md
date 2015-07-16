# Chef Brigade's Cookbook Template


Whenever a new cookbook is "adopted" by our team, we have a whole bunch of common patterns to apply. Here's a some guidance to common resources, tools, processes and situations.

This is just a guide, it's not a requirement. If it doesn't make sense in your case, that's fine. Feel free to ignore it, or (even better!) update this doc to mention when it doesn't.

Please update this with your thoughts, comments, questions, concerns, and constructive criticism



## File Structure

Examples of:

- `attributes/default.rb`
- `definitions/`
- `doc/credit.md`: for knife-cookbook-doc
- `doc/overview.md`: for knife-cookbook-doc
- `libraries/`
- `libraries/matchers.rb`: ChedSpec matchers for the resources.
- `providers/default.rb`
- `recipes/default.rb`
- `resources/default.rb`
- `templates/default/`
- `test/cookbooks/test_cookbook/`: Sometimes you require another cookbook to properly test your cookbook. For example to test the Resources, LWRPs, or testing custom and complex use cases.
- `test/integration/default/serverspec/Gemfile`: Optional but recommended to ensure the correct version of Serverspec is used.
- `test/integration/default/serverspec/default_spec.rb`: the first test cases you'll write to run under kitchen+serverspec
- `test/integration/default/serverspec/spec_helper.rb`: helper code for kitchen+serverspec tests
- `test/unit/libraries/`: **RSpec** tests for cookbook libraries. Recommended for cookbooks with many and big libraries.
- `test/unit/recipe/default_spec.rb`: ChefSpec tests for recipes, `::default` recipe in this case.
- `test/unit/resources/default_spec.rb`: ChefSpec tests for LWRPs, *default* LWRP in this case. These tests will [step into LWRPs](https://github.com/sethvargo/chefspec#testing-lwrps).
- `test/unit/spec_helper.rb`: Some common RSpec/ChefSpec configuration.
- `.dockerignore`: files docker doesn't need to care about when building the container
- `.foodcritic`: Disable some Foodcritic checks.
- `.gitignore`: files git doesn't need to care about when committing to the repo
- `.chefignore`: files chef doesn't need to care about when packaging the cookbook
- `.inch.yml`: [Inch CI](http://inch-ci.org/) is a site to help you with the documentation process. Mainly recommendations and a badge. Always the same content.
- `.kitchen.yml`: test-kitchen configuration for integration testing
- `.rubocop.yml`: rubocop configuration for linting
- `.travis.yml`: travis-ci config for automated testing
- `.yardopts`: Recommended to generate the documentation in [RubyDoc.info](http://www.rubydoc.info/). Always the same content.
- `Berksfile`: cookbook dependencies
- `CHANGELOG.md`: I like to have the history of changes inside the Git repository.
- `CONTRIBUTING.md`: This will add a link to the file when a contributor opens an issue in GitHub. See [here](https://github.com/blog/1184-contributing-guidelines).
- `Dockerfile`: Deploy the cookbook inside a Docker container.
- `Gemfile`: gem dependencies for development
- `Guardfile`: tasks to run on file change
- `LICENSE`: MIT? apache? ISC?
- `README.md`: Documentation!
- `Rakefile`: tasks to run occasionally
- `Vagrantfile`: Deploy the cookbook using Vagrant.
- `metadata.rb`
 
## Tools

In the documentation, point to resources for:

- [`yard`](http://yardoc.org/): documentation tool to add documentation to the cookbook libraries. See [an example here](https://github.com/onddo/encrypted_attributes-cookbook/blob/master/libraries/encrypted_attributes_helpers.rb) and [the resulting documentation here](http://www.rubydoc.info/github/onddo/encrypted_attributes-cookbook/master/Chef/EncryptedAttributesHelpers).
- [`chef-gen-flavors`](https://github.com/Nordstrom/chef-gen-flavors)
- [`guard`](https://github.com/guard/guard) : runs tests whenever a file is changed
- [`bundler`](http://bundler.io/)
- [`chef generate cookbook`](https://docs.chef.io/ctl_chef.html#chef-generate-cookbook)
- [`chefspec`](http://sethvargo.github.io/chefspec/)
- [`knife cookbook doc`](http://realityforge.org/knife-cookbook-doc/)
- [`rake`](https://github.com/ruby/rake)
- [`rubocop`](http://batsov.com/rubocop/)
- [`serverspec`](http://serverspec.org/): [Chef, Inc recommends it](https://www.chef.io/blog/2015/04/21/overview-of-test-driven-infrastructure-with-chef/):
> However, it is platform specific to Unix/Linux systems that have bash installed, so it does not work on Windows systems. This makes it more difficult to test cross-platform cookbooks, so many users prefer Serverspec. As Serverspec is also the basis of Chef audit mode, it is more widely used, and we recommend Serverspec over BATS for post-convergence testing.
- [`test-kitchen`](http://kitchen.ci/)
- [`travis-ci`](https://travis-ci.com/)

## Processes

In the documentation, describe:

- [ ] installing dependencies
- [ ] running a unit test
- [ ] running an integration test
- [ ] running tests while you develop with guard
- [ ] linting the code
- [ ] building the doc
- [ ] bumping a revision
- [ ] triggering an automated build
- [ ] building a release package
- [ ] publishing a new release
* [ ] how to contribute, general steps and how to create a PR
* [ ] deploy using vagrant
* [ ] deploy using docker

## Situations

In the documentation, provide guidance to:

- [ ] incrementing revisions
- [ ] identifying testable situations and how to automate those tests
- [ ] testing by unit vs integration
- [ ] integrations for logging, process management, metrics, alerting
- [ ] when to require tests for a patch

## Not recomended

These things are ok, and you're not a bad person for using them. In fact, we've used them before. We just prefer other things now.

- `bats`
- [`knife cookbook create`](https://docs.chef.io/knife_cookbook.html#create)
- `berks cookbook`
- `librarian`

## TODO

- implement all this as a skeleton for `chef generate cookbook`
- package skeleton as a flavor gem with `chef-gen-flavors`
- find a way to be compatible with `knife-cookbook-doc`.
- keep common/shared documentation in a seperate repo from the individual cookbooks when reasonable. Maybe a repository called `docs`? or just use `meta` ?
- create a tool to check how close a cookbook is to these recomendations
