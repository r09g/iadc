#! /usr/bin/env mflowgen-python
#-------------------------------------------------------------------------
# mflowgen-check-postconditions.py
#-------------------------------------------------------------------------
# Generated: /home/users/rhyang/ee372/incremental_delta_sigma_adc/mflowgen/mflowgen/assertions/assertion_helpers.py

import pytest
import sys

from mflowgen.assertions import File, Tool

RED   = '[31m'
GREEN = '[92m'
END   = '[0m'


def test_0_():
    assert File( 'outputs/design.v' )

def test_1_():
    assert File( 'outputs/design.sdc' )

def test_2_():
    assert 'error:' not in File( 'logs/dc.log' )

def test_3_():
    assert 'Unresolved references' not in File( 'logs/dc.log' )

def test_4_():
    assert 'Unable to resolve' not in File( 'logs/dc.log' )

def test_5_():
    assert 'Presto compilation terminated' not in File( 'logs/dc.log' )

def test_6_():
    assert 'GTECH' not in File( 'outputs/design.v' )

def test_7_():
    assert 'ELAB-405' not in File( 'logs/dc.log' )

def test_8_():
    assert 'PSYN-024' not in File( 'logs/dc.log' )

def test_9_():
    assert 'PSYN-025' not in File( 'logs/dc.log' )

def test_10_():
    assert 'PSYN-039' not in File( 'logs/dc.log' )

def test_11_():
    assert 'create_clock' in File( 'outputs/design.sdc' )

def test_12_():
    from assertion_helpers import percent_clock_gated, n_regs
    if n_regs() > 100:
      assert percent_clock_gated() > 0.50


def main():

  print()
  print( GREEN + '    > Checking postconditions for step "synopsys-dc-synthesis"' + END )
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

