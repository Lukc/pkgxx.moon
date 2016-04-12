
fs = require "pkgxx.fs"
ui = require "pkgxx.ui"

{
	-- FIXME: We need to invest a lot of work in updating that configuration.
	makeRepository: =>
		ui.info "Building yum repository."

		os.execute "createrepo '.'"

	addToRepository: (package) =>
		ui.info "Adding '#{package.target}' to repository."

		os.execute "createrepo --update ."
}

