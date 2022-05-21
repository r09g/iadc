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
    'design_name'    : 'clock_generator',
    'clock_period'   : 195.3125,
    'adk'            : adk_name,
    'adk_view'       : adk_view,
    'topographical'  : True,
    'testbench_name' : 'clock_generator_tb',
    'saif_instance'  : 'clock_generator_tb/clk_gen_inst',
    'dut_name'       : 'clk_gen_inst'
  }

  #-----------------------------------------------------------------------
  # Create nodes
  #-----------------------------------------------------------------------

  this_dir = os.path.dirname( os.path.abspath( __file__ ) )


  # ADK step

  g.set_adk( adk_name )
  adk = g.get_adk_step()


  # Custom steps

  gl_netlist      = Step( this_dir + '/gl-netlist'                      )
  custom_init     = Step( this_dir + '/custom-init'                     ) 
  custom_flowstep = Step( this_dir + '/custom-flowstep'                 ) 
  power           = Step( this_dir + '/cadence-innovus-power'           ) 
  signoff         = Step( this_dir + '/cadence-innovus-signoff'         ) 
  magic_drc       = Step( this_dir + '/open-magic-drc'                  )
  magic_gds2spice = Step( this_dir + '/open-magic-gds2spice'            )
  netgen_lvs_gds_device = Step( this_dir + '/netgen-lvs-gds-device'     )
  magic_antenna   = Step( this_dir + '/open-magic-antenna'              )


  # Default steps

  info            = Step( 'info',                          default=True )
  iflow           = Step( 'cadence-innovus-flowsetup',     default=True )
  init            = Step( 'cadence-innovus-init',          default=True )
  place           = Step( 'cadence-innovus-place',         default=True )
  route           = Step( 'cadence-innovus-route',         default=True )
  gdsmerge        = Step( 'mentor-calibre-gdsmerge',       default=True )
  
  #-----------------------------------------------------------------------
  # Graph -- Add nodes
  #-----------------------------------------------------------------------

  g.add_step( info            )
  g.add_step( gl_netlist      )
  g.add_step( iflow           )
  g.add_step( init            )
  g.add_step( custom_init     )
  g.add_step( custom_flowstep )
  g.add_step( power           )
  g.add_step( place           )
  g.add_step( route           )
  g.add_step( signoff         )
  g.add_step( gdsmerge        )
  g.add_step( magic_drc       )
  g.add_step( magic_antenna   )
  g.add_step( magic_gds2spice )
  g.add_step( netgen_lvs_gds_device  )

  #-----------------------------------------------------------------------
  # Graph -- Add edges
  #-----------------------------------------------------------------------
  
  # Dynamically add edges
  
  # Add extra input edges to innovus steps that need custom tweaks
  init.extend_inputs ( custom_init.all_outputs()  )
  iflow.extend_inputs ( custom_flowstep.all_outputs()  )
  iflow.extend_inputs ( gl_netlist.all_outputs() )

  # Connect by name

  g.connect_by_name( adk,             iflow           )
  g.connect_by_name( adk,             init            )
  g.connect_by_name( adk,             power           )
  g.connect_by_name( adk,             place           )
  g.connect_by_name( adk,             route           )
  g.connect_by_name( adk,             signoff         )
  g.connect_by_name( adk,             gdsmerge        )
  g.connect_by_name( adk,             magic_drc       )
  g.connect_by_name( adk,             magic_antenna   )
  g.connect_by_name( adk,             magic_gds2spice )
  g.connect_by_name( adk,             netgen_lvs_gds_device  )
  
  g.connect_by_name( gl_netlist,      iflow           )
  g.connect_by_name( gl_netlist,      init            )
  g.connect_by_name( gl_netlist,      power           )
  g.connect_by_name( gl_netlist,      place           )

  g.connect_by_name( iflow,           init            )
  g.connect_by_name( iflow,           power           )
  g.connect_by_name( iflow,           place           )
  g.connect_by_name( iflow,           route           )
  g.connect_by_name( iflow,           signoff         )
  
  # Core place and route flow
  g.connect_by_name( custom_init,     init            )
  g.connect_by_name( custom_flowstep, iflow           )
  
  g.connect_by_name( init,            power           )
  g.connect_by_name( power,           place           )
  g.connect_by_name( place,           route           )
  g.connect_by_name( route,           signoff         )
  g.connect_by_name( signoff,         gdsmerge        )
  
  # DRC, LVS, timing signoff and power signoff
  g.connect_by_name( gdsmerge,        magic_drc       )
  g.connect_by_name( gdsmerge,        magic_antenna   )

  # LVS using GDS
  g.connect_by_name( gdsmerge,        magic_gds2spice )
  g.connect_by_name( signoff,         netgen_lvs_gds_device  )
  g.connect_by_name( magic_gds2spice, netgen_lvs_gds_device  )

  #-----------------------------------------------------------------------
  # Parameterize
  #-----------------------------------------------------------------------

  g.update_params( parameters )

  return g

if __name__ == '__main__':
  g = construct()
  g.plot()
