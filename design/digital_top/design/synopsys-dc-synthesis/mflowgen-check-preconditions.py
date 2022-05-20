#! /usr/bin/env mflowgen-python
#-------------------------------------------------------------------------
# mflowgen-check-preconditions.py
#-------------------------------------------------------------------------
# Generated: /home/users/rhyang/ee372/incremental_delta_sigma_adc/mflowgen/mflowgen/assertions/assertion_helpers.py

import pytest
import sys

from mflowgen.assertions import File, Tool

RED   = '[31m'
GREEN = '[92m'
END   = '[0m'


def test_0_():
    assert Tool( 'dc_shell-xg-t' )

def test_1_():
    assert File( 'inputs/adk' )

def test_2_():
    assert File( 'inputs/design.v' )

def test_3_():
    assert File( 'inputs/constraints.tcl' )


def main():

  print()
  print( GREEN + '    > Checking preconditions for step "synopsys-dc-synthesis"' + END )
  print()

  files        = [ __file__,  ]
  exit_status  = []

  for f in files:

    # Options for short clean printout:
    #
    # - q         : quiet and short
    # - rA        : print one line per pass/fail test in the short test
    #             :   summary info
    # - tb=short  : shorter traceback printout
    # - color=yes : color
    #

    pytest_args = [ '-q', '-rA', '--disable-warnings',
                    '--tb=short', '--color=yes', '--noconftest', f ]
    print( 'pytest ' + ' '.join( pytest_args ) )
    status = pytest.main( pytest_args )
    exit_status.append( status )
    print()

  # Exit with an error if any test has failed

  if any( exit_status ):
    sys.exit( 1 )

if __name__ == '__main__':
  main()

