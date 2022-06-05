# Introduction
 This is an example SDF-annotated gate-level simulation with Sky130.
 It uses a modified PDK, called `cvc-pdk`. At this point, we have only run the simulation on the GcdUnit example. Due to the size of the design, it does not covers all of the standard cells, please be prepared for bugs if your design invloves SRAM and standard cells not used in GcdUnit.

# Knobs
The SDF back-annotated simulation passes the INTERCONNECT, CELL DELAY etc., to the simulator.

1. In `max:${testbench_name}.${dut_name}:inputs/design.sdf` on line 38 of the `run.sh` file, the `max` can be changed to `min/typ/max` which stands for different delay corners. The `typ` delay corner does not include any delays (need to debug later). We make `max` the default simualtion option.

# Known bug patterns (in the cvc-pdk)
 Some typical bugs you may encounter in your simulation:

1. Wrong definition of the `notifier`. `notifier` notifies the simulator when a timing violation occurs. It has to be defined as a `reg`. 
One example of the errors in the cvc-pdk is:
```
wire AWAKE, COND0, COND1, RESETB_delayed, notifier, CLKN_delayed, D_delayed, CONDB, SETB_delayed;
```

The correct version is:
```
wire AWAKE, COND0, COND1, RESETB_delayed, CLKN_delayed, D_delayed, CONDB, SETB_delayed;
reg notifier;
```

2. Wrong definition of `wire 1;`.

This occurs once in the simulation, if you encounter it in your design, just comment it out in cvc-pdk.


3. Missing ifdef and endif sections. The specify block has to be conditionally enabled by defining `FUNCTIONAL`. This error usually translates to an undefined module error in vcs simulation if you encounter it. The correction is to include the specify - endspecify block into ifdef endif sections like the following:

```
`ifdef FUNCTIONAL // Add me!
    reg notifier; // if any
    specify 
        if ((!A2_N&!B1&B2)) (A1_N -=> X) = (0:0:0,0:0:0);
        if ((!A2_N&B1&!B2)) (A1_N -=> X) = (0:0:0,0:0:0);
        

        etc...
    endspecify

`endif  // Add me!
```
