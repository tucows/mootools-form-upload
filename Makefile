# This is a template makefile for a project.  The precise contents are not too important; however, your Makefile *must* have build, package,
# test and regress build targets.  Failure to have these targets will guarantee that your project fails in the CI server.

default:
		@-echo 'No default build target exists.  Use one of: build, test, regress, or package'
		@exit 1

# These are the required targets.  Removing these targets will break your project in the CI system.
# On failure they should exit with a non-zero exit code.

build:
	# your code here - build the project
	@-echo "Nothing to build"
	@exit 0

package: build
	# your code here - package your build
	# If you're using our standard packaging it would look something like
	# fakeroot make-build-deb.pl -n myapp;
	# Change exit 1 to exit 0 when you're done
	@-echo "The package target hasn't been implemented yet."
	@exit 1

test:
	# your code here - kick off your unit test suite
	@-echo "The test target hasn't been implemented yet."
	# Change exit 1 to exit 0 to make it pass
	@exit 1
		
regress:
	# your code here - kick off the package regression test suite
	@-echo "The regress target hasn't been implemented yet."
	@exit 0

pre-install:
	# Optional: Anything you want to do before installing the debian package for your project ?
	@exit 0		

install:
	# your code here - How to install your package
	# For projects that Jenkins builds it would be something like
	# apt-get -q=2 -y --allow-unauthenticated install myapp
	@-echo "The install target hasn't been implemented yet."
	# Change exit 1 to exit 0 when you're done
	@exit 1
