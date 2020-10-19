# mean2verilog
Create Verilog and VHDL adder tree followed by divider to calculate 1 mean per clock cycle

## Generate and Simulate Verilog

```
> mean2verilog.py 128 > mean128.v
> iverilog mean128.v tb_mean128.v
> a.out
> gtkwave tb_mean.vcd
```

## Generate and Simulate VHDL

```
> First, generate the mean128.v verilog (see above)
> v2vhd.py mean128.v mean128.vhd > mean128.vhd
> ghdl -a --std=08 mean128.vhd tb_mean128.vhd
> ghdl -e --std=08 tb
> ghdl -r  --std=08 tb --vcd=waves.vcd
> gtkwave waves.vcd
```





