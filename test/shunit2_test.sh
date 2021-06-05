#!/usr/bin/env bash

. ./test/helper.sh

function test_shunit2()
{
	assertEquals "shunit2 works" 'test' 'test'
}

SHUNIT_PARENT=$0 . $SHUNIT2
