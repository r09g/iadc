#! /usr/bin/env python
import os
import sys

from mflowgen.components import Graph, Step

def construct():

    g = Graph()

    #-----------------------------------------------------------------------
    # Parameters
    #-----------------------------------------------------------------------

    adk_name = 'skywater-130nm-adk'
    adk_view = 'view-standard'

    parameters = {
        'construct_path' : __file__,
        'design_name'    : 'digital_filter',
        'clock_period'   : 195.3125,
        'adk'            : adk_name,
        'adk_view'       : adk_view,
        'topographical'  : True,
        'testbench_name' : 'digital_filter_tb_random'
    }

    #-----------------------------------------------------------------------
    # Create nodes
    #-----------------------------------------------------------------------

    this_dir = os.path.dirname( os.path.abspath( __file__ ) )

    # ADK step

    g.set_adk( adk_name )
    adk = g.get_adk_step()

    # Custom steps

    rtl             = Step( this_dir + '/rtl'                             )
    constraints     = Step( this_dir + '/constraints'                     )
    testbench       = Step( this_dir + '/testbench'                       )

    vcs_sim         = Step( 'synopsys-vcs-sim',              default=True )
    rtl_sim         = vcs_sim.clone()
    rtl_sim.set_name( 'rtl-sim' )

    # Default steps

    info            = Step( 'info',                          default=True )

    #-----------------------------------------------------------------------
    # Graph -- Add nodes
    #-----------------------------------------------------------------------

    g.add_step( info            )
    g.add_step( rtl             )
    g.add_step( testbench       )
    g.add_step( rtl_sim         )
    g.add_step( constraints     )

    # Connect by name
    g.connect_by_name( adk,             testbench       )
    
    g.connect_by_name( rtl,             rtl_sim         )
    g.connect_by_name( testbench,       rtl_sim         )
    






    g.update_params( parameters )

    return g

if __name__ == '__main__':
    g = construct()
    g.plot()
