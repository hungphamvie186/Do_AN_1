transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src {D:/CTMT/Milstone2/singlecycle/00_src/singlecycle.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src {D:/CTMT/Milstone2/singlecycle/00_src/pc_reg.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src {D:/CTMT/Milstone2/singlecycle/00_src/pc_plus4.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src {D:/CTMT/Milstone2/singlecycle/00_src/immGen.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src {D:/CTMT/Milstone2/singlecycle/00_src/controlunit.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/regfile {D:/CTMT/Milstone2/singlecycle/00_src/regfile/register.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/regfile {D:/CTMT/Milstone2/singlecycle/00_src/regfile/MUX2.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/regfile {D:/CTMT/Milstone2/singlecycle/00_src/regfile/MUX.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/regfile {D:/CTMT/Milstone2/singlecycle/00_src/regfile/decoder_5to32.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/sram_IS61WV25616_controller_32b_3lr.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/register_nor.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/register_byte_word.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/output_buffer.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/out_mux.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/mux_4to1.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/LSU.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/input_buffer.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/decoder_2to4.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src {D:/CTMT/Milstone2/singlecycle/00_src/LSU/00_src/decode_buf.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src {D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src/mux_2to1.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src {D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src/cla_32bit.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src {D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src/cla_4bit.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src {D:/CTMT/Milstone2/singlecycle/00_src/BRC/00_src/BRC.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/xor_32bit.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/subtractor.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/sra.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/sltu.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/slt.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/slr.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/sll.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/or_32bit.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/full_adder.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/and_32bit.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/alu.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/alu {D:/CTMT/Milstone2/singlecycle/00_src/alu/adder.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/04_kit/output_files {D:/CTMT/Milstone2/singlecycle/04_kit/output_files/wrapper.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src {D:/CTMT/Milstone2/singlecycle/00_src/imem.sv}
vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/00_src/regfile {D:/CTMT/Milstone2/singlecycle/00_src/regfile/regfile.sv}

vlog -sv -work work +incdir+D:/CTMT/Milstone2/singlecycle/04_kit/../01_tb {D:/CTMT/Milstone2/singlecycle/04_kit/../01_tb/testbench.sv}

vsim -t 1ps -L altera_ver -L lpm_ver -L sgate_ver -L altera_mf_ver -L altera_lnsim_ver -L cycloneii_ver -L rtl_work -L work -voptargs="+acc"  wrapper

add wave *
view structure
view signals
run -all
