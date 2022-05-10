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
        'testbench_name' : 'digital_filter_tb_random',
        'saif_instance'  : 'digital_filter_tb_random/df_inst',
        'dut_name'       : 'df_inst'
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

    # custom because of pwr and gnd pin naming, and layer numbering
    power           = Step( this_dir + '/cadence-innovus-power'           )

    # custom because need to output def for spice netlist generation from layout
    signoff         = Step( this_dir + '/cadence-innovus-signoff'         ) 

    # custom to change clock gating assertion because design is too simple to
    # meet clock gating percentage
    dc              = Step( this_dir + '/synopsys-dc-synthesis'           )

    vcs_sim         = Step( 'synopsys-vcs-sim',              default=True )
    rtl_sim         = vcs_sim.clone()
    rtl_sim.set_name( 'rtl-sim' )

    # Default steps

    info            = Step( 'info',                          default=True )
    # dc              = Step( 'synopsys-dc-synthesis',         default=True )
    iflow           = Step( 'cadence-innovus-flowsetup',     default=True )
    init            = Step( 'cadence-innovus-init',          default=True )
    place           = Step( 'cadence-innovus-place',         default=True )
    cts             = Step( 'cadence-innovus-cts',           default=True )
    postcts_hold    = Step( 'cadence-innovus-postcts_hold',  default=True )
    route           = Step( 'cadence-innovus-route',         default=True )
    postroute       = Step( 'cadence-innovus-postroute',     default=True )
    gdsmerge        = Step( 'mentor-calibre-gdsmerge',       default=True )

    gen_saif        = Step( 'synopsys-vcd2saif-convert',     default=True )
    gen_saif_rtl    = gen_saif.clone()
    gen_saif_rtl.set_name( 'gen-saif-rtl' )


    #-----------------------------------------------------------------------
    # Graph -- Add nodes
    #-----------------------------------------------------------------------

    g.add_step( info            )
    g.add_step( rtl             )
    g.add_step( testbench       )
    g.add_step( rtl_sim         )
    g.add_step( gen_saif_rtl    )
    g.add_step( constraints     )
    g.add_step( dc              )
    g.add_step( iflow           )
    g.add_step( init            )
    g.add_step( power           )
    g.add_step( place           )
    g.add_step( cts             )
    g.add_step( postcts_hold    )
    g.add_step( route           )
    g.add_step( postroute       )
    g.add_step( signoff         )
    g.add_step( gdsmerge        )


    # Connect by name
    g.connect_by_name( adk,             dc              )
    g.connect_by_name( adk,             testbench       )
    g.connect_by_name( adk,             iflow           )
    g.connect_by_name( adk,             init            )
    g.connect_by_name( adk,             power           )
    g.connect_by_name( adk,             place           )
    g.connect_by_name( adk,             cts             )
    g.connect_by_name( adk,             postcts_hold    )
    g.connect_by_name( adk,             route           )
    g.connect_by_name( adk,             postroute       )
    g.connect_by_name( adk,             signoff         )
    g.connect_by_name( adk,             gdsmerge        )

    g.connect_by_name( rtl,             rtl_sim         )
    g.connect_by_name( testbench,       rtl_sim         )
    g.connect_by_name( rtl_sim,         gen_saif_rtl    )
    
    g.connect_by_name( rtl,             dc              )
    g.connect_by_name( constraints,     dc              )
    g.connect_by_name( gen_saif_rtl,    dc              )

    g.connect_by_name( dc,              iflow           )
    g.connect_by_name( dc,              init            )
    g.connect_by_name( dc,              power           )
    g.connect_by_name( dc,              place           )
    g.connect_by_name( dc,              cts             )

    g.connect_by_name( iflow,           init            )
    g.connect_by_name( iflow,           power           )
    g.connect_by_name( iflow,           place           )
    g.connect_by_name( iflow,           cts             )
    g.connect_by_name( iflow,           postcts_hold    )
    g.connect_by_name( iflow,           route           )
    g.connect_by_name( iflow,           postroute       )
    g.connect_by_name( iflow,           signoff         )

    g.connect_by_name( init,            power           )
    g.connect_by_name( power,           place           )
    g.connect_by_name( place,           cts             )
    g.connect_by_name( cts,             postcts_hold    )
    g.connect_by_name( postcts_hold,    route           )
    g.connect_by_name( route,           postroute       )
    g.connect_by_name( postroute,       signoff         )
    g.connect_by_name( signoff,         gdsmerge        )

    g.update_params( parameters )

    return g

if __name__ == '__main__':
    g = construct()
    g.plot()
