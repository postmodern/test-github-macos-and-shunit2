#!/usr/bin/env bash

. ./test/helper.sh

test_fixtures_dir="$PWD/test/fixtures"

function setUp()
{
	test_file="$test_fixtures_dir/file.txt"

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
	if [[ -f "$test_file" ]]; then
		echo ">>> Removing test file $test_file ..."
		rm "$test_file"
	fi
}

SHUNIT_PARENT=$0 . $SHUNIT2
