#!/usr/bin/env /bin/bash

echo "Testing $TRAVIS_BRANCH"
echo

if [[ "$TRAVIS_BRANCH" == "master" || "$TRAVIS_PULL_REQUEST" = "false" ]]; then
	echo "No tests are to be run on master and non-pull requests -- have a nice day!";
	exit 0;
fi

case "$TRAVIS_BRANCH" in
	*) cd "$TRAVIS_BRANCH" || exit 1;;
esac

if [[ -r Makefile ]] ; then
	make test
elif [[ -r test.sh ]] ; then
	bash test.sh
else
	echo "Don't know how to test $TRAVIS_BRANCH"
	exit 1
fi

# vim: set sw=4 sts=4 ts=4 noet :
