#!/usr/bin/env bash

. ./test/helper.sh

function setUp()
{
	test_file="$PWD/test/fixtures/file.txt"

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
	rm "$PWD/test/fixtures/file.txt"
}

SHUNIT_PARENT=$0 . $SHUNIT2
