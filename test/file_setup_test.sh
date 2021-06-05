#!/usr/bin/env bash

. ./test/helper.sh

test_fixtures_dir="$PWD/test/fixtures"


function print_state()
{
	echo -e "PWD:\t\t\t$PWD"
	echo -e "test_fixtures_dir:\t$test_fixtures_dir"
	echo -e "test_file:\t\t$test_file"
	echo "test/fixtures:"
	ls -a "$test_fixtures_dir"
}

function setUp()
{
	test_file="$test_fixtures_dir/file.txt"

	print_state

	echo ">>> Creating test file $test_file ..."
	echo "test file" > "$test_file"
}

function test_file_creation()
{
	assertTrue "did not create $test_file" '[[ -f "$test_file" ]]'
	assertEquals "did not write to $test_file" "test file" \
		                                   "$(cat "$test_file")"
}

function tearDown()
{
	echo ">>> Removing test file $test_file ..."
	rm "$test_file"

	print_state
}

SHUNIT_PARENT=$0 . $SHUNIT2
