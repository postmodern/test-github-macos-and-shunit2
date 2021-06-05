#!/usr/bin/env bash

. ./test/helper.sh

echo "OS: $os"
echo

function test_only_on_macos()
{
	[[ "$os" == *Darwin ]] || return

	assertEquals "not running on macOS" "Darwin" "$os"
}

function test_only_on_linux()
{
	[[ "$os" == Linux ]] || return

	assertEquals "not running on Linux" "Linux" "$os"
}

SHUNIT_PARENT=$0 . $SHUNIT2
