-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Wed Apr 07 19:08:31 2021
-- Host        : Chaim running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_cnn_pool_d28x28_p2x2_0_0_sim_netlist.vhdl
-- Design      : design_1_cnn_pool_d28x28_p2x2_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg484-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2_CTRL_s_axi is
  port (
    s_axi_CTRL_RVALID : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \ap_CS_fsm_reg[0]\ : out STD_LOGIC;
    interrupt : out STD_LOGIC;
    \x_reg_289_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    ap_enable_reg_pp0_iter1_reg : out STD_LOGIC;
    ap_enable_reg_pp0_iter0_reg : out STD_LOGIC;
    \ctrl_read_reg_890_reg[0]\ : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \outStream_V_user_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \outStream_V_keep_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \outStream_V_strb_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \outStream_V_dest_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \outStream_V_id_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \outStream_V_last_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \outStream_V_data_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    ap_enable_reg_pp0_iter0_reg_0 : in STD_LOGIC;
    \inStream_V_data_V_0_state_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \exitcond1_reg_895_reg[0]\ : in STD_LOGIC;
    \x_reg_289_reg[1]\ : in STD_LOGIC;
    p_76_in : in STD_LOGIC;
    ap_enable_reg_pp0_iter0 : in STD_LOGIC;
    ctrl_read_reg_890 : in STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2_CTRL_s_axi;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2_CTRL_s_axi is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^ap_cs_fsm_reg[0]\ : STD_LOGIC;
  signal ap_done : STD_LOGIC;
  signal ap_start : STD_LOGIC;
  signal ar_hs : STD_LOGIC;
  signal ctrl : STD_LOGIC_VECTOR ( 0 to 0 );
  signal int_ap_done : STD_LOGIC;
  signal int_ap_done_i_1_n_0 : STD_LOGIC;
  signal int_ap_start3_out : STD_LOGIC;
  signal int_ap_start_i_1_n_0 : STD_LOGIC;
  signal int_auto_restart : STD_LOGIC;
  signal int_auto_restart_i_1_n_0 : STD_LOGIC;
  signal \int_ctrl[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[10]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[11]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[12]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[13]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[14]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[15]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[16]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[17]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[18]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[19]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[20]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[21]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[22]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[23]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[24]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[25]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[26]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[27]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[28]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[29]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[2]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[30]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[31]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[31]_i_2_n_0\ : STD_LOGIC;
  signal \int_ctrl[31]_i_3_n_0\ : STD_LOGIC;
  signal \int_ctrl[3]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[4]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[5]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[6]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[7]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[8]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl[9]_i_1_n_0\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[10]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[11]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[12]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[13]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[14]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[15]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[16]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[17]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[18]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[19]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[1]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[20]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[21]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[22]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[23]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[24]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[25]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[26]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[27]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[28]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[29]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[2]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[30]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[31]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[3]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[4]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[5]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[6]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[7]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[8]\ : STD_LOGIC;
  signal \int_ctrl_reg_n_0_[9]\ : STD_LOGIC;
  signal int_gie_i_1_n_0 : STD_LOGIC;
  signal int_gie_reg_n_0 : STD_LOGIC;
  signal \int_ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_ier[1]_i_2_n_0\ : STD_LOGIC;
  signal \int_ier_reg_n_0_[0]\ : STD_LOGIC;
  signal int_isr6_out : STD_LOGIC;
  signal \int_isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \int_isr_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal rdata : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \rdata[0]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[0]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[1]_i_3_n_0\ : STD_LOGIC;
  signal \rdata[31]_i_1_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_2_n_0\ : STD_LOGIC;
  signal \rdata[7]_i_3_n_0\ : STD_LOGIC;
  signal \rstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_ctrl_rvalid\ : STD_LOGIC;
  signal waddr : STD_LOGIC;
  signal \waddr_reg_n_0_[0]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[1]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[2]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[3]\ : STD_LOGIC;
  signal \waddr_reg_n_0_[4]\ : STD_LOGIC;
  signal wstate : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \wstate[0]_i_1_n_0\ : STD_LOGIC;
  signal \wstate[1]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_ap_start_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of int_ap_start_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \int_ctrl[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_ctrl[10]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_ctrl[11]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \int_ctrl[12]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_ctrl[13]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \int_ctrl[14]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_ctrl[15]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \int_ctrl[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_ctrl[17]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \int_ctrl[18]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_ctrl[19]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \int_ctrl[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \int_ctrl[20]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_ctrl[21]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \int_ctrl[22]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_ctrl[23]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \int_ctrl[24]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_ctrl[25]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \int_ctrl[26]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_ctrl[27]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \int_ctrl[28]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_ctrl[29]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \int_ctrl[2]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_ctrl[30]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_ctrl[31]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \int_ctrl[31]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \int_ctrl[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \int_ctrl[4]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_ctrl[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \int_ctrl[6]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_ctrl[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \int_ctrl[8]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_ctrl[9]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \int_isr[0]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \rdata[7]_i_2\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rdata[7]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \rstate[0]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_axi_CTRL_ARREADY_INST_0 : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of s_axi_CTRL_AWREADY_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of s_axi_CTRL_BVALID_INST_0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of s_axi_CTRL_WREADY_INST_0 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \wstate[0]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \wstate[1]_i_1\ : label is "soft_lutpair4";
begin
  SR(0) <= \^sr\(0);
  \ap_CS_fsm_reg[0]\ <= \^ap_cs_fsm_reg[0]\;
  s_axi_CTRL_RVALID <= \^s_axi_ctrl_rvalid\;
\ap_CS_fsm[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_done,
      I1 => ap_start,
      I2 => Q(0),
      O => D(0)
    );
\ap_CS_fsm[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => ap_enable_reg_pp0_iter0_reg_0,
      I3 => Q(1),
      O => D(1)
    );
ap_enable_reg_pp0_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EA00EA000000EA00"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => ap_start,
      I2 => Q(0),
      I3 => ap_rst_n,
      I4 => p_76_in,
      I5 => \x_reg_289_reg[1]\,
      O => ap_enable_reg_pp0_iter0_reg
    );
ap_enable_reg_pp0_iter1_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => \x_reg_289_reg[1]\,
      I1 => p_76_in,
      I2 => Q(0),
      I3 => ap_start,
      I4 => ap_enable_reg_pp0_iter1,
      O => ap_enable_reg_pp0_iter1_reg
    );
\ctrl_read_reg_890[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BF80"
    )
        port map (
      I0 => ctrl(0),
      I1 => ap_start,
      I2 => Q(0),
      I3 => ctrl_read_reg_890,
      O => \ctrl_read_reg_890_reg[0]\
    );
\inStream_V_dest_V_0_state[1]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => ap_rst_n,
      O => \^sr\(0)
    );
int_ap_done_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFFFFFAAAAAAAA"
    )
        port map (
      I0 => ap_done,
      I1 => \rdata[7]_i_3_n_0\,
      I2 => s_axi_CTRL_ARVALID,
      I3 => \^s_axi_ctrl_rvalid\,
      I4 => ap_rst_n,
      I5 => int_ap_done,
      O => int_ap_done_i_1_n_0
    );
int_ap_done_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_done_i_1_n_0,
      Q => int_ap_done,
      R => \^sr\(0)
    );
int_ap_start_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FBF8"
    )
        port map (
      I0 => int_auto_restart,
      I1 => ap_done,
      I2 => int_ap_start3_out,
      I3 => ap_start,
      O => int_ap_start_i_1_n_0
    );
int_ap_start_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => \waddr_reg_n_0_[2]\,
      I2 => s_axi_CTRL_WSTRB(0),
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_ier[1]_i_2_n_0\,
      O => int_ap_start3_out
    );
int_ap_start_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_ap_start_i_1_n_0,
      Q => ap_start,
      R => \^sr\(0)
    );
int_auto_restart_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFF00000200"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(7),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => s_axi_CTRL_WSTRB(0),
      I4 => \waddr_reg_n_0_[2]\,
      I5 => int_auto_restart,
      O => int_auto_restart_i_1_n_0
    );
int_auto_restart_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_auto_restart_i_1_n_0,
      Q => int_auto_restart,
      R => \^sr\(0)
    );
\int_ctrl[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => ctrl(0),
      O => \int_ctrl[0]_i_1_n_0\
    );
\int_ctrl[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(10),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[10]\,
      O => \int_ctrl[10]_i_1_n_0\
    );
\int_ctrl[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(11),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[11]\,
      O => \int_ctrl[11]_i_1_n_0\
    );
\int_ctrl[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(12),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[12]\,
      O => \int_ctrl[12]_i_1_n_0\
    );
\int_ctrl[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(13),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[13]\,
      O => \int_ctrl[13]_i_1_n_0\
    );
\int_ctrl[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(14),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[14]\,
      O => \int_ctrl[14]_i_1_n_0\
    );
\int_ctrl[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(15),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[15]\,
      O => \int_ctrl[15]_i_1_n_0\
    );
\int_ctrl[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(16),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[16]\,
      O => \int_ctrl[16]_i_1_n_0\
    );
\int_ctrl[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(17),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[17]\,
      O => \int_ctrl[17]_i_1_n_0\
    );
\int_ctrl[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(18),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[18]\,
      O => \int_ctrl[18]_i_1_n_0\
    );
\int_ctrl[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(19),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[19]\,
      O => \int_ctrl[19]_i_1_n_0\
    );
\int_ctrl[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(1),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \int_ctrl_reg_n_0_[1]\,
      O => \int_ctrl[1]_i_1_n_0\
    );
\int_ctrl[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(20),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[20]\,
      O => \int_ctrl[20]_i_1_n_0\
    );
\int_ctrl[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(21),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[21]\,
      O => \int_ctrl[21]_i_1_n_0\
    );
\int_ctrl[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(22),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[22]\,
      O => \int_ctrl[22]_i_1_n_0\
    );
\int_ctrl[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(23),
      I1 => s_axi_CTRL_WSTRB(2),
      I2 => \int_ctrl_reg_n_0_[23]\,
      O => \int_ctrl[23]_i_1_n_0\
    );
\int_ctrl[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(24),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[24]\,
      O => \int_ctrl[24]_i_1_n_0\
    );
\int_ctrl[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(25),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[25]\,
      O => \int_ctrl[25]_i_1_n_0\
    );
\int_ctrl[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(26),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[26]\,
      O => \int_ctrl[26]_i_1_n_0\
    );
\int_ctrl[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(27),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[27]\,
      O => \int_ctrl[27]_i_1_n_0\
    );
\int_ctrl[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(28),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[28]\,
      O => \int_ctrl[28]_i_1_n_0\
    );
\int_ctrl[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(29),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[29]\,
      O => \int_ctrl[29]_i_1_n_0\
    );
\int_ctrl[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(2),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \int_ctrl_reg_n_0_[2]\,
      O => \int_ctrl[2]_i_1_n_0\
    );
\int_ctrl[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(30),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[30]\,
      O => \int_ctrl[30]_i_1_n_0\
    );
\int_ctrl[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0004"
    )
        port map (
      I0 => \waddr_reg_n_0_[3]\,
      I1 => \waddr_reg_n_0_[4]\,
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \int_ctrl[31]_i_3_n_0\,
      O => \int_ctrl[31]_i_1_n_0\
    );
\int_ctrl[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(31),
      I1 => s_axi_CTRL_WSTRB(3),
      I2 => \int_ctrl_reg_n_0_[31]\,
      O => \int_ctrl[31]_i_2_n_0\
    );
\int_ctrl[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFDF"
    )
        port map (
      I0 => s_axi_CTRL_WVALID,
      I1 => wstate(1),
      I2 => wstate(0),
      I3 => \waddr_reg_n_0_[1]\,
      I4 => \waddr_reg_n_0_[0]\,
      O => \int_ctrl[31]_i_3_n_0\
    );
\int_ctrl[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(3),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \int_ctrl_reg_n_0_[3]\,
      O => \int_ctrl[3]_i_1_n_0\
    );
\int_ctrl[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(4),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \int_ctrl_reg_n_0_[4]\,
      O => \int_ctrl[4]_i_1_n_0\
    );
\int_ctrl[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(5),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \int_ctrl_reg_n_0_[5]\,
      O => \int_ctrl[5]_i_1_n_0\
    );
\int_ctrl[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(6),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \int_ctrl_reg_n_0_[6]\,
      O => \int_ctrl[6]_i_1_n_0\
    );
\int_ctrl[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(7),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \int_ctrl_reg_n_0_[7]\,
      O => \int_ctrl[7]_i_1_n_0\
    );
\int_ctrl[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(8),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[8]\,
      O => \int_ctrl[8]_i_1_n_0\
    );
\int_ctrl[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(9),
      I1 => s_axi_CTRL_WSTRB(1),
      I2 => \int_ctrl_reg_n_0_[9]\,
      O => \int_ctrl[9]_i_1_n_0\
    );
\int_ctrl_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[0]_i_1_n_0\,
      Q => ctrl(0),
      R => \^sr\(0)
    );
\int_ctrl_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[10]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[10]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[11]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[11]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[12]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[12]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[13]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[13]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[14]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[14]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[15]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[15]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[16]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[16]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[17]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[17]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[18]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[18]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[19]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[19]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[1]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[1]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[20]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[20]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[21]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[21]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[22]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[22]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[23]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[23]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[24]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[24]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[25]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[25]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[26]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[26]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[27]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[27]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[28]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[28]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[29]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[29]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[2]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[2]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[30]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[30]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[31]_i_2_n_0\,
      Q => \int_ctrl_reg_n_0_[31]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[3]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[4]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[4]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[5]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[5]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[6]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[6]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[7]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[7]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[8]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[8]\,
      R => \^sr\(0)
    );
\int_ctrl_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \int_ctrl[31]_i_1_n_0\,
      D => \int_ctrl[9]_i_1_n_0\,
      Q => \int_ctrl_reg_n_0_[9]\,
      R => \^sr\(0)
    );
int_gie_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFFFFFF02000000"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => \int_ier[1]_i_2_n_0\,
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \waddr_reg_n_0_[2]\,
      I4 => s_axi_CTRL_WSTRB(0),
      I5 => int_gie_reg_n_0,
      O => int_gie_i_1_n_0
    );
int_gie_reg: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => int_gie_i_1_n_0,
      Q => int_gie_reg_n_0,
      R => \^sr\(0)
    );
\int_ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_ier[1]_i_2_n_0\,
      I5 => \int_ier_reg_n_0_[0]\,
      O => \int_ier[0]_i_1_n_0\
    );
\int_ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFF00000800"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(1),
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \waddr_reg_n_0_[2]\,
      I3 => \waddr_reg_n_0_[3]\,
      I4 => \int_ier[1]_i_2_n_0\,
      I5 => p_0_in,
      O => \int_ier[1]_i_1_n_0\
    );
\int_ier[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \waddr_reg_n_0_[4]\,
      I1 => \waddr_reg_n_0_[0]\,
      I2 => \waddr_reg_n_0_[1]\,
      I3 => wstate(0),
      I4 => wstate(1),
      I5 => s_axi_CTRL_WVALID,
      O => \int_ier[1]_i_2_n_0\
    );
\int_ier_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[0]_i_1_n_0\,
      Q => \int_ier_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_ier_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_ier[1]_i_1_n_0\,
      Q => p_0_in,
      R => \^sr\(0)
    );
\int_isr[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(0),
      I1 => int_isr6_out,
      I2 => ap_done,
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \int_isr[0]_i_1_n_0\
    );
\int_isr[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \waddr_reg_n_0_[2]\,
      I1 => s_axi_CTRL_WSTRB(0),
      I2 => \waddr_reg_n_0_[3]\,
      I3 => \int_ier[1]_i_2_n_0\,
      O => int_isr6_out
    );
\int_isr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F777F888"
    )
        port map (
      I0 => s_axi_CTRL_WDATA(1),
      I1 => int_isr6_out,
      I2 => ap_done,
      I3 => p_0_in,
      I4 => p_1_in,
      O => \int_isr[1]_i_1_n_0\
    );
\int_isr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[0]_i_1_n_0\,
      Q => \int_isr_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\int_isr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \int_isr[1]_i_1_n_0\,
      Q => p_1_in,
      R => \^sr\(0)
    );
interrupt_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => int_gie_reg_n_0,
      I1 => p_1_in,
      I2 => \int_isr_reg_n_0_[0]\,
      O => interrupt
    );
\rdata[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0F8F0F8F008F0088"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(4),
      I1 => ctrl(0),
      I2 => \rdata[0]_i_2_n_0\,
      I3 => \rdata[7]_i_2_n_0\,
      I4 => ap_start,
      I5 => \rdata[0]_i_3_n_0\,
      O => rdata(0)
    );
\rdata[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCEECEE"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(3),
      I1 => \rdata[1]_i_3_n_0\,
      I2 => \rdata[7]_i_2_n_0\,
      I3 => \int_ier_reg_n_0_[0]\,
      I4 => \int_isr_reg_n_0_[0]\,
      O => \rdata[0]_i_2_n_0\
    );
\rdata[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFEAAAA"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(3),
      I1 => s_axi_CTRL_ARADDR(0),
      I2 => s_axi_CTRL_ARADDR(1),
      I3 => s_axi_CTRL_ARADDR(2),
      I4 => int_gie_reg_n_0,
      O => \rdata[0]_i_3_n_0\
    );
\rdata[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => \rdata[1]_i_2_n_0\,
      I1 => \rdata[7]_i_2_n_0\,
      I2 => s_axi_CTRL_ARADDR(4),
      I3 => \int_ctrl_reg_n_0_[1]\,
      O => rdata(1)
    );
\rdata[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3000BABA30008A8A"
    )
        port map (
      I0 => int_ap_done,
      I1 => \rdata[1]_i_3_n_0\,
      I2 => s_axi_CTRL_ARADDR(3),
      I3 => p_1_in,
      I4 => \rdata[7]_i_2_n_0\,
      I5 => p_0_in,
      O => \rdata[1]_i_2_n_0\
    );
\rdata[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(4),
      I1 => s_axi_CTRL_ARADDR(1),
      I2 => s_axi_CTRL_ARADDR(0),
      O => \rdata[1]_i_3_n_0\
    );
\rdata[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"20FF202020202020"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => \rdata[7]_i_3_n_0\,
      I3 => \rdata[7]_i_2_n_0\,
      I4 => s_axi_CTRL_ARADDR(4),
      I5 => \int_ctrl_reg_n_0_[2]\,
      O => rdata(2)
    );
\rdata[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFD00000000"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(4),
      I1 => s_axi_CTRL_ARADDR(3),
      I2 => s_axi_CTRL_ARADDR(0),
      I3 => s_axi_CTRL_ARADDR(1),
      I4 => s_axi_CTRL_ARADDR(2),
      I5 => ar_hs,
      O => \rdata[31]_i_1_n_0\
    );
\rdata[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s_axi_CTRL_ARVALID,
      I1 => \^s_axi_ctrl_rvalid\,
      I2 => ap_rst_n,
      O => ar_hs
    );
\rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF404040"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => s_axi_CTRL_ARADDR(4),
      I2 => \int_ctrl_reg_n_0_[3]\,
      I3 => \rdata[7]_i_3_n_0\,
      I4 => ap_done,
      O => rdata(3)
    );
\rdata[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => Q(2),
      I1 => \^ap_cs_fsm_reg[0]\,
      I2 => \outStream_V_user_V_1_state_reg[1]\(0),
      I3 => \outStream_V_keep_V_1_state_reg[1]\(0),
      I4 => \outStream_V_strb_V_1_state_reg[1]\(0),
      O => ap_done
    );
\rdata[3]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \outStream_V_dest_V_1_state_reg[1]\(0),
      I1 => \outStream_V_id_V_1_state_reg[1]\(0),
      I2 => \outStream_V_last_V_1_state_reg[1]\(0),
      I3 => \outStream_V_data_V_1_state_reg[1]\(0),
      O => \^ap_cs_fsm_reg[0]\
    );
\rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF404040"
    )
        port map (
      I0 => \rdata[7]_i_2_n_0\,
      I1 => s_axi_CTRL_ARADDR(4),
      I2 => \int_ctrl_reg_n_0_[7]\,
      I3 => \rdata[7]_i_3_n_0\,
      I4 => int_auto_restart,
      O => rdata(7)
    );
\rdata[7]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFF8"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(3),
      I1 => s_axi_CTRL_ARADDR(4),
      I2 => s_axi_CTRL_ARADDR(0),
      I3 => s_axi_CTRL_ARADDR(1),
      I4 => s_axi_CTRL_ARADDR(2),
      O => \rdata[7]_i_2_n_0\
    );
\rdata[7]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => s_axi_CTRL_ARADDR(0),
      I1 => s_axi_CTRL_ARADDR(1),
      I2 => s_axi_CTRL_ARADDR(4),
      I3 => s_axi_CTRL_ARADDR(3),
      I4 => s_axi_CTRL_ARADDR(2),
      O => \rdata[7]_i_3_n_0\
    );
\rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(0),
      Q => s_axi_CTRL_RDATA(0),
      R => '0'
    );
\rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[10]\,
      Q => s_axi_CTRL_RDATA(10),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[11]\,
      Q => s_axi_CTRL_RDATA(11),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[12]\,
      Q => s_axi_CTRL_RDATA(12),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[13]\,
      Q => s_axi_CTRL_RDATA(13),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[14]\,
      Q => s_axi_CTRL_RDATA(14),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[15]\,
      Q => s_axi_CTRL_RDATA(15),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[16]\,
      Q => s_axi_CTRL_RDATA(16),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[17]\,
      Q => s_axi_CTRL_RDATA(17),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[18]\,
      Q => s_axi_CTRL_RDATA(18),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[19]\,
      Q => s_axi_CTRL_RDATA(19),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(1),
      Q => s_axi_CTRL_RDATA(1),
      R => '0'
    );
\rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[20]\,
      Q => s_axi_CTRL_RDATA(20),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[21]\,
      Q => s_axi_CTRL_RDATA(21),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[22]\,
      Q => s_axi_CTRL_RDATA(22),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[23]\,
      Q => s_axi_CTRL_RDATA(23),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[24]\,
      Q => s_axi_CTRL_RDATA(24),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[25]\,
      Q => s_axi_CTRL_RDATA(25),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[26]\,
      Q => s_axi_CTRL_RDATA(26),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[27]\,
      Q => s_axi_CTRL_RDATA(27),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[28]\,
      Q => s_axi_CTRL_RDATA(28),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[29]\,
      Q => s_axi_CTRL_RDATA(29),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(2),
      Q => s_axi_CTRL_RDATA(2),
      R => '0'
    );
\rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[30]\,
      Q => s_axi_CTRL_RDATA(30),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[31]\,
      Q => s_axi_CTRL_RDATA(31),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(3),
      Q => s_axi_CTRL_RDATA(3),
      R => '0'
    );
\rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[4]\,
      Q => s_axi_CTRL_RDATA(4),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[5]\,
      Q => s_axi_CTRL_RDATA(5),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[6]\,
      Q => s_axi_CTRL_RDATA(6),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => rdata(7),
      Q => s_axi_CTRL_RDATA(7),
      R => '0'
    );
\rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[8]\,
      Q => s_axi_CTRL_RDATA(8),
      R => \rdata[31]_i_1_n_0\
    );
\rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => ar_hs,
      D => \int_ctrl_reg_n_0_[9]\,
      Q => s_axi_CTRL_RDATA(9),
      R => \rdata[31]_i_1_n_0\
    );
\rstate[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"3A"
    )
        port map (
      I0 => s_axi_CTRL_ARVALID,
      I1 => s_axi_CTRL_RREADY,
      I2 => \^s_axi_ctrl_rvalid\,
      O => \rstate[0]_i_1_n_0\
    );
\rstate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \rstate[0]_i_1_n_0\,
      Q => \^s_axi_ctrl_rvalid\,
      R => \^sr\(0)
    );
s_axi_CTRL_ARREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_rst_n,
      I1 => \^s_axi_ctrl_rvalid\,
      O => s_axi_CTRL_ARREADY
    );
s_axi_CTRL_AWREADY_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => wstate(0),
      I1 => ap_rst_n,
      I2 => wstate(1),
      O => s_axi_CTRL_AWREADY
    );
s_axi_CTRL_BVALID_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wstate(1),
      I1 => wstate(0),
      O => s_axi_CTRL_BVALID
    );
s_axi_CTRL_WREADY_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => wstate(0),
      I1 => wstate(1),
      O => s_axi_CTRL_WREADY
    );
\waddr[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0020"
    )
        port map (
      I0 => s_axi_CTRL_AWVALID,
      I1 => wstate(1),
      I2 => ap_rst_n,
      I3 => wstate(0),
      O => waddr
    );
\waddr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_AWADDR(0),
      Q => \waddr_reg_n_0_[0]\,
      R => '0'
    );
\waddr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_AWADDR(1),
      Q => \waddr_reg_n_0_[1]\,
      R => '0'
    );
\waddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_AWADDR(2),
      Q => \waddr_reg_n_0_[2]\,
      R => '0'
    );
\waddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_AWADDR(3),
      Q => \waddr_reg_n_0_[3]\,
      R => '0'
    );
\waddr_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => waddr,
      D => s_axi_CTRL_AWADDR(4),
      Q => \waddr_reg_n_0_[4]\,
      R => '0'
    );
\wstate[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"005C"
    )
        port map (
      I0 => s_axi_CTRL_WVALID,
      I1 => s_axi_CTRL_AWVALID,
      I2 => wstate(0),
      I3 => wstate(1),
      O => \wstate[0]_i_1_n_0\
    );
\wstate[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202C"
    )
        port map (
      I0 => s_axi_CTRL_WVALID,
      I1 => wstate(1),
      I2 => wstate(0),
      I3 => s_axi_CTRL_BREADY,
      O => \wstate[1]_i_1_n_0\
    );
\wstate_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \wstate[0]_i_1_n_0\,
      Q => wstate(0),
      R => \^sr\(0)
    );
\wstate_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \wstate[1]_i_1_n_0\,
      Q => wstate(1),
      R => \^sr\(0)
    );
\x_reg_289[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888808888888"
    )
        port map (
      I0 => Q(0),
      I1 => ap_start,
      I2 => \inStream_V_data_V_0_state_reg[0]\,
      I3 => Q(1),
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \exitcond1_reg_895_reg[0]\,
      O => \x_reg_289_reg[0]\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_72_in : out STD_LOGIC;
    ram_reg_1 : out STD_LOGIC;
    ram_reg_2 : out STD_LOGIC;
    \lineBuffer_0_addr_2_reg_1036_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_reg_3 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \window_2_2_2_fu_174_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_enable_reg_pp1_iter1 : in STD_LOGIC;
    \exitcond_flatten8_reg_1018_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp3_iter0 : in STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \exitcond4_reg_904_reg[0]\ : in STD_LOGIC;
    \inStream_V_data_V_0_state_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp3_iter2 : in STD_LOGIC;
    \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg[0]\ : in STD_LOGIC;
    \x_assign_reg_392_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \x4_reg_359_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \x1_reg_301_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_enable_reg_pp2_iter0 : in STD_LOGIC;
    \inStream_V_data_V_0_payload_B_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \inStream_V_data_V_0_payload_A_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_V_data_V_0_sel : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram is
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^linebuffer_0_addr_2_reg_1036_reg[3]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal lineBuffer_1_address0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal lineBuffer_1_ce0 : STD_LOGIC;
  signal lineBuffer_1_we1 : STD_LOGIC;
  signal \^p_72_in\ : STD_LOGIC;
  signal \^ram_reg_0\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^ram_reg_1\ : STD_LOGIC;
  signal \^ram_reg_2\ : STD_LOGIC;
  signal \^ram_reg_3\ : STD_LOGIC;
  signal \ram_reg_i_9__0_n_0\ : STD_LOGIC;
  signal NLW_ram_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \lineBuffer_0_addr_2_reg_1036[3]_i_1\ : label is "soft_lutpair39";
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of ram_reg : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 896;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 31;
  attribute SOFT_HLUTNM of ram_reg_i_45 : label is "soft_lutpair39";
begin
  WEA(0) <= \^wea\(0);
  \lineBuffer_0_addr_2_reg_1036_reg[3]\(1 downto 0) <= \^linebuffer_0_addr_2_reg_1036_reg[3]\(1 downto 0);
  p_72_in <= \^p_72_in\;
  ram_reg_0(31 downto 0) <= \^ram_reg_0\(31 downto 0);
  ram_reg_1 <= \^ram_reg_1\;
  ram_reg_2 <= \^ram_reg_2\;
  ram_reg_3 <= \^ram_reg_3\;
\lineBuffer_0_addr_2_reg_1036[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCCCC4C"
    )
        port map (
      I0 => \x_assign_reg_392_reg[4]\(3),
      I1 => \x_assign_reg_392_reg[4]\(2),
      I2 => \x_assign_reg_392_reg[4]\(4),
      I3 => \x_assign_reg_392_reg[4]\(0),
      I4 => \x_assign_reg_392_reg[4]\(1),
      O => \^linebuffer_0_addr_2_reg_1036_reg[3]\(0)
    );
\lineBuffer_0_addr_2_reg_1036[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAA2A"
    )
        port map (
      I0 => \x_assign_reg_392_reg[4]\(3),
      I1 => \x_assign_reg_392_reg[4]\(2),
      I2 => \x_assign_reg_392_reg[4]\(4),
      I3 => \x_assign_reg_392_reg[4]\(0),
      I4 => \x_assign_reg_392_reg[4]\(1),
      O => \^linebuffer_0_addr_2_reg_1036_reg[3]\(1)
    );
ram_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 10) => B"111111",
      ADDRARDADDR(9 downto 5) => lineBuffer_1_address0(4 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 10) => B"111111",
      ADDRBWRADDR(9 downto 5) => Q(4 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_ram_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => \^ram_reg_0\(31 downto 0),
      DIBDI(31 downto 0) => \window_2_2_2_fu_174_reg[31]\(31 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => D(31 downto 0),
      DOBDO(31 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => lineBuffer_1_ce0,
      ENBWREN => lineBuffer_1_we1,
      INJECTDBITERR => NLW_ram_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_SBITERR_UNCONNECTED,
      WEA(3) => \^wea\(0),
      WEA(2) => \^wea\(0),
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => \ram_reg_i_9__0_n_0\,
      WEBWE(2) => \ram_reg_i_9__0_n_0\,
      WEBWE(1) => \ram_reg_i_9__0_n_0\,
      WEBWE(0) => \ram_reg_i_9__0_n_0\
    );
ram_reg_i_10: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \ap_CS_fsm_reg[7]\(0),
      I1 => \exitcond4_reg_904_reg[0]\,
      I2 => ap_enable_reg_pp1_iter1,
      I3 => \inStream_V_data_V_0_state_reg[0]\,
      O => \^p_72_in\
    );
\ram_reg_i_10__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(29),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(29),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(29)
    );
ram_reg_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(28),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(28),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(28)
    );
ram_reg_i_12: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(27),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(27),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(27)
    );
ram_reg_i_13: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(26),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(26),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(26)
    );
ram_reg_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(25),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(25),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(25)
    );
ram_reg_i_15: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(24),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(24),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(24)
    );
ram_reg_i_16: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(23),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(23),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(23)
    );
ram_reg_i_17: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(22),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(22),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(22)
    );
ram_reg_i_18: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(21),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(21),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(21)
    );
ram_reg_i_19: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(20),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(20),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(20)
    );
\ram_reg_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF8F888888"
    )
        port map (
      I0 => \^p_72_in\,
      I1 => ap_enable_reg_pp1_iter1,
      I2 => \exitcond_flatten8_reg_1018_reg[0]\,
      I3 => ap_enable_reg_pp3_iter0,
      I4 => \ap_CS_fsm_reg[7]\(2),
      I5 => \^ram_reg_1\,
      O => lineBuffer_1_ce0
    );
ram_reg_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \exitcond_flatten8_reg_1018_reg[0]\,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg[0]\,
      O => lineBuffer_1_we1
    );
ram_reg_i_20: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(19),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(19),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(19)
    );
ram_reg_i_21: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(18),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(18),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(18)
    );
ram_reg_i_22: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(17),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(17),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(17)
    );
ram_reg_i_23: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(16),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(16),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(16)
    );
ram_reg_i_24: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(15),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(15),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(15)
    );
ram_reg_i_25: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(14),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(14),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(14)
    );
ram_reg_i_26: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(13),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(13),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(13)
    );
ram_reg_i_27: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(12),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(12),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(12)
    );
ram_reg_i_28: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(11),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(11),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(11)
    );
ram_reg_i_29: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(10),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(10),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(10)
    );
ram_reg_i_30: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(9),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(9),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(9)
    );
ram_reg_i_31: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(8),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(8),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(8)
    );
ram_reg_i_32: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(7),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(7),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(7)
    );
ram_reg_i_33: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(6),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(6),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(6)
    );
ram_reg_i_34: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(5),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(5),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(5)
    );
ram_reg_i_35: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(4),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(4),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(4)
    );
ram_reg_i_36: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(3),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(3),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(3)
    );
ram_reg_i_37: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(2),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(2),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(2)
    );
ram_reg_i_38: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(1),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(1),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(1)
    );
ram_reg_i_39: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(0),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(0),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(0)
    );
\ram_reg_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF4FFF4FFF4000"
    )
        port map (
      I0 => \^ram_reg_3\,
      I1 => \x_assign_reg_392_reg[4]\(4),
      I2 => \ap_CS_fsm_reg[7]\(2),
      I3 => ap_enable_reg_pp3_iter0,
      I4 => \x1_reg_301_reg[4]\(4),
      I5 => \^ram_reg_1\,
      O => lineBuffer_1_address0(4)
    );
ram_reg_i_43: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg[7]\(1),
      I1 => ap_enable_reg_pp2_iter0,
      O => \^ram_reg_1\
    );
ram_reg_i_45: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \x_assign_reg_392_reg[4]\(1),
      I1 => \x_assign_reg_392_reg[4]\(0),
      I2 => \x_assign_reg_392_reg[4]\(4),
      I3 => \x_assign_reg_392_reg[4]\(2),
      I4 => \x_assign_reg_392_reg[4]\(3),
      O => \^ram_reg_3\
    );
ram_reg_i_46: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \ap_CS_fsm_reg[7]\(2),
      I1 => ap_enable_reg_pp3_iter0,
      O => \^ram_reg_2\
    );
\ram_reg_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF80BF80BF80"
    )
        port map (
      I0 => \^linebuffer_0_addr_2_reg_1036_reg[3]\(1),
      I1 => \ap_CS_fsm_reg[7]\(2),
      I2 => ap_enable_reg_pp3_iter0,
      I3 => \x1_reg_301_reg[4]\(3),
      I4 => ap_enable_reg_pp2_iter0,
      I5 => \ap_CS_fsm_reg[7]\(1),
      O => lineBuffer_1_address0(3)
    );
\ram_reg_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBBBBBB88888"
    )
        port map (
      I0 => \^linebuffer_0_addr_2_reg_1036_reg[3]\(0),
      I1 => \^ram_reg_2\,
      I2 => \x4_reg_359_reg[1]\(1),
      I3 => \x4_reg_359_reg[1]\(0),
      I4 => \^ram_reg_1\,
      I5 => \x1_reg_301_reg[4]\(2),
      O => lineBuffer_1_address0(2)
    );
ram_reg_i_6: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBBB888B8888"
    )
        port map (
      I0 => \x_assign_reg_392_reg[4]\(1),
      I1 => \^ram_reg_2\,
      I2 => \x4_reg_359_reg[1]\(1),
      I3 => \x4_reg_359_reg[1]\(0),
      I4 => \^ram_reg_1\,
      I5 => \x1_reg_301_reg[4]\(1),
      O => lineBuffer_1_address0(1)
    );
\ram_reg_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80BFBFBF80BF8080"
    )
        port map (
      I0 => \x_assign_reg_392_reg[4]\(0),
      I1 => \ap_CS_fsm_reg[7]\(2),
      I2 => ap_enable_reg_pp3_iter0,
      I3 => \x4_reg_359_reg[1]\(0),
      I4 => \^ram_reg_1\,
      I5 => \x1_reg_301_reg[4]\(0),
      O => lineBuffer_1_address0(0)
    );
ram_reg_i_8: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(31),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(31),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(31)
    );
\ram_reg_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \exitcond4_reg_904_reg[0]\,
      I1 => ap_enable_reg_pp1_iter1,
      I2 => \ap_CS_fsm_reg[7]\(0),
      I3 => \inStream_V_data_V_0_state_reg[0]\,
      O => \^wea\(0)
    );
ram_reg_i_9: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \inStream_V_data_V_0_payload_B_reg[31]\(30),
      I1 => \inStream_V_data_V_0_payload_A_reg[31]\(30),
      I2 => inStream_V_data_V_0_sel,
      O => \^ram_reg_0\(30)
    );
\ram_reg_i_9__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_enable_reg_pp3_iter2,
      I1 => \exitcond_flatten8_reg_1018_reg[0]\,
      O => \ram_reg_i_9__0_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram_1 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lineBuffer_0_we1 : out STD_LOGIC;
    WEA : out STD_LOGIC_VECTOR ( 0 to 0 );
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg_0 : out STD_LOGIC;
    p_76_in : out STD_LOGIC;
    \window_1_2_1_reg_335_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \inStream_V_data_V_0_payload_B_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_enable_reg_pp3_iter0 : in STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[5]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \exitcond1_reg_895_reg[0]\ : in STD_LOGIC;
    \inStream_V_data_V_0_state_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp3_iter1_reg : in STD_LOGIC;
    \exitcond_flatten8_reg_1018_reg[0]\ : in STD_LOGIC;
    tmp_7_reg_1048 : in STD_LOGIC;
    ap_enable_reg_pp3_iter3_reg : in STD_LOGIC;
    ap_pipeline_reg_pp3_iter2_tmp_reg_1032 : in STD_LOGIC;
    ap_enable_reg_pp3_iter2 : in STD_LOGIC;
    ap_pipeline_reg_pp3_iter1_tmp_reg_1032 : in STD_LOGIC;
    \outStream_V_data_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \x_assign_reg_392_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \x4_reg_359_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \x_reg_289_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ap_CS_fsm_reg[7]_0\ : in STD_LOGIC;
    \x_assign_reg_392_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_enable_reg_pp2_iter0 : in STD_LOGIC;
    \x_assign_reg_392_reg[1]\ : in STD_LOGIC;
    tmp_10_reg_927 : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram_1 : entity is "cnn_pool_d28x28_pbkb_ram";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram_1;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram_1 is
  signal \^d\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^wea\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^webwe\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal lineBuffer_0_address0 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal lineBuffer_0_ce0 : STD_LOGIC;
  signal \^linebuffer_0_we1\ : STD_LOGIC;
  signal \^p_76_in\ : STD_LOGIC;
  signal \^ram_reg_0\ : STD_LOGIC;
  signal ram_reg_i_47_n_0 : STD_LOGIC;
  signal NLW_ram_reg_CASCADEOUTA_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_CASCADEOUTB_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_DBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_INJECTDBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_INJECTSBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_SBITERR_UNCONNECTED : STD_LOGIC;
  signal NLW_ram_reg_DOBDO_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_ram_reg_DOPADOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_DOPBDOP_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_ram_reg_ECCPARITY_UNCONNECTED : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal NLW_ram_reg_RDADDRECC_UNCONNECTED : STD_LOGIC_VECTOR ( 8 downto 0 );
  attribute CLOCK_DOMAINS : string;
  attribute CLOCK_DOMAINS of ram_reg : label is "COMMON";
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTA.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ : string;
  attribute \MEM.PORTB.DATA_BIT_LAYOUT\ of ram_reg : label is "p0_d32";
  attribute METHODOLOGY_DRC_VIOS : string;
  attribute METHODOLOGY_DRC_VIOS of ram_reg : label is "{SYNTH-6 {cell *THIS*}} {SYNTH-7 {cell *THIS*}}";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg : label is 896;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg : label is "ram";
  attribute bram_addr_begin : integer;
  attribute bram_addr_begin of ram_reg : label is 0;
  attribute bram_addr_end : integer;
  attribute bram_addr_end of ram_reg : label is 1023;
  attribute bram_slice_begin : integer;
  attribute bram_slice_begin of ram_reg : label is 0;
  attribute bram_slice_end : integer;
  attribute bram_slice_end of ram_reg : label is 31;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[12]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[14]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[16]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[18]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[19]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[1]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[20]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[21]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[22]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[23]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[24]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[26]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[28]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[29]_i_1\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[2]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[30]_i_1\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[31]_i_2\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[3]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[6]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[8]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \window_1_1_1_reg_347[9]_i_1\ : label is "soft_lutpair27";
begin
  D(31 downto 0) <= \^d\(31 downto 0);
  WEA(0) <= \^wea\(0);
  WEBWE(0) <= \^webwe\(0);
  lineBuffer_0_we1 <= \^linebuffer_0_we1\;
  p_76_in <= \^p_76_in\;
  ram_reg_0 <= \^ram_reg_0\;
ram_reg: unisim.vcomponents.RAMB36E1
    generic map(
      DOA_REG => 0,
      DOB_REG => 0,
      EN_ECC_READ => false,
      EN_ECC_WRITE => false,
      INIT_A => X"000000000",
      INIT_B => X"000000000",
      RAM_EXTENSION_A => "NONE",
      RAM_EXTENSION_B => "NONE",
      RAM_MODE => "TDP",
      RDADDR_COLLISION_HWCONFIG => "DELAYED_WRITE",
      READ_WIDTH_A => 36,
      READ_WIDTH_B => 36,
      RSTREG_PRIORITY_A => "RSTREG",
      RSTREG_PRIORITY_B => "RSTREG",
      SIM_COLLISION_CHECK => "ALL",
      SIM_DEVICE => "7SERIES",
      SRVAL_A => X"000000000",
      SRVAL_B => X"000000000",
      WRITE_MODE_A => "WRITE_FIRST",
      WRITE_MODE_B => "READ_FIRST",
      WRITE_WIDTH_A => 36,
      WRITE_WIDTH_B => 36
    )
        port map (
      ADDRARDADDR(15 downto 10) => B"111111",
      ADDRARDADDR(9 downto 5) => lineBuffer_0_address0(4 downto 0),
      ADDRARDADDR(4 downto 0) => B"11111",
      ADDRBWRADDR(15 downto 10) => B"111111",
      ADDRBWRADDR(9 downto 5) => Q(4 downto 0),
      ADDRBWRADDR(4 downto 0) => B"11111",
      CASCADEINA => '1',
      CASCADEINB => '1',
      CASCADEOUTA => NLW_ram_reg_CASCADEOUTA_UNCONNECTED,
      CASCADEOUTB => NLW_ram_reg_CASCADEOUTB_UNCONNECTED,
      CLKARDCLK => ap_clk,
      CLKBWRCLK => ap_clk,
      DBITERR => NLW_ram_reg_DBITERR_UNCONNECTED,
      DIADI(31 downto 0) => \inStream_V_data_V_0_payload_B_reg[31]\(31 downto 0),
      DIBDI(31 downto 0) => ram_reg_1(31 downto 0),
      DIPADIP(3 downto 0) => B"0000",
      DIPBDIP(3 downto 0) => B"0000",
      DOADO(31 downto 0) => \^d\(31 downto 0),
      DOBDO(31 downto 0) => NLW_ram_reg_DOBDO_UNCONNECTED(31 downto 0),
      DOPADOP(3 downto 0) => NLW_ram_reg_DOPADOP_UNCONNECTED(3 downto 0),
      DOPBDOP(3 downto 0) => NLW_ram_reg_DOPBDOP_UNCONNECTED(3 downto 0),
      ECCPARITY(7 downto 0) => NLW_ram_reg_ECCPARITY_UNCONNECTED(7 downto 0),
      ENARDEN => lineBuffer_0_ce0,
      ENBWREN => \^linebuffer_0_we1\,
      INJECTDBITERR => NLW_ram_reg_INJECTDBITERR_UNCONNECTED,
      INJECTSBITERR => NLW_ram_reg_INJECTSBITERR_UNCONNECTED,
      RDADDRECC(8 downto 0) => NLW_ram_reg_RDADDRECC_UNCONNECTED(8 downto 0),
      REGCEAREGCE => '0',
      REGCEB => '0',
      RSTRAMARSTRAM => '0',
      RSTRAMB => '0',
      RSTREGARSTREG => '0',
      RSTREGB => '0',
      SBITERR => NLW_ram_reg_SBITERR_UNCONNECTED,
      WEA(3) => \^wea\(0),
      WEA(2) => \^wea\(0),
      WEA(1) => \^wea\(0),
      WEA(0) => \^wea\(0),
      WEBWE(7 downto 4) => B"0000",
      WEBWE(3) => \^webwe\(0),
      WEBWE(2) => \^webwe\(0),
      WEBWE(1) => \^webwe\(0),
      WEBWE(0) => \^webwe\(0)
    );
ram_reg_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFF40FF40FF40"
    )
        port map (
      I0 => \^ram_reg_0\,
      I1 => ap_enable_reg_pp3_iter0,
      I2 => \ap_CS_fsm_reg[7]\(2),
      I3 => \ap_CS_fsm_reg[5]\,
      I4 => \^p_76_in\,
      I5 => ap_enable_reg_pp0_iter1,
      O => lineBuffer_0_ce0
    );
\ram_reg_i_2__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => ap_enable_reg_pp3_iter1_reg,
      I1 => \ap_CS_fsm_reg[7]\(2),
      I2 => \exitcond_flatten8_reg_1018_reg[0]\,
      I3 => \^ram_reg_0\,
      O => \^linebuffer_0_we1\
    );
ram_reg_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4FFF4FFF4FFF4000"
    )
        port map (
      I0 => \x_assign_reg_392_reg[1]\,
      I1 => \x_assign_reg_392_reg[4]\(2),
      I2 => \ap_CS_fsm_reg[7]\(2),
      I3 => ap_enable_reg_pp3_iter0,
      I4 => \x_reg_289_reg[3]\(3),
      I5 => \ap_CS_fsm_reg[5]\,
      O => lineBuffer_0_address0(4)
    );
ram_reg_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BFBFBF80BF80BF80"
    )
        port map (
      I0 => \x_assign_reg_392_reg[3]\(1),
      I1 => \ap_CS_fsm_reg[7]\(2),
      I2 => ap_enable_reg_pp3_iter0,
      I3 => \x_reg_289_reg[3]\(3),
      I4 => ap_enable_reg_pp2_iter0,
      I5 => \ap_CS_fsm_reg[7]\(1),
      O => lineBuffer_0_address0(3)
    );
ram_reg_i_40: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \exitcond1_reg_895_reg[0]\,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \ap_CS_fsm_reg[7]\(0),
      I3 => \inStream_V_data_V_0_state_reg[0]\,
      O => \^wea\(0)
    );
ram_reg_i_41: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^ram_reg_0\,
      I1 => \ap_CS_fsm_reg[7]\(2),
      I2 => ap_enable_reg_pp3_iter1_reg,
      O => \^webwe\(0)
    );
ram_reg_i_42: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAABAAA"
    )
        port map (
      I0 => ram_reg_i_47_n_0,
      I1 => \exitcond_flatten8_reg_1018_reg[0]\,
      I2 => ap_enable_reg_pp3_iter1_reg,
      I3 => tmp_7_reg_1048,
      I4 => \inStream_V_data_V_0_state_reg[0]\,
      O => \^ram_reg_0\
    );
ram_reg_i_44: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA8A"
    )
        port map (
      I0 => \ap_CS_fsm_reg[7]\(0),
      I1 => \exitcond1_reg_895_reg[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \inStream_V_data_V_0_state_reg[0]\,
      O => \^p_76_in\
    );
ram_reg_i_47: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000F888"
    )
        port map (
      I0 => ap_enable_reg_pp3_iter3_reg,
      I1 => ap_pipeline_reg_pp3_iter2_tmp_reg_1032,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => ap_pipeline_reg_pp3_iter1_tmp_reg_1032,
      I4 => \outStream_V_data_V_1_state_reg[1]\(0),
      O => ram_reg_i_47_n_0
    );
ram_reg_i_5: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBB8BBBBBBB88888"
    )
        port map (
      I0 => \x_assign_reg_392_reg[3]\(0),
      I1 => \ap_CS_fsm_reg[7]_0\,
      I2 => \x4_reg_359_reg[1]\(1),
      I3 => \x4_reg_359_reg[1]\(0),
      I4 => \ap_CS_fsm_reg[5]\,
      I5 => \x_reg_289_reg[3]\(2),
      O => lineBuffer_0_address0(2)
    );
\ram_reg_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"888BBBBB888B8888"
    )
        port map (
      I0 => \x_assign_reg_392_reg[4]\(1),
      I1 => \ap_CS_fsm_reg[7]_0\,
      I2 => \x4_reg_359_reg[1]\(1),
      I3 => \x4_reg_359_reg[1]\(0),
      I4 => \ap_CS_fsm_reg[5]\,
      I5 => \x_reg_289_reg[3]\(1),
      O => lineBuffer_0_address0(1)
    );
ram_reg_i_7: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80BFBFBF80BF8080"
    )
        port map (
      I0 => \x_assign_reg_392_reg[4]\(0),
      I1 => \ap_CS_fsm_reg[7]\(2),
      I2 => ap_enable_reg_pp3_iter0,
      I3 => \x4_reg_359_reg[1]\(0),
      I4 => \ap_CS_fsm_reg[5]\,
      I5 => \x_reg_289_reg[3]\(0),
      O => lineBuffer_0_address0(0)
    );
\window_1_1_1_reg_347[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(0),
      I1 => ram_reg_1(0),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(0)
    );
\window_1_1_1_reg_347[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(10),
      I1 => ram_reg_1(10),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(10)
    );
\window_1_1_1_reg_347[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(11),
      I1 => ram_reg_1(11),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(11)
    );
\window_1_1_1_reg_347[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(12),
      I1 => ram_reg_1(12),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(12)
    );
\window_1_1_1_reg_347[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(13),
      I1 => ram_reg_1(13),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(13)
    );
\window_1_1_1_reg_347[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(14),
      I1 => ram_reg_1(14),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(14)
    );
\window_1_1_1_reg_347[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(15),
      I1 => ram_reg_1(15),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(15)
    );
\window_1_1_1_reg_347[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(16),
      I1 => ram_reg_1(16),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(16)
    );
\window_1_1_1_reg_347[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(17),
      I1 => ram_reg_1(17),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(17)
    );
\window_1_1_1_reg_347[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(18),
      I1 => ram_reg_1(18),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(18)
    );
\window_1_1_1_reg_347[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(19),
      I1 => ram_reg_1(19),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(19)
    );
\window_1_1_1_reg_347[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(1),
      I1 => ram_reg_1(1),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(1)
    );
\window_1_1_1_reg_347[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(20),
      I1 => ram_reg_1(20),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(20)
    );
\window_1_1_1_reg_347[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(21),
      I1 => ram_reg_1(21),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(21)
    );
\window_1_1_1_reg_347[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(22),
      I1 => ram_reg_1(22),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(22)
    );
\window_1_1_1_reg_347[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(23),
      I1 => ram_reg_1(23),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(23)
    );
\window_1_1_1_reg_347[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(24),
      I1 => ram_reg_1(24),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(24)
    );
\window_1_1_1_reg_347[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(25),
      I1 => ram_reg_1(25),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(25)
    );
\window_1_1_1_reg_347[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(26),
      I1 => ram_reg_1(26),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(26)
    );
\window_1_1_1_reg_347[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(27),
      I1 => ram_reg_1(27),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(27)
    );
\window_1_1_1_reg_347[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(28),
      I1 => ram_reg_1(28),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(28)
    );
\window_1_1_1_reg_347[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(29),
      I1 => ram_reg_1(29),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(29)
    );
\window_1_1_1_reg_347[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(2),
      I1 => ram_reg_1(2),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(2)
    );
\window_1_1_1_reg_347[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(30),
      I1 => ram_reg_1(30),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(30)
    );
\window_1_1_1_reg_347[31]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(31),
      I1 => ram_reg_1(31),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(31)
    );
\window_1_1_1_reg_347[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(3),
      I1 => ram_reg_1(3),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(3)
    );
\window_1_1_1_reg_347[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(4),
      I1 => ram_reg_1(4),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(4)
    );
\window_1_1_1_reg_347[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(5),
      I1 => ram_reg_1(5),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(5)
    );
\window_1_1_1_reg_347[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(6),
      I1 => ram_reg_1(6),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(6)
    );
\window_1_1_1_reg_347[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(7),
      I1 => ram_reg_1(7),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(7)
    );
\window_1_1_1_reg_347[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(8),
      I1 => ram_reg_1(8),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(8)
    );
\window_1_1_1_reg_347[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => \^d\(9),
      I1 => ram_reg_1(9),
      I2 => tmp_10_reg_927,
      O => \window_1_2_1_reg_335_reg[31]\(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    lineBuffer_0_we1 : out STD_LOGIC;
    ram_reg : out STD_LOGIC;
    WEBWE : out STD_LOGIC_VECTOR ( 0 to 0 );
    ram_reg_0 : out STD_LOGIC;
    p_76_in : out STD_LOGIC;
    \window_1_2_1_reg_335_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \inStream_V_data_V_0_payload_B_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_enable_reg_pp3_iter0 : in STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \ap_CS_fsm_reg[5]\ : in STD_LOGIC;
    ap_enable_reg_pp0_iter1 : in STD_LOGIC;
    \exitcond1_reg_895_reg[0]\ : in STD_LOGIC;
    \inStream_V_data_V_0_state_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp3_iter1_reg : in STD_LOGIC;
    \exitcond_flatten8_reg_1018_reg[0]\ : in STD_LOGIC;
    tmp_7_reg_1048 : in STD_LOGIC;
    ap_enable_reg_pp3_iter3_reg : in STD_LOGIC;
    ap_pipeline_reg_pp3_iter2_tmp_reg_1032 : in STD_LOGIC;
    ap_enable_reg_pp3_iter2 : in STD_LOGIC;
    ap_pipeline_reg_pp3_iter1_tmp_reg_1032 : in STD_LOGIC;
    \outStream_V_data_V_1_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \x_assign_reg_392_reg[4]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \x4_reg_359_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \x_reg_289_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \ap_CS_fsm_reg[7]_0\ : in STD_LOGIC;
    \x_assign_reg_392_reg[3]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ap_enable_reg_pp2_iter0 : in STD_LOGIC;
    \x_assign_reg_392_reg[1]\ : in STD_LOGIC;
    tmp_10_reg_927 : in STD_LOGIC
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb is
begin
cnn_pool_d28x28_pbkb_ram_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram_1
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      WEA(0) => ram_reg,
      WEBWE(0) => WEBWE(0),
      \ap_CS_fsm_reg[5]\ => \ap_CS_fsm_reg[5]\,
      \ap_CS_fsm_reg[7]\(2 downto 0) => \ap_CS_fsm_reg[7]\(2 downto 0),
      \ap_CS_fsm_reg[7]_0\ => \ap_CS_fsm_reg[7]_0\,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp2_iter0 => ap_enable_reg_pp2_iter0,
      ap_enable_reg_pp3_iter0 => ap_enable_reg_pp3_iter0,
      ap_enable_reg_pp3_iter1_reg => ap_enable_reg_pp3_iter1_reg,
      ap_enable_reg_pp3_iter2 => ap_enable_reg_pp3_iter2,
      ap_enable_reg_pp3_iter3_reg => ap_enable_reg_pp3_iter3_reg,
      ap_pipeline_reg_pp3_iter1_tmp_reg_1032 => ap_pipeline_reg_pp3_iter1_tmp_reg_1032,
      ap_pipeline_reg_pp3_iter2_tmp_reg_1032 => ap_pipeline_reg_pp3_iter2_tmp_reg_1032,
      \exitcond1_reg_895_reg[0]\ => \exitcond1_reg_895_reg[0]\,
      \exitcond_flatten8_reg_1018_reg[0]\ => \exitcond_flatten8_reg_1018_reg[0]\,
      \inStream_V_data_V_0_payload_B_reg[31]\(31 downto 0) => \inStream_V_data_V_0_payload_B_reg[31]\(31 downto 0),
      \inStream_V_data_V_0_state_reg[0]\ => \inStream_V_data_V_0_state_reg[0]\,
      lineBuffer_0_we1 => lineBuffer_0_we1,
      \outStream_V_data_V_1_state_reg[1]\(0) => \outStream_V_data_V_1_state_reg[1]\(0),
      p_76_in => p_76_in,
      ram_reg_0 => ram_reg_0,
      ram_reg_1(31 downto 0) => ram_reg_1(31 downto 0),
      tmp_10_reg_927 => tmp_10_reg_927,
      tmp_7_reg_1048 => tmp_7_reg_1048,
      \window_1_2_1_reg_335_reg[31]\(31 downto 0) => \window_1_2_1_reg_335_reg[31]\(31 downto 0),
      \x4_reg_359_reg[1]\(1 downto 0) => \x4_reg_359_reg[1]\(1 downto 0),
      \x_assign_reg_392_reg[1]\ => \x_assign_reg_392_reg[1]\,
      \x_assign_reg_392_reg[3]\(1 downto 0) => \x_assign_reg_392_reg[3]\(1 downto 0),
      \x_assign_reg_392_reg[4]\(2 downto 0) => \x_assign_reg_392_reg[4]\(2 downto 0),
      \x_reg_289_reg[3]\(3 downto 0) => \x_reg_289_reg[3]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_0 is
  port (
    D : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg : out STD_LOGIC_VECTOR ( 31 downto 0 );
    ram_reg_0 : out STD_LOGIC;
    p_72_in : out STD_LOGIC;
    ram_reg_1 : out STD_LOGIC;
    ram_reg_2 : out STD_LOGIC;
    \lineBuffer_0_addr_2_reg_1036_reg[3]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    ram_reg_3 : out STD_LOGIC;
    ap_clk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \window_2_2_2_fu_174_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    ap_enable_reg_pp1_iter1 : in STD_LOGIC;
    \exitcond_flatten8_reg_1018_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp3_iter0 : in STD_LOGIC;
    \ap_CS_fsm_reg[7]\ : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \exitcond4_reg_904_reg[0]\ : in STD_LOGIC;
    \inStream_V_data_V_0_state_reg[0]\ : in STD_LOGIC;
    ap_enable_reg_pp3_iter2 : in STD_LOGIC;
    \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg[0]\ : in STD_LOGIC;
    \x_assign_reg_392_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \x4_reg_359_reg[1]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \x1_reg_301_reg[4]\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ap_enable_reg_pp2_iter0 : in STD_LOGIC;
    \inStream_V_data_V_0_payload_B_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    \inStream_V_data_V_0_payload_A_reg[31]\ : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_V_data_V_0_sel : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_0 : entity is "cnn_pool_d28x28_pbkb";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_0;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_0 is
begin
cnn_pool_d28x28_pbkb_ram_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_ram
     port map (
      D(31 downto 0) => D(31 downto 0),
      Q(4 downto 0) => Q(4 downto 0),
      WEA(0) => ram_reg_0,
      \ap_CS_fsm_reg[7]\(2 downto 0) => \ap_CS_fsm_reg[7]\(2 downto 0),
      ap_clk => ap_clk,
      ap_enable_reg_pp1_iter1 => ap_enable_reg_pp1_iter1,
      ap_enable_reg_pp2_iter0 => ap_enable_reg_pp2_iter0,
      ap_enable_reg_pp3_iter0 => ap_enable_reg_pp3_iter0,
      ap_enable_reg_pp3_iter2 => ap_enable_reg_pp3_iter2,
      \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg[0]\ => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg[0]\,
      \exitcond4_reg_904_reg[0]\ => \exitcond4_reg_904_reg[0]\,
      \exitcond_flatten8_reg_1018_reg[0]\ => \exitcond_flatten8_reg_1018_reg[0]\,
      \inStream_V_data_V_0_payload_A_reg[31]\(31 downto 0) => \inStream_V_data_V_0_payload_A_reg[31]\(31 downto 0),
      \inStream_V_data_V_0_payload_B_reg[31]\(31 downto 0) => \inStream_V_data_V_0_payload_B_reg[31]\(31 downto 0),
      inStream_V_data_V_0_sel => inStream_V_data_V_0_sel,
      \inStream_V_data_V_0_state_reg[0]\ => \inStream_V_data_V_0_state_reg[0]\,
      \lineBuffer_0_addr_2_reg_1036_reg[3]\(1 downto 0) => \lineBuffer_0_addr_2_reg_1036_reg[3]\(1 downto 0),
      p_72_in => p_72_in,
      ram_reg_0(31 downto 0) => ram_reg(31 downto 0),
      ram_reg_1 => ram_reg_1,
      ram_reg_2 => ram_reg_2,
      ram_reg_3 => ram_reg_3,
      \window_2_2_2_fu_174_reg[31]\(31 downto 0) => \window_2_2_2_fu_174_reg[31]\(31 downto 0),
      \x1_reg_301_reg[4]\(4 downto 0) => \x1_reg_301_reg[4]\(4 downto 0),
      \x4_reg_359_reg[1]\(1 downto 0) => \x4_reg_359_reg[1]\(1 downto 0),
      \x_assign_reg_392_reg[4]\(4 downto 0) => \x_assign_reg_392_reg[4]\(4 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 is
  port (
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outStream_TVALID : out STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    outStream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt : out STD_LOGIC
  );
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 5;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 4;
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b000000010";
  attribute ap_ST_fsm_pp1_stage0 : string;
  attribute ap_ST_fsm_pp1_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b000001000";
  attribute ap_ST_fsm_pp2_stage0 : string;
  attribute ap_ST_fsm_pp2_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b000100000";
  attribute ap_ST_fsm_pp3_stage0 : string;
  attribute ap_ST_fsm_pp3_stage0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b010000000";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b001000000";
  attribute ap_ST_fsm_state15 : string;
  attribute ap_ST_fsm_state15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b100000000";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b000000100";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "9'b000010000";
  attribute ap_const_int64_8 : integer;
  attribute ap_const_int64_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 8;
  attribute ap_const_lv10_0 : string;
  attribute ap_const_lv10_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "10'b0000000000";
  attribute ap_const_lv10_1 : string;
  attribute ap_const_lv10_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "10'b0000000001";
  attribute ap_const_lv10_310 : string;
  attribute ap_const_lv10_310 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "10'b1100010000";
  attribute ap_const_lv21_0 : string;
  attribute ap_const_lv21_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "21'b000000000000000000000";
  attribute ap_const_lv2_0 : string;
  attribute ap_const_lv2_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "2'b00";
  attribute ap_const_lv2_1 : string;
  attribute ap_const_lv2_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "2'b01";
  attribute ap_const_lv2_2 : string;
  attribute ap_const_lv2_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "2'b10";
  attribute ap_const_lv2_3 : string;
  attribute ap_const_lv2_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "2'b11";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 0;
  attribute ap_const_lv32_1 : integer;
  attribute ap_const_lv32_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 1;
  attribute ap_const_lv32_15 : integer;
  attribute ap_const_lv32_15 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 21;
  attribute ap_const_lv32_1E : integer;
  attribute ap_const_lv32_1E of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 30;
  attribute ap_const_lv32_1F : integer;
  attribute ap_const_lv32_1F of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 31;
  attribute ap_const_lv32_2 : integer;
  attribute ap_const_lv32_2 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 2;
  attribute ap_const_lv32_3 : integer;
  attribute ap_const_lv32_3 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 3;
  attribute ap_const_lv32_310 : integer;
  attribute ap_const_lv32_310 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 784;
  attribute ap_const_lv32_4 : integer;
  attribute ap_const_lv32_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 4;
  attribute ap_const_lv32_5 : integer;
  attribute ap_const_lv32_5 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 5;
  attribute ap_const_lv32_6 : integer;
  attribute ap_const_lv32_6 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 6;
  attribute ap_const_lv32_7 : integer;
  attribute ap_const_lv32_7 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 7;
  attribute ap_const_lv32_8 : integer;
  attribute ap_const_lv32_8 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 8;
  attribute ap_const_lv32_C4 : integer;
  attribute ap_const_lv32_C4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is 196;
  attribute ap_const_lv3_0 : string;
  attribute ap_const_lv3_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "3'b000";
  attribute ap_const_lv3_1 : string;
  attribute ap_const_lv3_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "3'b001";
  attribute ap_const_lv3_4 : string;
  attribute ap_const_lv3_4 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "3'b100";
  attribute ap_const_lv4_0 : string;
  attribute ap_const_lv4_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "4'b0000";
  attribute ap_const_lv4_1 : string;
  attribute ap_const_lv4_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "4'b0001";
  attribute ap_const_lv4_A : string;
  attribute ap_const_lv4_A of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "4'b1010";
  attribute ap_const_lv4_B : string;
  attribute ap_const_lv4_B of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "4'b1011";
  attribute ap_const_lv4_C : string;
  attribute ap_const_lv4_C of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "4'b1100";
  attribute ap_const_lv4_F : string;
  attribute ap_const_lv4_F of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "4'b1111";
  attribute ap_const_lv5_0 : string;
  attribute ap_const_lv5_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "5'b00000";
  attribute ap_const_lv5_1 : string;
  attribute ap_const_lv5_1 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "5'b00001";
  attribute ap_const_lv5_1C : string;
  attribute ap_const_lv5_1C of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "5'b11100";
  attribute ap_const_lv6_0 : string;
  attribute ap_const_lv6_0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "6'b000000";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2 is
  signal \<const0>\ : STD_LOGIC;
  signal \<const1>\ : STD_LOGIC;
  signal \ap_CS_fsm[1]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[2]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[3]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_3_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[4]_i_4_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[6]_i_1_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm[8]_i_3_n_0\ : STD_LOGIC;
  signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
  signal ap_CS_fsm_pp1_stage0 : STD_LOGIC;
  signal ap_CS_fsm_pp2_stage0 : STD_LOGIC;
  signal ap_CS_fsm_pp3_stage0 : STD_LOGIC;
  signal \ap_CS_fsm_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \ap_CS_fsm_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_CS_fsm_state10 : STD_LOGIC;
  signal ap_CS_fsm_state15 : STD_LOGIC;
  signal ap_CS_fsm_state4 : STD_LOGIC;
  signal ap_CS_fsm_state7 : STD_LOGIC;
  signal ap_NS_fsm : STD_LOGIC_VECTOR ( 8 downto 0 );
  signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp0_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp1_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp2_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp2_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp2_iter0_i_2_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp2_iter1 : STD_LOGIC;
  signal ap_enable_reg_pp2_iter10 : STD_LOGIC;
  signal ap_enable_reg_pp2_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter0 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter0_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter1_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter1_reg_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter2 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter2_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter3_i_1_n_0 : STD_LOGIC;
  signal ap_enable_reg_pp3_iter3_reg_n_0 : STD_LOGIC;
  signal \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\ : STD_LOGIC;
  signal ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal ap_pipeline_reg_pp3_iter1_tmp_reg_1032 : STD_LOGIC;
  signal ap_pipeline_reg_pp3_iter2_tmp_reg_1032 : STD_LOGIC;
  signal \ap_pipeline_reg_pp3_iter2_tmp_reg_1032[0]_i_1_n_0\ : STD_LOGIC;
  signal ap_rst_n_inv : STD_LOGIC;
  signal cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_11 : STD_LOGIC;
  signal cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_12 : STD_LOGIC;
  signal cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_13 : STD_LOGIC;
  signal cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_7 : STD_LOGIC;
  signal \cond1_reg_948[0]_i_1_n_0\ : STD_LOGIC;
  signal \cond1_reg_948_reg_n_0_[0]\ : STD_LOGIC;
  signal \cond_mid2_reg_932[0]_i_1_n_0\ : STD_LOGIC;
  signal \cond_mid2_reg_932[0]_i_2_n_0\ : STD_LOGIC;
  signal \cond_mid2_reg_932[0]_i_4_n_0\ : STD_LOGIC;
  signal \cond_mid2_reg_932_reg_n_0_[0]\ : STD_LOGIC;
  signal ctrl_read_reg_890 : STD_LOGIC;
  signal \exitcond1_reg_895[0]_i_1_n_0\ : STD_LOGIC;
  signal \exitcond1_reg_895_reg_n_0_[0]\ : STD_LOGIC;
  signal \exitcond4_reg_904[0]_i_1_n_0\ : STD_LOGIC;
  signal \exitcond4_reg_904_reg_n_0_[0]\ : STD_LOGIC;
  signal exitcond_flatten8_fu_614_p2 : STD_LOGIC;
  signal \exitcond_flatten8_reg_1018[0]_i_3_n_0\ : STD_LOGIC;
  signal \exitcond_flatten8_reg_1018_reg_n_0_[0]\ : STD_LOGIC;
  signal exitcond_flatten_reg_913 : STD_LOGIC;
  signal \exitcond_flatten_reg_913[0]_i_1_n_0\ : STD_LOGIC;
  signal \^instream_tready\ : STD_LOGIC;
  signal inStream_V_data_V_0_ack_in : STD_LOGIC;
  signal inStream_V_data_V_0_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inStream_V_data_V_0_load_A : STD_LOGIC;
  signal inStream_V_data_V_0_load_B : STD_LOGIC;
  signal inStream_V_data_V_0_payload_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inStream_V_data_V_0_payload_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal inStream_V_data_V_0_sel : STD_LOGIC;
  signal inStream_V_data_V_0_sel2 : STD_LOGIC;
  signal inStream_V_data_V_0_sel_rd_i_1_n_0 : STD_LOGIC;
  signal inStream_V_data_V_0_sel_wr : STD_LOGIC;
  signal inStream_V_data_V_0_sel_wr_i_1_n_0 : STD_LOGIC;
  signal inStream_V_data_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_data_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_data_V_0_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \inStream_V_data_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal inStream_V_dest_V_0_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \inStream_V_dest_V_0_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \inStream_V_dest_V_0_state[0]_i_2_n_0\ : STD_LOGIC;
  signal \inStream_V_dest_V_0_state_reg_n_0_[0]\ : STD_LOGIC;
  signal indvar_flatten6_reg_370 : STD_LOGIC;
  signal \indvar_flatten6_reg_370[9]_i_2_n_0\ : STD_LOGIC;
  signal \indvar_flatten6_reg_370_reg__0\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal indvar_flatten_next7_fu_620_p2 : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal indvar_flatten_next_fu_476_p2 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal indvar_flatten_reg_313 : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal indvar_flatten_reg_3130 : STD_LOGIC;
  signal lineBuffer_0_U_n_33 : STD_LOGIC;
  signal lineBuffer_0_U_n_35 : STD_LOGIC;
  signal lineBuffer_0_addr_2_reg_10360 : STD_LOGIC;
  signal \lineBuffer_0_addr_2_reg_1036[4]_i_1_n_0\ : STD_LOGIC;
  signal lineBuffer_0_q0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal lineBuffer_0_we1 : STD_LOGIC;
  signal lineBuffer_1_U_n_64 : STD_LOGIC;
  signal lineBuffer_1_U_n_66 : STD_LOGIC;
  signal lineBuffer_1_U_n_67 : STD_LOGIC;
  signal lineBuffer_1_U_n_68 : STD_LOGIC;
  signal lineBuffer_1_U_n_69 : STD_LOGIC;
  signal lineBuffer_1_U_n_70 : STD_LOGIC;
  signal lineBuffer_1_addr_2_reg_1042 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal lineBuffer_1_q0 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal maxValue_17_0_maxVal_fu_747_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal maxValue_17_0_maxVal_reg_1057 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_100_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_101_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_102_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_103_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_104_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_105_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_106_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_10_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_11_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_12_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_13_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_15_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_16_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_17_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_18_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_19_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_20_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_21_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_22_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_24_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_25_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_26_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_27_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_28_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_29_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_30_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_31_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_32_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_33_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_34_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_35_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_36_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_37_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_38_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_39_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_41_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_42_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_43_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_44_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_45_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_46_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_47_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_48_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_50_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_51_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_52_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_53_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_54_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_55_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_56_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_57_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_58_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_59_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_60_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_61_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_62_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_63_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_64_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_65_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_67_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_68_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_69_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_6_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_70_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_71_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_72_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_73_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_74_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_75_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_76_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_77_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_78_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_79_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_7_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_80_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_81_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_82_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_83_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_84_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_85_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_86_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_87_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_88_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_89_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_8_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_90_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_91_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_92_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_93_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_94_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_95_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_96_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_97_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_98_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_99_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057[31]_i_9_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_3\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_3\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_3\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_3\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_3\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_0\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_1\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_2\ : STD_LOGIC;
  signal \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_3\ : STD_LOGIC;
  signal \^outstream_tvalid\ : STD_LOGIC;
  signal outStream_V_data_V_1_ack_in : STD_LOGIC;
  signal outStream_V_data_V_1_load_A : STD_LOGIC;
  signal outStream_V_data_V_1_load_B : STD_LOGIC;
  signal outStream_V_data_V_1_payload_A : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \outStream_V_data_V_1_payload_A[10]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[11]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[12]_i_3_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[12]_i_4_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[12]_i_5_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[12]_i_6_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[12]_i_7_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[13]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[14]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[15]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[16]_i_3_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[16]_i_4_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[16]_i_5_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[16]_i_6_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[16]_i_7_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[17]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[18]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[19]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[1]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[2]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_10_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_11_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_12_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_13_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_14_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_15_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_16_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_18_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_19_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_20_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_21_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_22_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_23_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_24_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_25_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_27_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_28_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_29_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_30_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_31_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_32_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_33_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_34_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_35_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_36_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_37_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_38_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_39_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_40_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_41_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_42_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_5_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_6_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_7_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[31]_i_9_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[3]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[4]_i_3_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[4]_i_4_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[4]_i_5_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[4]_i_6_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[4]_i_7_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[4]_i_8_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[5]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[6]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[7]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[8]_i_3_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[8]_i_4_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[8]_i_5_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[8]_i_6_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[8]_i_7_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A[9]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_3\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_1\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_2\ : STD_LOGIC;
  signal \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_3\ : STD_LOGIC;
  signal outStream_V_data_V_1_payload_B : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal outStream_V_data_V_1_sel : STD_LOGIC;
  signal outStream_V_data_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_data_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_data_V_1_sel_wr052_out : STD_LOGIC;
  signal outStream_V_data_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_data_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_data_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_dest_V_1_ack_in : STD_LOGIC;
  signal \outStream_V_dest_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_dest_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal outStream_V_id_V_1_ack_in : STD_LOGIC;
  signal \outStream_V_id_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_id_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_id_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_keep_V_1_ack_in : STD_LOGIC;
  signal \outStream_V_keep_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_keep_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_keep_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_last_V_1_ack_in : STD_LOGIC;
  signal outStream_V_last_V_1_load_A : STD_LOGIC;
  signal outStream_V_last_V_1_load_B : STD_LOGIC;
  signal outStream_V_last_V_1_payload_A : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_11_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_15_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_17_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_18_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_19_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_20_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_21_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_22_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_23_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_24_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_25_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_26_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_27_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_28_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_29_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_2_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_30_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_31_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_32_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_33_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_34_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_35_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_36_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_37_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_38_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_39_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_3_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_40_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_41_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_42_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_43_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_44_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_45_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_46_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_47_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_48_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_49_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_4_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A[0]_i_5_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_1\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_3\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_1\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_3\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_3\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_1\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_3\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_1\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_3\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_1\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_3\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_1\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_3\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_1\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_2\ : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_3\ : STD_LOGIC;
  signal outStream_V_last_V_1_payload_B : STD_LOGIC;
  signal \outStream_V_last_V_1_payload_B[0]_i_1_n_0\ : STD_LOGIC;
  signal outStream_V_last_V_1_sel : STD_LOGIC;
  signal outStream_V_last_V_1_sel_rd_i_1_n_0 : STD_LOGIC;
  signal outStream_V_last_V_1_sel_wr : STD_LOGIC;
  signal outStream_V_last_V_1_sel_wr_i_1_n_0 : STD_LOGIC;
  signal \outStream_V_last_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_last_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_strb_V_1_ack_in : STD_LOGIC;
  signal \outStream_V_strb_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_strb_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_strb_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal outStream_V_user_V_1_ack_in : STD_LOGIC;
  signal \outStream_V_user_V_1_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_user_V_1_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \outStream_V_user_V_1_state_reg_n_0_[0]\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_69_in : STD_LOGIC;
  signal p_72_in : STD_LOGIC;
  signal p_76_in : STD_LOGIC;
  signal p_81_in : STD_LOGIC;
  signal readCount_1_fu_170 : STD_LOGIC;
  signal readCount_1_fu_1700 : STD_LOGIC;
  signal \readCount_1_fu_170[0]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[0]_i_5_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[0]_i_6_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[0]_i_7_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[12]_i_2_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[12]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[12]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[12]_i_5_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[16]_i_2_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[16]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[16]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[16]_i_5_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[20]_i_2_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[20]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[20]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[20]_i_5_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[24]_i_2_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[24]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[24]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[24]_i_5_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[28]_i_2_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[28]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[28]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[28]_i_5_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[4]_i_2_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[4]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[4]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[4]_i_5_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[8]_i_2_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[8]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[8]_i_4_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170[8]_i_5_n_0\ : STD_LOGIC;
  signal readCount_1_fu_170_reg : STD_LOGIC_VECTOR ( 31 downto 4 );
  signal \readCount_1_fu_170_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg_n_0_[0]\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg_n_0_[1]\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg_n_0_[2]\ : STD_LOGIC;
  signal \readCount_1_fu_170_reg_n_0_[3]\ : STD_LOGIC;
  signal result_fu_807_p3 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal result_reg_1068 : STD_LOGIC_VECTOR ( 19 downto 0 );
  signal result_reg_10680 : STD_LOGIC;
  signal \result_reg_1068[13]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_18_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_19_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg_1068[13]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_18_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_19_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_20_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg_1068[17]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_18_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg_1068[19]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg_1068[1]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_18_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_19_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_20_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg_1068[5]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_10_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_11_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_12_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_13_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_14_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_15_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_16_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_17_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_18_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_19_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_20_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_4_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_5_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_6_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_7_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_8_n_0\ : STD_LOGIC;
  signal \result_reg_1068[9]_i_9_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_4\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_5\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_6\ : STD_LOGIC;
  signal \result_reg_1068_reg[13]_i_3_n_7\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_4\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_5\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_6\ : STD_LOGIC;
  signal \result_reg_1068_reg[17]_i_3_n_7\ : STD_LOGIC;
  signal \result_reg_1068_reg[19]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[19]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[19]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[19]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[19]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[19]_i_3_n_6\ : STD_LOGIC;
  signal \result_reg_1068_reg[19]_i_3_n_7\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_4\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_5\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_6\ : STD_LOGIC;
  signal \result_reg_1068_reg[1]_i_3_n_7\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_4\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_5\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_6\ : STD_LOGIC;
  signal \result_reg_1068_reg[5]_i_3_n_7\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_2_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_2_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_2_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_2_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_0\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_1\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_2\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_3\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_4\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_5\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_6\ : STD_LOGIC;
  signal \result_reg_1068_reg[9]_i_3_n_7\ : STD_LOGIC;
  signal tmp_10_reg_927 : STD_LOGIC;
  signal \tmp_10_reg_927[0]_i_1_n_0\ : STD_LOGIC;
  signal tmp_13_reg_1063 : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_10_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_11_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_12_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_13_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_14_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_15_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_16_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_17_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_18_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_19_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_20_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_21_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_22_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_23_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_24_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_25_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_26_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_27_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_28_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_29_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_30_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_6_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_7_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_8_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063[0]_i_9_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \tmp_13_reg_1063_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_1063_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \tmp_13_reg_1063_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_13_reg_1063_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \tmp_13_reg_1063_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \tmp_13_reg_1063_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal tmp_1_i_i_fu_781_p2 : STD_LOGIC_VECTOR ( 21 downto 2 );
  signal tmp_3_mid2_v_reg_922 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \tmp_3_mid2_v_reg_922[0]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_3_mid2_v_reg_922[1]_i_1_n_0\ : STD_LOGIC;
  signal \tmp_3_mid2_v_reg_922[1]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_3_mid2_v_reg_922[1]_i_3_n_0\ : STD_LOGIC;
  signal tmp_4_i_i_fu_849_p2 : STD_LOGIC_VECTOR ( 19 downto 1 );
  signal tmp_5_cast_fu_548_p1 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal tmp_7_fu_677_p2 : STD_LOGIC;
  signal tmp_7_reg_1048 : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_11_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_12_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_13_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_14_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_15_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_16_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_17_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_18_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_19_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_20_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_3_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_4_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_6_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_7_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_8_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048[0]_i_9_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_10_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_10_n_1\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_10_n_2\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_10_n_3\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_2_n_1\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_2_n_2\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_2_n_3\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_5_n_0\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_5_n_1\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_5_n_2\ : STD_LOGIC;
  signal \tmp_7_reg_1048_reg[0]_i_5_n_3\ : STD_LOGIC;
  signal tmp_9_reg_1013 : STD_LOGIC;
  signal \tmp_9_reg_1013[0]_i_1_n_0\ : STD_LOGIC;
  signal tmp_data_V_2_fu_866_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal tmp_reg_1032 : STD_LOGIC;
  signal \tmp_reg_1032[0]_i_2_n_0\ : STD_LOGIC;
  signal \tmp_reg_1032[0]_i_3_n_0\ : STD_LOGIC;
  signal windowRightCol_1_reg_1073 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal window_0_0_fu_154 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal window_0_0_read_as_fu_150 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal window_0_1_fu_158 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal window_1_0_phi_fu_417_p4 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal window_1_0_read_as_fu_162 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal window_1_0_reg_414 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \window_1_0_reg_414[0]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[10]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[11]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[12]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[13]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[14]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[15]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[16]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[17]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[18]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[19]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[1]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[20]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[21]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[22]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[23]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[24]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[25]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[26]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[27]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[28]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[29]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[2]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[30]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[31]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[3]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[4]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[5]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[6]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[7]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[8]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_0_reg_414[9]_i_1_n_0\ : STD_LOGIC;
  signal window_1_1_1_reg_347 : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[0]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[10]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[11]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[12]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[13]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[14]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[15]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[16]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[17]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[18]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[19]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[1]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[20]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[21]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[22]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[23]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[24]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[25]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[26]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[27]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[28]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[29]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[2]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[30]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[31]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[3]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[4]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[5]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[6]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[7]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[8]\ : STD_LOGIC;
  signal \window_1_1_1_reg_347_reg_n_0_[9]\ : STD_LOGIC;
  signal window_1_1_reg_403 : STD_LOGIC;
  signal \window_1_1_reg_403[0]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[10]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[11]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[12]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[13]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[14]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[15]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[16]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[17]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[18]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[19]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[1]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[20]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[21]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[22]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[23]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[24]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[25]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[26]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[27]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[28]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[29]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[2]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[30]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[31]_i_2_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[3]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[4]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[5]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[6]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[7]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[8]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403[9]_i_1_n_0\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[0]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[10]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[11]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[12]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[13]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[14]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[15]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[16]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[17]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[18]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[19]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[1]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[20]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[21]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[22]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[23]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[24]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[25]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[26]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[27]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[28]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[29]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[2]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[30]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[31]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[3]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[4]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[5]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[6]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[7]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[8]\ : STD_LOGIC;
  signal \window_1_1_reg_403_reg_n_0_[9]\ : STD_LOGIC;
  signal window_1_2_1_reg_335 : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[0]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[10]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[11]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[12]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[13]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[14]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[15]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[16]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[17]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[18]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[19]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[1]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[20]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[21]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[22]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[23]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[24]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[25]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[26]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[27]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[28]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[29]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[2]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[30]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[31]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[3]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[4]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[5]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[6]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[7]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[8]\ : STD_LOGIC;
  signal \window_1_2_1_reg_335_reg_n_0_[9]\ : STD_LOGIC;
  signal window_2_2_2_fu_174 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal window_2_2_7_fu_566_p3 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal writeCount_1_fu_166 : STD_LOGIC;
  signal \writeCount_1_fu_166[0]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[0]_i_5_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[0]_i_6_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[0]_i_7_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[12]_i_2_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[12]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[12]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[12]_i_5_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[16]_i_2_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[16]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[16]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[16]_i_5_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[20]_i_2_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[20]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[20]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[20]_i_5_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[24]_i_2_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[24]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[24]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[24]_i_5_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[28]_i_2_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[28]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[28]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[28]_i_5_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[4]_i_2_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[4]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[4]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[4]_i_5_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[8]_i_2_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[8]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[8]_i_4_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166[8]_i_5_n_0\ : STD_LOGIC;
  signal writeCount_1_fu_166_reg : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \writeCount_1_fu_166_reg[0]_i_3_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[0]_i_3_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[0]_i_3_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[0]_i_3_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[0]_i_3_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[0]_i_3_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[0]_i_3_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[0]_i_3_n_7\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[28]_i_1_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[28]_i_1_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[28]_i_1_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[28]_i_1_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \writeCount_1_fu_166_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal writeCount_fu_828_p2 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal x1_reg_301 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal x4_reg_359 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal x_1_fu_438_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_1_reg_8990 : STD_LOGIC;
  signal \x_1_reg_899[2]_i_1_n_0\ : STD_LOGIC;
  signal \x_1_reg_899[2]_i_2_n_0\ : STD_LOGIC;
  signal \x_1_reg_899[3]_i_3_n_0\ : STD_LOGIC;
  signal \x_1_reg_899[3]_i_4_n_0\ : STD_LOGIC;
  signal \x_1_reg_899_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_2_fu_459_p2 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal x_2_reg_9080 : STD_LOGIC;
  signal \x_2_reg_908[3]_i_2_n_0\ : STD_LOGIC;
  signal \x_2_reg_908[4]_i_3_n_0\ : STD_LOGIC;
  signal \x_2_reg_908[4]_i_4_n_0\ : STD_LOGIC;
  signal \x_2_reg_908_reg__0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal x_3_fu_560_p2 : STD_LOGIC_VECTOR ( 1 to 1 );
  signal x_4_fu_694_p2 : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal x_assign_reg_392 : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal \x_assign_reg_392[4]_i_2_n_0\ : STD_LOGIC;
  signal \x_assign_reg_392[4]_i_3_n_0\ : STD_LOGIC;
  signal \x_assign_reg_392[4]_i_4_n_0\ : STD_LOGIC;
  signal \x_assign_reg_392[4]_i_5_n_0\ : STD_LOGIC;
  signal \x_assign_reg_392[4]_i_6_n_0\ : STD_LOGIC;
  signal x_reg_289 : STD_LOGIC;
  signal \x_reg_289_reg_n_0_[0]\ : STD_LOGIC;
  signal \x_reg_289_reg_n_0_[1]\ : STD_LOGIC;
  signal \x_reg_289_reg_n_0_[2]\ : STD_LOGIC;
  signal \x_reg_289_reg_n_0_[3]\ : STD_LOGIC;
  signal y3_phi_fu_328_p4 : STD_LOGIC_VECTOR ( 0 to 0 );
  signal y3_reg_324 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \y3_reg_324[0]_i_1_n_0\ : STD_LOGIC;
  signal \y3_reg_324[1]_i_1_n_0\ : STD_LOGIC;
  signal \y_assign_cast7_mid2_s_reg_1027[0]_i_1_n_0\ : STD_LOGIC;
  signal y_assign_cast7_mid2_s_reg_1027_reg : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \y_assign_reg_381[0]_i_1_n_0\ : STD_LOGIC;
  signal \y_assign_reg_381_reg_n_0_[0]\ : STD_LOGIC;
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_17_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_26_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 to 2 );
  signal \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_4_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_8_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_outStream_V_last_V_1_payload_A_reg[0]_i_13_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_outStream_V_last_V_1_payload_A_reg[0]_i_13_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_readCount_1_fu_170_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_result_reg_1068_reg[19]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_result_reg_1068_reg[19]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_result_reg_1068_reg[19]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_result_reg_1068_reg[1]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \NLW_tmp_13_reg_1063_reg[0]_i_2_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_tmp_13_reg_1063_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \NLW_tmp_13_reg_1063_reg[0]_i_3_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_7_reg_1048_reg[0]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_tmp_7_reg_1048_reg[0]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_7_reg_1048_reg[0]_i_10_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_7_reg_1048_reg[0]_i_2_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_tmp_7_reg_1048_reg[0]_i_5_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_writeCount_1_fu_166_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ap_CS_fsm[3]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \ap_CS_fsm[6]_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \ap_CS_fsm[7]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \ap_CS_fsm[8]_i_1\ : label is "soft_lutpair89";
  attribute FSM_ENCODING : string;
  attribute FSM_ENCODING of \ap_CS_fsm_reg[0]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[1]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[2]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[3]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[4]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[5]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[6]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[7]\ : label is "none";
  attribute FSM_ENCODING of \ap_CS_fsm_reg[8]\ : label is "none";
  attribute SOFT_HLUTNM of ap_enable_reg_pp2_iter0_i_2 : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \cond_mid2_reg_932[0]_i_2\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \cond_mid2_reg_932[0]_i_3\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \cond_mid2_reg_932[0]_i_4\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \exitcond1_reg_895[0]_i_1\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \exitcond4_reg_904[0]_i_1\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \exitcond_flatten8_reg_1018[0]_i_2\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \exitcond_flatten_reg_913[0]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \indvar_flatten6_reg_370[1]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \indvar_flatten6_reg_370[2]_i_1\ : label is "soft_lutpair113";
  attribute SOFT_HLUTNM of \indvar_flatten6_reg_370[3]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \indvar_flatten6_reg_370[4]_i_1\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \indvar_flatten6_reg_370[7]_i_1\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \indvar_flatten6_reg_370[8]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \indvar_flatten6_reg_370[9]_i_1\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_313[1]_i_1\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \indvar_flatten_reg_313[2]_i_2\ : label is "soft_lutpair120";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[0]_i_1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[10]_i_1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[11]_i_1\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[12]_i_1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[13]_i_1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[14]_i_1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[15]_i_1\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[16]_i_1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[17]_i_1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[18]_i_1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[19]_i_1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[1]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[20]_i_1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[21]_i_1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[22]_i_1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[23]_i_1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[24]_i_1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[25]_i_1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[26]_i_1\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[27]_i_1\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[28]_i_1\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[29]_i_1\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[2]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[30]_i_1\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_100\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_101\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_102\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_103\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_104\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_105\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_106\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_2\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_32\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_33\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_34\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_35\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_36\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_37\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_38\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_39\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_58\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_59\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_60\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_61\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_62\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_63\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_64\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_65\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_83\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_84\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_85\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_86\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_87\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_88\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_89\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_90\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[31]_i_99\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[3]_i_1\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[4]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[5]_i_1\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[6]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[7]_i_1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[8]_i_1\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \maxValue_17_0_maxVal_reg_1057[9]_i_1\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \outStream_TDATA[0]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \outStream_TDATA[10]_INST_0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \outStream_TDATA[11]_INST_0\ : label is "soft_lutpair123";
  attribute SOFT_HLUTNM of \outStream_TDATA[12]_INST_0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \outStream_TDATA[13]_INST_0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \outStream_TDATA[14]_INST_0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \outStream_TDATA[15]_INST_0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \outStream_TDATA[16]_INST_0\ : label is "soft_lutpair127";
  attribute SOFT_HLUTNM of \outStream_TDATA[17]_INST_0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \outStream_TDATA[18]_INST_0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \outStream_TDATA[19]_INST_0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \outStream_TDATA[1]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \outStream_TDATA[20]_INST_0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \outStream_TDATA[21]_INST_0\ : label is "soft_lutpair131";
  attribute SOFT_HLUTNM of \outStream_TDATA[22]_INST_0\ : label is "soft_lutpair130";
  attribute SOFT_HLUTNM of \outStream_TDATA[23]_INST_0\ : label is "soft_lutpair129";
  attribute SOFT_HLUTNM of \outStream_TDATA[24]_INST_0\ : label is "soft_lutpair128";
  attribute SOFT_HLUTNM of \outStream_TDATA[25]_INST_0\ : label is "soft_lutpair126";
  attribute SOFT_HLUTNM of \outStream_TDATA[26]_INST_0\ : label is "soft_lutpair125";
  attribute SOFT_HLUTNM of \outStream_TDATA[27]_INST_0\ : label is "soft_lutpair124";
  attribute SOFT_HLUTNM of \outStream_TDATA[28]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \outStream_TDATA[29]_INST_0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \outStream_TDATA[2]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \outStream_TDATA[30]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \outStream_TDATA[31]_INST_0\ : label is "soft_lutpair116";
  attribute SOFT_HLUTNM of \outStream_TDATA[3]_INST_0\ : label is "soft_lutpair118";
  attribute SOFT_HLUTNM of \outStream_TDATA[4]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \outStream_TDATA[5]_INST_0\ : label is "soft_lutpair117";
  attribute SOFT_HLUTNM of \outStream_TDATA[6]_INST_0\ : label is "soft_lutpair119";
  attribute SOFT_HLUTNM of \outStream_TDATA[7]_INST_0\ : label is "soft_lutpair115";
  attribute SOFT_HLUTNM of \outStream_TDATA[8]_INST_0\ : label is "soft_lutpair121";
  attribute SOFT_HLUTNM of \outStream_TDATA[9]_INST_0\ : label is "soft_lutpair122";
  attribute SOFT_HLUTNM of \outStream_TLAST[0]_INST_0\ : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[10]_i_2\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[11]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[12]_i_3\ : label is "soft_lutpair100";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[13]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[14]_i_2\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[15]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[16]_i_3\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[17]_i_2\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[18]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[19]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[1]_i_2\ : label is "soft_lutpair94";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[2]_i_2\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[3]_i_2\ : label is "soft_lutpair95";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[4]_i_3\ : label is "soft_lutpair98";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[5]_i_2\ : label is "soft_lutpair101";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[6]_i_2\ : label is "soft_lutpair96";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[7]_i_2\ : label is "soft_lutpair97";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_payload_A[9]_i_2\ : label is "soft_lutpair99";
  attribute SOFT_HLUTNM of outStream_V_data_V_1_sel_rd_i_1 : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of outStream_V_data_V_1_sel_wr_i_1 : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \outStream_V_data_V_1_state[1]_i_1\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \outStream_V_last_V_1_payload_A[0]_i_6\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of \outStream_V_last_V_1_payload_B[0]_i_2\ : label is "soft_lutpair108";
  attribute SOFT_HLUTNM of outStream_V_last_V_1_sel_rd_i_1 : label is "soft_lutpair114";
  attribute SOFT_HLUTNM of outStream_V_last_V_1_sel_wr_i_1 : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \outStream_V_last_V_1_state[1]_i_1\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \outStream_V_strb_V_1_state[1]_i_1\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \result_reg_1068[0]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \result_reg_1068[10]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \result_reg_1068[11]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \result_reg_1068[12]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \result_reg_1068[13]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \result_reg_1068[14]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \result_reg_1068[15]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \result_reg_1068[16]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \result_reg_1068[17]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \result_reg_1068[18]_i_1\ : label is "soft_lutpair103";
  attribute SOFT_HLUTNM of \result_reg_1068[19]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \result_reg_1068[1]_i_1\ : label is "soft_lutpair102";
  attribute SOFT_HLUTNM of \result_reg_1068[2]_i_1\ : label is "soft_lutpair104";
  attribute SOFT_HLUTNM of \result_reg_1068[3]_i_1\ : label is "soft_lutpair105";
  attribute SOFT_HLUTNM of \result_reg_1068[4]_i_1\ : label is "soft_lutpair106";
  attribute SOFT_HLUTNM of \result_reg_1068[5]_i_1\ : label is "soft_lutpair107";
  attribute SOFT_HLUTNM of \result_reg_1068[6]_i_1\ : label is "soft_lutpair109";
  attribute SOFT_HLUTNM of \result_reg_1068[7]_i_1\ : label is "soft_lutpair112";
  attribute SOFT_HLUTNM of \result_reg_1068[8]_i_1\ : label is "soft_lutpair110";
  attribute SOFT_HLUTNM of \result_reg_1068[9]_i_1\ : label is "soft_lutpair111";
  attribute SOFT_HLUTNM of \tmp_10_reg_927[0]_i_1\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \tmp_13_reg_1063[0]_i_30\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \tmp_3_mid2_v_reg_922[1]_i_2\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \tmp_3_mid2_v_reg_922[1]_i_3\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \tmp_3_mid2_v_reg_922[1]_i_4\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \window_1_1_reg_403[31]_i_2\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \x_1_reg_899[0]_i_1\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \x_1_reg_899[1]_i_1\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \x_1_reg_899[2]_i_2\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \x_1_reg_899[3]_i_3\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \x_1_reg_899[3]_i_4\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \x_2_reg_908[1]_i_1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \x_2_reg_908[3]_i_2\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \x_assign_reg_392[1]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \x_assign_reg_392[2]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \x_assign_reg_392[3]_i_1\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \x_assign_reg_392[4]_i_3\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \x_assign_reg_392[4]_i_5\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \x_assign_reg_392[4]_i_6\ : label is "soft_lutpair44";
begin
  inStream_TREADY <= \^instream_tready\;
  outStream_TDEST(5) <= \<const0>\;
  outStream_TDEST(4) <= \<const0>\;
  outStream_TDEST(3) <= \<const0>\;
  outStream_TDEST(2) <= \<const0>\;
  outStream_TDEST(1) <= \<const0>\;
  outStream_TDEST(0) <= \<const0>\;
  outStream_TID(4) <= \<const0>\;
  outStream_TID(3) <= \<const0>\;
  outStream_TID(2) <= \<const0>\;
  outStream_TID(1) <= \<const0>\;
  outStream_TID(0) <= \<const0>\;
  outStream_TKEEP(3) <= \<const1>\;
  outStream_TKEEP(2) <= \<const1>\;
  outStream_TKEEP(1) <= \<const1>\;
  outStream_TKEEP(0) <= \<const1>\;
  outStream_TSTRB(3) <= \<const0>\;
  outStream_TSTRB(2) <= \<const0>\;
  outStream_TSTRB(1) <= \<const0>\;
  outStream_TSTRB(0) <= \<const0>\;
  outStream_TUSER(1) <= \<const0>\;
  outStream_TUSER(0) <= \<const0>\;
  outStream_TVALID <= \^outstream_tvalid\;
  s_axi_CTRL_BRESP(1) <= \<const0>\;
  s_axi_CTRL_BRESP(0) <= \<const0>\;
  s_axi_CTRL_RRESP(1) <= \<const0>\;
  s_axi_CTRL_RRESP(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
\ap_CS_fsm[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"22222022"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \ap_CS_fsm[2]_i_2_n_0\,
      I2 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \exitcond1_reg_895_reg_n_0_[0]\,
      O => \ap_CS_fsm[1]_i_2_n_0\
    );
\ap_CS_fsm[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000AA8A00000000"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => \exitcond1_reg_895_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      I4 => \ap_CS_fsm[2]_i_2_n_0\,
      I5 => ap_enable_reg_pp0_iter0,
      O => ap_NS_fsm(2)
    );
\ap_CS_fsm[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0000EFFFEFFF"
    )
        port map (
      I0 => \x_reg_289_reg_n_0_[1]\,
      I1 => \x_reg_289_reg_n_0_[0]\,
      I2 => \x_reg_289_reg_n_0_[3]\,
      I3 => \x_reg_289_reg_n_0_[2]\,
      I4 => \ap_CS_fsm[2]_i_3_n_0\,
      I5 => \x_1_reg_899[3]_i_4_n_0\,
      O => \ap_CS_fsm[2]_i_2_n_0\
    );
\ap_CS_fsm[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFF7"
    )
        port map (
      I0 => \x_1_reg_899_reg__0\(3),
      I1 => \x_1_reg_899_reg__0\(2),
      I2 => \x_1_reg_899_reg__0\(1),
      I3 => \x_1_reg_899_reg__0\(0),
      O => \ap_CS_fsm[2]_i_3_n_0\
    );
\ap_CS_fsm[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBFAAAA"
    )
        port map (
      I0 => ap_CS_fsm_state4,
      I1 => \ap_CS_fsm_reg[4]_i_2_n_0\,
      I2 => ap_enable_reg_pp1_iter0,
      I3 => \ap_CS_fsm[3]_i_2_n_0\,
      I4 => ap_CS_fsm_pp1_stage0,
      O => ap_NS_fsm(3)
    );
\ap_CS_fsm[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp1_iter1,
      I2 => \exitcond4_reg_904_reg_n_0_[0]\,
      O => \ap_CS_fsm[3]_i_2_n_0\
    );
\ap_CS_fsm[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888808800000000"
    )
        port map (
      I0 => \ap_CS_fsm_reg[4]_i_2_n_0\,
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => \exitcond4_reg_904_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp1_iter1,
      I4 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      I5 => ap_enable_reg_pp1_iter0,
      O => ap_NS_fsm(4)
    );
\ap_CS_fsm[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => x1_reg_301(1),
      I1 => x1_reg_301(2),
      I2 => x1_reg_301(4),
      I3 => x1_reg_301(0),
      I4 => x1_reg_301(3),
      O => \ap_CS_fsm[4]_i_3_n_0\
    );
\ap_CS_fsm[4]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \x_2_reg_908_reg__0\(1),
      I1 => \x_2_reg_908_reg__0\(2),
      I2 => \x_2_reg_908_reg__0\(4),
      I3 => \x_2_reg_908_reg__0\(0),
      I4 => \x_2_reg_908_reg__0\(3),
      O => \ap_CS_fsm[4]_i_4_n_0\
    );
\ap_CS_fsm[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEFFFFFFF00FF00"
    )
        port map (
      I0 => indvar_flatten_reg_313(0),
      I1 => indvar_flatten_reg_313(1),
      I2 => indvar_flatten_reg_313(2),
      I3 => ap_CS_fsm_state7,
      I4 => ap_enable_reg_pp2_iter0,
      I5 => ap_CS_fsm_pp2_stage0,
      O => ap_NS_fsm(5)
    );
\ap_CS_fsm[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => indvar_flatten_reg_313(0),
      I1 => indvar_flatten_reg_313(1),
      I2 => indvar_flatten_reg_313(2),
      I3 => ap_enable_reg_pp2_iter0,
      I4 => ap_CS_fsm_pp2_stage0,
      O => \ap_CS_fsm[6]_i_1_n_0\
    );
\ap_CS_fsm[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"BA"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => \ap_CS_fsm[8]_i_3_n_0\,
      I2 => ap_CS_fsm_pp3_stage0,
      O => ap_NS_fsm(7)
    );
\ap_CS_fsm[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \ap_CS_fsm[8]_i_2_n_0\,
      I1 => ap_CS_fsm_state15,
      I2 => \ap_CS_fsm[8]_i_3_n_0\,
      I3 => ap_CS_fsm_pp3_stage0,
      O => ap_NS_fsm(8)
    );
\ap_CS_fsm[8]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => outStream_V_strb_V_1_ack_in,
      I1 => outStream_V_keep_V_1_ack_in,
      I2 => outStream_V_user_V_1_ack_in,
      I3 => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_7,
      O => \ap_CS_fsm[8]_i_2_n_0\
    );
\ap_CS_fsm[8]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000055550040"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter1_reg_n_0,
      I2 => ap_CS_fsm_pp3_stage0,
      I3 => ap_enable_reg_pp3_iter0,
      I4 => ap_enable_reg_pp3_iter3_reg_n_0,
      I5 => ap_enable_reg_pp3_iter2,
      O => \ap_CS_fsm[8]_i_3_n_0\
    );
\ap_CS_fsm_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(0),
      Q => \ap_CS_fsm_reg_n_0_[0]\,
      S => ap_rst_n_inv
    );
\ap_CS_fsm_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(1),
      Q => ap_CS_fsm_pp0_stage0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(2),
      Q => ap_CS_fsm_state4,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(3),
      Q => ap_CS_fsm_pp1_stage0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(4),
      Q => ap_CS_fsm_state7,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[4]_i_2\: unisim.vcomponents.MUXF7
     port map (
      I0 => \ap_CS_fsm[4]_i_3_n_0\,
      I1 => \ap_CS_fsm[4]_i_4_n_0\,
      O => \ap_CS_fsm_reg[4]_i_2_n_0\,
      S => \x_2_reg_908[4]_i_4_n_0\
    );
\ap_CS_fsm_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(5),
      Q => ap_CS_fsm_pp2_stage0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \ap_CS_fsm[6]_i_1_n_0\,
      Q => ap_CS_fsm_state10,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(7),
      Q => ap_CS_fsm_pp3_stage0,
      R => ap_rst_n_inv
    );
\ap_CS_fsm_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_NS_fsm(8),
      Q => ap_CS_fsm_state15,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp0_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_12,
      Q => ap_enable_reg_pp0_iter0,
      R => '0'
    );
ap_enable_reg_pp0_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_11,
      Q => ap_enable_reg_pp0_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp1_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E0E0"
    )
        port map (
      I0 => ap_enable_reg_pp1_iter0,
      I1 => ap_CS_fsm_state4,
      I2 => ap_rst_n,
      I3 => p_72_in,
      I4 => \ap_CS_fsm_reg[4]_i_2_n_0\,
      O => ap_enable_reg_pp1_iter0_i_1_n_0
    );
ap_enable_reg_pp1_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp1_iter0_i_1_n_0,
      Q => ap_enable_reg_pp1_iter0,
      R => '0'
    );
ap_enable_reg_pp1_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555535533003300"
    )
        port map (
      I0 => \ap_CS_fsm_reg[4]_i_2_n_0\,
      I1 => ap_CS_fsm_state4,
      I2 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp1_iter1,
      I4 => \exitcond4_reg_904_reg_n_0_[0]\,
      I5 => ap_CS_fsm_pp1_stage0,
      O => ap_enable_reg_pp1_iter1_i_1_n_0
    );
ap_enable_reg_pp1_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp1_iter1_i_1_n_0,
      Q => ap_enable_reg_pp1_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp2_iter0_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00E0E0E0"
    )
        port map (
      I0 => ap_enable_reg_pp2_iter0,
      I1 => ap_CS_fsm_state7,
      I2 => ap_rst_n,
      I3 => ap_CS_fsm_pp2_stage0,
      I4 => ap_enable_reg_pp2_iter0_i_2_n_0,
      O => ap_enable_reg_pp2_iter0_i_1_n_0
    );
ap_enable_reg_pp2_iter0_i_2: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => indvar_flatten_reg_313(2),
      I1 => indvar_flatten_reg_313(1),
      I2 => indvar_flatten_reg_313(0),
      O => ap_enable_reg_pp2_iter0_i_2_n_0
    );
ap_enable_reg_pp2_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp2_iter0_i_1_n_0,
      Q => ap_enable_reg_pp2_iter0,
      R => '0'
    );
ap_enable_reg_pp2_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EF00EFFFEF00EF00"
    )
        port map (
      I0 => indvar_flatten_reg_313(0),
      I1 => indvar_flatten_reg_313(1),
      I2 => indvar_flatten_reg_313(2),
      I3 => ap_CS_fsm_pp2_stage0,
      I4 => ap_CS_fsm_state7,
      I5 => ap_enable_reg_pp2_iter1,
      O => ap_enable_reg_pp2_iter1_i_1_n_0
    );
ap_enable_reg_pp2_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp2_iter1_i_1_n_0,
      Q => ap_enable_reg_pp2_iter1,
      R => ap_rst_n_inv
    );
ap_enable_reg_pp3_iter0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DDD00000FFF00000"
    )
        port map (
      I0 => ap_CS_fsm_pp3_stage0,
      I1 => lineBuffer_0_U_n_35,
      I2 => ap_enable_reg_pp3_iter0,
      I3 => ap_CS_fsm_state10,
      I4 => ap_rst_n,
      I5 => \x_assign_reg_392[4]_i_4_n_0\,
      O => ap_enable_reg_pp3_iter0_i_1_n_0
    );
ap_enable_reg_pp3_iter0_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp3_iter0_i_1_n_0,
      Q => ap_enable_reg_pp3_iter0,
      R => '0'
    );
ap_enable_reg_pp3_iter1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"22000000F2D00000"
    )
        port map (
      I0 => ap_CS_fsm_pp3_stage0,
      I1 => lineBuffer_0_U_n_35,
      I2 => ap_enable_reg_pp3_iter1_reg_n_0,
      I3 => ap_enable_reg_pp3_iter0,
      I4 => ap_rst_n,
      I5 => ap_CS_fsm_state10,
      O => ap_enable_reg_pp3_iter1_i_1_n_0
    );
ap_enable_reg_pp3_iter1_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp3_iter1_i_1_n_0,
      Q => ap_enable_reg_pp3_iter1_reg_n_0,
      R => '0'
    );
ap_enable_reg_pp3_iter2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"C0C0A000"
    )
        port map (
      I0 => ap_enable_reg_pp3_iter1_reg_n_0,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => ap_rst_n,
      I3 => ap_enable_reg_pp3_iter0,
      I4 => lineBuffer_0_U_n_35,
      O => ap_enable_reg_pp3_iter2_i_1_n_0
    );
ap_enable_reg_pp3_iter2_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp3_iter2_i_1_n_0,
      Q => ap_enable_reg_pp3_iter2,
      R => '0'
    );
ap_enable_reg_pp3_iter3_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00C0A0A0"
    )
        port map (
      I0 => ap_enable_reg_pp3_iter2,
      I1 => ap_enable_reg_pp3_iter3_reg_n_0,
      I2 => ap_rst_n,
      I3 => ap_CS_fsm_state10,
      I4 => lineBuffer_0_U_n_35,
      O => ap_enable_reg_pp3_iter3_i_1_n_0
    );
ap_enable_reg_pp3_iter3_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => ap_enable_reg_pp3_iter3_i_1_n_0,
      Q => ap_enable_reg_pp3_iter3_reg_n_0,
      R => '0'
    );
\ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => \exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      Q => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      R => '0'
    );
\ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => lineBuffer_1_addr_2_reg_1042(0),
      Q => ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042(0),
      R => '0'
    );
\ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => lineBuffer_1_addr_2_reg_1042(1),
      Q => ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042(1),
      R => '0'
    );
\ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => lineBuffer_1_addr_2_reg_1042(2),
      Q => ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042(2),
      R => '0'
    );
\ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => lineBuffer_1_addr_2_reg_1042(3),
      Q => ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042(3),
      R => '0'
    );
\ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => lineBuffer_1_addr_2_reg_1042(4),
      Q => ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042(4),
      R => '0'
    );
\ap_pipeline_reg_pp3_iter1_tmp_reg_1032_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => tmp_reg_1032,
      Q => ap_pipeline_reg_pp3_iter1_tmp_reg_1032,
      R => '0'
    );
\ap_pipeline_reg_pp3_iter2_tmp_reg_1032[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E2"
    )
        port map (
      I0 => ap_pipeline_reg_pp3_iter1_tmp_reg_1032,
      I1 => lineBuffer_0_U_n_35,
      I2 => ap_pipeline_reg_pp3_iter2_tmp_reg_1032,
      O => \ap_pipeline_reg_pp3_iter2_tmp_reg_1032[0]_i_1_n_0\
    );
\ap_pipeline_reg_pp3_iter2_tmp_reg_1032_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \ap_pipeline_reg_pp3_iter2_tmp_reg_1032[0]_i_1_n_0\,
      Q => ap_pipeline_reg_pp3_iter2_tmp_reg_1032,
      R => '0'
    );
cnn_pool_d28x28_p2x2_CTRL_s_axi_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2_CTRL_s_axi
     port map (
      D(1 downto 0) => ap_NS_fsm(1 downto 0),
      Q(2) => ap_CS_fsm_state15,
      Q(1) => ap_CS_fsm_pp0_stage0,
      Q(0) => \ap_CS_fsm_reg_n_0_[0]\,
      SR(0) => ap_rst_n_inv,
      \ap_CS_fsm_reg[0]\ => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_7,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter0 => ap_enable_reg_pp0_iter0,
      ap_enable_reg_pp0_iter0_reg => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_12,
      ap_enable_reg_pp0_iter0_reg_0 => \ap_CS_fsm[1]_i_2_n_0\,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp0_iter1_reg => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_11,
      ap_rst_n => ap_rst_n,
      ctrl_read_reg_890 => ctrl_read_reg_890,
      \ctrl_read_reg_890_reg[0]\ => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_13,
      \exitcond1_reg_895_reg[0]\ => \exitcond1_reg_895_reg_n_0_[0]\,
      \inStream_V_data_V_0_state_reg[0]\ => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      interrupt => interrupt,
      \outStream_V_data_V_1_state_reg[1]\(0) => outStream_V_data_V_1_ack_in,
      \outStream_V_dest_V_1_state_reg[1]\(0) => outStream_V_dest_V_1_ack_in,
      \outStream_V_id_V_1_state_reg[1]\(0) => outStream_V_id_V_1_ack_in,
      \outStream_V_keep_V_1_state_reg[1]\(0) => outStream_V_keep_V_1_ack_in,
      \outStream_V_last_V_1_state_reg[1]\(0) => outStream_V_last_V_1_ack_in,
      \outStream_V_strb_V_1_state_reg[1]\(0) => outStream_V_strb_V_1_ack_in,
      \outStream_V_user_V_1_state_reg[1]\(0) => outStream_V_user_V_1_ack_in,
      p_76_in => p_76_in,
      s_axi_CTRL_ARADDR(4 downto 0) => s_axi_CTRL_ARADDR(4 downto 0),
      s_axi_CTRL_ARREADY => s_axi_CTRL_ARREADY,
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_AWADDR(4 downto 0) => s_axi_CTRL_AWADDR(4 downto 0),
      s_axi_CTRL_AWREADY => s_axi_CTRL_AWREADY,
      s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
      s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
      s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => s_axi_CTRL_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
      s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => s_axi_CTRL_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => s_axi_CTRL_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => s_axi_CTRL_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID,
      \x_reg_289_reg[0]\(0) => x_reg_289,
      \x_reg_289_reg[1]\ => \ap_CS_fsm[2]_i_2_n_0\
    );
\cond1_reg_948[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CACACAAACACACACA"
    )
        port map (
      I0 => \cond1_reg_948_reg_n_0_[0]\,
      I1 => x4_reg_359(0),
      I2 => ap_CS_fsm_pp2_stage0,
      I3 => indvar_flatten_reg_313(0),
      I4 => indvar_flatten_reg_313(1),
      I5 => indvar_flatten_reg_313(2),
      O => \cond1_reg_948[0]_i_1_n_0\
    );
\cond1_reg_948_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \cond1_reg_948[0]_i_1_n_0\,
      Q => \cond1_reg_948_reg_n_0_[0]\,
      R => '0'
    );
\cond_mid2_reg_932[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FA3A3A3A0A3A3A3A"
    )
        port map (
      I0 => \cond_mid2_reg_932_reg_n_0_[0]\,
      I1 => \cond_mid2_reg_932[0]_i_2_n_0\,
      I2 => ap_enable_reg_pp2_iter10,
      I3 => x4_reg_359(0),
      I4 => x4_reg_359(1),
      I5 => \cond_mid2_reg_932[0]_i_4_n_0\,
      O => \cond_mid2_reg_932[0]_i_1_n_0\
    );
\cond_mid2_reg_932[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"BFB0BFBF"
    )
        port map (
      I0 => tmp_3_mid2_v_reg_922(1),
      I1 => tmp_3_mid2_v_reg_922(0),
      I2 => \tmp_3_mid2_v_reg_922[1]_i_2_n_0\,
      I3 => y3_reg_324(1),
      I4 => y3_reg_324(0),
      O => \cond_mid2_reg_932[0]_i_2_n_0\
    );
\cond_mid2_reg_932[0]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A8AA"
    )
        port map (
      I0 => ap_CS_fsm_pp2_stage0,
      I1 => indvar_flatten_reg_313(0),
      I2 => indvar_flatten_reg_313(1),
      I3 => indvar_flatten_reg_313(2),
      O => ap_enable_reg_pp2_iter10
    );
\cond_mid2_reg_932[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"1010101F"
    )
        port map (
      I0 => tmp_3_mid2_v_reg_922(0),
      I1 => tmp_3_mid2_v_reg_922(1),
      I2 => \tmp_3_mid2_v_reg_922[1]_i_2_n_0\,
      I3 => y3_reg_324(0),
      I4 => y3_reg_324(1),
      O => \cond_mid2_reg_932[0]_i_4_n_0\
    );
\cond_mid2_reg_932_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \cond_mid2_reg_932[0]_i_1_n_0\,
      Q => \cond_mid2_reg_932_reg_n_0_[0]\,
      R => '0'
    );
\ctrl_read_reg_890_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => cnn_pool_d28x28_p2x2_CTRL_s_axi_U_n_13,
      Q => ctrl_read_reg_890,
      R => '0'
    );
\exitcond1_reg_895[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"74747074"
    )
        port map (
      I0 => \ap_CS_fsm[2]_i_2_n_0\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => \exitcond1_reg_895_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp0_iter1,
      I4 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      O => \exitcond1_reg_895[0]_i_1_n_0\
    );
\exitcond1_reg_895_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond1_reg_895[0]_i_1_n_0\,
      Q => \exitcond1_reg_895_reg_n_0_[0]\,
      R => '0'
    );
\exitcond4_reg_904[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8B8B0B8"
    )
        port map (
      I0 => \ap_CS_fsm_reg[4]_i_2_n_0\,
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => \exitcond4_reg_904_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp1_iter1,
      I4 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      O => \exitcond4_reg_904[0]_i_1_n_0\
    );
\exitcond4_reg_904_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond4_reg_904[0]_i_1_n_0\,
      Q => \exitcond4_reg_904_reg_n_0_[0]\,
      R => '0'
    );
\exitcond_flatten8_reg_1018[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_pp3_stage0,
      I1 => lineBuffer_0_U_n_35,
      O => p_69_in
    );
\exitcond_flatten8_reg_1018[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(3),
      I1 => \indvar_flatten6_reg_370_reg__0\(9),
      I2 => \indvar_flatten6_reg_370_reg__0\(2),
      I3 => \indvar_flatten6_reg_370_reg__0\(7),
      I4 => \exitcond_flatten8_reg_1018[0]_i_3_n_0\,
      O => exitcond_flatten8_fu_614_p2
    );
\exitcond_flatten8_reg_1018[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFEFFFFFFFFFF"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(1),
      I1 => \indvar_flatten6_reg_370_reg__0\(0),
      I2 => \indvar_flatten6_reg_370_reg__0\(5),
      I3 => \indvar_flatten6_reg_370_reg__0\(8),
      I4 => \indvar_flatten6_reg_370_reg__0\(6),
      I5 => \indvar_flatten6_reg_370_reg__0\(4),
      O => \exitcond_flatten8_reg_1018[0]_i_3_n_0\
    );
\exitcond_flatten8_reg_1018_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_69_in,
      D => exitcond_flatten8_fu_614_p2,
      Q => \exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      R => '0'
    );
\exitcond_flatten_reg_913[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02FF0200"
    )
        port map (
      I0 => indvar_flatten_reg_313(2),
      I1 => indvar_flatten_reg_313(1),
      I2 => indvar_flatten_reg_313(0),
      I3 => ap_CS_fsm_pp2_stage0,
      I4 => exitcond_flatten_reg_913,
      O => \exitcond_flatten_reg_913[0]_i_1_n_0\
    );
\exitcond_flatten_reg_913_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \exitcond_flatten_reg_913[0]_i_1_n_0\,
      Q => exitcond_flatten_reg_913,
      R => '0'
    );
\inStream_V_data_V_0_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => inStream_V_data_V_0_sel_wr,
      I1 => inStream_V_data_V_0_ack_in,
      I2 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      O => inStream_V_data_V_0_load_A
    );
\inStream_V_data_V_0_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(0),
      Q => inStream_V_data_V_0_payload_A(0),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(10),
      Q => inStream_V_data_V_0_payload_A(10),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(11),
      Q => inStream_V_data_V_0_payload_A(11),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(12),
      Q => inStream_V_data_V_0_payload_A(12),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(13),
      Q => inStream_V_data_V_0_payload_A(13),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(14),
      Q => inStream_V_data_V_0_payload_A(14),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(15),
      Q => inStream_V_data_V_0_payload_A(15),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(16),
      Q => inStream_V_data_V_0_payload_A(16),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(17),
      Q => inStream_V_data_V_0_payload_A(17),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(18),
      Q => inStream_V_data_V_0_payload_A(18),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(19),
      Q => inStream_V_data_V_0_payload_A(19),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(1),
      Q => inStream_V_data_V_0_payload_A(1),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(20),
      Q => inStream_V_data_V_0_payload_A(20),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(21),
      Q => inStream_V_data_V_0_payload_A(21),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(22),
      Q => inStream_V_data_V_0_payload_A(22),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(23),
      Q => inStream_V_data_V_0_payload_A(23),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(24),
      Q => inStream_V_data_V_0_payload_A(24),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(25),
      Q => inStream_V_data_V_0_payload_A(25),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(26),
      Q => inStream_V_data_V_0_payload_A(26),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(27),
      Q => inStream_V_data_V_0_payload_A(27),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(28),
      Q => inStream_V_data_V_0_payload_A(28),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(29),
      Q => inStream_V_data_V_0_payload_A(29),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(2),
      Q => inStream_V_data_V_0_payload_A(2),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(30),
      Q => inStream_V_data_V_0_payload_A(30),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(31),
      Q => inStream_V_data_V_0_payload_A(31),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(3),
      Q => inStream_V_data_V_0_payload_A(3),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(4),
      Q => inStream_V_data_V_0_payload_A(4),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(5),
      Q => inStream_V_data_V_0_payload_A(5),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(6),
      Q => inStream_V_data_V_0_payload_A(6),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(7),
      Q => inStream_V_data_V_0_payload_A(7),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(8),
      Q => inStream_V_data_V_0_payload_A(8),
      R => '0'
    );
\inStream_V_data_V_0_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_A,
      D => inStream_TDATA(9),
      Q => inStream_V_data_V_0_payload_A(9),
      R => '0'
    );
\inStream_V_data_V_0_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => inStream_V_data_V_0_sel_wr,
      I1 => inStream_V_data_V_0_ack_in,
      I2 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      O => inStream_V_data_V_0_load_B
    );
\inStream_V_data_V_0_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(0),
      Q => inStream_V_data_V_0_payload_B(0),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(10),
      Q => inStream_V_data_V_0_payload_B(10),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(11),
      Q => inStream_V_data_V_0_payload_B(11),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(12),
      Q => inStream_V_data_V_0_payload_B(12),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(13),
      Q => inStream_V_data_V_0_payload_B(13),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(14),
      Q => inStream_V_data_V_0_payload_B(14),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(15),
      Q => inStream_V_data_V_0_payload_B(15),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(16),
      Q => inStream_V_data_V_0_payload_B(16),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(17),
      Q => inStream_V_data_V_0_payload_B(17),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(18),
      Q => inStream_V_data_V_0_payload_B(18),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(19),
      Q => inStream_V_data_V_0_payload_B(19),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(1),
      Q => inStream_V_data_V_0_payload_B(1),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(20),
      Q => inStream_V_data_V_0_payload_B(20),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(21),
      Q => inStream_V_data_V_0_payload_B(21),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(22),
      Q => inStream_V_data_V_0_payload_B(22),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(23),
      Q => inStream_V_data_V_0_payload_B(23),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(24),
      Q => inStream_V_data_V_0_payload_B(24),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(25),
      Q => inStream_V_data_V_0_payload_B(25),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(26),
      Q => inStream_V_data_V_0_payload_B(26),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(27),
      Q => inStream_V_data_V_0_payload_B(27),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(28),
      Q => inStream_V_data_V_0_payload_B(28),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(29),
      Q => inStream_V_data_V_0_payload_B(29),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(2),
      Q => inStream_V_data_V_0_payload_B(2),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(30),
      Q => inStream_V_data_V_0_payload_B(30),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(31),
      Q => inStream_V_data_V_0_payload_B(31),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(3),
      Q => inStream_V_data_V_0_payload_B(3),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(4),
      Q => inStream_V_data_V_0_payload_B(4),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(5),
      Q => inStream_V_data_V_0_payload_B(5),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(6),
      Q => inStream_V_data_V_0_payload_B(6),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(7),
      Q => inStream_V_data_V_0_payload_B(7),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(8),
      Q => inStream_V_data_V_0_payload_B(8),
      R => '0'
    );
\inStream_V_data_V_0_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_load_B,
      D => inStream_TDATA(9),
      Q => inStream_V_data_V_0_payload_B(9),
      R => '0'
    );
inStream_V_data_V_0_sel_rd_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0111FEEE"
    )
        port map (
      I0 => lineBuffer_0_U_n_33,
      I1 => lineBuffer_1_U_n_64,
      I2 => tmp_7_reg_1048,
      I3 => lineBuffer_0_we1,
      I4 => inStream_V_data_V_0_sel,
      O => inStream_V_data_V_0_sel_rd_i_1_n_0
    );
inStream_V_data_V_0_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_data_V_0_sel_rd_i_1_n_0,
      Q => inStream_V_data_V_0_sel,
      R => ap_rst_n_inv
    );
inStream_V_data_V_0_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => inStream_V_data_V_0_ack_in,
      I1 => inStream_TVALID,
      I2 => inStream_V_data_V_0_sel_wr,
      O => inStream_V_data_V_0_sel_wr_i_1_n_0
    );
inStream_V_data_V_0_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_data_V_0_sel_wr_i_1_n_0,
      Q => inStream_V_data_V_0_sel_wr,
      R => ap_rst_n_inv
    );
\inStream_V_data_V_0_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8A8A8AAA80808080"
    )
        port map (
      I0 => ap_rst_n,
      I1 => inStream_TVALID,
      I2 => inStream_V_data_V_0_ack_in,
      I3 => inStream_V_data_V_0_sel2,
      I4 => \inStream_V_data_V_0_state[0]_i_2_n_0\,
      I5 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      O => \inStream_V_data_V_0_state[0]_i_1_n_0\
    );
\inStream_V_data_V_0_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0080"
    )
        port map (
      I0 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \exitcond1_reg_895_reg_n_0_[0]\,
      I4 => lineBuffer_1_U_n_64,
      O => \inStream_V_data_V_0_state[0]_i_2_n_0\
    );
\inStream_V_data_V_0_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFF4FFFFFFFF"
    )
        port map (
      I0 => inStream_TVALID,
      I1 => inStream_V_data_V_0_ack_in,
      I2 => inStream_V_data_V_0_sel2,
      I3 => lineBuffer_1_U_n_64,
      I4 => lineBuffer_0_U_n_33,
      I5 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      O => inStream_V_data_V_0_state(1)
    );
\inStream_V_data_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_data_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_data_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_data_V_0_state(1),
      Q => inStream_V_data_V_0_ack_in,
      R => ap_rst_n_inv
    );
\inStream_V_dest_V_0_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E2EE0000"
    )
        port map (
      I0 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      I1 => \^instream_tready\,
      I2 => inStream_TVALID,
      I3 => \inStream_V_dest_V_0_state[0]_i_2_n_0\,
      I4 => ap_rst_n,
      O => \inStream_V_dest_V_0_state[0]_i_1_n_0\
    );
\inStream_V_dest_V_0_state[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEEEFFFF"
    )
        port map (
      I0 => lineBuffer_0_U_n_33,
      I1 => lineBuffer_1_U_n_64,
      I2 => tmp_7_reg_1048,
      I3 => lineBuffer_0_we1,
      I4 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      O => \inStream_V_dest_V_0_state[0]_i_2_n_0\
    );
\inStream_V_dest_V_0_state[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFDFFFDFFFFFFFD"
    )
        port map (
      I0 => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      I1 => inStream_V_data_V_0_sel2,
      I2 => lineBuffer_1_U_n_64,
      I3 => lineBuffer_0_U_n_33,
      I4 => \^instream_tready\,
      I5 => inStream_TVALID,
      O => inStream_V_dest_V_0_state(1)
    );
\inStream_V_dest_V_0_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \inStream_V_dest_V_0_state[0]_i_1_n_0\,
      Q => \inStream_V_dest_V_0_state_reg_n_0_[0]\,
      R => '0'
    );
\inStream_V_dest_V_0_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => inStream_V_dest_V_0_state(1),
      Q => \^instream_tready\,
      R => ap_rst_n_inv
    );
\indvar_flatten6_reg_370[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(0),
      O => indvar_flatten_next7_fu_620_p2(0)
    );
\indvar_flatten6_reg_370[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(0),
      I1 => \indvar_flatten6_reg_370_reg__0\(1),
      O => indvar_flatten_next7_fu_620_p2(1)
    );
\indvar_flatten6_reg_370[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(2),
      I1 => \indvar_flatten6_reg_370_reg__0\(0),
      I2 => \indvar_flatten6_reg_370_reg__0\(1),
      O => indvar_flatten_next7_fu_620_p2(2)
    );
\indvar_flatten6_reg_370[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(3),
      I1 => \indvar_flatten6_reg_370_reg__0\(1),
      I2 => \indvar_flatten6_reg_370_reg__0\(0),
      I3 => \indvar_flatten6_reg_370_reg__0\(2),
      O => indvar_flatten_next7_fu_620_p2(3)
    );
\indvar_flatten6_reg_370[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(4),
      I1 => \indvar_flatten6_reg_370_reg__0\(2),
      I2 => \indvar_flatten6_reg_370_reg__0\(0),
      I3 => \indvar_flatten6_reg_370_reg__0\(1),
      I4 => \indvar_flatten6_reg_370_reg__0\(3),
      O => indvar_flatten_next7_fu_620_p2(4)
    );
\indvar_flatten6_reg_370[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF80000000"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(3),
      I1 => \indvar_flatten6_reg_370_reg__0\(1),
      I2 => \indvar_flatten6_reg_370_reg__0\(0),
      I3 => \indvar_flatten6_reg_370_reg__0\(2),
      I4 => \indvar_flatten6_reg_370_reg__0\(4),
      I5 => \indvar_flatten6_reg_370_reg__0\(5),
      O => indvar_flatten_next7_fu_620_p2(5)
    );
\indvar_flatten6_reg_370[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(6),
      I1 => \indvar_flatten6_reg_370[9]_i_2_n_0\,
      O => indvar_flatten_next7_fu_620_p2(6)
    );
\indvar_flatten6_reg_370[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(7),
      I1 => \indvar_flatten6_reg_370[9]_i_2_n_0\,
      I2 => \indvar_flatten6_reg_370_reg__0\(6),
      O => indvar_flatten_next7_fu_620_p2(7)
    );
\indvar_flatten6_reg_370[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AAA"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(8),
      I1 => \indvar_flatten6_reg_370_reg__0\(6),
      I2 => \indvar_flatten6_reg_370[9]_i_2_n_0\,
      I3 => \indvar_flatten6_reg_370_reg__0\(7),
      O => indvar_flatten_next7_fu_620_p2(8)
    );
\indvar_flatten6_reg_370[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAAA"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(9),
      I1 => \indvar_flatten6_reg_370_reg__0\(7),
      I2 => \indvar_flatten6_reg_370[9]_i_2_n_0\,
      I3 => \indvar_flatten6_reg_370_reg__0\(6),
      I4 => \indvar_flatten6_reg_370_reg__0\(8),
      O => indvar_flatten_next7_fu_620_p2(9)
    );
\indvar_flatten6_reg_370[9]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(5),
      I1 => \indvar_flatten6_reg_370_reg__0\(4),
      I2 => \indvar_flatten6_reg_370_reg__0\(2),
      I3 => \indvar_flatten6_reg_370_reg__0\(0),
      I4 => \indvar_flatten6_reg_370_reg__0\(1),
      I5 => \indvar_flatten6_reg_370_reg__0\(3),
      O => \indvar_flatten6_reg_370[9]_i_2_n_0\
    );
\indvar_flatten6_reg_370_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(0),
      Q => \indvar_flatten6_reg_370_reg__0\(0),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(1),
      Q => \indvar_flatten6_reg_370_reg__0\(1),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(2),
      Q => \indvar_flatten6_reg_370_reg__0\(2),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(3),
      Q => \indvar_flatten6_reg_370_reg__0\(3),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(4),
      Q => \indvar_flatten6_reg_370_reg__0\(4),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(5),
      Q => \indvar_flatten6_reg_370_reg__0\(5),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(6),
      Q => \indvar_flatten6_reg_370_reg__0\(6),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(7),
      Q => \indvar_flatten6_reg_370_reg__0\(7),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(8),
      Q => \indvar_flatten6_reg_370_reg__0\(8),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten6_reg_370_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => indvar_flatten_next7_fu_620_p2(9),
      Q => \indvar_flatten6_reg_370_reg__0\(9),
      R => indvar_flatten6_reg_370
    );
\indvar_flatten_reg_313[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => indvar_flatten_reg_313(0),
      O => indvar_flatten_next_fu_476_p2(0)
    );
\indvar_flatten_reg_313[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => indvar_flatten_reg_313(0),
      I1 => indvar_flatten_reg_313(1),
      O => indvar_flatten_next_fu_476_p2(1)
    );
\indvar_flatten_reg_313[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"88808888"
    )
        port map (
      I0 => ap_enable_reg_pp2_iter0,
      I1 => ap_CS_fsm_pp2_stage0,
      I2 => indvar_flatten_reg_313(0),
      I3 => indvar_flatten_reg_313(1),
      I4 => indvar_flatten_reg_313(2),
      O => indvar_flatten_reg_3130
    );
\indvar_flatten_reg_313[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"6A"
    )
        port map (
      I0 => indvar_flatten_reg_313(2),
      I1 => indvar_flatten_reg_313(1),
      I2 => indvar_flatten_reg_313(0),
      O => indvar_flatten_next_fu_476_p2(2)
    );
\indvar_flatten_reg_313_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_3130,
      D => indvar_flatten_next_fu_476_p2(0),
      Q => indvar_flatten_reg_313(0),
      R => ap_CS_fsm_state7
    );
\indvar_flatten_reg_313_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_3130,
      D => indvar_flatten_next_fu_476_p2(1),
      Q => indvar_flatten_reg_313(1),
      R => ap_CS_fsm_state7
    );
\indvar_flatten_reg_313_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_3130,
      D => indvar_flatten_next_fu_476_p2(2),
      Q => indvar_flatten_reg_313(2),
      R => ap_CS_fsm_state7
    );
lineBuffer_0_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb
     port map (
      D(31 downto 0) => lineBuffer_0_q0(31 downto 0),
      Q(4 downto 0) => lineBuffer_1_addr_2_reg_1042(4 downto 0),
      WEBWE(0) => p_81_in,
      \ap_CS_fsm_reg[5]\ => lineBuffer_1_U_n_66,
      \ap_CS_fsm_reg[7]\(2) => ap_CS_fsm_pp3_stage0,
      \ap_CS_fsm_reg[7]\(1) => ap_CS_fsm_pp2_stage0,
      \ap_CS_fsm_reg[7]\(0) => ap_CS_fsm_pp0_stage0,
      \ap_CS_fsm_reg[7]_0\ => lineBuffer_1_U_n_67,
      ap_clk => ap_clk,
      ap_enable_reg_pp0_iter1 => ap_enable_reg_pp0_iter1,
      ap_enable_reg_pp2_iter0 => ap_enable_reg_pp2_iter0,
      ap_enable_reg_pp3_iter0 => ap_enable_reg_pp3_iter0,
      ap_enable_reg_pp3_iter1_reg => ap_enable_reg_pp3_iter1_reg_n_0,
      ap_enable_reg_pp3_iter2 => ap_enable_reg_pp3_iter2,
      ap_enable_reg_pp3_iter3_reg => ap_enable_reg_pp3_iter3_reg_n_0,
      ap_pipeline_reg_pp3_iter1_tmp_reg_1032 => ap_pipeline_reg_pp3_iter1_tmp_reg_1032,
      ap_pipeline_reg_pp3_iter2_tmp_reg_1032 => ap_pipeline_reg_pp3_iter2_tmp_reg_1032,
      \exitcond1_reg_895_reg[0]\ => \exitcond1_reg_895_reg_n_0_[0]\,
      \exitcond_flatten8_reg_1018_reg[0]\ => \exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      \inStream_V_data_V_0_payload_B_reg[31]\(31 downto 0) => inStream_V_data_V_0_data_out(31 downto 0),
      \inStream_V_data_V_0_state_reg[0]\ => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      lineBuffer_0_we1 => lineBuffer_0_we1,
      \outStream_V_data_V_1_state_reg[1]\(0) => outStream_V_data_V_1_ack_in,
      p_76_in => p_76_in,
      ram_reg => lineBuffer_0_U_n_33,
      ram_reg_0 => lineBuffer_0_U_n_35,
      ram_reg_1(31 downto 0) => lineBuffer_1_q0(31 downto 0),
      tmp_10_reg_927 => tmp_10_reg_927,
      tmp_7_reg_1048 => tmp_7_reg_1048,
      \window_1_2_1_reg_335_reg[31]\(31 downto 0) => window_2_2_7_fu_566_p3(31 downto 0),
      \x4_reg_359_reg[1]\(1 downto 0) => x4_reg_359(1 downto 0),
      \x_assign_reg_392_reg[1]\ => lineBuffer_1_U_n_70,
      \x_assign_reg_392_reg[3]\(1) => lineBuffer_1_U_n_68,
      \x_assign_reg_392_reg[3]\(0) => lineBuffer_1_U_n_69,
      \x_assign_reg_392_reg[4]\(2) => x_assign_reg_392(4),
      \x_assign_reg_392_reg[4]\(1 downto 0) => x_assign_reg_392(1 downto 0),
      \x_reg_289_reg[3]\(3) => \x_reg_289_reg_n_0_[3]\,
      \x_reg_289_reg[3]\(2) => \x_reg_289_reg_n_0_[2]\,
      \x_reg_289_reg[3]\(1) => \x_reg_289_reg_n_0_[1]\,
      \x_reg_289_reg[3]\(0) => \x_reg_289_reg_n_0_[0]\
    );
\lineBuffer_0_addr_2_reg_1036[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"A8AAAAAA"
    )
        port map (
      I0 => x_assign_reg_392(4),
      I1 => x_assign_reg_392(1),
      I2 => x_assign_reg_392(0),
      I3 => x_assign_reg_392(2),
      I4 => x_assign_reg_392(3),
      O => \lineBuffer_0_addr_2_reg_1036[4]_i_1_n_0\
    );
\lineBuffer_0_addr_2_reg_1036_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_addr_2_reg_10360,
      D => x_assign_reg_392(0),
      Q => lineBuffer_1_addr_2_reg_1042(0),
      R => '0'
    );
\lineBuffer_0_addr_2_reg_1036_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_addr_2_reg_10360,
      D => x_assign_reg_392(1),
      Q => lineBuffer_1_addr_2_reg_1042(1),
      R => '0'
    );
\lineBuffer_0_addr_2_reg_1036_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_addr_2_reg_10360,
      D => lineBuffer_1_U_n_69,
      Q => lineBuffer_1_addr_2_reg_1042(2),
      R => '0'
    );
\lineBuffer_0_addr_2_reg_1036_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_addr_2_reg_10360,
      D => lineBuffer_1_U_n_68,
      Q => lineBuffer_1_addr_2_reg_1042(3),
      R => '0'
    );
\lineBuffer_0_addr_2_reg_1036_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_addr_2_reg_10360,
      D => \lineBuffer_0_addr_2_reg_1036[4]_i_1_n_0\,
      Q => lineBuffer_1_addr_2_reg_1042(4),
      R => '0'
    );
lineBuffer_1_U: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_pbkb_0
     port map (
      D(31 downto 0) => lineBuffer_1_q0(31 downto 0),
      Q(4 downto 0) => ap_pipeline_reg_pp3_iter1_lineBuffer_1_addr_2_reg_1042(4 downto 0),
      \ap_CS_fsm_reg[7]\(2) => ap_CS_fsm_pp3_stage0,
      \ap_CS_fsm_reg[7]\(1) => ap_CS_fsm_pp2_stage0,
      \ap_CS_fsm_reg[7]\(0) => ap_CS_fsm_pp1_stage0,
      ap_clk => ap_clk,
      ap_enable_reg_pp1_iter1 => ap_enable_reg_pp1_iter1,
      ap_enable_reg_pp2_iter0 => ap_enable_reg_pp2_iter0,
      ap_enable_reg_pp3_iter0 => ap_enable_reg_pp3_iter0,
      ap_enable_reg_pp3_iter2 => ap_enable_reg_pp3_iter2,
      \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg[0]\ => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      \exitcond4_reg_904_reg[0]\ => \exitcond4_reg_904_reg_n_0_[0]\,
      \exitcond_flatten8_reg_1018_reg[0]\ => lineBuffer_0_U_n_35,
      \inStream_V_data_V_0_payload_A_reg[31]\(31 downto 0) => inStream_V_data_V_0_payload_A(31 downto 0),
      \inStream_V_data_V_0_payload_B_reg[31]\(31 downto 0) => inStream_V_data_V_0_payload_B(31 downto 0),
      inStream_V_data_V_0_sel => inStream_V_data_V_0_sel,
      \inStream_V_data_V_0_state_reg[0]\ => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      \lineBuffer_0_addr_2_reg_1036_reg[3]\(1) => lineBuffer_1_U_n_68,
      \lineBuffer_0_addr_2_reg_1036_reg[3]\(0) => lineBuffer_1_U_n_69,
      p_72_in => p_72_in,
      ram_reg(31 downto 0) => inStream_V_data_V_0_data_out(31 downto 0),
      ram_reg_0 => lineBuffer_1_U_n_64,
      ram_reg_1 => lineBuffer_1_U_n_66,
      ram_reg_2 => lineBuffer_1_U_n_67,
      ram_reg_3 => lineBuffer_1_U_n_70,
      \window_2_2_2_fu_174_reg[31]\(31 downto 0) => window_2_2_2_fu_174(31 downto 0),
      \x1_reg_301_reg[4]\(4 downto 0) => x1_reg_301(4 downto 0),
      \x4_reg_359_reg[1]\(1 downto 0) => x4_reg_359(1 downto 0),
      \x_assign_reg_392_reg[4]\(4 downto 0) => x_assign_reg_392(4 downto 0)
    );
\maxValue_17_0_maxVal_reg_1057[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(0),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(0),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(0),
      O => maxValue_17_0_maxVal_fu_747_p3(0)
    );
\maxValue_17_0_maxVal_reg_1057[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(10),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(10),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(10),
      O => maxValue_17_0_maxVal_fu_747_p3(10)
    );
\maxValue_17_0_maxVal_reg_1057[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(11),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(11),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(11),
      O => maxValue_17_0_maxVal_fu_747_p3(11)
    );
\maxValue_17_0_maxVal_reg_1057[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(12),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(12),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(12),
      O => maxValue_17_0_maxVal_fu_747_p3(12)
    );
\maxValue_17_0_maxVal_reg_1057[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(13),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(13),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(13),
      O => maxValue_17_0_maxVal_fu_747_p3(13)
    );
\maxValue_17_0_maxVal_reg_1057[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(14),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(14),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(14),
      O => maxValue_17_0_maxVal_fu_747_p3(14)
    );
\maxValue_17_0_maxVal_reg_1057[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(15),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(15),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(15),
      O => maxValue_17_0_maxVal_fu_747_p3(15)
    );
\maxValue_17_0_maxVal_reg_1057[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(16),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(16),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(16),
      O => maxValue_17_0_maxVal_fu_747_p3(16)
    );
\maxValue_17_0_maxVal_reg_1057[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(17),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(17),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(17),
      O => maxValue_17_0_maxVal_fu_747_p3(17)
    );
\maxValue_17_0_maxVal_reg_1057[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(18),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(18),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(18),
      O => maxValue_17_0_maxVal_fu_747_p3(18)
    );
\maxValue_17_0_maxVal_reg_1057[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(19),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(19),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(19),
      O => maxValue_17_0_maxVal_fu_747_p3(19)
    );
\maxValue_17_0_maxVal_reg_1057[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(1),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(1),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(1),
      O => maxValue_17_0_maxVal_fu_747_p3(1)
    );
\maxValue_17_0_maxVal_reg_1057[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(20),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(20),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(20),
      O => maxValue_17_0_maxVal_fu_747_p3(20)
    );
\maxValue_17_0_maxVal_reg_1057[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(21),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(21),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(21),
      O => maxValue_17_0_maxVal_fu_747_p3(21)
    );
\maxValue_17_0_maxVal_reg_1057[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(22),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(22),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(22),
      O => maxValue_17_0_maxVal_fu_747_p3(22)
    );
\maxValue_17_0_maxVal_reg_1057[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(23),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(23),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(23),
      O => maxValue_17_0_maxVal_fu_747_p3(23)
    );
\maxValue_17_0_maxVal_reg_1057[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(24),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(24),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(24),
      O => maxValue_17_0_maxVal_fu_747_p3(24)
    );
\maxValue_17_0_maxVal_reg_1057[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(25),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(25),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(25),
      O => maxValue_17_0_maxVal_fu_747_p3(25)
    );
\maxValue_17_0_maxVal_reg_1057[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(26),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(26),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(26),
      O => maxValue_17_0_maxVal_fu_747_p3(26)
    );
\maxValue_17_0_maxVal_reg_1057[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(27),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(27),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(27),
      O => maxValue_17_0_maxVal_fu_747_p3(27)
    );
\maxValue_17_0_maxVal_reg_1057[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(28),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(28),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(28),
      O => maxValue_17_0_maxVal_fu_747_p3(28)
    );
\maxValue_17_0_maxVal_reg_1057[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(29),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(29),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(29),
      O => maxValue_17_0_maxVal_fu_747_p3(29)
    );
\maxValue_17_0_maxVal_reg_1057[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(2),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(2),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(2),
      O => maxValue_17_0_maxVal_fu_747_p3(2)
    );
\maxValue_17_0_maxVal_reg_1057[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(30),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(30),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(30),
      O => maxValue_17_0_maxVal_fu_747_p3(30)
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000200"
    )
        port map (
      I0 => ap_CS_fsm_pp3_stage0,
      I1 => lineBuffer_0_U_n_35,
      I2 => tmp_9_reg_1013,
      I3 => tmp_reg_1032,
      I4 => \exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(31),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(31),
      I3 => window_1_0_read_as_fu_162(31),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_36_n_0\,
      I5 => window_1_0_read_as_fu_162(30),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_10_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_100\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(5),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(5),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_100_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_101\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(3),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(3),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_101_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_102\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(1),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(1),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_102_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_103\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(6),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(6),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_103_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_104\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(4),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(4),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_104_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_105\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(2),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(2),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_105_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_106\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(0),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(0),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_106_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(29),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(29),
      I3 => window_1_0_read_as_fu_162(29),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_37_n_0\,
      I5 => window_1_0_read_as_fu_162(28),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_11_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(27),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(27),
      I3 => window_1_0_read_as_fu_162(27),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_38_n_0\,
      I5 => window_1_0_read_as_fu_162(26),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_12_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(25),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(25),
      I3 => window_1_0_read_as_fu_162(25),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_39_n_0\,
      I5 => window_1_0_read_as_fu_162(24),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_13_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(31),
      I1 => window_0_0_read_as_fu_150(31),
      I2 => window_0_0_fu_154(30),
      I3 => window_0_0_read_as_fu_150(30),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_15_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(29),
      I1 => window_0_0_read_as_fu_150(29),
      I2 => window_0_0_fu_154(28),
      I3 => window_0_0_read_as_fu_150(28),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_16_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(27),
      I1 => window_0_0_read_as_fu_150(27),
      I2 => window_0_0_fu_154(26),
      I3 => window_0_0_read_as_fu_150(26),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_17_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(25),
      I1 => window_0_0_read_as_fu_150(25),
      I2 => window_0_0_fu_154(24),
      I3 => window_0_0_read_as_fu_150(24),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_18_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(31),
      I1 => window_0_0_fu_154(31),
      I2 => window_0_0_read_as_fu_150(30),
      I3 => window_0_0_fu_154(30),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_19_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(31),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(31),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(31),
      O => maxValue_17_0_maxVal_fu_747_p3(31)
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(29),
      I1 => window_0_0_fu_154(29),
      I2 => window_0_0_read_as_fu_150(28),
      I3 => window_0_0_fu_154(28),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_20_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(27),
      I1 => window_0_0_fu_154(27),
      I2 => window_0_0_read_as_fu_150(26),
      I3 => window_0_0_fu_154(26),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_21_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(25),
      I1 => window_0_0_fu_154(25),
      I2 => window_0_0_read_as_fu_150(24),
      I3 => window_0_0_fu_154(24),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_22_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(23),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_58_n_0\,
      I2 => window_1_0_read_as_fu_162(22),
      I3 => window_0_0_read_as_fu_150(22),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(22),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_24_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(21),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_59_n_0\,
      I2 => window_1_0_read_as_fu_162(20),
      I3 => window_0_0_read_as_fu_150(20),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(20),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_25_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(19),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_60_n_0\,
      I2 => window_1_0_read_as_fu_162(18),
      I3 => window_0_0_read_as_fu_150(18),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(18),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_26_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(17),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_61_n_0\,
      I2 => window_1_0_read_as_fu_162(16),
      I3 => window_0_0_read_as_fu_150(16),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(16),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_27_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(23),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(23),
      I3 => window_1_0_read_as_fu_162(23),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_62_n_0\,
      I5 => window_1_0_read_as_fu_162(22),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_28_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(21),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(21),
      I3 => window_1_0_read_as_fu_162(21),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_63_n_0\,
      I5 => window_1_0_read_as_fu_162(20),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_29_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_30\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(19),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(19),
      I3 => window_1_0_read_as_fu_162(19),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_64_n_0\,
      I5 => window_1_0_read_as_fu_162(18),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_30_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_31\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(17),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(17),
      I3 => window_1_0_read_as_fu_162(17),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_65_n_0\,
      I5 => window_1_0_read_as_fu_162(16),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_31_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_32\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(31),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(31),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_32_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_33\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(29),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(29),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_33_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_34\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(27),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(27),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_34_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_35\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(25),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(25),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_35_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_36\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(30),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(30),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_36_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_37\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(28),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(28),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_37_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_38\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(26),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(26),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_38_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_39\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(24),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(24),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_39_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(23),
      I1 => window_0_0_read_as_fu_150(23),
      I2 => window_0_0_fu_154(22),
      I3 => window_0_0_read_as_fu_150(22),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_41_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(21),
      I1 => window_0_0_read_as_fu_150(21),
      I2 => window_0_0_fu_154(20),
      I3 => window_0_0_read_as_fu_150(20),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_42_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_43\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(19),
      I1 => window_0_0_read_as_fu_150(19),
      I2 => window_0_0_fu_154(18),
      I3 => window_0_0_read_as_fu_150(18),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_43_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_44\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(17),
      I1 => window_0_0_read_as_fu_150(17),
      I2 => window_0_0_fu_154(16),
      I3 => window_0_0_read_as_fu_150(16),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_44_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_45\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(23),
      I1 => window_0_0_fu_154(23),
      I2 => window_0_0_read_as_fu_150(22),
      I3 => window_0_0_fu_154(22),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_45_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_46\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(21),
      I1 => window_0_0_fu_154(21),
      I2 => window_0_0_read_as_fu_150(20),
      I3 => window_0_0_fu_154(20),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_46_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_47\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(19),
      I1 => window_0_0_fu_154(19),
      I2 => window_0_0_read_as_fu_150(18),
      I3 => window_0_0_fu_154(18),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_47_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_48\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(17),
      I1 => window_0_0_fu_154(17),
      I2 => window_0_0_read_as_fu_150(16),
      I3 => window_0_0_fu_154(16),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_48_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_50\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(15),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_83_n_0\,
      I2 => window_1_0_read_as_fu_162(14),
      I3 => window_0_0_read_as_fu_150(14),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(14),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_50_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_51\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(13),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_84_n_0\,
      I2 => window_1_0_read_as_fu_162(12),
      I3 => window_0_0_read_as_fu_150(12),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(12),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_51_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_52\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(11),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_85_n_0\,
      I2 => window_1_0_read_as_fu_162(10),
      I3 => window_0_0_read_as_fu_150(10),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(10),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_52_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_53\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(9),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_86_n_0\,
      I2 => window_1_0_read_as_fu_162(8),
      I3 => window_0_0_read_as_fu_150(8),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(8),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_53_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_54\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(15),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(15),
      I3 => window_1_0_read_as_fu_162(15),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_87_n_0\,
      I5 => window_1_0_read_as_fu_162(14),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_54_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_55\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(13),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(13),
      I3 => window_1_0_read_as_fu_162(13),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_88_n_0\,
      I5 => window_1_0_read_as_fu_162(12),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_55_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_56\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(11),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(11),
      I3 => window_1_0_read_as_fu_162(11),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_89_n_0\,
      I5 => window_1_0_read_as_fu_162(10),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_56_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_57\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(9),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(9),
      I3 => window_1_0_read_as_fu_162(9),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_90_n_0\,
      I5 => window_1_0_read_as_fu_162(8),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_57_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_58\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(23),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(23),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_58_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_59\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(21),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(21),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_59_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(31),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_32_n_0\,
      I2 => window_1_0_read_as_fu_162(30),
      I3 => window_0_0_read_as_fu_150(30),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(30),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_6_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_60\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(19),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(19),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_60_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_61\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(17),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(17),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_61_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_62\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(22),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(22),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_62_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_63\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(20),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(20),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_63_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_64\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(18),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(18),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_64_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_65\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(16),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(16),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_65_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_67\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(15),
      I1 => window_0_0_read_as_fu_150(15),
      I2 => window_0_0_fu_154(14),
      I3 => window_0_0_read_as_fu_150(14),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_67_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_68\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(13),
      I1 => window_0_0_read_as_fu_150(13),
      I2 => window_0_0_fu_154(12),
      I3 => window_0_0_read_as_fu_150(12),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_68_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_69\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(11),
      I1 => window_0_0_read_as_fu_150(11),
      I2 => window_0_0_fu_154(10),
      I3 => window_0_0_read_as_fu_150(10),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_69_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(29),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_33_n_0\,
      I2 => window_1_0_read_as_fu_162(28),
      I3 => window_0_0_read_as_fu_150(28),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(28),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_7_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_70\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(9),
      I1 => window_0_0_read_as_fu_150(9),
      I2 => window_0_0_fu_154(8),
      I3 => window_0_0_read_as_fu_150(8),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_70_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_71\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(15),
      I1 => window_0_0_fu_154(15),
      I2 => window_0_0_read_as_fu_150(14),
      I3 => window_0_0_fu_154(14),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_71_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_72\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(13),
      I1 => window_0_0_fu_154(13),
      I2 => window_0_0_read_as_fu_150(12),
      I3 => window_0_0_fu_154(12),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_72_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_73\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(11),
      I1 => window_0_0_fu_154(11),
      I2 => window_0_0_read_as_fu_150(10),
      I3 => window_0_0_fu_154(10),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_73_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_74\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(9),
      I1 => window_0_0_fu_154(9),
      I2 => window_0_0_read_as_fu_150(8),
      I3 => window_0_0_fu_154(8),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_74_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_75\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(7),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_99_n_0\,
      I2 => window_1_0_read_as_fu_162(6),
      I3 => window_0_0_read_as_fu_150(6),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(6),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_75_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_76\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(5),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_100_n_0\,
      I2 => window_1_0_read_as_fu_162(4),
      I3 => window_0_0_read_as_fu_150(4),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(4),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_76_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_77\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(3),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_101_n_0\,
      I2 => window_1_0_read_as_fu_162(2),
      I3 => window_0_0_read_as_fu_150(2),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(2),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_77_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_78\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(1),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_102_n_0\,
      I2 => window_1_0_read_as_fu_162(0),
      I3 => window_0_0_read_as_fu_150(0),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(0),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_78_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_79\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(7),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(7),
      I3 => window_1_0_read_as_fu_162(7),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_103_n_0\,
      I5 => window_1_0_read_as_fu_162(6),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_79_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(27),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_34_n_0\,
      I2 => window_1_0_read_as_fu_162(26),
      I3 => window_0_0_read_as_fu_150(26),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(26),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_8_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_80\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(5),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(5),
      I3 => window_1_0_read_as_fu_162(5),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_104_n_0\,
      I5 => window_1_0_read_as_fu_162(4),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_80_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_81\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(3),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(3),
      I3 => window_1_0_read_as_fu_162(3),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_105_n_0\,
      I5 => window_1_0_read_as_fu_162(2),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_81_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_82\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B84700000000B847"
    )
        port map (
      I0 => window_0_0_fu_154(1),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(1),
      I3 => window_1_0_read_as_fu_162(1),
      I4 => \maxValue_17_0_maxVal_reg_1057[31]_i_106_n_0\,
      I5 => window_1_0_read_as_fu_162(0),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_82_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_83\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(15),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(15),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_83_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_84\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(13),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(13),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_84_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_85\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(11),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(11),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_85_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_86\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(9),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(9),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_86_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_87\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(14),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(14),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_87_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_88\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(12),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(12),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_88_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_89\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(10),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(10),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_89_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"222222B2B2B222B2"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(25),
      I1 => \maxValue_17_0_maxVal_reg_1057[31]_i_35_n_0\,
      I2 => window_1_0_read_as_fu_162(24),
      I3 => window_0_0_read_as_fu_150(24),
      I4 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I5 => window_0_0_fu_154(24),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_9_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_90\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(8),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(8),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_90_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_91\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(7),
      I1 => window_0_0_read_as_fu_150(7),
      I2 => window_0_0_fu_154(6),
      I3 => window_0_0_read_as_fu_150(6),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_91_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_92\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(5),
      I1 => window_0_0_read_as_fu_150(5),
      I2 => window_0_0_fu_154(4),
      I3 => window_0_0_read_as_fu_150(4),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_92_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_93\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(3),
      I1 => window_0_0_read_as_fu_150(3),
      I2 => window_0_0_fu_154(2),
      I3 => window_0_0_read_as_fu_150(2),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_93_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_94\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_0_0_fu_154(1),
      I1 => window_0_0_read_as_fu_150(1),
      I2 => window_0_0_fu_154(0),
      I3 => window_0_0_read_as_fu_150(0),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_94_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_95\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(7),
      I1 => window_0_0_fu_154(7),
      I2 => window_0_0_read_as_fu_150(6),
      I3 => window_0_0_fu_154(6),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_95_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_96\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(5),
      I1 => window_0_0_fu_154(5),
      I2 => window_0_0_read_as_fu_150(4),
      I3 => window_0_0_fu_154(4),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_96_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_97\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(3),
      I1 => window_0_0_fu_154(3),
      I2 => window_0_0_read_as_fu_150(2),
      I3 => window_0_0_fu_154(2),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_97_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_98\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(1),
      I1 => window_0_0_fu_154(1),
      I2 => window_0_0_read_as_fu_150(0),
      I3 => window_0_0_fu_154(0),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_98_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[31]_i_99\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_0_0_fu_154(7),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I2 => window_0_0_read_as_fu_150(7),
      O => \maxValue_17_0_maxVal_reg_1057[31]_i_99_n_0\
    );
\maxValue_17_0_maxVal_reg_1057[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(3),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(3),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(3),
      O => maxValue_17_0_maxVal_fu_747_p3(3)
    );
\maxValue_17_0_maxVal_reg_1057[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(4),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(4),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(4),
      O => maxValue_17_0_maxVal_fu_747_p3(4)
    );
\maxValue_17_0_maxVal_reg_1057[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(5),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(5),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(5),
      O => maxValue_17_0_maxVal_fu_747_p3(5)
    );
\maxValue_17_0_maxVal_reg_1057[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(6),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(6),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(6),
      O => maxValue_17_0_maxVal_fu_747_p3(6)
    );
\maxValue_17_0_maxVal_reg_1057[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(7),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(7),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(7),
      O => maxValue_17_0_maxVal_fu_747_p3(7)
    );
\maxValue_17_0_maxVal_reg_1057[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(8),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(8),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(8),
      O => maxValue_17_0_maxVal_fu_747_p3(8)
    );
\maxValue_17_0_maxVal_reg_1057[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(9),
      I1 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      I2 => window_0_0_fu_154(9),
      I3 => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      I4 => window_0_0_read_as_fu_150(9),
      O => maxValue_17_0_maxVal_fu_747_p3(9)
    );
\maxValue_17_0_maxVal_reg_1057_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(0),
      Q => maxValue_17_0_maxVal_reg_1057(0),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(10),
      Q => maxValue_17_0_maxVal_reg_1057(10),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(11),
      Q => maxValue_17_0_maxVal_reg_1057(11),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(12),
      Q => maxValue_17_0_maxVal_reg_1057(12),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(13),
      Q => maxValue_17_0_maxVal_reg_1057(13),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(14),
      Q => maxValue_17_0_maxVal_reg_1057(14),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(15),
      Q => maxValue_17_0_maxVal_reg_1057(15),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(16),
      Q => maxValue_17_0_maxVal_reg_1057(16),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(17),
      Q => maxValue_17_0_maxVal_reg_1057(17),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(18),
      Q => maxValue_17_0_maxVal_reg_1057(18),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(19),
      Q => maxValue_17_0_maxVal_reg_1057(19),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(1),
      Q => maxValue_17_0_maxVal_reg_1057(1),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(20),
      Q => maxValue_17_0_maxVal_reg_1057(20),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(21),
      Q => maxValue_17_0_maxVal_reg_1057(21),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(22),
      Q => maxValue_17_0_maxVal_reg_1057(22),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(23),
      Q => maxValue_17_0_maxVal_reg_1057(23),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(24),
      Q => maxValue_17_0_maxVal_reg_1057(24),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(25),
      Q => maxValue_17_0_maxVal_reg_1057(25),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(26),
      Q => maxValue_17_0_maxVal_reg_1057(26),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(27),
      Q => maxValue_17_0_maxVal_reg_1057(27),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(28),
      Q => maxValue_17_0_maxVal_reg_1057(28),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(29),
      Q => maxValue_17_0_maxVal_reg_1057(29),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(2),
      Q => maxValue_17_0_maxVal_reg_1057(2),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(30),
      Q => maxValue_17_0_maxVal_reg_1057(30),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(31),
      Q => maxValue_17_0_maxVal_reg_1057(31),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_0\,
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_41_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_42_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_43_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_44_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_45_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_46_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_47_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_48_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_23\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_0\,
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_50_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_51_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_52_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_53_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_54_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_55_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_56_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_57_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_0\,
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_6_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_7_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_8_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_9_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_10_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_11_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_12_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_13_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_14_n_0\,
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_15_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_16_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_17_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_18_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_19_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_20_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_21_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_22_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_40\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_0\,
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_67_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_68_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_69_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_70_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_40_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_71_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_72_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_73_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_74_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_49\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_75_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_76_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_77_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_78_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_49_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_79_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_80_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_81_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_82_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_23_n_0\,
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_24_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_25_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_26_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_27_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_28_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_29_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_30_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_31_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[31]_i_66\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_0\,
      CO(2) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_1\,
      CO(1) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_2\,
      CO(0) => \maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_n_3\,
      CYINIT => '0',
      DI(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_91_n_0\,
      DI(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_92_n_0\,
      DI(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_93_n_0\,
      DI(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_94_n_0\,
      O(3 downto 0) => \NLW_maxValue_17_0_maxVal_reg_1057_reg[31]_i_66_O_UNCONNECTED\(3 downto 0),
      S(3) => \maxValue_17_0_maxVal_reg_1057[31]_i_95_n_0\,
      S(2) => \maxValue_17_0_maxVal_reg_1057[31]_i_96_n_0\,
      S(1) => \maxValue_17_0_maxVal_reg_1057[31]_i_97_n_0\,
      S(0) => \maxValue_17_0_maxVal_reg_1057[31]_i_98_n_0\
    );
\maxValue_17_0_maxVal_reg_1057_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(3),
      Q => maxValue_17_0_maxVal_reg_1057(3),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(4),
      Q => maxValue_17_0_maxVal_reg_1057(4),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(5),
      Q => maxValue_17_0_maxVal_reg_1057(5),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(6),
      Q => maxValue_17_0_maxVal_reg_1057(6),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(7),
      Q => maxValue_17_0_maxVal_reg_1057(7),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(8),
      Q => maxValue_17_0_maxVal_reg_1057(8),
      R => '0'
    );
\maxValue_17_0_maxVal_reg_1057_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \maxValue_17_0_maxVal_reg_1057[31]_i_1_n_0\,
      D => maxValue_17_0_maxVal_fu_747_p3(9),
      Q => maxValue_17_0_maxVal_reg_1057(9),
      R => '0'
    );
\outStream_TDATA[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(0),
      I1 => outStream_V_data_V_1_payload_A(0),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(0)
    );
\outStream_TDATA[10]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(10),
      I1 => outStream_V_data_V_1_payload_A(10),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(10)
    );
\outStream_TDATA[11]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(11),
      I1 => outStream_V_data_V_1_payload_A(11),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(11)
    );
\outStream_TDATA[12]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(12),
      I1 => outStream_V_data_V_1_payload_A(12),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(12)
    );
\outStream_TDATA[13]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(13),
      I1 => outStream_V_data_V_1_payload_A(13),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(13)
    );
\outStream_TDATA[14]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(14),
      I1 => outStream_V_data_V_1_payload_A(14),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(14)
    );
\outStream_TDATA[15]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(15),
      I1 => outStream_V_data_V_1_payload_A(15),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(15)
    );
\outStream_TDATA[16]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(16),
      I1 => outStream_V_data_V_1_payload_A(16),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(16)
    );
\outStream_TDATA[17]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(17),
      I1 => outStream_V_data_V_1_payload_A(17),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(17)
    );
\outStream_TDATA[18]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(18),
      I1 => outStream_V_data_V_1_payload_A(18),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(18)
    );
\outStream_TDATA[19]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(19),
      I1 => outStream_V_data_V_1_payload_A(19),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(19)
    );
\outStream_TDATA[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(1),
      I1 => outStream_V_data_V_1_payload_A(1),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(1)
    );
\outStream_TDATA[20]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(20),
      I1 => outStream_V_data_V_1_payload_A(20),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(20)
    );
\outStream_TDATA[21]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(21),
      I1 => outStream_V_data_V_1_payload_A(21),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(21)
    );
\outStream_TDATA[22]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(22),
      I1 => outStream_V_data_V_1_payload_A(22),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(22)
    );
\outStream_TDATA[23]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(23),
      I1 => outStream_V_data_V_1_payload_A(23),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(23)
    );
\outStream_TDATA[24]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(24),
      I1 => outStream_V_data_V_1_payload_A(24),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(24)
    );
\outStream_TDATA[25]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(25),
      I1 => outStream_V_data_V_1_payload_A(25),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(25)
    );
\outStream_TDATA[26]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(26),
      I1 => outStream_V_data_V_1_payload_A(26),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(26)
    );
\outStream_TDATA[27]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(27),
      I1 => outStream_V_data_V_1_payload_A(27),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(27)
    );
\outStream_TDATA[28]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(28),
      I1 => outStream_V_data_V_1_payload_A(28),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(28)
    );
\outStream_TDATA[29]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(29),
      I1 => outStream_V_data_V_1_payload_A(29),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(29)
    );
\outStream_TDATA[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(2),
      I1 => outStream_V_data_V_1_payload_A(2),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(2)
    );
\outStream_TDATA[30]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(30),
      I1 => outStream_V_data_V_1_payload_A(30),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(30)
    );
\outStream_TDATA[31]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(31),
      I1 => outStream_V_data_V_1_payload_A(31),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(31)
    );
\outStream_TDATA[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(3),
      I1 => outStream_V_data_V_1_payload_A(3),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(3)
    );
\outStream_TDATA[4]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(4),
      I1 => outStream_V_data_V_1_payload_A(4),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(4)
    );
\outStream_TDATA[5]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(5),
      I1 => outStream_V_data_V_1_payload_A(5),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(5)
    );
\outStream_TDATA[6]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(6),
      I1 => outStream_V_data_V_1_payload_A(6),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(6)
    );
\outStream_TDATA[7]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(7),
      I1 => outStream_V_data_V_1_payload_A(7),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(7)
    );
\outStream_TDATA[8]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(8),
      I1 => outStream_V_data_V_1_payload_A(8),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(8)
    );
\outStream_TDATA[9]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => outStream_V_data_V_1_payload_B(9),
      I1 => outStream_V_data_V_1_payload_A(9),
      I2 => outStream_V_data_V_1_sel,
      O => outStream_TDATA(9)
    );
\outStream_TLAST[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => outStream_V_last_V_1_payload_B,
      I1 => outStream_V_last_V_1_sel,
      I2 => outStream_V_last_V_1_payload_A,
      O => outStream_TLAST(0)
    );
\outStream_V_data_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8BBB888"
    )
        port map (
      I0 => result_reg_1068(0),
      I1 => tmp_9_reg_1013,
      I2 => window_1_0_reg_414(0),
      I3 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I4 => maxValue_17_0_maxVal_reg_1057(0),
      O => tmp_data_V_2_fu_866_p3(0)
    );
\outStream_V_data_V_1_payload_A[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(10),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(10),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[10]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(10)
    );
\outStream_V_data_V_1_payload_A[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(10),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(10),
      O => \outStream_V_data_V_1_payload_A[10]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(11),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(11),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[11]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(11)
    );
\outStream_V_data_V_1_payload_A[11]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(11),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(11),
      O => \outStream_V_data_V_1_payload_A[11]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(12),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(12),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[12]_i_3_n_0\,
      O => tmp_data_V_2_fu_866_p3(12)
    );
\outStream_V_data_V_1_payload_A[12]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(12),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(12),
      O => \outStream_V_data_V_1_payload_A[12]_i_3_n_0\
    );
\outStream_V_data_V_1_payload_A[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(12),
      O => \outStream_V_data_V_1_payload_A[12]_i_4_n_0\
    );
\outStream_V_data_V_1_payload_A[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(11),
      O => \outStream_V_data_V_1_payload_A[12]_i_5_n_0\
    );
\outStream_V_data_V_1_payload_A[12]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(10),
      O => \outStream_V_data_V_1_payload_A[12]_i_6_n_0\
    );
\outStream_V_data_V_1_payload_A[12]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(9),
      O => \outStream_V_data_V_1_payload_A[12]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(13),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(13),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[13]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(13)
    );
\outStream_V_data_V_1_payload_A[13]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(13),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(13),
      O => \outStream_V_data_V_1_payload_A[13]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(14),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(14),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[14]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(14)
    );
\outStream_V_data_V_1_payload_A[14]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(14),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(14),
      O => \outStream_V_data_V_1_payload_A[14]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(15),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(15),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[15]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(15)
    );
\outStream_V_data_V_1_payload_A[15]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(15),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(15),
      O => \outStream_V_data_V_1_payload_A[15]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(16),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(16),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[16]_i_3_n_0\,
      O => tmp_data_V_2_fu_866_p3(16)
    );
\outStream_V_data_V_1_payload_A[16]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(16),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(16),
      O => \outStream_V_data_V_1_payload_A[16]_i_3_n_0\
    );
\outStream_V_data_V_1_payload_A[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(16),
      O => \outStream_V_data_V_1_payload_A[16]_i_4_n_0\
    );
\outStream_V_data_V_1_payload_A[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(15),
      O => \outStream_V_data_V_1_payload_A[16]_i_5_n_0\
    );
\outStream_V_data_V_1_payload_A[16]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(14),
      O => \outStream_V_data_V_1_payload_A[16]_i_6_n_0\
    );
\outStream_V_data_V_1_payload_A[16]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(13),
      O => \outStream_V_data_V_1_payload_A[16]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(17),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(17),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[17]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(17)
    );
\outStream_V_data_V_1_payload_A[17]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(17),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(17),
      O => \outStream_V_data_V_1_payload_A[17]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(18),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(18),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[18]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(18)
    );
\outStream_V_data_V_1_payload_A[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(18),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(18),
      O => \outStream_V_data_V_1_payload_A[18]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(19),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(19),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[19]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(19)
    );
\outStream_V_data_V_1_payload_A[19]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(19),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(19),
      O => \outStream_V_data_V_1_payload_A[19]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(1),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(1),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[1]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(1)
    );
\outStream_V_data_V_1_payload_A[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(1),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(1),
      O => \outStream_V_data_V_1_payload_A[1]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[20]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(20),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(20),
      O => tmp_data_V_2_fu_866_p3(20)
    );
\outStream_V_data_V_1_payload_A[21]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(21),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(21),
      O => tmp_data_V_2_fu_866_p3(21)
    );
\outStream_V_data_V_1_payload_A[22]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(22),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(22),
      O => tmp_data_V_2_fu_866_p3(22)
    );
\outStream_V_data_V_1_payload_A[23]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(23),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(23),
      O => tmp_data_V_2_fu_866_p3(23)
    );
\outStream_V_data_V_1_payload_A[24]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(24),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(24),
      O => tmp_data_V_2_fu_866_p3(24)
    );
\outStream_V_data_V_1_payload_A[25]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(25),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(25),
      O => tmp_data_V_2_fu_866_p3(25)
    );
\outStream_V_data_V_1_payload_A[26]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(26),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(26),
      O => tmp_data_V_2_fu_866_p3(26)
    );
\outStream_V_data_V_1_payload_A[27]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(27),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(27),
      O => tmp_data_V_2_fu_866_p3(27)
    );
\outStream_V_data_V_1_payload_A[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(28),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(28),
      O => tmp_data_V_2_fu_866_p3(28)
    );
\outStream_V_data_V_1_payload_A[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(29),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(29),
      O => tmp_data_V_2_fu_866_p3(29)
    );
\outStream_V_data_V_1_payload_A[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(2),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(2),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[2]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(2)
    );
\outStream_V_data_V_1_payload_A[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(2),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(2),
      O => \outStream_V_data_V_1_payload_A[2]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(30),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(30),
      O => tmp_data_V_2_fu_866_p3(30)
    );
\outStream_V_data_V_1_payload_A[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => outStream_V_data_V_1_sel_wr,
      I1 => outStream_V_data_V_1_ack_in,
      I2 => \outStream_V_data_V_1_state_reg_n_0_[0]\,
      O => outStream_V_data_V_1_load_A
    );
\outStream_V_data_V_1_payload_A[31]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(29),
      I1 => maxValue_17_0_maxVal_reg_1057(29),
      I2 => window_1_0_reg_414(28),
      I3 => maxValue_17_0_maxVal_reg_1057(28),
      O => \outStream_V_data_V_1_payload_A[31]_i_10_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(27),
      I1 => maxValue_17_0_maxVal_reg_1057(27),
      I2 => window_1_0_reg_414(26),
      I3 => maxValue_17_0_maxVal_reg_1057(26),
      O => \outStream_V_data_V_1_payload_A[31]_i_11_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_12\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(25),
      I1 => maxValue_17_0_maxVal_reg_1057(25),
      I2 => window_1_0_reg_414(24),
      I3 => maxValue_17_0_maxVal_reg_1057(24),
      O => \outStream_V_data_V_1_payload_A[31]_i_12_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(31),
      I1 => window_1_0_reg_414(31),
      I2 => maxValue_17_0_maxVal_reg_1057(30),
      I3 => window_1_0_reg_414(30),
      O => \outStream_V_data_V_1_payload_A[31]_i_13_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_14\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(29),
      I1 => window_1_0_reg_414(29),
      I2 => maxValue_17_0_maxVal_reg_1057(28),
      I3 => window_1_0_reg_414(28),
      O => \outStream_V_data_V_1_payload_A[31]_i_14_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(27),
      I1 => window_1_0_reg_414(27),
      I2 => maxValue_17_0_maxVal_reg_1057(26),
      I3 => window_1_0_reg_414(26),
      O => \outStream_V_data_V_1_payload_A[31]_i_15_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_16\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(25),
      I1 => window_1_0_reg_414(25),
      I2 => maxValue_17_0_maxVal_reg_1057(24),
      I3 => window_1_0_reg_414(24),
      O => \outStream_V_data_V_1_payload_A[31]_i_16_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(23),
      I1 => maxValue_17_0_maxVal_reg_1057(23),
      I2 => window_1_0_reg_414(22),
      I3 => maxValue_17_0_maxVal_reg_1057(22),
      O => \outStream_V_data_V_1_payload_A[31]_i_18_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(21),
      I1 => maxValue_17_0_maxVal_reg_1057(21),
      I2 => window_1_0_reg_414(20),
      I3 => maxValue_17_0_maxVal_reg_1057(20),
      O => \outStream_V_data_V_1_payload_A[31]_i_19_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2F202F2F2F202020"
    )
        port map (
      I0 => tmp_13_reg_1063,
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      I2 => tmp_9_reg_1013,
      I3 => window_1_0_reg_414(31),
      I4 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I5 => maxValue_17_0_maxVal_reg_1057(31),
      O => tmp_data_V_2_fu_866_p3(31)
    );
\outStream_V_data_V_1_payload_A[31]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(19),
      I1 => maxValue_17_0_maxVal_reg_1057(19),
      I2 => window_1_0_reg_414(18),
      I3 => maxValue_17_0_maxVal_reg_1057(18),
      O => \outStream_V_data_V_1_payload_A[31]_i_20_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_21\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(17),
      I1 => maxValue_17_0_maxVal_reg_1057(17),
      I2 => window_1_0_reg_414(16),
      I3 => maxValue_17_0_maxVal_reg_1057(16),
      O => \outStream_V_data_V_1_payload_A[31]_i_21_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(23),
      I1 => window_1_0_reg_414(23),
      I2 => maxValue_17_0_maxVal_reg_1057(22),
      I3 => window_1_0_reg_414(22),
      O => \outStream_V_data_V_1_payload_A[31]_i_22_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(21),
      I1 => window_1_0_reg_414(21),
      I2 => maxValue_17_0_maxVal_reg_1057(20),
      I3 => window_1_0_reg_414(20),
      O => \outStream_V_data_V_1_payload_A[31]_i_23_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(19),
      I1 => window_1_0_reg_414(19),
      I2 => maxValue_17_0_maxVal_reg_1057(18),
      I3 => window_1_0_reg_414(18),
      O => \outStream_V_data_V_1_payload_A[31]_i_24_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_25\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(17),
      I1 => window_1_0_reg_414(17),
      I2 => maxValue_17_0_maxVal_reg_1057(16),
      I3 => window_1_0_reg_414(16),
      O => \outStream_V_data_V_1_payload_A[31]_i_25_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_27\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(15),
      I1 => maxValue_17_0_maxVal_reg_1057(15),
      I2 => window_1_0_reg_414(14),
      I3 => maxValue_17_0_maxVal_reg_1057(14),
      O => \outStream_V_data_V_1_payload_A[31]_i_27_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_28\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(13),
      I1 => maxValue_17_0_maxVal_reg_1057(13),
      I2 => window_1_0_reg_414(12),
      I3 => maxValue_17_0_maxVal_reg_1057(12),
      O => \outStream_V_data_V_1_payload_A[31]_i_28_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_29\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(11),
      I1 => maxValue_17_0_maxVal_reg_1057(11),
      I2 => window_1_0_reg_414(10),
      I3 => maxValue_17_0_maxVal_reg_1057(10),
      O => \outStream_V_data_V_1_payload_A[31]_i_29_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_30\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(9),
      I1 => maxValue_17_0_maxVal_reg_1057(9),
      I2 => window_1_0_reg_414(8),
      I3 => maxValue_17_0_maxVal_reg_1057(8),
      O => \outStream_V_data_V_1_payload_A[31]_i_30_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_31\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(15),
      I1 => window_1_0_reg_414(15),
      I2 => maxValue_17_0_maxVal_reg_1057(14),
      I3 => window_1_0_reg_414(14),
      O => \outStream_V_data_V_1_payload_A[31]_i_31_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_32\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(13),
      I1 => window_1_0_reg_414(13),
      I2 => maxValue_17_0_maxVal_reg_1057(12),
      I3 => window_1_0_reg_414(12),
      O => \outStream_V_data_V_1_payload_A[31]_i_32_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_33\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(11),
      I1 => window_1_0_reg_414(11),
      I2 => maxValue_17_0_maxVal_reg_1057(10),
      I3 => window_1_0_reg_414(10),
      O => \outStream_V_data_V_1_payload_A[31]_i_33_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_34\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(9),
      I1 => window_1_0_reg_414(9),
      I2 => maxValue_17_0_maxVal_reg_1057(8),
      I3 => window_1_0_reg_414(8),
      O => \outStream_V_data_V_1_payload_A[31]_i_34_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_35\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(7),
      I1 => maxValue_17_0_maxVal_reg_1057(7),
      I2 => window_1_0_reg_414(6),
      I3 => maxValue_17_0_maxVal_reg_1057(6),
      O => \outStream_V_data_V_1_payload_A[31]_i_35_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_36\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(5),
      I1 => maxValue_17_0_maxVal_reg_1057(5),
      I2 => window_1_0_reg_414(4),
      I3 => maxValue_17_0_maxVal_reg_1057(4),
      O => \outStream_V_data_V_1_payload_A[31]_i_36_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_37\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(3),
      I1 => maxValue_17_0_maxVal_reg_1057(3),
      I2 => window_1_0_reg_414(2),
      I3 => maxValue_17_0_maxVal_reg_1057(2),
      O => \outStream_V_data_V_1_payload_A[31]_i_37_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_38\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(1),
      I1 => maxValue_17_0_maxVal_reg_1057(1),
      I2 => window_1_0_reg_414(0),
      I3 => maxValue_17_0_maxVal_reg_1057(0),
      O => \outStream_V_data_V_1_payload_A[31]_i_38_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_39\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(7),
      I1 => window_1_0_reg_414(7),
      I2 => maxValue_17_0_maxVal_reg_1057(6),
      I3 => window_1_0_reg_414(6),
      O => \outStream_V_data_V_1_payload_A[31]_i_39_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_40\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(5),
      I1 => window_1_0_reg_414(5),
      I2 => maxValue_17_0_maxVal_reg_1057(4),
      I3 => window_1_0_reg_414(4),
      O => \outStream_V_data_V_1_payload_A[31]_i_40_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_41\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(3),
      I1 => window_1_0_reg_414(3),
      I2 => maxValue_17_0_maxVal_reg_1057(2),
      I3 => window_1_0_reg_414(2),
      O => \outStream_V_data_V_1_payload_A[31]_i_41_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_42\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => maxValue_17_0_maxVal_reg_1057(1),
      I1 => window_1_0_reg_414(1),
      I2 => maxValue_17_0_maxVal_reg_1057(0),
      I3 => window_1_0_reg_414(0),
      O => \outStream_V_data_V_1_payload_A[31]_i_42_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(19),
      O => \outStream_V_data_V_1_payload_A[31]_i_5_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(18),
      O => \outStream_V_data_V_1_payload_A[31]_i_6_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(17),
      O => \outStream_V_data_V_1_payload_A[31]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A[31]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"22B2"
    )
        port map (
      I0 => window_1_0_reg_414(31),
      I1 => maxValue_17_0_maxVal_reg_1057(31),
      I2 => window_1_0_reg_414(30),
      I3 => maxValue_17_0_maxVal_reg_1057(30),
      O => \outStream_V_data_V_1_payload_A[31]_i_9_n_0\
    );
\outStream_V_data_V_1_payload_A[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(3),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(3),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[3]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(3)
    );
\outStream_V_data_V_1_payload_A[3]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(3),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(3),
      O => \outStream_V_data_V_1_payload_A[3]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(4),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(4),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[4]_i_3_n_0\,
      O => tmp_data_V_2_fu_866_p3(4)
    );
\outStream_V_data_V_1_payload_A[4]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(4),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(4),
      O => \outStream_V_data_V_1_payload_A[4]_i_3_n_0\
    );
\outStream_V_data_V_1_payload_A[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(0),
      O => \outStream_V_data_V_1_payload_A[4]_i_4_n_0\
    );
\outStream_V_data_V_1_payload_A[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(4),
      O => \outStream_V_data_V_1_payload_A[4]_i_5_n_0\
    );
\outStream_V_data_V_1_payload_A[4]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(3),
      O => \outStream_V_data_V_1_payload_A[4]_i_6_n_0\
    );
\outStream_V_data_V_1_payload_A[4]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(2),
      O => \outStream_V_data_V_1_payload_A[4]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A[4]_i_8\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(1),
      O => \outStream_V_data_V_1_payload_A[4]_i_8_n_0\
    );
\outStream_V_data_V_1_payload_A[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(5),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(5),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[5]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(5)
    );
\outStream_V_data_V_1_payload_A[5]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(5),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(5),
      O => \outStream_V_data_V_1_payload_A[5]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(6),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(6),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[6]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(6)
    );
\outStream_V_data_V_1_payload_A[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(6),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(6),
      O => \outStream_V_data_V_1_payload_A[6]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(7),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(7),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[7]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(7)
    );
\outStream_V_data_V_1_payload_A[7]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(7),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(7),
      O => \outStream_V_data_V_1_payload_A[7]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(8),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(8),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[8]_i_3_n_0\,
      O => tmp_data_V_2_fu_866_p3(8)
    );
\outStream_V_data_V_1_payload_A[8]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(8),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(8),
      O => \outStream_V_data_V_1_payload_A[8]_i_3_n_0\
    );
\outStream_V_data_V_1_payload_A[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(8),
      O => \outStream_V_data_V_1_payload_A[8]_i_4_n_0\
    );
\outStream_V_data_V_1_payload_A[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(7),
      O => \outStream_V_data_V_1_payload_A[8]_i_5_n_0\
    );
\outStream_V_data_V_1_payload_A[8]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(6),
      O => \outStream_V_data_V_1_payload_A[8]_i_6_n_0\
    );
\outStream_V_data_V_1_payload_A[8]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => result_reg_1068(5),
      O => \outStream_V_data_V_1_payload_A[8]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => tmp_4_i_i_fu_849_p2(9),
      I1 => tmp_13_reg_1063,
      I2 => result_reg_1068(9),
      I3 => tmp_9_reg_1013,
      I4 => \outStream_V_data_V_1_payload_A[9]_i_2_n_0\,
      O => tmp_data_V_2_fu_866_p3(9)
    );
\outStream_V_data_V_1_payload_A[9]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => window_1_0_reg_414(9),
      I1 => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      I2 => maxValue_17_0_maxVal_reg_1057(9),
      O => \outStream_V_data_V_1_payload_A[9]_i_2_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(0),
      Q => outStream_V_data_V_1_payload_A(0),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(10),
      Q => outStream_V_data_V_1_payload_A(10),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(11),
      Q => outStream_V_data_V_1_payload_A(11),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(12),
      Q => outStream_V_data_V_1_payload_A(12),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[12]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_0\,
      CO(3) => \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_i_i_fu_849_p2(12 downto 9),
      S(3) => \outStream_V_data_V_1_payload_A[12]_i_4_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[12]_i_5_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[12]_i_6_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[12]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(13),
      Q => outStream_V_data_V_1_payload_A(13),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(14),
      Q => outStream_V_data_V_1_payload_A(14),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(15),
      Q => outStream_V_data_V_1_payload_A(15),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(16),
      Q => outStream_V_data_V_1_payload_A(16),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[16]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_data_V_1_payload_A_reg[12]_i_2_n_0\,
      CO(3) => \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_i_i_fu_849_p2(16 downto 13),
      S(3) => \outStream_V_data_V_1_payload_A[16]_i_4_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[16]_i_5_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[16]_i_6_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[16]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(17),
      Q => outStream_V_data_V_1_payload_A(17),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(18),
      Q => outStream_V_data_V_1_payload_A(18),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(19),
      Q => outStream_V_data_V_1_payload_A(19),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(1),
      Q => outStream_V_data_V_1_payload_A(1),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(20),
      Q => outStream_V_data_V_1_payload_A(20),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(21),
      Q => outStream_V_data_V_1_payload_A(21),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(22),
      Q => outStream_V_data_V_1_payload_A(22),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(23),
      Q => outStream_V_data_V_1_payload_A(23),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(24),
      Q => outStream_V_data_V_1_payload_A(24),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(25),
      Q => outStream_V_data_V_1_payload_A(25),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(26),
      Q => outStream_V_data_V_1_payload_A(26),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(27),
      Q => outStream_V_data_V_1_payload_A(27),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(28),
      Q => outStream_V_data_V_1_payload_A(28),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(29),
      Q => outStream_V_data_V_1_payload_A(29),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(2),
      Q => outStream_V_data_V_1_payload_A(2),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(30),
      Q => outStream_V_data_V_1_payload_A(30),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(31),
      Q => outStream_V_data_V_1_payload_A(31),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[31]_i_17\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_0\,
      CO(3) => \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_3\,
      CYINIT => '0',
      DI(3) => \outStream_V_data_V_1_payload_A[31]_i_27_n_0\,
      DI(2) => \outStream_V_data_V_1_payload_A[31]_i_28_n_0\,
      DI(1) => \outStream_V_data_V_1_payload_A[31]_i_29_n_0\,
      DI(0) => \outStream_V_data_V_1_payload_A[31]_i_30_n_0\,
      O(3 downto 0) => \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_17_O_UNCONNECTED\(3 downto 0),
      S(3) => \outStream_V_data_V_1_payload_A[31]_i_31_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[31]_i_32_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[31]_i_33_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[31]_i_34_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[31]_i_26\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[31]_i_26_n_3\,
      CYINIT => '0',
      DI(3) => \outStream_V_data_V_1_payload_A[31]_i_35_n_0\,
      DI(2) => \outStream_V_data_V_1_payload_A[31]_i_36_n_0\,
      DI(1) => \outStream_V_data_V_1_payload_A[31]_i_37_n_0\,
      DI(0) => \outStream_V_data_V_1_payload_A[31]_i_38_n_0\,
      O(3 downto 0) => \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_26_O_UNCONNECTED\(3 downto 0),
      S(3) => \outStream_V_data_V_1_payload_A[31]_i_39_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[31]_i_40_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[31]_i_41_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[31]_i_42_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[31]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_data_V_1_payload_A_reg[16]_i_2_n_0\,
      CO(3) => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_0\,
      CO(2) => \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_CO_UNCONNECTED\(2),
      CO(1) => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[31]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_3_O_UNCONNECTED\(3),
      O(2 downto 0) => tmp_4_i_i_fu_849_p2(19 downto 17),
      S(3) => '1',
      S(2) => \outStream_V_data_V_1_payload_A[31]_i_5_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[31]_i_6_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[31]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[31]_i_4\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_0\,
      CO(3) => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[31]_i_4_n_3\,
      CYINIT => '0',
      DI(3) => \outStream_V_data_V_1_payload_A[31]_i_9_n_0\,
      DI(2) => \outStream_V_data_V_1_payload_A[31]_i_10_n_0\,
      DI(1) => \outStream_V_data_V_1_payload_A[31]_i_11_n_0\,
      DI(0) => \outStream_V_data_V_1_payload_A[31]_i_12_n_0\,
      O(3 downto 0) => \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_4_O_UNCONNECTED\(3 downto 0),
      S(3) => \outStream_V_data_V_1_payload_A[31]_i_13_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[31]_i_14_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[31]_i_15_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[31]_i_16_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[31]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_data_V_1_payload_A_reg[31]_i_17_n_0\,
      CO(3) => \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[31]_i_8_n_3\,
      CYINIT => '0',
      DI(3) => \outStream_V_data_V_1_payload_A[31]_i_18_n_0\,
      DI(2) => \outStream_V_data_V_1_payload_A[31]_i_19_n_0\,
      DI(1) => \outStream_V_data_V_1_payload_A[31]_i_20_n_0\,
      DI(0) => \outStream_V_data_V_1_payload_A[31]_i_21_n_0\,
      O(3 downto 0) => \NLW_outStream_V_data_V_1_payload_A_reg[31]_i_8_O_UNCONNECTED\(3 downto 0),
      S(3) => \outStream_V_data_V_1_payload_A[31]_i_22_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[31]_i_23_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[31]_i_24_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[31]_i_25_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(3),
      Q => outStream_V_data_V_1_payload_A(3),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(4),
      Q => outStream_V_data_V_1_payload_A(4),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[4]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_3\,
      CYINIT => \outStream_V_data_V_1_payload_A[4]_i_4_n_0\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_i_i_fu_849_p2(4 downto 1),
      S(3) => \outStream_V_data_V_1_payload_A[4]_i_5_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[4]_i_6_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[4]_i_7_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[4]_i_8_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(5),
      Q => outStream_V_data_V_1_payload_A(5),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(6),
      Q => outStream_V_data_V_1_payload_A(6),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(7),
      Q => outStream_V_data_V_1_payload_A(7),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(8),
      Q => outStream_V_data_V_1_payload_A(8),
      R => '0'
    );
\outStream_V_data_V_1_payload_A_reg[8]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_data_V_1_payload_A_reg[4]_i_2_n_0\,
      CO(3) => \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_0\,
      CO(2) => \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_1\,
      CO(1) => \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_2\,
      CO(0) => \outStream_V_data_V_1_payload_A_reg[8]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_4_i_i_fu_849_p2(8 downto 5),
      S(3) => \outStream_V_data_V_1_payload_A[8]_i_4_n_0\,
      S(2) => \outStream_V_data_V_1_payload_A[8]_i_5_n_0\,
      S(1) => \outStream_V_data_V_1_payload_A[8]_i_6_n_0\,
      S(0) => \outStream_V_data_V_1_payload_A[8]_i_7_n_0\
    );
\outStream_V_data_V_1_payload_A_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_A,
      D => tmp_data_V_2_fu_866_p3(9),
      Q => outStream_V_data_V_1_payload_A(9),
      R => '0'
    );
\outStream_V_data_V_1_payload_B[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => outStream_V_data_V_1_sel_wr,
      I1 => outStream_V_data_V_1_ack_in,
      I2 => \outStream_V_data_V_1_state_reg_n_0_[0]\,
      O => outStream_V_data_V_1_load_B
    );
\outStream_V_data_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(0),
      Q => outStream_V_data_V_1_payload_B(0),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(10),
      Q => outStream_V_data_V_1_payload_B(10),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(11),
      Q => outStream_V_data_V_1_payload_B(11),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(12),
      Q => outStream_V_data_V_1_payload_B(12),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(13),
      Q => outStream_V_data_V_1_payload_B(13),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(14),
      Q => outStream_V_data_V_1_payload_B(14),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(15),
      Q => outStream_V_data_V_1_payload_B(15),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(16),
      Q => outStream_V_data_V_1_payload_B(16),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(17),
      Q => outStream_V_data_V_1_payload_B(17),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(18),
      Q => outStream_V_data_V_1_payload_B(18),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(19),
      Q => outStream_V_data_V_1_payload_B(19),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(1),
      Q => outStream_V_data_V_1_payload_B(1),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(20),
      Q => outStream_V_data_V_1_payload_B(20),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(21),
      Q => outStream_V_data_V_1_payload_B(21),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(22),
      Q => outStream_V_data_V_1_payload_B(22),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(23),
      Q => outStream_V_data_V_1_payload_B(23),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(24),
      Q => outStream_V_data_V_1_payload_B(24),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(25),
      Q => outStream_V_data_V_1_payload_B(25),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(26),
      Q => outStream_V_data_V_1_payload_B(26),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(27),
      Q => outStream_V_data_V_1_payload_B(27),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(28),
      Q => outStream_V_data_V_1_payload_B(28),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(29),
      Q => outStream_V_data_V_1_payload_B(29),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(2),
      Q => outStream_V_data_V_1_payload_B(2),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(30),
      Q => outStream_V_data_V_1_payload_B(30),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(31),
      Q => outStream_V_data_V_1_payload_B(31),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(3),
      Q => outStream_V_data_V_1_payload_B(3),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(4),
      Q => outStream_V_data_V_1_payload_B(4),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(5),
      Q => outStream_V_data_V_1_payload_B(5),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(6),
      Q => outStream_V_data_V_1_payload_B(6),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(7),
      Q => outStream_V_data_V_1_payload_B(7),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(8),
      Q => outStream_V_data_V_1_payload_B(8),
      R => '0'
    );
\outStream_V_data_V_1_payload_B_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_load_B,
      D => tmp_data_V_2_fu_866_p3(9),
      Q => outStream_V_data_V_1_payload_B(9),
      R => '0'
    );
outStream_V_data_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_data_V_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_data_V_1_sel,
      O => outStream_V_data_V_1_sel_rd_i_1_n_0
    );
outStream_V_data_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_data_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_data_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_data_V_1_sel_wr_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => outStream_V_data_V_1_sel_wr052_out,
      I1 => outStream_V_data_V_1_sel_wr,
      O => outStream_V_data_V_1_sel_wr_i_1_n_0
    );
outStream_V_data_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_data_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_data_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_data_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8888"
    )
        port map (
      I0 => ap_rst_n,
      I1 => outStream_V_data_V_1_sel_wr052_out,
      I2 => outStream_V_data_V_1_ack_in,
      I3 => outStream_TREADY,
      I4 => \outStream_V_data_V_1_state_reg_n_0_[0]\,
      O => \outStream_V_data_V_1_state[0]_i_1_n_0\
    );
\outStream_V_data_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => outStream_V_data_V_1_sel_wr052_out,
      I1 => outStream_V_data_V_1_ack_in,
      I2 => outStream_TREADY,
      I3 => \outStream_V_data_V_1_state_reg_n_0_[0]\,
      O => \outStream_V_data_V_1_state[1]_i_1_n_0\
    );
\outStream_V_data_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_data_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_data_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\outStream_V_data_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_data_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_data_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_dest_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC4C0000"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^outstream_tvalid\,
      I2 => outStream_V_dest_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      I4 => ap_rst_n,
      O => \outStream_V_dest_V_1_state[0]_i_1_n_0\
    );
\outStream_V_dest_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \^outstream_tvalid\,
      I2 => outStream_V_dest_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      O => \outStream_V_dest_V_1_state[1]_i_1_n_0\
    );
\outStream_V_dest_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_dest_V_1_state[0]_i_1_n_0\,
      Q => \^outstream_tvalid\,
      R => '0'
    );
\outStream_V_dest_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_dest_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_dest_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_id_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC4C0000"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_id_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      I4 => ap_rst_n,
      O => \outStream_V_id_V_1_state[0]_i_1_n_0\
    );
\outStream_V_id_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_id_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      O => \outStream_V_id_V_1_state[1]_i_1_n_0\
    );
\outStream_V_id_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_id_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_id_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\outStream_V_id_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_id_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_id_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_keep_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC4C0000"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_keep_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      I4 => ap_rst_n,
      O => \outStream_V_keep_V_1_state[0]_i_1_n_0\
    );
\outStream_V_keep_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_keep_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      O => \outStream_V_keep_V_1_state[1]_i_1_n_0\
    );
\outStream_V_keep_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_keep_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_keep_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\outStream_V_keep_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_keep_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_keep_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_last_V_1_payload_A[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \outStream_V_last_V_1_payload_A[0]_i_2_n_0\,
      I1 => \outStream_V_last_V_1_payload_A[0]_i_3_n_0\,
      I2 => \outStream_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \outStream_V_last_V_1_payload_A[0]_i_5_n_0\,
      I4 => outStream_V_last_V_1_load_A,
      I5 => outStream_V_last_V_1_payload_A,
      O => \outStream_V_last_V_1_payload_A[0]_i_1_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => writeCount_fu_828_p2(27),
      I1 => writeCount_fu_828_p2(11),
      I2 => writeCount_fu_828_p2(24),
      I3 => writeCount_fu_828_p2(8),
      O => \outStream_V_last_V_1_payload_A[0]_i_11_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_15\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => writeCount_fu_828_p2(31),
      I1 => writeCount_fu_828_p2(15),
      I2 => writeCount_fu_828_p2(16),
      I3 => writeCount_fu_828_p2(10),
      O => \outStream_V_last_V_1_payload_A[0]_i_15_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => writeCount_fu_828_p2(23),
      I1 => writeCount_fu_828_p2(5),
      I2 => writeCount_fu_828_p2(25),
      I3 => writeCount_fu_828_p2(13),
      O => \outStream_V_last_V_1_payload_A[0]_i_17_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFDF"
    )
        port map (
      I0 => writeCount_fu_828_p2(7),
      I1 => writeCount_fu_828_p2(17),
      I2 => writeCount_fu_828_p2(2),
      I3 => writeCount_fu_828_p2(1),
      O => \outStream_V_last_V_1_payload_A[0]_i_18_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_19\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(12),
      O => \outStream_V_last_V_1_payload_A[0]_i_19_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFEFF"
    )
        port map (
      I0 => writeCount_fu_828_p2(12),
      I1 => writeCount_fu_828_p2(4),
      I2 => writeCount_fu_828_p2(28),
      I3 => writeCount_fu_828_p2(6),
      I4 => \outStream_V_last_V_1_payload_A[0]_i_11_n_0\,
      O => \outStream_V_last_V_1_payload_A[0]_i_2_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_20\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(11),
      O => \outStream_V_last_V_1_payload_A[0]_i_20_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_21\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(10),
      O => \outStream_V_last_V_1_payload_A[0]_i_21_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_22\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(9),
      O => \outStream_V_last_V_1_payload_A[0]_i_22_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_23\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(4),
      O => \outStream_V_last_V_1_payload_A[0]_i_23_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_24\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(3),
      O => \outStream_V_last_V_1_payload_A[0]_i_24_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_25\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(2),
      O => \outStream_V_last_V_1_payload_A[0]_i_25_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_26\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(1),
      O => \outStream_V_last_V_1_payload_A[0]_i_26_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_27\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(28),
      O => \outStream_V_last_V_1_payload_A[0]_i_27_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_28\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(27),
      O => \outStream_V_last_V_1_payload_A[0]_i_28_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_29\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(26),
      O => \outStream_V_last_V_1_payload_A[0]_i_29_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => writeCount_fu_828_p2(14),
      I1 => writeCount_fu_828_p2(30),
      I2 => writeCount_fu_828_p2(22),
      I3 => writeCount_fu_828_p2(26),
      I4 => \outStream_V_last_V_1_payload_A[0]_i_15_n_0\,
      O => \outStream_V_last_V_1_payload_A[0]_i_3_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_30\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(25),
      O => \outStream_V_last_V_1_payload_A[0]_i_30_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_31\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(8),
      O => \outStream_V_last_V_1_payload_A[0]_i_31_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_32\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(7),
      O => \outStream_V_last_V_1_payload_A[0]_i_32_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_33\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(6),
      O => \outStream_V_last_V_1_payload_A[0]_i_33_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_34\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(5),
      O => \outStream_V_last_V_1_payload_A[0]_i_34_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_35\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(16),
      O => \outStream_V_last_V_1_payload_A[0]_i_35_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_36\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(15),
      O => \outStream_V_last_V_1_payload_A[0]_i_36_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_37\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(14),
      O => \outStream_V_last_V_1_payload_A[0]_i_37_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_38\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(13),
      O => \outStream_V_last_V_1_payload_A[0]_i_38_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_39\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(31),
      O => \outStream_V_last_V_1_payload_A[0]_i_39_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFD"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(0),
      I1 => writeCount_fu_828_p2(3),
      I2 => writeCount_fu_828_p2(21),
      I3 => writeCount_fu_828_p2(19),
      I4 => \outStream_V_last_V_1_payload_A[0]_i_17_n_0\,
      O => \outStream_V_last_V_1_payload_A[0]_i_4_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_40\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(30),
      O => \outStream_V_last_V_1_payload_A[0]_i_40_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_41\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(29),
      O => \outStream_V_last_V_1_payload_A[0]_i_41_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_42\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(24),
      O => \outStream_V_last_V_1_payload_A[0]_i_42_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_43\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(23),
      O => \outStream_V_last_V_1_payload_A[0]_i_43_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_44\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(22),
      O => \outStream_V_last_V_1_payload_A[0]_i_44_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_45\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(21),
      O => \outStream_V_last_V_1_payload_A[0]_i_45_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_46\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(20),
      O => \outStream_V_last_V_1_payload_A[0]_i_46_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_47\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(19),
      O => \outStream_V_last_V_1_payload_A[0]_i_47_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_48\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(18),
      O => \outStream_V_last_V_1_payload_A[0]_i_48_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_49\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(17),
      O => \outStream_V_last_V_1_payload_A[0]_i_49_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => writeCount_fu_828_p2(20),
      I1 => writeCount_fu_828_p2(18),
      I2 => writeCount_fu_828_p2(9),
      I3 => writeCount_fu_828_p2(29),
      I4 => \outStream_V_last_V_1_payload_A[0]_i_18_n_0\,
      O => \outStream_V_last_V_1_payload_A[0]_i_5_n_0\
    );
\outStream_V_last_V_1_payload_A[0]_i_6\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"45"
    )
        port map (
      I0 => outStream_V_last_V_1_sel_wr,
      I1 => outStream_V_last_V_1_ack_in,
      I2 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      O => outStream_V_last_V_1_load_A
    );
\outStream_V_last_V_1_payload_A_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_payload_A[0]_i_1_n_0\,
      Q => outStream_V_last_V_1_payload_A,
      R => '0'
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_0\,
      CO(3) => \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_0\,
      CO(2) => \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_1\,
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => writeCount_fu_828_p2(8 downto 5),
      S(3) => \outStream_V_last_V_1_payload_A[0]_i_31_n_0\,
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_32_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_33_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_34_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_12\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_0\,
      CO(3) => \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_0\,
      CO(2) => \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_1\,
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => writeCount_fu_828_p2(16 downto 13),
      S(3) => \outStream_V_last_V_1_payload_A[0]_i_35_n_0\,
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_36_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_37_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_38_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_13\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_0\,
      CO(3 downto 2) => \NLW_outStream_V_last_V_1_payload_A_reg[0]_i_13_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_13_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_outStream_V_last_V_1_payload_A_reg[0]_i_13_O_UNCONNECTED\(3),
      O(2 downto 0) => writeCount_fu_828_p2(31 downto 29),
      S(3) => '0',
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_39_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_40_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_41_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_14\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_0\,
      CO(3) => \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_0\,
      CO(2) => \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_1\,
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => writeCount_fu_828_p2(24 downto 21),
      S(3) => \outStream_V_last_V_1_payload_A[0]_i_42_n_0\,
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_43_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_44_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_45_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_16\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_last_V_1_payload_A_reg[0]_i_12_n_0\,
      CO(3) => \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_0\,
      CO(2) => \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_1\,
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_16_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => writeCount_fu_828_p2(20 downto 17),
      S(3) => \outStream_V_last_V_1_payload_A[0]_i_46_n_0\,
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_47_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_48_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_49_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_7\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_last_V_1_payload_A_reg[0]_i_10_n_0\,
      CO(3) => \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_0\,
      CO(2) => \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_1\,
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_7_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => writeCount_fu_828_p2(12 downto 9),
      S(3) => \outStream_V_last_V_1_payload_A[0]_i_19_n_0\,
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_20_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_21_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_22_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_8\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_0\,
      CO(2) => \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_1\,
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_8_n_3\,
      CYINIT => writeCount_1_fu_166_reg(0),
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => writeCount_fu_828_p2(4 downto 1),
      S(3) => \outStream_V_last_V_1_payload_A[0]_i_23_n_0\,
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_24_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_25_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_26_n_0\
    );
\outStream_V_last_V_1_payload_A_reg[0]_i_9\: unisim.vcomponents.CARRY4
     port map (
      CI => \outStream_V_last_V_1_payload_A_reg[0]_i_14_n_0\,
      CO(3) => \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_0\,
      CO(2) => \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_1\,
      CO(1) => \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_2\,
      CO(0) => \outStream_V_last_V_1_payload_A_reg[0]_i_9_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => writeCount_fu_828_p2(28 downto 25),
      S(3) => \outStream_V_last_V_1_payload_A[0]_i_27_n_0\,
      S(2) => \outStream_V_last_V_1_payload_A[0]_i_28_n_0\,
      S(1) => \outStream_V_last_V_1_payload_A[0]_i_29_n_0\,
      S(0) => \outStream_V_last_V_1_payload_A[0]_i_30_n_0\
    );
\outStream_V_last_V_1_payload_B[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0004FFFF00040000"
    )
        port map (
      I0 => \outStream_V_last_V_1_payload_A[0]_i_2_n_0\,
      I1 => \outStream_V_last_V_1_payload_A[0]_i_3_n_0\,
      I2 => \outStream_V_last_V_1_payload_A[0]_i_4_n_0\,
      I3 => \outStream_V_last_V_1_payload_A[0]_i_5_n_0\,
      I4 => outStream_V_last_V_1_load_B,
      I5 => outStream_V_last_V_1_payload_B,
      O => \outStream_V_last_V_1_payload_B[0]_i_1_n_0\
    );
\outStream_V_last_V_1_payload_B[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8A"
    )
        port map (
      I0 => outStream_V_last_V_1_sel_wr,
      I1 => outStream_V_last_V_1_ack_in,
      I2 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      O => outStream_V_last_V_1_load_B
    );
\outStream_V_last_V_1_payload_B_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_payload_B[0]_i_1_n_0\,
      Q => outStream_V_last_V_1_payload_B,
      R => '0'
    );
outStream_V_last_V_1_sel_rd_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      I1 => outStream_TREADY,
      I2 => outStream_V_last_V_1_sel,
      O => outStream_V_last_V_1_sel_rd_i_1_n_0
    );
outStream_V_last_V_1_sel_rd_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_last_V_1_sel_rd_i_1_n_0,
      Q => outStream_V_last_V_1_sel,
      R => ap_rst_n_inv
    );
outStream_V_last_V_1_sel_wr_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => outStream_V_data_V_1_sel_wr052_out,
      I1 => outStream_V_last_V_1_ack_in,
      I2 => outStream_V_last_V_1_sel_wr,
      O => outStream_V_last_V_1_sel_wr_i_1_n_0
    );
outStream_V_last_V_1_sel_wr_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => outStream_V_last_V_1_sel_wr_i_1_n_0,
      Q => outStream_V_last_V_1_sel_wr,
      R => ap_rst_n_inv
    );
\outStream_V_last_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8AAA8080"
    )
        port map (
      I0 => ap_rst_n,
      I1 => outStream_V_data_V_1_sel_wr052_out,
      I2 => outStream_V_last_V_1_ack_in,
      I3 => outStream_TREADY,
      I4 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      O => \outStream_V_last_V_1_state[0]_i_1_n_0\
    );
\outStream_V_last_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F4FF"
    )
        port map (
      I0 => outStream_V_data_V_1_sel_wr052_out,
      I1 => outStream_V_last_V_1_ack_in,
      I2 => outStream_TREADY,
      I3 => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      O => \outStream_V_last_V_1_state[1]_i_1_n_0\
    );
\outStream_V_last_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_last_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\outStream_V_last_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_last_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_last_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_strb_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC4C0000"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_strb_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      I4 => ap_rst_n,
      O => \outStream_V_strb_V_1_state[0]_i_1_n_0\
    );
\outStream_V_strb_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_strb_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      O => \outStream_V_strb_V_1_state[1]_i_1_n_0\
    );
\outStream_V_strb_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_strb_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_strb_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\outStream_V_strb_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_strb_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_strb_V_1_ack_in,
      R => ap_rst_n_inv
    );
\outStream_V_user_V_1_state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FC4C0000"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_user_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      I4 => ap_rst_n,
      O => \outStream_V_user_V_1_state[0]_i_1_n_0\
    );
\outStream_V_user_V_1_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BBFB"
    )
        port map (
      I0 => outStream_TREADY,
      I1 => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      I2 => outStream_V_user_V_1_ack_in,
      I3 => outStream_V_data_V_1_sel_wr052_out,
      O => \outStream_V_user_V_1_state[1]_i_1_n_0\
    );
\outStream_V_user_V_1_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_state[0]_i_1_n_0\,
      Q => \outStream_V_user_V_1_state_reg_n_0_[0]\,
      R => '0'
    );
\outStream_V_user_V_1_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => ap_clk,
      CE => '1',
      D => \outStream_V_user_V_1_state[1]_i_1_n_0\,
      Q => outStream_V_user_V_1_ack_in,
      R => ap_rst_n_inv
    );
\readCount_1_fu_170[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"70"
    )
        port map (
      I0 => tmp_7_fu_677_p2,
      I1 => \x_assign_reg_392[4]_i_2_n_0\,
      I2 => ap_CS_fsm_state10,
      O => readCount_1_fu_170
    );
\readCount_1_fu_170[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tmp_7_fu_677_p2,
      I1 => \x_assign_reg_392[4]_i_2_n_0\,
      O => readCount_1_fu_1700
    );
\readCount_1_fu_170[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \readCount_1_fu_170_reg_n_0_[3]\,
      O => \readCount_1_fu_170[0]_i_4_n_0\
    );
\readCount_1_fu_170[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \readCount_1_fu_170_reg_n_0_[2]\,
      O => \readCount_1_fu_170[0]_i_5_n_0\
    );
\readCount_1_fu_170[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \readCount_1_fu_170_reg_n_0_[1]\,
      O => \readCount_1_fu_170[0]_i_6_n_0\
    );
\readCount_1_fu_170[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \readCount_1_fu_170_reg_n_0_[0]\,
      O => \readCount_1_fu_170[0]_i_7_n_0\
    );
\readCount_1_fu_170[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(15),
      O => \readCount_1_fu_170[12]_i_2_n_0\
    );
\readCount_1_fu_170[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(14),
      O => \readCount_1_fu_170[12]_i_3_n_0\
    );
\readCount_1_fu_170[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(13),
      O => \readCount_1_fu_170[12]_i_4_n_0\
    );
\readCount_1_fu_170[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(12),
      O => \readCount_1_fu_170[12]_i_5_n_0\
    );
\readCount_1_fu_170[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(19),
      O => \readCount_1_fu_170[16]_i_2_n_0\
    );
\readCount_1_fu_170[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(18),
      O => \readCount_1_fu_170[16]_i_3_n_0\
    );
\readCount_1_fu_170[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(17),
      O => \readCount_1_fu_170[16]_i_4_n_0\
    );
\readCount_1_fu_170[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(16),
      O => \readCount_1_fu_170[16]_i_5_n_0\
    );
\readCount_1_fu_170[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(23),
      O => \readCount_1_fu_170[20]_i_2_n_0\
    );
\readCount_1_fu_170[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(22),
      O => \readCount_1_fu_170[20]_i_3_n_0\
    );
\readCount_1_fu_170[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(21),
      O => \readCount_1_fu_170[20]_i_4_n_0\
    );
\readCount_1_fu_170[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(20),
      O => \readCount_1_fu_170[20]_i_5_n_0\
    );
\readCount_1_fu_170[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(27),
      O => \readCount_1_fu_170[24]_i_2_n_0\
    );
\readCount_1_fu_170[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(26),
      O => \readCount_1_fu_170[24]_i_3_n_0\
    );
\readCount_1_fu_170[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(25),
      O => \readCount_1_fu_170[24]_i_4_n_0\
    );
\readCount_1_fu_170[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(24),
      O => \readCount_1_fu_170[24]_i_5_n_0\
    );
\readCount_1_fu_170[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(31),
      O => \readCount_1_fu_170[28]_i_2_n_0\
    );
\readCount_1_fu_170[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(30),
      O => \readCount_1_fu_170[28]_i_3_n_0\
    );
\readCount_1_fu_170[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(29),
      O => \readCount_1_fu_170[28]_i_4_n_0\
    );
\readCount_1_fu_170[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(28),
      O => \readCount_1_fu_170[28]_i_5_n_0\
    );
\readCount_1_fu_170[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(7),
      O => \readCount_1_fu_170[4]_i_2_n_0\
    );
\readCount_1_fu_170[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(6),
      O => \readCount_1_fu_170[4]_i_3_n_0\
    );
\readCount_1_fu_170[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(5),
      O => \readCount_1_fu_170[4]_i_4_n_0\
    );
\readCount_1_fu_170[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(4),
      O => \readCount_1_fu_170[4]_i_5_n_0\
    );
\readCount_1_fu_170[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(11),
      O => \readCount_1_fu_170[8]_i_2_n_0\
    );
\readCount_1_fu_170[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(10),
      O => \readCount_1_fu_170[8]_i_3_n_0\
    );
\readCount_1_fu_170[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(9),
      O => \readCount_1_fu_170[8]_i_4_n_0\
    );
\readCount_1_fu_170[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(8),
      O => \readCount_1_fu_170[8]_i_5_n_0\
    );
\readCount_1_fu_170_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[0]_i_3_n_7\,
      Q => \readCount_1_fu_170_reg_n_0_[0]\,
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \readCount_1_fu_170_reg[0]_i_3_n_0\,
      CO(2) => \readCount_1_fu_170_reg[0]_i_3_n_1\,
      CO(1) => \readCount_1_fu_170_reg[0]_i_3_n_2\,
      CO(0) => \readCount_1_fu_170_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \readCount_1_fu_170_reg[0]_i_3_n_4\,
      O(2) => \readCount_1_fu_170_reg[0]_i_3_n_5\,
      O(1) => \readCount_1_fu_170_reg[0]_i_3_n_6\,
      O(0) => \readCount_1_fu_170_reg[0]_i_3_n_7\,
      S(3) => \readCount_1_fu_170[0]_i_4_n_0\,
      S(2) => \readCount_1_fu_170[0]_i_5_n_0\,
      S(1) => \readCount_1_fu_170[0]_i_6_n_0\,
      S(0) => \readCount_1_fu_170[0]_i_7_n_0\
    );
\readCount_1_fu_170_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[8]_i_1_n_5\,
      Q => readCount_1_fu_170_reg(10),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[8]_i_1_n_4\,
      Q => readCount_1_fu_170_reg(11),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[12]_i_1_n_7\,
      Q => readCount_1_fu_170_reg(12),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCount_1_fu_170_reg[8]_i_1_n_0\,
      CO(3) => \readCount_1_fu_170_reg[12]_i_1_n_0\,
      CO(2) => \readCount_1_fu_170_reg[12]_i_1_n_1\,
      CO(1) => \readCount_1_fu_170_reg[12]_i_1_n_2\,
      CO(0) => \readCount_1_fu_170_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readCount_1_fu_170_reg[12]_i_1_n_4\,
      O(2) => \readCount_1_fu_170_reg[12]_i_1_n_5\,
      O(1) => \readCount_1_fu_170_reg[12]_i_1_n_6\,
      O(0) => \readCount_1_fu_170_reg[12]_i_1_n_7\,
      S(3) => \readCount_1_fu_170[12]_i_2_n_0\,
      S(2) => \readCount_1_fu_170[12]_i_3_n_0\,
      S(1) => \readCount_1_fu_170[12]_i_4_n_0\,
      S(0) => \readCount_1_fu_170[12]_i_5_n_0\
    );
\readCount_1_fu_170_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[12]_i_1_n_6\,
      Q => readCount_1_fu_170_reg(13),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[12]_i_1_n_5\,
      Q => readCount_1_fu_170_reg(14),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[12]_i_1_n_4\,
      Q => readCount_1_fu_170_reg(15),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[16]_i_1_n_7\,
      Q => readCount_1_fu_170_reg(16),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCount_1_fu_170_reg[12]_i_1_n_0\,
      CO(3) => \readCount_1_fu_170_reg[16]_i_1_n_0\,
      CO(2) => \readCount_1_fu_170_reg[16]_i_1_n_1\,
      CO(1) => \readCount_1_fu_170_reg[16]_i_1_n_2\,
      CO(0) => \readCount_1_fu_170_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readCount_1_fu_170_reg[16]_i_1_n_4\,
      O(2) => \readCount_1_fu_170_reg[16]_i_1_n_5\,
      O(1) => \readCount_1_fu_170_reg[16]_i_1_n_6\,
      O(0) => \readCount_1_fu_170_reg[16]_i_1_n_7\,
      S(3) => \readCount_1_fu_170[16]_i_2_n_0\,
      S(2) => \readCount_1_fu_170[16]_i_3_n_0\,
      S(1) => \readCount_1_fu_170[16]_i_4_n_0\,
      S(0) => \readCount_1_fu_170[16]_i_5_n_0\
    );
\readCount_1_fu_170_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[16]_i_1_n_6\,
      Q => readCount_1_fu_170_reg(17),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[16]_i_1_n_5\,
      Q => readCount_1_fu_170_reg(18),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[16]_i_1_n_4\,
      Q => readCount_1_fu_170_reg(19),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[0]_i_3_n_6\,
      Q => \readCount_1_fu_170_reg_n_0_[1]\,
      S => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[20]_i_1_n_7\,
      Q => readCount_1_fu_170_reg(20),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCount_1_fu_170_reg[16]_i_1_n_0\,
      CO(3) => \readCount_1_fu_170_reg[20]_i_1_n_0\,
      CO(2) => \readCount_1_fu_170_reg[20]_i_1_n_1\,
      CO(1) => \readCount_1_fu_170_reg[20]_i_1_n_2\,
      CO(0) => \readCount_1_fu_170_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readCount_1_fu_170_reg[20]_i_1_n_4\,
      O(2) => \readCount_1_fu_170_reg[20]_i_1_n_5\,
      O(1) => \readCount_1_fu_170_reg[20]_i_1_n_6\,
      O(0) => \readCount_1_fu_170_reg[20]_i_1_n_7\,
      S(3) => \readCount_1_fu_170[20]_i_2_n_0\,
      S(2) => \readCount_1_fu_170[20]_i_3_n_0\,
      S(1) => \readCount_1_fu_170[20]_i_4_n_0\,
      S(0) => \readCount_1_fu_170[20]_i_5_n_0\
    );
\readCount_1_fu_170_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[20]_i_1_n_6\,
      Q => readCount_1_fu_170_reg(21),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[20]_i_1_n_5\,
      Q => readCount_1_fu_170_reg(22),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[20]_i_1_n_4\,
      Q => readCount_1_fu_170_reg(23),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[24]_i_1_n_7\,
      Q => readCount_1_fu_170_reg(24),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCount_1_fu_170_reg[20]_i_1_n_0\,
      CO(3) => \readCount_1_fu_170_reg[24]_i_1_n_0\,
      CO(2) => \readCount_1_fu_170_reg[24]_i_1_n_1\,
      CO(1) => \readCount_1_fu_170_reg[24]_i_1_n_2\,
      CO(0) => \readCount_1_fu_170_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readCount_1_fu_170_reg[24]_i_1_n_4\,
      O(2) => \readCount_1_fu_170_reg[24]_i_1_n_5\,
      O(1) => \readCount_1_fu_170_reg[24]_i_1_n_6\,
      O(0) => \readCount_1_fu_170_reg[24]_i_1_n_7\,
      S(3) => \readCount_1_fu_170[24]_i_2_n_0\,
      S(2) => \readCount_1_fu_170[24]_i_3_n_0\,
      S(1) => \readCount_1_fu_170[24]_i_4_n_0\,
      S(0) => \readCount_1_fu_170[24]_i_5_n_0\
    );
\readCount_1_fu_170_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[24]_i_1_n_6\,
      Q => readCount_1_fu_170_reg(25),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[24]_i_1_n_5\,
      Q => readCount_1_fu_170_reg(26),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[24]_i_1_n_4\,
      Q => readCount_1_fu_170_reg(27),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[28]_i_1_n_7\,
      Q => readCount_1_fu_170_reg(28),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCount_1_fu_170_reg[24]_i_1_n_0\,
      CO(3) => \NLW_readCount_1_fu_170_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \readCount_1_fu_170_reg[28]_i_1_n_1\,
      CO(1) => \readCount_1_fu_170_reg[28]_i_1_n_2\,
      CO(0) => \readCount_1_fu_170_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readCount_1_fu_170_reg[28]_i_1_n_4\,
      O(2) => \readCount_1_fu_170_reg[28]_i_1_n_5\,
      O(1) => \readCount_1_fu_170_reg[28]_i_1_n_6\,
      O(0) => \readCount_1_fu_170_reg[28]_i_1_n_7\,
      S(3) => \readCount_1_fu_170[28]_i_2_n_0\,
      S(2) => \readCount_1_fu_170[28]_i_3_n_0\,
      S(1) => \readCount_1_fu_170[28]_i_4_n_0\,
      S(0) => \readCount_1_fu_170[28]_i_5_n_0\
    );
\readCount_1_fu_170_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[28]_i_1_n_6\,
      Q => readCount_1_fu_170_reg(29),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[2]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[0]_i_3_n_5\,
      Q => \readCount_1_fu_170_reg_n_0_[2]\,
      S => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[28]_i_1_n_5\,
      Q => readCount_1_fu_170_reg(30),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[28]_i_1_n_4\,
      Q => readCount_1_fu_170_reg(31),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[0]_i_3_n_4\,
      Q => \readCount_1_fu_170_reg_n_0_[3]\,
      S => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[4]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[4]_i_1_n_7\,
      Q => readCount_1_fu_170_reg(4),
      S => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCount_1_fu_170_reg[0]_i_3_n_0\,
      CO(3) => \readCount_1_fu_170_reg[4]_i_1_n_0\,
      CO(2) => \readCount_1_fu_170_reg[4]_i_1_n_1\,
      CO(1) => \readCount_1_fu_170_reg[4]_i_1_n_2\,
      CO(0) => \readCount_1_fu_170_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readCount_1_fu_170_reg[4]_i_1_n_4\,
      O(2) => \readCount_1_fu_170_reg[4]_i_1_n_5\,
      O(1) => \readCount_1_fu_170_reg[4]_i_1_n_6\,
      O(0) => \readCount_1_fu_170_reg[4]_i_1_n_7\,
      S(3) => \readCount_1_fu_170[4]_i_2_n_0\,
      S(2) => \readCount_1_fu_170[4]_i_3_n_0\,
      S(1) => \readCount_1_fu_170[4]_i_4_n_0\,
      S(0) => \readCount_1_fu_170[4]_i_5_n_0\
    );
\readCount_1_fu_170_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[4]_i_1_n_6\,
      Q => readCount_1_fu_170_reg(5),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[4]_i_1_n_5\,
      Q => readCount_1_fu_170_reg(6),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[4]_i_1_n_4\,
      Q => readCount_1_fu_170_reg(7),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[8]_i_1_n_7\,
      Q => readCount_1_fu_170_reg(8),
      R => readCount_1_fu_170
    );
\readCount_1_fu_170_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \readCount_1_fu_170_reg[4]_i_1_n_0\,
      CO(3) => \readCount_1_fu_170_reg[8]_i_1_n_0\,
      CO(2) => \readCount_1_fu_170_reg[8]_i_1_n_1\,
      CO(1) => \readCount_1_fu_170_reg[8]_i_1_n_2\,
      CO(0) => \readCount_1_fu_170_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \readCount_1_fu_170_reg[8]_i_1_n_4\,
      O(2) => \readCount_1_fu_170_reg[8]_i_1_n_5\,
      O(1) => \readCount_1_fu_170_reg[8]_i_1_n_6\,
      O(0) => \readCount_1_fu_170_reg[8]_i_1_n_7\,
      S(3) => \readCount_1_fu_170[8]_i_2_n_0\,
      S(2) => \readCount_1_fu_170[8]_i_3_n_0\,
      S(1) => \readCount_1_fu_170[8]_i_4_n_0\,
      S(0) => \readCount_1_fu_170[8]_i_5_n_0\
    );
\readCount_1_fu_170_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => readCount_1_fu_1700,
      D => \readCount_1_fu_170_reg[8]_i_1_n_6\,
      Q => readCount_1_fu_170_reg(9),
      R => readCount_1_fu_170
    );
\result_reg_1068[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(2),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[1]_i_3_n_5\,
      O => result_fu_807_p3(0)
    );
\result_reg_1068[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(12),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[13]_i_3_n_7\,
      O => result_fu_807_p3(10)
    );
\result_reg_1068[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(13),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[13]_i_3_n_6\,
      O => result_fu_807_p3(11)
    );
\result_reg_1068[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(14),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[13]_i_3_n_5\,
      O => result_fu_807_p3(12)
    );
\result_reg_1068[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(15),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[13]_i_3_n_4\,
      O => result_fu_807_p3(13)
    );
\result_reg_1068[13]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(11),
      I1 => window_1_0_read_as_fu_162(11),
      I2 => window_0_0_read_as_fu_150(11),
      I3 => window_0_0_fu_154(12),
      I4 => \result_reg_1068[13]_i_18_n_0\,
      O => \result_reg_1068[13]_i_10_n_0\
    );
\result_reg_1068[13]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(10),
      I1 => window_1_0_read_as_fu_162(10),
      I2 => window_1_0_phi_fu_417_p4(10),
      I3 => window_0_0_fu_154(11),
      I4 => \result_reg_1068[13]_i_19_n_0\,
      O => \result_reg_1068[13]_i_11_n_0\
    );
\result_reg_1068[13]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[13]_i_8_n_0\,
      I1 => window_0_0_fu_154(15),
      I2 => \result_reg_1068[17]_i_19_n_0\,
      I3 => window_0_0_read_as_fu_150(14),
      I4 => window_1_0_read_as_fu_162(14),
      I5 => window_1_0_phi_fu_417_p4(14),
      O => \result_reg_1068[13]_i_12_n_0\
    );
\result_reg_1068[13]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \result_reg_1068[13]_i_9_n_0\,
      I1 => window_1_0_phi_fu_417_p4(13),
      I2 => window_1_0_read_as_fu_162(13),
      I3 => window_0_0_read_as_fu_150(13),
      I4 => window_0_0_fu_154(14),
      I5 => \result_reg_1068[13]_i_16_n_0\,
      O => \result_reg_1068[13]_i_13_n_0\
    );
\result_reg_1068[13]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[13]_i_10_n_0\,
      I1 => window_0_0_fu_154(13),
      I2 => \result_reg_1068[13]_i_17_n_0\,
      I3 => window_0_0_read_as_fu_150(12),
      I4 => window_1_0_read_as_fu_162(12),
      I5 => window_1_0_phi_fu_417_p4(12),
      O => \result_reg_1068[13]_i_14_n_0\
    );
\result_reg_1068[13]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \result_reg_1068[13]_i_11_n_0\,
      I1 => window_1_0_phi_fu_417_p4(11),
      I2 => window_1_0_read_as_fu_162(11),
      I3 => window_0_0_read_as_fu_150(11),
      I4 => window_0_0_fu_154(12),
      I5 => \result_reg_1068[13]_i_18_n_0\,
      O => \result_reg_1068[13]_i_15_n_0\
    );
\result_reg_1068[13]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(14),
      I1 => window_1_0_reg_414(14),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[14]\,
      I5 => window_1_0_read_as_fu_162(14),
      O => \result_reg_1068[13]_i_16_n_0\
    );
\result_reg_1068[13]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(13),
      I1 => window_1_0_reg_414(13),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[13]\,
      I5 => window_1_0_read_as_fu_162(13),
      O => \result_reg_1068[13]_i_17_n_0\
    );
\result_reg_1068[13]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(12),
      I1 => window_1_0_reg_414(12),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[12]\,
      I5 => window_1_0_read_as_fu_162(12),
      O => \result_reg_1068[13]_i_18_n_0\
    );
\result_reg_1068[13]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(11),
      I1 => window_1_0_reg_414(11),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[11]\,
      I5 => window_1_0_read_as_fu_162(11),
      O => \result_reg_1068[13]_i_19_n_0\
    );
\result_reg_1068[13]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[13]_i_3_n_4\,
      O => \result_reg_1068[13]_i_4_n_0\
    );
\result_reg_1068[13]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[13]_i_3_n_5\,
      O => \result_reg_1068[13]_i_5_n_0\
    );
\result_reg_1068[13]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[13]_i_3_n_6\,
      O => \result_reg_1068[13]_i_6_n_0\
    );
\result_reg_1068[13]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[13]_i_3_n_7\,
      O => \result_reg_1068[13]_i_7_n_0\
    );
\result_reg_1068[13]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(13),
      I1 => window_1_0_read_as_fu_162(13),
      I2 => window_0_0_read_as_fu_150(13),
      I3 => window_0_0_fu_154(14),
      I4 => \result_reg_1068[13]_i_16_n_0\,
      O => \result_reg_1068[13]_i_8_n_0\
    );
\result_reg_1068[13]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(12),
      I1 => window_1_0_read_as_fu_162(12),
      I2 => window_1_0_phi_fu_417_p4(12),
      I3 => window_0_0_fu_154(13),
      I4 => \result_reg_1068[13]_i_17_n_0\,
      O => \result_reg_1068[13]_i_9_n_0\
    );
\result_reg_1068[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(16),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[17]_i_3_n_7\,
      O => result_fu_807_p3(14)
    );
\result_reg_1068[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(17),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[17]_i_3_n_6\,
      O => result_fu_807_p3(15)
    );
\result_reg_1068[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(18),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[17]_i_3_n_5\,
      O => result_fu_807_p3(16)
    );
\result_reg_1068[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(19),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[17]_i_3_n_4\,
      O => result_fu_807_p3(17)
    );
\result_reg_1068[17]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(15),
      I1 => window_1_0_read_as_fu_162(15),
      I2 => window_0_0_read_as_fu_150(15),
      I3 => window_0_0_fu_154(16),
      I4 => \result_reg_1068[17]_i_18_n_0\,
      O => \result_reg_1068[17]_i_10_n_0\
    );
\result_reg_1068[17]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(14),
      I1 => window_1_0_read_as_fu_162(14),
      I2 => window_1_0_phi_fu_417_p4(14),
      I3 => window_0_0_fu_154(15),
      I4 => \result_reg_1068[17]_i_19_n_0\,
      O => \result_reg_1068[17]_i_11_n_0\
    );
\result_reg_1068[17]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[17]_i_8_n_0\,
      I1 => window_0_0_fu_154(19),
      I2 => \result_reg_1068[19]_i_17_n_0\,
      I3 => window_0_0_read_as_fu_150(18),
      I4 => window_1_0_read_as_fu_162(18),
      I5 => window_1_0_phi_fu_417_p4(18),
      O => \result_reg_1068[17]_i_12_n_0\
    );
\result_reg_1068[17]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \result_reg_1068[17]_i_9_n_0\,
      I1 => window_1_0_phi_fu_417_p4(17),
      I2 => window_1_0_read_as_fu_162(17),
      I3 => window_0_0_read_as_fu_150(17),
      I4 => window_0_0_fu_154(18),
      I5 => \result_reg_1068[17]_i_16_n_0\,
      O => \result_reg_1068[17]_i_13_n_0\
    );
\result_reg_1068[17]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[17]_i_10_n_0\,
      I1 => window_0_0_fu_154(17),
      I2 => \result_reg_1068[17]_i_17_n_0\,
      I3 => window_0_0_read_as_fu_150(16),
      I4 => window_1_0_read_as_fu_162(16),
      I5 => window_1_0_phi_fu_417_p4(16),
      O => \result_reg_1068[17]_i_14_n_0\
    );
\result_reg_1068[17]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \result_reg_1068[17]_i_11_n_0\,
      I1 => \result_reg_1068[17]_i_20_n_0\,
      I2 => window_0_0_read_as_fu_150(16),
      I3 => window_1_0_phi_fu_417_p4(16),
      I4 => window_1_0_read_as_fu_162(16),
      I5 => window_0_0_fu_154(16),
      O => \result_reg_1068[17]_i_15_n_0\
    );
\result_reg_1068[17]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(18),
      I1 => window_1_0_reg_414(18),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[18]\,
      I5 => window_1_0_read_as_fu_162(18),
      O => \result_reg_1068[17]_i_16_n_0\
    );
\result_reg_1068[17]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(17),
      I1 => window_1_0_reg_414(17),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[17]\,
      I5 => window_1_0_read_as_fu_162(17),
      O => \result_reg_1068[17]_i_17_n_0\
    );
\result_reg_1068[17]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(16),
      I1 => window_1_0_reg_414(16),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[16]\,
      I5 => window_1_0_read_as_fu_162(16),
      O => \result_reg_1068[17]_i_18_n_0\
    );
\result_reg_1068[17]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(15),
      I1 => window_1_0_reg_414(15),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[15]\,
      I5 => window_1_0_read_as_fu_162(15),
      O => \result_reg_1068[17]_i_19_n_0\
    );
\result_reg_1068[17]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F704F7FFFF"
    )
        port map (
      I0 => \window_1_1_reg_403_reg_n_0_[15]\,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => window_1_0_reg_414(15),
      I4 => window_1_0_read_as_fu_162(15),
      I5 => window_0_0_read_as_fu_150(15),
      O => \result_reg_1068[17]_i_20_n_0\
    );
\result_reg_1068[17]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[17]_i_3_n_4\,
      O => \result_reg_1068[17]_i_4_n_0\
    );
\result_reg_1068[17]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[17]_i_3_n_5\,
      O => \result_reg_1068[17]_i_5_n_0\
    );
\result_reg_1068[17]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[17]_i_3_n_6\,
      O => \result_reg_1068[17]_i_6_n_0\
    );
\result_reg_1068[17]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[17]_i_3_n_7\,
      O => \result_reg_1068[17]_i_7_n_0\
    );
\result_reg_1068[17]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(17),
      I1 => window_1_0_read_as_fu_162(17),
      I2 => window_0_0_read_as_fu_150(17),
      I3 => window_0_0_fu_154(18),
      I4 => \result_reg_1068[17]_i_16_n_0\,
      O => \result_reg_1068[17]_i_8_n_0\
    );
\result_reg_1068[17]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(16),
      I1 => window_1_0_read_as_fu_162(16),
      I2 => window_1_0_phi_fu_417_p4(16),
      I3 => window_0_0_fu_154(17),
      I4 => \result_reg_1068[17]_i_17_n_0\,
      O => \result_reg_1068[17]_i_9_n_0\
    );
\result_reg_1068[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(20),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[19]_i_3_n_7\,
      O => result_fu_807_p3(18)
    );
\result_reg_1068[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(21),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[19]_i_3_n_6\,
      O => result_fu_807_p3(19)
    );
\result_reg_1068[19]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[19]_i_6_n_0\,
      I1 => window_0_0_fu_154(23),
      I2 => \tmp_13_reg_1063[0]_i_28_n_0\,
      I3 => window_0_0_read_as_fu_150(22),
      I4 => window_1_0_read_as_fu_162(22),
      I5 => window_1_0_phi_fu_417_p4(22),
      O => \result_reg_1068[19]_i_10_n_0\
    );
\result_reg_1068[19]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \result_reg_1068[19]_i_7_n_0\,
      I1 => \result_reg_1068[19]_i_18_n_0\,
      I2 => window_0_0_read_as_fu_150(22),
      I3 => window_1_0_phi_fu_417_p4(22),
      I4 => window_1_0_read_as_fu_162(22),
      I5 => window_0_0_fu_154(22),
      O => \result_reg_1068[19]_i_11_n_0\
    );
\result_reg_1068[19]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[19]_i_8_n_0\,
      I1 => window_0_0_fu_154(21),
      I2 => \result_reg_1068[19]_i_15_n_0\,
      I3 => window_0_0_read_as_fu_150(20),
      I4 => window_1_0_read_as_fu_162(20),
      I5 => window_1_0_phi_fu_417_p4(20),
      O => \result_reg_1068[19]_i_12_n_0\
    );
\result_reg_1068[19]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \result_reg_1068[19]_i_9_n_0\,
      I1 => window_1_0_phi_fu_417_p4(19),
      I2 => window_1_0_read_as_fu_162(19),
      I3 => window_0_0_read_as_fu_150(19),
      I4 => window_0_0_fu_154(20),
      I5 => \result_reg_1068[19]_i_16_n_0\,
      O => \result_reg_1068[19]_i_13_n_0\
    );
\result_reg_1068[19]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(22),
      I1 => window_1_0_reg_414(22),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[22]\,
      I5 => window_1_0_read_as_fu_162(22),
      O => \result_reg_1068[19]_i_14_n_0\
    );
\result_reg_1068[19]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(21),
      I1 => window_1_0_reg_414(21),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[21]\,
      I5 => window_1_0_read_as_fu_162(21),
      O => \result_reg_1068[19]_i_15_n_0\
    );
\result_reg_1068[19]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(20),
      I1 => window_1_0_reg_414(20),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[20]\,
      I5 => window_1_0_read_as_fu_162(20),
      O => \result_reg_1068[19]_i_16_n_0\
    );
\result_reg_1068[19]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(19),
      I1 => window_1_0_reg_414(19),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[19]\,
      I5 => window_1_0_read_as_fu_162(19),
      O => \result_reg_1068[19]_i_17_n_0\
    );
\result_reg_1068[19]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F704F7FFFF"
    )
        port map (
      I0 => \window_1_1_reg_403_reg_n_0_[21]\,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => window_1_0_reg_414(21),
      I4 => window_1_0_read_as_fu_162(21),
      I5 => window_0_0_read_as_fu_150(21),
      O => \result_reg_1068[19]_i_18_n_0\
    );
\result_reg_1068[19]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[19]_i_3_n_6\,
      O => \result_reg_1068[19]_i_4_n_0\
    );
\result_reg_1068[19]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[19]_i_3_n_7\,
      O => \result_reg_1068[19]_i_5_n_0\
    );
\result_reg_1068[19]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(21),
      I1 => window_1_0_read_as_fu_162(21),
      I2 => window_0_0_read_as_fu_150(21),
      I3 => window_0_0_fu_154(22),
      I4 => \result_reg_1068[19]_i_14_n_0\,
      O => \result_reg_1068[19]_i_6_n_0\
    );
\result_reg_1068[19]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(20),
      I1 => window_1_0_read_as_fu_162(20),
      I2 => window_1_0_phi_fu_417_p4(20),
      I3 => window_0_0_fu_154(21),
      I4 => \result_reg_1068[19]_i_15_n_0\,
      O => \result_reg_1068[19]_i_7_n_0\
    );
\result_reg_1068[19]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(19),
      I1 => window_1_0_read_as_fu_162(19),
      I2 => window_0_0_read_as_fu_150(19),
      I3 => window_0_0_fu_154(20),
      I4 => \result_reg_1068[19]_i_16_n_0\,
      O => \result_reg_1068[19]_i_8_n_0\
    );
\result_reg_1068[19]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(18),
      I1 => window_1_0_read_as_fu_162(18),
      I2 => window_1_0_phi_fu_417_p4(18),
      I3 => window_0_0_fu_154(19),
      I4 => \result_reg_1068[19]_i_17_n_0\,
      O => \result_reg_1068[19]_i_9_n_0\
    );
\result_reg_1068[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(3),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[1]_i_3_n_4\,
      O => result_fu_807_p3(1)
    );
\result_reg_1068[1]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A6A959A95956A6"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(1),
      I1 => \window_1_1_reg_403_reg_n_0_[1]\,
      I2 => \tmp_13_reg_1063[0]_i_30_n_0\,
      I3 => window_1_0_reg_414(1),
      I4 => window_0_0_read_as_fu_150(1),
      I5 => window_0_0_fu_154(1),
      O => \result_reg_1068[1]_i_10_n_0\
    );
\result_reg_1068[1]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[1]_i_8_n_0\,
      I1 => window_0_0_fu_154(3),
      I2 => \result_reg_1068[5]_i_19_n_0\,
      I3 => window_0_0_read_as_fu_150(2),
      I4 => window_1_0_read_as_fu_162(2),
      I5 => window_1_0_phi_fu_417_p4(2),
      O => \result_reg_1068[1]_i_11_n_0\
    );
\result_reg_1068[1]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6999999699969666"
    )
        port map (
      I0 => window_0_0_fu_154(2),
      I1 => \result_reg_1068[1]_i_15_n_0\,
      I2 => window_0_0_read_as_fu_150(1),
      I3 => window_1_0_phi_fu_417_p4(1),
      I4 => window_1_0_read_as_fu_162(1),
      I5 => window_0_0_fu_154(1),
      O => \result_reg_1068[1]_i_12_n_0\
    );
\result_reg_1068[1]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555656A656AAAAA"
    )
        port map (
      I0 => \result_reg_1068[1]_i_10_n_0\,
      I1 => window_1_0_reg_414(0),
      I2 => \tmp_13_reg_1063[0]_i_30_n_0\,
      I3 => \window_1_1_reg_403_reg_n_0_[0]\,
      I4 => window_1_0_read_as_fu_162(0),
      I5 => window_0_0_read_as_fu_150(0),
      O => \result_reg_1068[1]_i_13_n_0\
    );
\result_reg_1068[1]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"56A6A959A95956A6"
    )
        port map (
      I0 => window_1_0_read_as_fu_162(0),
      I1 => \window_1_1_reg_403_reg_n_0_[0]\,
      I2 => \tmp_13_reg_1063[0]_i_30_n_0\,
      I3 => window_1_0_reg_414(0),
      I4 => window_0_0_read_as_fu_150(0),
      I5 => window_0_0_fu_154(0),
      O => \result_reg_1068[1]_i_14_n_0\
    );
\result_reg_1068[1]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(2),
      I1 => window_1_0_reg_414(2),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[2]\,
      I5 => window_1_0_read_as_fu_162(2),
      O => \result_reg_1068[1]_i_15_n_0\
    );
\result_reg_1068[1]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[1]_i_3_n_4\,
      O => \result_reg_1068[1]_i_4_n_0\
    );
\result_reg_1068[1]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[1]_i_3_n_5\,
      O => \result_reg_1068[1]_i_5_n_0\
    );
\result_reg_1068[1]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[1]_i_3_n_6\,
      O => \result_reg_1068[1]_i_6_n_0\
    );
\result_reg_1068[1]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \result_reg_1068_reg[1]_i_3_n_7\,
      O => \result_reg_1068[1]_i_7_n_0\
    );
\result_reg_1068[1]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EEE8E888"
    )
        port map (
      I0 => window_0_0_fu_154(2),
      I1 => \result_reg_1068[1]_i_15_n_0\,
      I2 => window_1_0_phi_fu_417_p4(1),
      I3 => window_1_0_read_as_fu_162(1),
      I4 => window_0_0_read_as_fu_150(1),
      O => \result_reg_1068[1]_i_8_n_0\
    );
\result_reg_1068[1]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E81717E8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(1),
      I1 => window_1_0_read_as_fu_162(1),
      I2 => window_1_0_phi_fu_417_p4(1),
      I3 => \result_reg_1068[1]_i_15_n_0\,
      I4 => window_0_0_fu_154(2),
      O => \result_reg_1068[1]_i_9_n_0\
    );
\result_reg_1068[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(4),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[5]_i_3_n_7\,
      O => result_fu_807_p3(2)
    );
\result_reg_1068[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(5),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[5]_i_3_n_6\,
      O => result_fu_807_p3(3)
    );
\result_reg_1068[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(6),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[5]_i_3_n_5\,
      O => result_fu_807_p3(4)
    );
\result_reg_1068[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(7),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[5]_i_3_n_4\,
      O => result_fu_807_p3(5)
    );
\result_reg_1068[5]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(3),
      I1 => window_1_0_read_as_fu_162(3),
      I2 => window_0_0_read_as_fu_150(3),
      I3 => window_0_0_fu_154(4),
      I4 => \result_reg_1068[5]_i_18_n_0\,
      O => \result_reg_1068[5]_i_10_n_0\
    );
\result_reg_1068[5]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(2),
      I1 => window_1_0_read_as_fu_162(2),
      I2 => window_1_0_phi_fu_417_p4(2),
      I3 => window_0_0_fu_154(3),
      I4 => \result_reg_1068[5]_i_19_n_0\,
      O => \result_reg_1068[5]_i_11_n_0\
    );
\result_reg_1068[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[5]_i_8_n_0\,
      I1 => window_0_0_fu_154(7),
      I2 => \result_reg_1068[9]_i_19_n_0\,
      I3 => window_0_0_read_as_fu_150(6),
      I4 => window_1_0_read_as_fu_162(6),
      I5 => window_1_0_phi_fu_417_p4(6),
      O => \result_reg_1068[5]_i_12_n_0\
    );
\result_reg_1068[5]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \result_reg_1068[5]_i_9_n_0\,
      I1 => window_1_0_phi_fu_417_p4(5),
      I2 => window_1_0_read_as_fu_162(5),
      I3 => window_0_0_read_as_fu_150(5),
      I4 => window_0_0_fu_154(6),
      I5 => \result_reg_1068[5]_i_16_n_0\,
      O => \result_reg_1068[5]_i_13_n_0\
    );
\result_reg_1068[5]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[5]_i_10_n_0\,
      I1 => window_0_0_fu_154(5),
      I2 => \result_reg_1068[5]_i_17_n_0\,
      I3 => window_0_0_read_as_fu_150(4),
      I4 => window_1_0_read_as_fu_162(4),
      I5 => window_1_0_phi_fu_417_p4(4),
      O => \result_reg_1068[5]_i_14_n_0\
    );
\result_reg_1068[5]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \result_reg_1068[5]_i_11_n_0\,
      I1 => \result_reg_1068[5]_i_20_n_0\,
      I2 => window_0_0_read_as_fu_150(4),
      I3 => window_1_0_phi_fu_417_p4(4),
      I4 => window_1_0_read_as_fu_162(4),
      I5 => window_0_0_fu_154(4),
      O => \result_reg_1068[5]_i_15_n_0\
    );
\result_reg_1068[5]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(6),
      I1 => window_1_0_reg_414(6),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[6]\,
      I5 => window_1_0_read_as_fu_162(6),
      O => \result_reg_1068[5]_i_16_n_0\
    );
\result_reg_1068[5]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(5),
      I1 => window_1_0_reg_414(5),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[5]\,
      I5 => window_1_0_read_as_fu_162(5),
      O => \result_reg_1068[5]_i_17_n_0\
    );
\result_reg_1068[5]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(4),
      I1 => window_1_0_reg_414(4),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[4]\,
      I5 => window_1_0_read_as_fu_162(4),
      O => \result_reg_1068[5]_i_18_n_0\
    );
\result_reg_1068[5]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(3),
      I1 => window_1_0_reg_414(3),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[3]\,
      I5 => window_1_0_read_as_fu_162(3),
      O => \result_reg_1068[5]_i_19_n_0\
    );
\result_reg_1068[5]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F704F7FFFF"
    )
        port map (
      I0 => \window_1_1_reg_403_reg_n_0_[3]\,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => window_1_0_reg_414(3),
      I4 => window_1_0_read_as_fu_162(3),
      I5 => window_0_0_read_as_fu_150(3),
      O => \result_reg_1068[5]_i_20_n_0\
    );
\result_reg_1068[5]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[5]_i_3_n_4\,
      O => \result_reg_1068[5]_i_4_n_0\
    );
\result_reg_1068[5]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[5]_i_3_n_5\,
      O => \result_reg_1068[5]_i_5_n_0\
    );
\result_reg_1068[5]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[5]_i_3_n_6\,
      O => \result_reg_1068[5]_i_6_n_0\
    );
\result_reg_1068[5]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[5]_i_3_n_7\,
      O => \result_reg_1068[5]_i_7_n_0\
    );
\result_reg_1068[5]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(5),
      I1 => window_1_0_read_as_fu_162(5),
      I2 => window_0_0_read_as_fu_150(5),
      I3 => window_0_0_fu_154(6),
      I4 => \result_reg_1068[5]_i_16_n_0\,
      O => \result_reg_1068[5]_i_8_n_0\
    );
\result_reg_1068[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(4),
      I1 => window_1_0_read_as_fu_162(4),
      I2 => window_1_0_phi_fu_417_p4(4),
      I3 => window_0_0_fu_154(5),
      I4 => \result_reg_1068[5]_i_17_n_0\,
      O => \result_reg_1068[5]_i_9_n_0\
    );
\result_reg_1068[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(8),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[9]_i_3_n_7\,
      O => result_fu_807_p3(6)
    );
\result_reg_1068[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(9),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[9]_i_3_n_6\,
      O => result_fu_807_p3(7)
    );
\result_reg_1068[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(10),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[9]_i_3_n_5\,
      O => result_fu_807_p3(8)
    );
\result_reg_1068[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => tmp_1_i_i_fu_781_p2(11),
      I1 => p_0_in,
      I2 => \result_reg_1068_reg[9]_i_3_n_4\,
      O => result_fu_807_p3(9)
    );
\result_reg_1068[9]_i_10\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(7),
      I1 => window_1_0_read_as_fu_162(7),
      I2 => window_0_0_read_as_fu_150(7),
      I3 => window_0_0_fu_154(8),
      I4 => \result_reg_1068[9]_i_18_n_0\,
      O => \result_reg_1068[9]_i_10_n_0\
    );
\result_reg_1068[9]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(6),
      I1 => window_1_0_read_as_fu_162(6),
      I2 => window_1_0_phi_fu_417_p4(6),
      I3 => window_0_0_fu_154(7),
      I4 => \result_reg_1068[9]_i_19_n_0\,
      O => \result_reg_1068[9]_i_11_n_0\
    );
\result_reg_1068[9]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[9]_i_8_n_0\,
      I1 => window_0_0_fu_154(11),
      I2 => \result_reg_1068[13]_i_19_n_0\,
      I3 => window_0_0_read_as_fu_150(10),
      I4 => window_1_0_read_as_fu_162(10),
      I5 => window_1_0_phi_fu_417_p4(10),
      O => \result_reg_1068[9]_i_12_n_0\
    );
\result_reg_1068[9]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \result_reg_1068[9]_i_9_n_0\,
      I1 => window_1_0_phi_fu_417_p4(9),
      I2 => window_1_0_read_as_fu_162(9),
      I3 => window_0_0_read_as_fu_150(9),
      I4 => window_0_0_fu_154(10),
      I5 => \result_reg_1068[9]_i_16_n_0\,
      O => \result_reg_1068[9]_i_13_n_0\
    );
\result_reg_1068[9]_i_14\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \result_reg_1068[9]_i_10_n_0\,
      I1 => window_0_0_fu_154(9),
      I2 => \result_reg_1068[9]_i_17_n_0\,
      I3 => window_0_0_read_as_fu_150(8),
      I4 => window_1_0_read_as_fu_162(8),
      I5 => window_1_0_phi_fu_417_p4(8),
      O => \result_reg_1068[9]_i_14_n_0\
    );
\result_reg_1068[9]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \result_reg_1068[9]_i_11_n_0\,
      I1 => \result_reg_1068[9]_i_20_n_0\,
      I2 => window_0_0_read_as_fu_150(8),
      I3 => window_1_0_phi_fu_417_p4(8),
      I4 => window_1_0_read_as_fu_162(8),
      I5 => window_0_0_fu_154(8),
      O => \result_reg_1068[9]_i_15_n_0\
    );
\result_reg_1068[9]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(10),
      I1 => window_1_0_reg_414(10),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[10]\,
      I5 => window_1_0_read_as_fu_162(10),
      O => \result_reg_1068[9]_i_16_n_0\
    );
\result_reg_1068[9]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(9),
      I1 => window_1_0_reg_414(9),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[9]\,
      I5 => window_1_0_read_as_fu_162(9),
      O => \result_reg_1068[9]_i_17_n_0\
    );
\result_reg_1068[9]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(8),
      I1 => window_1_0_reg_414(8),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[8]\,
      I5 => window_1_0_read_as_fu_162(8),
      O => \result_reg_1068[9]_i_18_n_0\
    );
\result_reg_1068[9]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(7),
      I1 => window_1_0_reg_414(7),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[7]\,
      I5 => window_1_0_read_as_fu_162(7),
      O => \result_reg_1068[9]_i_19_n_0\
    );
\result_reg_1068[9]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F704F7FFFF"
    )
        port map (
      I0 => \window_1_1_reg_403_reg_n_0_[7]\,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => window_1_0_reg_414(7),
      I4 => window_1_0_read_as_fu_162(7),
      I5 => window_0_0_read_as_fu_150(7),
      O => \result_reg_1068[9]_i_20_n_0\
    );
\result_reg_1068[9]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[9]_i_3_n_4\,
      O => \result_reg_1068[9]_i_4_n_0\
    );
\result_reg_1068[9]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[9]_i_3_n_5\,
      O => \result_reg_1068[9]_i_5_n_0\
    );
\result_reg_1068[9]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[9]_i_3_n_6\,
      O => \result_reg_1068[9]_i_6_n_0\
    );
\result_reg_1068[9]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \result_reg_1068_reg[9]_i_3_n_7\,
      O => \result_reg_1068[9]_i_7_n_0\
    );
\result_reg_1068[9]_i_8\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(9),
      I1 => window_1_0_read_as_fu_162(9),
      I2 => window_0_0_read_as_fu_150(9),
      I3 => window_0_0_fu_154(10),
      I4 => \result_reg_1068[9]_i_16_n_0\,
      O => \result_reg_1068[9]_i_8_n_0\
    );
\result_reg_1068[9]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(8),
      I1 => window_1_0_read_as_fu_162(8),
      I2 => window_1_0_phi_fu_417_p4(8),
      I3 => window_0_0_fu_154(9),
      I4 => \result_reg_1068[9]_i_17_n_0\,
      O => \result_reg_1068[9]_i_9_n_0\
    );
\result_reg_1068_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(0),
      Q => result_reg_1068(0),
      R => '0'
    );
\result_reg_1068_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(10),
      Q => result_reg_1068(10),
      R => '0'
    );
\result_reg_1068_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(11),
      Q => result_reg_1068(11),
      R => '0'
    );
\result_reg_1068_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(12),
      Q => result_reg_1068(12),
      R => '0'
    );
\result_reg_1068_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(13),
      Q => result_reg_1068(13),
      R => '0'
    );
\result_reg_1068_reg[13]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[9]_i_2_n_0\,
      CO(3) => \result_reg_1068_reg[13]_i_2_n_0\,
      CO(2) => \result_reg_1068_reg[13]_i_2_n_1\,
      CO(1) => \result_reg_1068_reg[13]_i_2_n_2\,
      CO(0) => \result_reg_1068_reg[13]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_1_i_i_fu_781_p2(15 downto 12),
      S(3) => \result_reg_1068[13]_i_4_n_0\,
      S(2) => \result_reg_1068[13]_i_5_n_0\,
      S(1) => \result_reg_1068[13]_i_6_n_0\,
      S(0) => \result_reg_1068[13]_i_7_n_0\
    );
\result_reg_1068_reg[13]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[9]_i_3_n_0\,
      CO(3) => \result_reg_1068_reg[13]_i_3_n_0\,
      CO(2) => \result_reg_1068_reg[13]_i_3_n_1\,
      CO(1) => \result_reg_1068_reg[13]_i_3_n_2\,
      CO(0) => \result_reg_1068_reg[13]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \result_reg_1068[13]_i_8_n_0\,
      DI(2) => \result_reg_1068[13]_i_9_n_0\,
      DI(1) => \result_reg_1068[13]_i_10_n_0\,
      DI(0) => \result_reg_1068[13]_i_11_n_0\,
      O(3) => \result_reg_1068_reg[13]_i_3_n_4\,
      O(2) => \result_reg_1068_reg[13]_i_3_n_5\,
      O(1) => \result_reg_1068_reg[13]_i_3_n_6\,
      O(0) => \result_reg_1068_reg[13]_i_3_n_7\,
      S(3) => \result_reg_1068[13]_i_12_n_0\,
      S(2) => \result_reg_1068[13]_i_13_n_0\,
      S(1) => \result_reg_1068[13]_i_14_n_0\,
      S(0) => \result_reg_1068[13]_i_15_n_0\
    );
\result_reg_1068_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(14),
      Q => result_reg_1068(14),
      R => '0'
    );
\result_reg_1068_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(15),
      Q => result_reg_1068(15),
      R => '0'
    );
\result_reg_1068_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(16),
      Q => result_reg_1068(16),
      R => '0'
    );
\result_reg_1068_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(17),
      Q => result_reg_1068(17),
      R => '0'
    );
\result_reg_1068_reg[17]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[13]_i_2_n_0\,
      CO(3) => \result_reg_1068_reg[17]_i_2_n_0\,
      CO(2) => \result_reg_1068_reg[17]_i_2_n_1\,
      CO(1) => \result_reg_1068_reg[17]_i_2_n_2\,
      CO(0) => \result_reg_1068_reg[17]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_1_i_i_fu_781_p2(19 downto 16),
      S(3) => \result_reg_1068[17]_i_4_n_0\,
      S(2) => \result_reg_1068[17]_i_5_n_0\,
      S(1) => \result_reg_1068[17]_i_6_n_0\,
      S(0) => \result_reg_1068[17]_i_7_n_0\
    );
\result_reg_1068_reg[17]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[13]_i_3_n_0\,
      CO(3) => \result_reg_1068_reg[17]_i_3_n_0\,
      CO(2) => \result_reg_1068_reg[17]_i_3_n_1\,
      CO(1) => \result_reg_1068_reg[17]_i_3_n_2\,
      CO(0) => \result_reg_1068_reg[17]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \result_reg_1068[17]_i_8_n_0\,
      DI(2) => \result_reg_1068[17]_i_9_n_0\,
      DI(1) => \result_reg_1068[17]_i_10_n_0\,
      DI(0) => \result_reg_1068[17]_i_11_n_0\,
      O(3) => \result_reg_1068_reg[17]_i_3_n_4\,
      O(2) => \result_reg_1068_reg[17]_i_3_n_5\,
      O(1) => \result_reg_1068_reg[17]_i_3_n_6\,
      O(0) => \result_reg_1068_reg[17]_i_3_n_7\,
      S(3) => \result_reg_1068[17]_i_12_n_0\,
      S(2) => \result_reg_1068[17]_i_13_n_0\,
      S(1) => \result_reg_1068[17]_i_14_n_0\,
      S(0) => \result_reg_1068[17]_i_15_n_0\
    );
\result_reg_1068_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(18),
      Q => result_reg_1068(18),
      R => '0'
    );
\result_reg_1068_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(19),
      Q => result_reg_1068(19),
      R => '0'
    );
\result_reg_1068_reg[19]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[17]_i_2_n_0\,
      CO(3 downto 1) => \NLW_result_reg_1068_reg[19]_i_2_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \result_reg_1068_reg[19]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_result_reg_1068_reg[19]_i_2_O_UNCONNECTED\(3 downto 2),
      O(1 downto 0) => tmp_1_i_i_fu_781_p2(21 downto 20),
      S(3 downto 2) => B"00",
      S(1) => \result_reg_1068[19]_i_4_n_0\,
      S(0) => \result_reg_1068[19]_i_5_n_0\
    );
\result_reg_1068_reg[19]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[17]_i_3_n_0\,
      CO(3) => \result_reg_1068_reg[19]_i_3_n_0\,
      CO(2) => \result_reg_1068_reg[19]_i_3_n_1\,
      CO(1) => \result_reg_1068_reg[19]_i_3_n_2\,
      CO(0) => \result_reg_1068_reg[19]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \result_reg_1068[19]_i_6_n_0\,
      DI(2) => \result_reg_1068[19]_i_7_n_0\,
      DI(1) => \result_reg_1068[19]_i_8_n_0\,
      DI(0) => \result_reg_1068[19]_i_9_n_0\,
      O(3 downto 2) => \NLW_result_reg_1068_reg[19]_i_3_O_UNCONNECTED\(3 downto 2),
      O(1) => \result_reg_1068_reg[19]_i_3_n_6\,
      O(0) => \result_reg_1068_reg[19]_i_3_n_7\,
      S(3) => \result_reg_1068[19]_i_10_n_0\,
      S(2) => \result_reg_1068[19]_i_11_n_0\,
      S(1) => \result_reg_1068[19]_i_12_n_0\,
      S(0) => \result_reg_1068[19]_i_13_n_0\
    );
\result_reg_1068_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(1),
      Q => result_reg_1068(1),
      R => '0'
    );
\result_reg_1068_reg[1]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg_1068_reg[1]_i_2_n_0\,
      CO(2) => \result_reg_1068_reg[1]_i_2_n_1\,
      CO(1) => \result_reg_1068_reg[1]_i_2_n_2\,
      CO(0) => \result_reg_1068_reg[1]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3 downto 2) => tmp_1_i_i_fu_781_p2(3 downto 2),
      O(1 downto 0) => \NLW_result_reg_1068_reg[1]_i_2_O_UNCONNECTED\(1 downto 0),
      S(3) => \result_reg_1068[1]_i_4_n_0\,
      S(2) => \result_reg_1068[1]_i_5_n_0\,
      S(1) => \result_reg_1068[1]_i_6_n_0\,
      S(0) => \result_reg_1068[1]_i_7_n_0\
    );
\result_reg_1068_reg[1]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \result_reg_1068_reg[1]_i_3_n_0\,
      CO(2) => \result_reg_1068_reg[1]_i_3_n_1\,
      CO(1) => \result_reg_1068_reg[1]_i_3_n_2\,
      CO(0) => \result_reg_1068_reg[1]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \result_reg_1068[1]_i_8_n_0\,
      DI(2) => \result_reg_1068[1]_i_9_n_0\,
      DI(1) => \result_reg_1068[1]_i_10_n_0\,
      DI(0) => window_0_0_fu_154(0),
      O(3) => \result_reg_1068_reg[1]_i_3_n_4\,
      O(2) => \result_reg_1068_reg[1]_i_3_n_5\,
      O(1) => \result_reg_1068_reg[1]_i_3_n_6\,
      O(0) => \result_reg_1068_reg[1]_i_3_n_7\,
      S(3) => \result_reg_1068[1]_i_11_n_0\,
      S(2) => \result_reg_1068[1]_i_12_n_0\,
      S(1) => \result_reg_1068[1]_i_13_n_0\,
      S(0) => \result_reg_1068[1]_i_14_n_0\
    );
\result_reg_1068_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(2),
      Q => result_reg_1068(2),
      R => '0'
    );
\result_reg_1068_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(3),
      Q => result_reg_1068(3),
      R => '0'
    );
\result_reg_1068_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(4),
      Q => result_reg_1068(4),
      R => '0'
    );
\result_reg_1068_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(5),
      Q => result_reg_1068(5),
      R => '0'
    );
\result_reg_1068_reg[5]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[1]_i_2_n_0\,
      CO(3) => \result_reg_1068_reg[5]_i_2_n_0\,
      CO(2) => \result_reg_1068_reg[5]_i_2_n_1\,
      CO(1) => \result_reg_1068_reg[5]_i_2_n_2\,
      CO(0) => \result_reg_1068_reg[5]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_1_i_i_fu_781_p2(7 downto 4),
      S(3) => \result_reg_1068[5]_i_4_n_0\,
      S(2) => \result_reg_1068[5]_i_5_n_0\,
      S(1) => \result_reg_1068[5]_i_6_n_0\,
      S(0) => \result_reg_1068[5]_i_7_n_0\
    );
\result_reg_1068_reg[5]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[1]_i_3_n_0\,
      CO(3) => \result_reg_1068_reg[5]_i_3_n_0\,
      CO(2) => \result_reg_1068_reg[5]_i_3_n_1\,
      CO(1) => \result_reg_1068_reg[5]_i_3_n_2\,
      CO(0) => \result_reg_1068_reg[5]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \result_reg_1068[5]_i_8_n_0\,
      DI(2) => \result_reg_1068[5]_i_9_n_0\,
      DI(1) => \result_reg_1068[5]_i_10_n_0\,
      DI(0) => \result_reg_1068[5]_i_11_n_0\,
      O(3) => \result_reg_1068_reg[5]_i_3_n_4\,
      O(2) => \result_reg_1068_reg[5]_i_3_n_5\,
      O(1) => \result_reg_1068_reg[5]_i_3_n_6\,
      O(0) => \result_reg_1068_reg[5]_i_3_n_7\,
      S(3) => \result_reg_1068[5]_i_12_n_0\,
      S(2) => \result_reg_1068[5]_i_13_n_0\,
      S(1) => \result_reg_1068[5]_i_14_n_0\,
      S(0) => \result_reg_1068[5]_i_15_n_0\
    );
\result_reg_1068_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(6),
      Q => result_reg_1068(6),
      R => '0'
    );
\result_reg_1068_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(7),
      Q => result_reg_1068(7),
      R => '0'
    );
\result_reg_1068_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(8),
      Q => result_reg_1068(8),
      R => '0'
    );
\result_reg_1068_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => result_fu_807_p3(9),
      Q => result_reg_1068(9),
      R => '0'
    );
\result_reg_1068_reg[9]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[5]_i_2_n_0\,
      CO(3) => \result_reg_1068_reg[9]_i_2_n_0\,
      CO(2) => \result_reg_1068_reg[9]_i_2_n_1\,
      CO(1) => \result_reg_1068_reg[9]_i_2_n_2\,
      CO(0) => \result_reg_1068_reg[9]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => tmp_1_i_i_fu_781_p2(11 downto 8),
      S(3) => \result_reg_1068[9]_i_4_n_0\,
      S(2) => \result_reg_1068[9]_i_5_n_0\,
      S(1) => \result_reg_1068[9]_i_6_n_0\,
      S(0) => \result_reg_1068[9]_i_7_n_0\
    );
\result_reg_1068_reg[9]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[5]_i_3_n_0\,
      CO(3) => \result_reg_1068_reg[9]_i_3_n_0\,
      CO(2) => \result_reg_1068_reg[9]_i_3_n_1\,
      CO(1) => \result_reg_1068_reg[9]_i_3_n_2\,
      CO(0) => \result_reg_1068_reg[9]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \result_reg_1068[9]_i_8_n_0\,
      DI(2) => \result_reg_1068[9]_i_9_n_0\,
      DI(1) => \result_reg_1068[9]_i_10_n_0\,
      DI(0) => \result_reg_1068[9]_i_11_n_0\,
      O(3) => \result_reg_1068_reg[9]_i_3_n_4\,
      O(2) => \result_reg_1068_reg[9]_i_3_n_5\,
      O(1) => \result_reg_1068_reg[9]_i_3_n_6\,
      O(0) => \result_reg_1068_reg[9]_i_3_n_7\,
      S(3) => \result_reg_1068[9]_i_12_n_0\,
      S(2) => \result_reg_1068[9]_i_13_n_0\,
      S(1) => \result_reg_1068[9]_i_14_n_0\,
      S(0) => \result_reg_1068[9]_i_15_n_0\
    );
\tmp_10_reg_927[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AFF6A00"
    )
        port map (
      I0 => y3_phi_fu_328_p4(0),
      I1 => x4_reg_359(0),
      I2 => x4_reg_359(1),
      I3 => ap_enable_reg_pp2_iter10,
      I4 => tmp_10_reg_927,
      O => \tmp_10_reg_927[0]_i_1_n_0\
    );
\tmp_10_reg_927_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_10_reg_927[0]_i_1_n_0\,
      Q => tmp_10_reg_927,
      R => '0'
    );
\tmp_13_reg_1063[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => ap_CS_fsm_pp3_stage0,
      I1 => lineBuffer_0_U_n_35,
      I2 => tmp_9_reg_1013,
      I3 => tmp_reg_1032,
      I4 => \exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      O => result_reg_10680
    );
\tmp_13_reg_1063[0]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \tmp_13_reg_1063[0]_i_6_n_0\,
      I1 => window_1_0_phi_fu_417_p4(27),
      I2 => window_1_0_read_as_fu_162(27),
      I3 => window_0_0_read_as_fu_150(27),
      I4 => window_0_0_fu_154(28),
      I5 => \tmp_13_reg_1063[0]_i_20_n_0\,
      O => \tmp_13_reg_1063[0]_i_10_n_0\
    );
\tmp_13_reg_1063[0]_i_11\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(25),
      I1 => window_1_0_read_as_fu_162(25),
      I2 => window_0_0_read_as_fu_150(25),
      I3 => window_0_0_fu_154(26),
      I4 => \tmp_13_reg_1063[0]_i_25_n_0\,
      O => \tmp_13_reg_1063[0]_i_11_n_0\
    );
\tmp_13_reg_1063[0]_i_12\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(24),
      I1 => window_1_0_read_as_fu_162(24),
      I2 => window_1_0_phi_fu_417_p4(24),
      I3 => window_0_0_fu_154(25),
      I4 => \tmp_13_reg_1063[0]_i_26_n_0\,
      O => \tmp_13_reg_1063[0]_i_12_n_0\
    );
\tmp_13_reg_1063[0]_i_13\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(23),
      I1 => window_1_0_read_as_fu_162(23),
      I2 => window_0_0_read_as_fu_150(23),
      I3 => window_0_0_fu_154(24),
      I4 => \tmp_13_reg_1063[0]_i_27_n_0\,
      O => \tmp_13_reg_1063[0]_i_13_n_0\
    );
\tmp_13_reg_1063[0]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(22),
      I1 => window_1_0_read_as_fu_162(22),
      I2 => window_1_0_phi_fu_417_p4(22),
      I3 => window_0_0_fu_154(23),
      I4 => \tmp_13_reg_1063[0]_i_28_n_0\,
      O => \tmp_13_reg_1063[0]_i_14_n_0\
    );
\tmp_13_reg_1063[0]_i_15\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \tmp_13_reg_1063[0]_i_11_n_0\,
      I1 => window_0_0_fu_154(27),
      I2 => \tmp_13_reg_1063[0]_i_21_n_0\,
      I3 => window_0_0_read_as_fu_150(26),
      I4 => window_1_0_read_as_fu_162(26),
      I5 => window_1_0_phi_fu_417_p4(26),
      O => \tmp_13_reg_1063[0]_i_15_n_0\
    );
\tmp_13_reg_1063[0]_i_16\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \tmp_13_reg_1063[0]_i_12_n_0\,
      I1 => window_1_0_phi_fu_417_p4(25),
      I2 => window_1_0_read_as_fu_162(25),
      I3 => window_0_0_read_as_fu_150(25),
      I4 => window_0_0_fu_154(26),
      I5 => \tmp_13_reg_1063[0]_i_25_n_0\,
      O => \tmp_13_reg_1063[0]_i_16_n_0\
    );
\tmp_13_reg_1063[0]_i_17\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \tmp_13_reg_1063[0]_i_13_n_0\,
      I1 => window_0_0_fu_154(25),
      I2 => \tmp_13_reg_1063[0]_i_26_n_0\,
      I3 => window_0_0_read_as_fu_150(24),
      I4 => window_1_0_read_as_fu_162(24),
      I5 => window_1_0_phi_fu_417_p4(24),
      O => \tmp_13_reg_1063[0]_i_17_n_0\
    );
\tmp_13_reg_1063[0]_i_18\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9669699669969669"
    )
        port map (
      I0 => \tmp_13_reg_1063[0]_i_14_n_0\,
      I1 => \tmp_13_reg_1063[0]_i_29_n_0\,
      I2 => window_0_0_read_as_fu_150(24),
      I3 => window_1_0_phi_fu_417_p4(24),
      I4 => window_1_0_read_as_fu_162(24),
      I5 => window_0_0_fu_154(24),
      O => \tmp_13_reg_1063[0]_i_18_n_0\
    );
\tmp_13_reg_1063[0]_i_19\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(29),
      I1 => window_1_0_reg_414(29),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[29]\,
      I5 => window_1_0_read_as_fu_162(29),
      O => \tmp_13_reg_1063[0]_i_19_n_0\
    );
\tmp_13_reg_1063[0]_i_20\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(28),
      I1 => window_1_0_reg_414(28),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[28]\,
      I5 => window_1_0_read_as_fu_162(28),
      O => \tmp_13_reg_1063[0]_i_20_n_0\
    );
\tmp_13_reg_1063[0]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(27),
      I1 => window_1_0_reg_414(27),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[27]\,
      I5 => window_1_0_read_as_fu_162(27),
      O => \tmp_13_reg_1063[0]_i_21_n_0\
    );
\tmp_13_reg_1063[0]_i_22\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFB08FB080000"
    )
        port map (
      I0 => \window_1_1_reg_403_reg_n_0_[29]\,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => window_1_0_reg_414(29),
      I4 => window_1_0_read_as_fu_162(29),
      I5 => window_0_0_read_as_fu_150(29),
      O => \tmp_13_reg_1063[0]_i_22_n_0\
    );
\tmp_13_reg_1063[0]_i_23\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1DE2E21DE21D1DE2"
    )
        port map (
      I0 => \window_1_1_reg_403_reg_n_0_[31]\,
      I1 => \tmp_13_reg_1063[0]_i_30_n_0\,
      I2 => window_1_0_reg_414(31),
      I3 => window_0_0_fu_154(31),
      I4 => window_0_0_read_as_fu_150(31),
      I5 => window_1_0_read_as_fu_162(31),
      O => \tmp_13_reg_1063[0]_i_23_n_0\
    );
\tmp_13_reg_1063[0]_i_24\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(30),
      I1 => window_1_0_reg_414(30),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[30]\,
      I5 => window_1_0_read_as_fu_162(30),
      O => \tmp_13_reg_1063[0]_i_24_n_0\
    );
\tmp_13_reg_1063[0]_i_25\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(26),
      I1 => window_1_0_reg_414(26),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[26]\,
      I5 => window_1_0_read_as_fu_162(26),
      O => \tmp_13_reg_1063[0]_i_25_n_0\
    );
\tmp_13_reg_1063[0]_i_26\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(25),
      I1 => window_1_0_reg_414(25),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[25]\,
      I5 => window_1_0_read_as_fu_162(25),
      O => \tmp_13_reg_1063[0]_i_26_n_0\
    );
\tmp_13_reg_1063[0]_i_27\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9A99959965666A66"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(24),
      I1 => window_1_0_reg_414(24),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[24]\,
      I5 => window_1_0_read_as_fu_162(24),
      O => \tmp_13_reg_1063[0]_i_27_n_0\
    );
\tmp_13_reg_1063[0]_i_28\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"65666A669A999599"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(23),
      I1 => window_1_0_reg_414(23),
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_enable_reg_pp3_iter2,
      I4 => \window_1_1_reg_403_reg_n_0_[23]\,
      I5 => window_1_0_read_as_fu_162(23),
      O => \tmp_13_reg_1063[0]_i_28_n_0\
    );
\tmp_13_reg_1063[0]_i_29\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000004F704F7FFFF"
    )
        port map (
      I0 => \window_1_1_reg_403_reg_n_0_[23]\,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => window_1_0_reg_414(23),
      I4 => window_1_0_read_as_fu_162(23),
      I5 => window_0_0_read_as_fu_150(23),
      O => \tmp_13_reg_1063[0]_i_29_n_0\
    );
\tmp_13_reg_1063[0]_i_30\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I1 => ap_enable_reg_pp3_iter2,
      O => \tmp_13_reg_1063[0]_i_30_n_0\
    );
\tmp_13_reg_1063[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(28),
      I1 => window_1_0_read_as_fu_162(28),
      I2 => window_1_0_phi_fu_417_p4(28),
      I3 => window_0_0_fu_154(29),
      I4 => \tmp_13_reg_1063[0]_i_19_n_0\,
      O => \tmp_13_reg_1063[0]_i_4_n_0\
    );
\tmp_13_reg_1063[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFE8E800"
    )
        port map (
      I0 => window_1_0_phi_fu_417_p4(27),
      I1 => window_1_0_read_as_fu_162(27),
      I2 => window_0_0_read_as_fu_150(27),
      I3 => window_0_0_fu_154(28),
      I4 => \tmp_13_reg_1063[0]_i_20_n_0\,
      O => \tmp_13_reg_1063[0]_i_5_n_0\
    );
\tmp_13_reg_1063[0]_i_6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E800FFE8"
    )
        port map (
      I0 => window_0_0_read_as_fu_150(26),
      I1 => window_1_0_read_as_fu_162(26),
      I2 => window_1_0_phi_fu_417_p4(26),
      I3 => window_0_0_fu_154(27),
      I4 => \tmp_13_reg_1063[0]_i_21_n_0\,
      O => \tmp_13_reg_1063[0]_i_6_n_0\
    );
\tmp_13_reg_1063[0]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E187871E871E1E78"
    )
        port map (
      I0 => window_0_0_fu_154(30),
      I1 => \tmp_13_reg_1063[0]_i_22_n_0\,
      I2 => \tmp_13_reg_1063[0]_i_23_n_0\,
      I3 => window_0_0_read_as_fu_150(30),
      I4 => window_1_0_phi_fu_417_p4(30),
      I5 => window_1_0_read_as_fu_162(30),
      O => \tmp_13_reg_1063[0]_i_7_n_0\
    );
\tmp_13_reg_1063[0]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"566AA995A995566A"
    )
        port map (
      I0 => \tmp_13_reg_1063[0]_i_4_n_0\,
      I1 => window_1_0_phi_fu_417_p4(29),
      I2 => window_1_0_read_as_fu_162(29),
      I3 => window_0_0_read_as_fu_150(29),
      I4 => window_0_0_fu_154(30),
      I5 => \tmp_13_reg_1063[0]_i_24_n_0\,
      O => \tmp_13_reg_1063[0]_i_8_n_0\
    );
\tmp_13_reg_1063[0]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9696966996696969"
    )
        port map (
      I0 => \tmp_13_reg_1063[0]_i_5_n_0\,
      I1 => window_0_0_fu_154(29),
      I2 => \tmp_13_reg_1063[0]_i_19_n_0\,
      I3 => window_0_0_read_as_fu_150(28),
      I4 => window_1_0_read_as_fu_162(28),
      I5 => window_1_0_phi_fu_417_p4(28),
      O => \tmp_13_reg_1063[0]_i_9_n_0\
    );
\tmp_13_reg_1063_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => result_reg_10680,
      D => p_0_in,
      Q => tmp_13_reg_1063,
      R => '0'
    );
\tmp_13_reg_1063_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_13_reg_1063_reg[0]_i_3_n_0\,
      CO(3) => \NLW_tmp_13_reg_1063_reg[0]_i_2_CO_UNCONNECTED\(3),
      CO(2) => \tmp_13_reg_1063_reg[0]_i_2_n_1\,
      CO(1) => \tmp_13_reg_1063_reg[0]_i_2_n_2\,
      CO(0) => \tmp_13_reg_1063_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \tmp_13_reg_1063[0]_i_4_n_0\,
      DI(1) => \tmp_13_reg_1063[0]_i_5_n_0\,
      DI(0) => \tmp_13_reg_1063[0]_i_6_n_0\,
      O(3) => p_0_in,
      O(2 downto 0) => \NLW_tmp_13_reg_1063_reg[0]_i_2_O_UNCONNECTED\(2 downto 0),
      S(3) => \tmp_13_reg_1063[0]_i_7_n_0\,
      S(2) => \tmp_13_reg_1063[0]_i_8_n_0\,
      S(1) => \tmp_13_reg_1063[0]_i_9_n_0\,
      S(0) => \tmp_13_reg_1063[0]_i_10_n_0\
    );
\tmp_13_reg_1063_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => \result_reg_1068_reg[19]_i_3_n_0\,
      CO(3) => \tmp_13_reg_1063_reg[0]_i_3_n_0\,
      CO(2) => \tmp_13_reg_1063_reg[0]_i_3_n_1\,
      CO(1) => \tmp_13_reg_1063_reg[0]_i_3_n_2\,
      CO(0) => \tmp_13_reg_1063_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3) => \tmp_13_reg_1063[0]_i_11_n_0\,
      DI(2) => \tmp_13_reg_1063[0]_i_12_n_0\,
      DI(1) => \tmp_13_reg_1063[0]_i_13_n_0\,
      DI(0) => \tmp_13_reg_1063[0]_i_14_n_0\,
      O(3 downto 0) => \NLW_tmp_13_reg_1063_reg[0]_i_3_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_13_reg_1063[0]_i_15_n_0\,
      S(2) => \tmp_13_reg_1063[0]_i_16_n_0\,
      S(1) => \tmp_13_reg_1063[0]_i_17_n_0\,
      S(0) => \tmp_13_reg_1063[0]_i_18_n_0\
    );
\tmp_3_mid2_v_reg_922[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EEEFFFFD2220000"
    )
        port map (
      I0 => y3_reg_324(0),
      I1 => \tmp_3_mid2_v_reg_922[1]_i_2_n_0\,
      I2 => x4_reg_359(0),
      I3 => x4_reg_359(1),
      I4 => indvar_flatten_reg_3130,
      I5 => tmp_3_mid2_v_reg_922(0),
      O => \tmp_3_mid2_v_reg_922[0]_i_1_n_0\
    );
\tmp_3_mid2_v_reg_922[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1EEEFFFFD2220000"
    )
        port map (
      I0 => y3_reg_324(1),
      I1 => \tmp_3_mid2_v_reg_922[1]_i_2_n_0\,
      I2 => \tmp_3_mid2_v_reg_922[1]_i_3_n_0\,
      I3 => y3_phi_fu_328_p4(0),
      I4 => indvar_flatten_reg_3130,
      I5 => tmp_3_mid2_v_reg_922(1),
      O => \tmp_3_mid2_v_reg_922[1]_i_1_n_0\
    );
\tmp_3_mid2_v_reg_922[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => exitcond_flatten_reg_913,
      I1 => ap_enable_reg_pp2_iter1,
      I2 => ap_CS_fsm_pp2_stage0,
      O => \tmp_3_mid2_v_reg_922[1]_i_2_n_0\
    );
\tmp_3_mid2_v_reg_922[1]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => x4_reg_359(1),
      I1 => x4_reg_359(0),
      O => \tmp_3_mid2_v_reg_922[1]_i_3_n_0\
    );
\tmp_3_mid2_v_reg_922[1]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF2000"
    )
        port map (
      I0 => tmp_3_mid2_v_reg_922(0),
      I1 => exitcond_flatten_reg_913,
      I2 => ap_enable_reg_pp2_iter1,
      I3 => ap_CS_fsm_pp2_stage0,
      I4 => y3_reg_324(0),
      O => y3_phi_fu_328_p4(0)
    );
\tmp_3_mid2_v_reg_922_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_3_mid2_v_reg_922[0]_i_1_n_0\,
      Q => tmp_3_mid2_v_reg_922(0),
      R => '0'
    );
\tmp_3_mid2_v_reg_922_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_3_mid2_v_reg_922[1]_i_1_n_0\,
      Q => tmp_3_mid2_v_reg_922(1),
      R => '0'
    );
\tmp_7_reg_1048[0]_i_11\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(19),
      I1 => readCount_1_fu_170_reg(18),
      O => \tmp_7_reg_1048[0]_i_11_n_0\
    );
\tmp_7_reg_1048[0]_i_12\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(17),
      I1 => readCount_1_fu_170_reg(16),
      O => \tmp_7_reg_1048[0]_i_12_n_0\
    );
\tmp_7_reg_1048[0]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(15),
      I1 => readCount_1_fu_170_reg(14),
      O => \tmp_7_reg_1048[0]_i_13_n_0\
    );
\tmp_7_reg_1048[0]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(13),
      I1 => readCount_1_fu_170_reg(12),
      O => \tmp_7_reg_1048[0]_i_14_n_0\
    );
\tmp_7_reg_1048[0]_i_15\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => readCount_1_fu_170_reg(9),
      I1 => readCount_1_fu_170_reg(8),
      O => \tmp_7_reg_1048[0]_i_15_n_0\
    );
\tmp_7_reg_1048[0]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(4),
      I1 => readCount_1_fu_170_reg(5),
      O => \tmp_7_reg_1048[0]_i_16_n_0\
    );
\tmp_7_reg_1048[0]_i_17\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(11),
      I1 => readCount_1_fu_170_reg(10),
      O => \tmp_7_reg_1048[0]_i_17_n_0\
    );
\tmp_7_reg_1048[0]_i_18\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => readCount_1_fu_170_reg(8),
      I1 => readCount_1_fu_170_reg(9),
      O => \tmp_7_reg_1048[0]_i_18_n_0\
    );
\tmp_7_reg_1048[0]_i_19\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(7),
      I1 => readCount_1_fu_170_reg(6),
      O => \tmp_7_reg_1048[0]_i_19_n_0\
    );
\tmp_7_reg_1048[0]_i_20\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => readCount_1_fu_170_reg(4),
      I1 => readCount_1_fu_170_reg(5),
      O => \tmp_7_reg_1048[0]_i_20_n_0\
    );
\tmp_7_reg_1048[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(31),
      I1 => readCount_1_fu_170_reg(30),
      O => \tmp_7_reg_1048[0]_i_3_n_0\
    );
\tmp_7_reg_1048[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(29),
      I1 => readCount_1_fu_170_reg(28),
      O => \tmp_7_reg_1048[0]_i_4_n_0\
    );
\tmp_7_reg_1048[0]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(27),
      I1 => readCount_1_fu_170_reg(26),
      O => \tmp_7_reg_1048[0]_i_6_n_0\
    );
\tmp_7_reg_1048[0]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(25),
      I1 => readCount_1_fu_170_reg(24),
      O => \tmp_7_reg_1048[0]_i_7_n_0\
    );
\tmp_7_reg_1048[0]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(23),
      I1 => readCount_1_fu_170_reg(22),
      O => \tmp_7_reg_1048[0]_i_8_n_0\
    );
\tmp_7_reg_1048[0]_i_9\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => readCount_1_fu_170_reg(21),
      I1 => readCount_1_fu_170_reg(20),
      O => \tmp_7_reg_1048[0]_i_9_n_0\
    );
\tmp_7_reg_1048_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_addr_2_reg_10360,
      D => tmp_7_fu_677_p2,
      Q => tmp_7_reg_1048,
      R => '0'
    );
\tmp_7_reg_1048_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_7_reg_1048_reg[0]_i_2_n_0\,
      CO(3 downto 2) => \NLW_tmp_7_reg_1048_reg[0]_i_1_CO_UNCONNECTED\(3 downto 2),
      CO(1) => tmp_7_fu_677_p2,
      CO(0) => \tmp_7_reg_1048_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 2) => B"00",
      DI(1) => readCount_1_fu_170_reg(31),
      DI(0) => '0',
      O(3 downto 0) => \NLW_tmp_7_reg_1048_reg[0]_i_1_O_UNCONNECTED\(3 downto 0),
      S(3 downto 2) => B"00",
      S(1) => \tmp_7_reg_1048[0]_i_3_n_0\,
      S(0) => \tmp_7_reg_1048[0]_i_4_n_0\
    );
\tmp_7_reg_1048_reg[0]_i_10\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \tmp_7_reg_1048_reg[0]_i_10_n_0\,
      CO(2) => \tmp_7_reg_1048_reg[0]_i_10_n_1\,
      CO(1) => \tmp_7_reg_1048_reg[0]_i_10_n_2\,
      CO(0) => \tmp_7_reg_1048_reg[0]_i_10_n_3\,
      CYINIT => '0',
      DI(3) => '0',
      DI(2) => \tmp_7_reg_1048[0]_i_15_n_0\,
      DI(1) => '0',
      DI(0) => \tmp_7_reg_1048[0]_i_16_n_0\,
      O(3 downto 0) => \NLW_tmp_7_reg_1048_reg[0]_i_10_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_7_reg_1048[0]_i_17_n_0\,
      S(2) => \tmp_7_reg_1048[0]_i_18_n_0\,
      S(1) => \tmp_7_reg_1048[0]_i_19_n_0\,
      S(0) => \tmp_7_reg_1048[0]_i_20_n_0\
    );
\tmp_7_reg_1048_reg[0]_i_2\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_7_reg_1048_reg[0]_i_5_n_0\,
      CO(3) => \tmp_7_reg_1048_reg[0]_i_2_n_0\,
      CO(2) => \tmp_7_reg_1048_reg[0]_i_2_n_1\,
      CO(1) => \tmp_7_reg_1048_reg[0]_i_2_n_2\,
      CO(0) => \tmp_7_reg_1048_reg[0]_i_2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_7_reg_1048_reg[0]_i_2_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_7_reg_1048[0]_i_6_n_0\,
      S(2) => \tmp_7_reg_1048[0]_i_7_n_0\,
      S(1) => \tmp_7_reg_1048[0]_i_8_n_0\,
      S(0) => \tmp_7_reg_1048[0]_i_9_n_0\
    );
\tmp_7_reg_1048_reg[0]_i_5\: unisim.vcomponents.CARRY4
     port map (
      CI => \tmp_7_reg_1048_reg[0]_i_10_n_0\,
      CO(3) => \tmp_7_reg_1048_reg[0]_i_5_n_0\,
      CO(2) => \tmp_7_reg_1048_reg[0]_i_5_n_1\,
      CO(1) => \tmp_7_reg_1048_reg[0]_i_5_n_2\,
      CO(0) => \tmp_7_reg_1048_reg[0]_i_5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_tmp_7_reg_1048_reg[0]_i_5_O_UNCONNECTED\(3 downto 0),
      S(3) => \tmp_7_reg_1048[0]_i_11_n_0\,
      S(2) => \tmp_7_reg_1048[0]_i_12_n_0\,
      S(1) => \tmp_7_reg_1048[0]_i_13_n_0\,
      S(0) => \tmp_7_reg_1048[0]_i_14_n_0\
    );
\tmp_9_reg_1013[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => ctrl_read_reg_890,
      I1 => ap_CS_fsm_state10,
      I2 => tmp_9_reg_1013,
      O => \tmp_9_reg_1013[0]_i_1_n_0\
    );
\tmp_9_reg_1013_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \tmp_9_reg_1013[0]_i_1_n_0\,
      Q => tmp_9_reg_1013,
      R => '0'
    );
\tmp_reg_1032[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"02"
    )
        port map (
      I0 => ap_CS_fsm_pp3_stage0,
      I1 => lineBuffer_0_U_n_35,
      I2 => \x_assign_reg_392[4]_i_4_n_0\,
      O => lineBuffer_0_addr_2_reg_10360
    );
\tmp_reg_1032[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"01FDFE0200000000"
    )
        port map (
      I0 => y_assign_cast7_mid2_s_reg_1027_reg(0),
      I1 => \exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => \tmp_reg_1032[0]_i_3_n_0\,
      I3 => \y_assign_reg_381_reg_n_0_[0]\,
      I4 => lineBuffer_1_U_n_70,
      I5 => x_assign_reg_392(0),
      O => \tmp_reg_1032[0]_i_2_n_0\
    );
\tmp_reg_1032[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ap_enable_reg_pp3_iter1_reg_n_0,
      I1 => ap_CS_fsm_pp3_stage0,
      O => \tmp_reg_1032[0]_i_3_n_0\
    );
\tmp_reg_1032_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_addr_2_reg_10360,
      D => \tmp_reg_1032[0]_i_2_n_0\,
      Q => tmp_reg_1032,
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(0),
      Q => windowRightCol_1_reg_1073(0),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(10),
      Q => windowRightCol_1_reg_1073(10),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(11),
      Q => windowRightCol_1_reg_1073(11),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(12),
      Q => windowRightCol_1_reg_1073(12),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(13),
      Q => windowRightCol_1_reg_1073(13),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(14),
      Q => windowRightCol_1_reg_1073(14),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(15),
      Q => windowRightCol_1_reg_1073(15),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(16),
      Q => windowRightCol_1_reg_1073(16),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(17),
      Q => windowRightCol_1_reg_1073(17),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(18),
      Q => windowRightCol_1_reg_1073(18),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(19),
      Q => windowRightCol_1_reg_1073(19),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(1),
      Q => windowRightCol_1_reg_1073(1),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(20),
      Q => windowRightCol_1_reg_1073(20),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(21),
      Q => windowRightCol_1_reg_1073(21),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(22),
      Q => windowRightCol_1_reg_1073(22),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(23),
      Q => windowRightCol_1_reg_1073(23),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(24),
      Q => windowRightCol_1_reg_1073(24),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(25),
      Q => windowRightCol_1_reg_1073(25),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(26),
      Q => windowRightCol_1_reg_1073(26),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(27),
      Q => windowRightCol_1_reg_1073(27),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(28),
      Q => windowRightCol_1_reg_1073(28),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(29),
      Q => windowRightCol_1_reg_1073(29),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(2),
      Q => windowRightCol_1_reg_1073(2),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(30),
      Q => windowRightCol_1_reg_1073(30),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(31),
      Q => windowRightCol_1_reg_1073(31),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(3),
      Q => windowRightCol_1_reg_1073(3),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(4),
      Q => windowRightCol_1_reg_1073(4),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(5),
      Q => windowRightCol_1_reg_1073(5),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(6),
      Q => windowRightCol_1_reg_1073(6),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(7),
      Q => windowRightCol_1_reg_1073(7),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(8),
      Q => windowRightCol_1_reg_1073(8),
      R => '0'
    );
\windowRightCol_1_reg_1073_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_1_q0(9),
      Q => windowRightCol_1_reg_1073(9),
      R => '0'
    );
\window_0_0_fu_154_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(0),
      Q => window_0_0_fu_154(0),
      R => '0'
    );
\window_0_0_fu_154_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(10),
      Q => window_0_0_fu_154(10),
      R => '0'
    );
\window_0_0_fu_154_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(11),
      Q => window_0_0_fu_154(11),
      R => '0'
    );
\window_0_0_fu_154_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(12),
      Q => window_0_0_fu_154(12),
      R => '0'
    );
\window_0_0_fu_154_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(13),
      Q => window_0_0_fu_154(13),
      R => '0'
    );
\window_0_0_fu_154_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(14),
      Q => window_0_0_fu_154(14),
      R => '0'
    );
\window_0_0_fu_154_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(15),
      Q => window_0_0_fu_154(15),
      R => '0'
    );
\window_0_0_fu_154_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(16),
      Q => window_0_0_fu_154(16),
      R => '0'
    );
\window_0_0_fu_154_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(17),
      Q => window_0_0_fu_154(17),
      R => '0'
    );
\window_0_0_fu_154_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(18),
      Q => window_0_0_fu_154(18),
      R => '0'
    );
\window_0_0_fu_154_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(19),
      Q => window_0_0_fu_154(19),
      R => '0'
    );
\window_0_0_fu_154_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(1),
      Q => window_0_0_fu_154(1),
      R => '0'
    );
\window_0_0_fu_154_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(20),
      Q => window_0_0_fu_154(20),
      R => '0'
    );
\window_0_0_fu_154_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(21),
      Q => window_0_0_fu_154(21),
      R => '0'
    );
\window_0_0_fu_154_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(22),
      Q => window_0_0_fu_154(22),
      R => '0'
    );
\window_0_0_fu_154_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(23),
      Q => window_0_0_fu_154(23),
      R => '0'
    );
\window_0_0_fu_154_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(24),
      Q => window_0_0_fu_154(24),
      R => '0'
    );
\window_0_0_fu_154_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(25),
      Q => window_0_0_fu_154(25),
      R => '0'
    );
\window_0_0_fu_154_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(26),
      Q => window_0_0_fu_154(26),
      R => '0'
    );
\window_0_0_fu_154_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(27),
      Q => window_0_0_fu_154(27),
      R => '0'
    );
\window_0_0_fu_154_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(28),
      Q => window_0_0_fu_154(28),
      R => '0'
    );
\window_0_0_fu_154_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(29),
      Q => window_0_0_fu_154(29),
      R => '0'
    );
\window_0_0_fu_154_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(2),
      Q => window_0_0_fu_154(2),
      R => '0'
    );
\window_0_0_fu_154_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(30),
      Q => window_0_0_fu_154(30),
      R => '0'
    );
\window_0_0_fu_154_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(31),
      Q => window_0_0_fu_154(31),
      R => '0'
    );
\window_0_0_fu_154_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(3),
      Q => window_0_0_fu_154(3),
      R => '0'
    );
\window_0_0_fu_154_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(4),
      Q => window_0_0_fu_154(4),
      R => '0'
    );
\window_0_0_fu_154_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(5),
      Q => window_0_0_fu_154(5),
      R => '0'
    );
\window_0_0_fu_154_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(6),
      Q => window_0_0_fu_154(6),
      R => '0'
    );
\window_0_0_fu_154_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(7),
      Q => window_0_0_fu_154(7),
      R => '0'
    );
\window_0_0_fu_154_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(8),
      Q => window_0_0_fu_154(8),
      R => '0'
    );
\window_0_0_fu_154_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_1_fu_158(9),
      Q => window_0_0_fu_154(9),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(0),
      Q => window_0_0_read_as_fu_150(0),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(10),
      Q => window_0_0_read_as_fu_150(10),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(11),
      Q => window_0_0_read_as_fu_150(11),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(12),
      Q => window_0_0_read_as_fu_150(12),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(13),
      Q => window_0_0_read_as_fu_150(13),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(14),
      Q => window_0_0_read_as_fu_150(14),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(15),
      Q => window_0_0_read_as_fu_150(15),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(16),
      Q => window_0_0_read_as_fu_150(16),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(17),
      Q => window_0_0_read_as_fu_150(17),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(18),
      Q => window_0_0_read_as_fu_150(18),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(19),
      Q => window_0_0_read_as_fu_150(19),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(1),
      Q => window_0_0_read_as_fu_150(1),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(20),
      Q => window_0_0_read_as_fu_150(20),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(21),
      Q => window_0_0_read_as_fu_150(21),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(22),
      Q => window_0_0_read_as_fu_150(22),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(23),
      Q => window_0_0_read_as_fu_150(23),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(24),
      Q => window_0_0_read_as_fu_150(24),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(25),
      Q => window_0_0_read_as_fu_150(25),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(26),
      Q => window_0_0_read_as_fu_150(26),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(27),
      Q => window_0_0_read_as_fu_150(27),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(28),
      Q => window_0_0_read_as_fu_150(28),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(29),
      Q => window_0_0_read_as_fu_150(29),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(2),
      Q => window_0_0_read_as_fu_150(2),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(30),
      Q => window_0_0_read_as_fu_150(30),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(31),
      Q => window_0_0_read_as_fu_150(31),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(3),
      Q => window_0_0_read_as_fu_150(3),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(4),
      Q => window_0_0_read_as_fu_150(4),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(5),
      Q => window_0_0_read_as_fu_150(5),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(6),
      Q => window_0_0_read_as_fu_150(6),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(7),
      Q => window_0_0_read_as_fu_150(7),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(8),
      Q => window_0_0_read_as_fu_150(8),
      R => '0'
    );
\window_0_0_read_as_fu_150_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_0_0_fu_154(9),
      Q => window_0_0_read_as_fu_150(9),
      R => '0'
    );
\window_0_1_fu_158_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(0),
      Q => window_0_1_fu_158(0),
      R => '0'
    );
\window_0_1_fu_158_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(10),
      Q => window_0_1_fu_158(10),
      R => '0'
    );
\window_0_1_fu_158_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(11),
      Q => window_0_1_fu_158(11),
      R => '0'
    );
\window_0_1_fu_158_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(12),
      Q => window_0_1_fu_158(12),
      R => '0'
    );
\window_0_1_fu_158_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(13),
      Q => window_0_1_fu_158(13),
      R => '0'
    );
\window_0_1_fu_158_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(14),
      Q => window_0_1_fu_158(14),
      R => '0'
    );
\window_0_1_fu_158_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(15),
      Q => window_0_1_fu_158(15),
      R => '0'
    );
\window_0_1_fu_158_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(16),
      Q => window_0_1_fu_158(16),
      R => '0'
    );
\window_0_1_fu_158_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(17),
      Q => window_0_1_fu_158(17),
      R => '0'
    );
\window_0_1_fu_158_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(18),
      Q => window_0_1_fu_158(18),
      R => '0'
    );
\window_0_1_fu_158_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(19),
      Q => window_0_1_fu_158(19),
      R => '0'
    );
\window_0_1_fu_158_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(1),
      Q => window_0_1_fu_158(1),
      R => '0'
    );
\window_0_1_fu_158_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(20),
      Q => window_0_1_fu_158(20),
      R => '0'
    );
\window_0_1_fu_158_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(21),
      Q => window_0_1_fu_158(21),
      R => '0'
    );
\window_0_1_fu_158_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(22),
      Q => window_0_1_fu_158(22),
      R => '0'
    );
\window_0_1_fu_158_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(23),
      Q => window_0_1_fu_158(23),
      R => '0'
    );
\window_0_1_fu_158_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(24),
      Q => window_0_1_fu_158(24),
      R => '0'
    );
\window_0_1_fu_158_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(25),
      Q => window_0_1_fu_158(25),
      R => '0'
    );
\window_0_1_fu_158_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(26),
      Q => window_0_1_fu_158(26),
      R => '0'
    );
\window_0_1_fu_158_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(27),
      Q => window_0_1_fu_158(27),
      R => '0'
    );
\window_0_1_fu_158_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(28),
      Q => window_0_1_fu_158(28),
      R => '0'
    );
\window_0_1_fu_158_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(29),
      Q => window_0_1_fu_158(29),
      R => '0'
    );
\window_0_1_fu_158_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(2),
      Q => window_0_1_fu_158(2),
      R => '0'
    );
\window_0_1_fu_158_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(30),
      Q => window_0_1_fu_158(30),
      R => '0'
    );
\window_0_1_fu_158_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(31),
      Q => window_0_1_fu_158(31),
      R => '0'
    );
\window_0_1_fu_158_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(3),
      Q => window_0_1_fu_158(3),
      R => '0'
    );
\window_0_1_fu_158_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(4),
      Q => window_0_1_fu_158(4),
      R => '0'
    );
\window_0_1_fu_158_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(5),
      Q => window_0_1_fu_158(5),
      R => '0'
    );
\window_0_1_fu_158_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(6),
      Q => window_0_1_fu_158(6),
      R => '0'
    );
\window_0_1_fu_158_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(7),
      Q => window_0_1_fu_158(7),
      R => '0'
    );
\window_0_1_fu_158_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(8),
      Q => window_0_1_fu_158(8),
      R => '0'
    );
\window_0_1_fu_158_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_we1,
      D => lineBuffer_0_q0(9),
      Q => window_0_1_fu_158(9),
      R => '0'
    );
\window_1_0_read_as_fu_162[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(0),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[0]\,
      O => window_1_0_phi_fu_417_p4(0)
    );
\window_1_0_read_as_fu_162[10]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(10),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[10]\,
      O => window_1_0_phi_fu_417_p4(10)
    );
\window_1_0_read_as_fu_162[11]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(11),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[11]\,
      O => window_1_0_phi_fu_417_p4(11)
    );
\window_1_0_read_as_fu_162[12]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(12),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[12]\,
      O => window_1_0_phi_fu_417_p4(12)
    );
\window_1_0_read_as_fu_162[13]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(13),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[13]\,
      O => window_1_0_phi_fu_417_p4(13)
    );
\window_1_0_read_as_fu_162[14]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(14),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[14]\,
      O => window_1_0_phi_fu_417_p4(14)
    );
\window_1_0_read_as_fu_162[15]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(15),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[15]\,
      O => window_1_0_phi_fu_417_p4(15)
    );
\window_1_0_read_as_fu_162[16]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(16),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[16]\,
      O => window_1_0_phi_fu_417_p4(16)
    );
\window_1_0_read_as_fu_162[17]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(17),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[17]\,
      O => window_1_0_phi_fu_417_p4(17)
    );
\window_1_0_read_as_fu_162[18]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(18),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[18]\,
      O => window_1_0_phi_fu_417_p4(18)
    );
\window_1_0_read_as_fu_162[19]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(19),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[19]\,
      O => window_1_0_phi_fu_417_p4(19)
    );
\window_1_0_read_as_fu_162[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(1),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[1]\,
      O => window_1_0_phi_fu_417_p4(1)
    );
\window_1_0_read_as_fu_162[20]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(20),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[20]\,
      O => window_1_0_phi_fu_417_p4(20)
    );
\window_1_0_read_as_fu_162[21]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(21),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[21]\,
      O => window_1_0_phi_fu_417_p4(21)
    );
\window_1_0_read_as_fu_162[22]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(22),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[22]\,
      O => window_1_0_phi_fu_417_p4(22)
    );
\window_1_0_read_as_fu_162[23]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(23),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[23]\,
      O => window_1_0_phi_fu_417_p4(23)
    );
\window_1_0_read_as_fu_162[24]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(24),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[24]\,
      O => window_1_0_phi_fu_417_p4(24)
    );
\window_1_0_read_as_fu_162[25]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(25),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[25]\,
      O => window_1_0_phi_fu_417_p4(25)
    );
\window_1_0_read_as_fu_162[26]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(26),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[26]\,
      O => window_1_0_phi_fu_417_p4(26)
    );
\window_1_0_read_as_fu_162[27]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(27),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[27]\,
      O => window_1_0_phi_fu_417_p4(27)
    );
\window_1_0_read_as_fu_162[28]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(28),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[28]\,
      O => window_1_0_phi_fu_417_p4(28)
    );
\window_1_0_read_as_fu_162[29]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(29),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[29]\,
      O => window_1_0_phi_fu_417_p4(29)
    );
\window_1_0_read_as_fu_162[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(2),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[2]\,
      O => window_1_0_phi_fu_417_p4(2)
    );
\window_1_0_read_as_fu_162[30]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(30),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[30]\,
      O => window_1_0_phi_fu_417_p4(30)
    );
\window_1_0_read_as_fu_162[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(31),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[31]\,
      O => window_1_0_phi_fu_417_p4(31)
    );
\window_1_0_read_as_fu_162[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(3),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[3]\,
      O => window_1_0_phi_fu_417_p4(3)
    );
\window_1_0_read_as_fu_162[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(4),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[4]\,
      O => window_1_0_phi_fu_417_p4(4)
    );
\window_1_0_read_as_fu_162[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(5),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[5]\,
      O => window_1_0_phi_fu_417_p4(5)
    );
\window_1_0_read_as_fu_162[6]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(6),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[6]\,
      O => window_1_0_phi_fu_417_p4(6)
    );
\window_1_0_read_as_fu_162[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(7),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[7]\,
      O => window_1_0_phi_fu_417_p4(7)
    );
\window_1_0_read_as_fu_162[8]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(8),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[8]\,
      O => window_1_0_phi_fu_417_p4(8)
    );
\window_1_0_read_as_fu_162[9]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => window_1_0_reg_414(9),
      I1 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp3_iter2,
      I3 => \window_1_1_reg_403_reg_n_0_[9]\,
      O => window_1_0_phi_fu_417_p4(9)
    );
\window_1_0_read_as_fu_162_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(0),
      Q => window_1_0_read_as_fu_162(0),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(10),
      Q => window_1_0_read_as_fu_162(10),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(11),
      Q => window_1_0_read_as_fu_162(11),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(12),
      Q => window_1_0_read_as_fu_162(12),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(13),
      Q => window_1_0_read_as_fu_162(13),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(14),
      Q => window_1_0_read_as_fu_162(14),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(15),
      Q => window_1_0_read_as_fu_162(15),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(16),
      Q => window_1_0_read_as_fu_162(16),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(17),
      Q => window_1_0_read_as_fu_162(17),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(18),
      Q => window_1_0_read_as_fu_162(18),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(19),
      Q => window_1_0_read_as_fu_162(19),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(1),
      Q => window_1_0_read_as_fu_162(1),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(20),
      Q => window_1_0_read_as_fu_162(20),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(21),
      Q => window_1_0_read_as_fu_162(21),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(22),
      Q => window_1_0_read_as_fu_162(22),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(23),
      Q => window_1_0_read_as_fu_162(23),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(24),
      Q => window_1_0_read_as_fu_162(24),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(25),
      Q => window_1_0_read_as_fu_162(25),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(26),
      Q => window_1_0_read_as_fu_162(26),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(27),
      Q => window_1_0_read_as_fu_162(27),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(28),
      Q => window_1_0_read_as_fu_162(28),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(29),
      Q => window_1_0_read_as_fu_162(29),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(2),
      Q => window_1_0_read_as_fu_162(2),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(30),
      Q => window_1_0_read_as_fu_162(30),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(31),
      Q => window_1_0_read_as_fu_162(31),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(3),
      Q => window_1_0_read_as_fu_162(3),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(4),
      Q => window_1_0_read_as_fu_162(4),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(5),
      Q => window_1_0_read_as_fu_162(5),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(6),
      Q => window_1_0_read_as_fu_162(6),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(7),
      Q => window_1_0_read_as_fu_162(7),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(8),
      Q => window_1_0_read_as_fu_162(8),
      R => '0'
    );
\window_1_0_read_as_fu_162_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => p_81_in,
      D => window_1_0_phi_fu_417_p4(9),
      Q => window_1_0_read_as_fu_162(9),
      R => '0'
    );
\window_1_0_reg_414[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[0]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[0]\,
      O => \window_1_0_reg_414[0]_i_1_n_0\
    );
\window_1_0_reg_414[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[10]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[10]\,
      O => \window_1_0_reg_414[10]_i_1_n_0\
    );
\window_1_0_reg_414[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[11]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[11]\,
      O => \window_1_0_reg_414[11]_i_1_n_0\
    );
\window_1_0_reg_414[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[12]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[12]\,
      O => \window_1_0_reg_414[12]_i_1_n_0\
    );
\window_1_0_reg_414[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[13]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[13]\,
      O => \window_1_0_reg_414[13]_i_1_n_0\
    );
\window_1_0_reg_414[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[14]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[14]\,
      O => \window_1_0_reg_414[14]_i_1_n_0\
    );
\window_1_0_reg_414[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[15]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[15]\,
      O => \window_1_0_reg_414[15]_i_1_n_0\
    );
\window_1_0_reg_414[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[16]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[16]\,
      O => \window_1_0_reg_414[16]_i_1_n_0\
    );
\window_1_0_reg_414[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[17]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[17]\,
      O => \window_1_0_reg_414[17]_i_1_n_0\
    );
\window_1_0_reg_414[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[18]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[18]\,
      O => \window_1_0_reg_414[18]_i_1_n_0\
    );
\window_1_0_reg_414[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[19]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[19]\,
      O => \window_1_0_reg_414[19]_i_1_n_0\
    );
\window_1_0_reg_414[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[1]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[1]\,
      O => \window_1_0_reg_414[1]_i_1_n_0\
    );
\window_1_0_reg_414[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[20]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[20]\,
      O => \window_1_0_reg_414[20]_i_1_n_0\
    );
\window_1_0_reg_414[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[21]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[21]\,
      O => \window_1_0_reg_414[21]_i_1_n_0\
    );
\window_1_0_reg_414[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[22]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[22]\,
      O => \window_1_0_reg_414[22]_i_1_n_0\
    );
\window_1_0_reg_414[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[23]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[23]\,
      O => \window_1_0_reg_414[23]_i_1_n_0\
    );
\window_1_0_reg_414[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[24]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[24]\,
      O => \window_1_0_reg_414[24]_i_1_n_0\
    );
\window_1_0_reg_414[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[25]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[25]\,
      O => \window_1_0_reg_414[25]_i_1_n_0\
    );
\window_1_0_reg_414[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[26]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[26]\,
      O => \window_1_0_reg_414[26]_i_1_n_0\
    );
\window_1_0_reg_414[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[27]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[27]\,
      O => \window_1_0_reg_414[27]_i_1_n_0\
    );
\window_1_0_reg_414[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[28]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[28]\,
      O => \window_1_0_reg_414[28]_i_1_n_0\
    );
\window_1_0_reg_414[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[29]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[29]\,
      O => \window_1_0_reg_414[29]_i_1_n_0\
    );
\window_1_0_reg_414[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[2]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[2]\,
      O => \window_1_0_reg_414[2]_i_1_n_0\
    );
\window_1_0_reg_414[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[30]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[30]\,
      O => \window_1_0_reg_414[30]_i_1_n_0\
    );
\window_1_0_reg_414[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[31]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[31]\,
      O => \window_1_0_reg_414[31]_i_1_n_0\
    );
\window_1_0_reg_414[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[3]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[3]\,
      O => \window_1_0_reg_414[3]_i_1_n_0\
    );
\window_1_0_reg_414[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[4]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[4]\,
      O => \window_1_0_reg_414[4]_i_1_n_0\
    );
\window_1_0_reg_414[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[5]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[5]\,
      O => \window_1_0_reg_414[5]_i_1_n_0\
    );
\window_1_0_reg_414[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[6]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[6]\,
      O => \window_1_0_reg_414[6]_i_1_n_0\
    );
\window_1_0_reg_414[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[7]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[7]\,
      O => \window_1_0_reg_414[7]_i_1_n_0\
    );
\window_1_0_reg_414[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[8]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[8]\,
      O => \window_1_0_reg_414[8]_i_1_n_0\
    );
\window_1_0_reg_414[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => \window_1_1_reg_403_reg_n_0_[9]\,
      I4 => \window_1_1_1_reg_347_reg_n_0_[9]\,
      O => \window_1_0_reg_414[9]_i_1_n_0\
    );
\window_1_0_reg_414_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[0]_i_1_n_0\,
      Q => window_1_0_reg_414(0),
      R => '0'
    );
\window_1_0_reg_414_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[10]_i_1_n_0\,
      Q => window_1_0_reg_414(10),
      R => '0'
    );
\window_1_0_reg_414_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[11]_i_1_n_0\,
      Q => window_1_0_reg_414(11),
      R => '0'
    );
\window_1_0_reg_414_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[12]_i_1_n_0\,
      Q => window_1_0_reg_414(12),
      R => '0'
    );
\window_1_0_reg_414_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[13]_i_1_n_0\,
      Q => window_1_0_reg_414(13),
      R => '0'
    );
\window_1_0_reg_414_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[14]_i_1_n_0\,
      Q => window_1_0_reg_414(14),
      R => '0'
    );
\window_1_0_reg_414_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[15]_i_1_n_0\,
      Q => window_1_0_reg_414(15),
      R => '0'
    );
\window_1_0_reg_414_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[16]_i_1_n_0\,
      Q => window_1_0_reg_414(16),
      R => '0'
    );
\window_1_0_reg_414_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[17]_i_1_n_0\,
      Q => window_1_0_reg_414(17),
      R => '0'
    );
\window_1_0_reg_414_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[18]_i_1_n_0\,
      Q => window_1_0_reg_414(18),
      R => '0'
    );
\window_1_0_reg_414_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[19]_i_1_n_0\,
      Q => window_1_0_reg_414(19),
      R => '0'
    );
\window_1_0_reg_414_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[1]_i_1_n_0\,
      Q => window_1_0_reg_414(1),
      R => '0'
    );
\window_1_0_reg_414_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[20]_i_1_n_0\,
      Q => window_1_0_reg_414(20),
      R => '0'
    );
\window_1_0_reg_414_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[21]_i_1_n_0\,
      Q => window_1_0_reg_414(21),
      R => '0'
    );
\window_1_0_reg_414_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[22]_i_1_n_0\,
      Q => window_1_0_reg_414(22),
      R => '0'
    );
\window_1_0_reg_414_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[23]_i_1_n_0\,
      Q => window_1_0_reg_414(23),
      R => '0'
    );
\window_1_0_reg_414_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[24]_i_1_n_0\,
      Q => window_1_0_reg_414(24),
      R => '0'
    );
\window_1_0_reg_414_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[25]_i_1_n_0\,
      Q => window_1_0_reg_414(25),
      R => '0'
    );
\window_1_0_reg_414_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[26]_i_1_n_0\,
      Q => window_1_0_reg_414(26),
      R => '0'
    );
\window_1_0_reg_414_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[27]_i_1_n_0\,
      Q => window_1_0_reg_414(27),
      R => '0'
    );
\window_1_0_reg_414_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[28]_i_1_n_0\,
      Q => window_1_0_reg_414(28),
      R => '0'
    );
\window_1_0_reg_414_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[29]_i_1_n_0\,
      Q => window_1_0_reg_414(29),
      R => '0'
    );
\window_1_0_reg_414_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[2]_i_1_n_0\,
      Q => window_1_0_reg_414(2),
      R => '0'
    );
\window_1_0_reg_414_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[30]_i_1_n_0\,
      Q => window_1_0_reg_414(30),
      R => '0'
    );
\window_1_0_reg_414_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[31]_i_1_n_0\,
      Q => window_1_0_reg_414(31),
      R => '0'
    );
\window_1_0_reg_414_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[3]_i_1_n_0\,
      Q => window_1_0_reg_414(3),
      R => '0'
    );
\window_1_0_reg_414_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[4]_i_1_n_0\,
      Q => window_1_0_reg_414(4),
      R => '0'
    );
\window_1_0_reg_414_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[5]_i_1_n_0\,
      Q => window_1_0_reg_414(5),
      R => '0'
    );
\window_1_0_reg_414_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[6]_i_1_n_0\,
      Q => window_1_0_reg_414(6),
      R => '0'
    );
\window_1_0_reg_414_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[7]_i_1_n_0\,
      Q => window_1_0_reg_414(7),
      R => '0'
    );
\window_1_0_reg_414_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[8]_i_1_n_0\,
      Q => window_1_0_reg_414(8),
      R => '0'
    );
\window_1_0_reg_414_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_0_reg_414[9]_i_1_n_0\,
      Q => window_1_0_reg_414(9),
      R => '0'
    );
\window_1_1_1_reg_347[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => \cond1_reg_948_reg_n_0_[0]\,
      I1 => exitcond_flatten_reg_913,
      I2 => ap_enable_reg_pp2_iter1,
      I3 => ap_CS_fsm_pp2_stage0,
      I4 => \cond_mid2_reg_932_reg_n_0_[0]\,
      O => window_1_1_1_reg_347
    );
\window_1_1_1_reg_347_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(0),
      Q => \window_1_1_1_reg_347_reg_n_0_[0]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(10),
      Q => \window_1_1_1_reg_347_reg_n_0_[10]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(11),
      Q => \window_1_1_1_reg_347_reg_n_0_[11]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(12),
      Q => \window_1_1_1_reg_347_reg_n_0_[12]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(13),
      Q => \window_1_1_1_reg_347_reg_n_0_[13]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(14),
      Q => \window_1_1_1_reg_347_reg_n_0_[14]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(15),
      Q => \window_1_1_1_reg_347_reg_n_0_[15]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(16),
      Q => \window_1_1_1_reg_347_reg_n_0_[16]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(17),
      Q => \window_1_1_1_reg_347_reg_n_0_[17]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(18),
      Q => \window_1_1_1_reg_347_reg_n_0_[18]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(19),
      Q => \window_1_1_1_reg_347_reg_n_0_[19]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(1),
      Q => \window_1_1_1_reg_347_reg_n_0_[1]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(20),
      Q => \window_1_1_1_reg_347_reg_n_0_[20]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(21),
      Q => \window_1_1_1_reg_347_reg_n_0_[21]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(22),
      Q => \window_1_1_1_reg_347_reg_n_0_[22]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(23),
      Q => \window_1_1_1_reg_347_reg_n_0_[23]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(24),
      Q => \window_1_1_1_reg_347_reg_n_0_[24]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(25),
      Q => \window_1_1_1_reg_347_reg_n_0_[25]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(26),
      Q => \window_1_1_1_reg_347_reg_n_0_[26]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(27),
      Q => \window_1_1_1_reg_347_reg_n_0_[27]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(28),
      Q => \window_1_1_1_reg_347_reg_n_0_[28]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(29),
      Q => \window_1_1_1_reg_347_reg_n_0_[29]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(2),
      Q => \window_1_1_1_reg_347_reg_n_0_[2]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(30),
      Q => \window_1_1_1_reg_347_reg_n_0_[30]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(31),
      Q => \window_1_1_1_reg_347_reg_n_0_[31]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(3),
      Q => \window_1_1_1_reg_347_reg_n_0_[3]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(4),
      Q => \window_1_1_1_reg_347_reg_n_0_[4]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(5),
      Q => \window_1_1_1_reg_347_reg_n_0_[5]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(6),
      Q => \window_1_1_1_reg_347_reg_n_0_[6]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(7),
      Q => \window_1_1_1_reg_347_reg_n_0_[7]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(8),
      Q => \window_1_1_1_reg_347_reg_n_0_[8]\,
      R => '0'
    );
\window_1_1_1_reg_347_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_1_reg_347,
      D => window_2_2_7_fu_566_p3(9),
      Q => \window_1_1_1_reg_347_reg_n_0_[9]\,
      R => '0'
    );
\window_1_1_reg_403[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(0),
      I4 => \window_1_2_1_reg_335_reg_n_0_[0]\,
      O => \window_1_1_reg_403[0]_i_1_n_0\
    );
\window_1_1_reg_403[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(10),
      I4 => \window_1_2_1_reg_335_reg_n_0_[10]\,
      O => \window_1_1_reg_403[10]_i_1_n_0\
    );
\window_1_1_reg_403[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(11),
      I4 => \window_1_2_1_reg_335_reg_n_0_[11]\,
      O => \window_1_1_reg_403[11]_i_1_n_0\
    );
\window_1_1_reg_403[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(12),
      I4 => \window_1_2_1_reg_335_reg_n_0_[12]\,
      O => \window_1_1_reg_403[12]_i_1_n_0\
    );
\window_1_1_reg_403[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(13),
      I4 => \window_1_2_1_reg_335_reg_n_0_[13]\,
      O => \window_1_1_reg_403[13]_i_1_n_0\
    );
\window_1_1_reg_403[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(14),
      I4 => \window_1_2_1_reg_335_reg_n_0_[14]\,
      O => \window_1_1_reg_403[14]_i_1_n_0\
    );
\window_1_1_reg_403[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(15),
      I4 => \window_1_2_1_reg_335_reg_n_0_[15]\,
      O => \window_1_1_reg_403[15]_i_1_n_0\
    );
\window_1_1_reg_403[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(16),
      I4 => \window_1_2_1_reg_335_reg_n_0_[16]\,
      O => \window_1_1_reg_403[16]_i_1_n_0\
    );
\window_1_1_reg_403[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(17),
      I4 => \window_1_2_1_reg_335_reg_n_0_[17]\,
      O => \window_1_1_reg_403[17]_i_1_n_0\
    );
\window_1_1_reg_403[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(18),
      I4 => \window_1_2_1_reg_335_reg_n_0_[18]\,
      O => \window_1_1_reg_403[18]_i_1_n_0\
    );
\window_1_1_reg_403[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(19),
      I4 => \window_1_2_1_reg_335_reg_n_0_[19]\,
      O => \window_1_1_reg_403[19]_i_1_n_0\
    );
\window_1_1_reg_403[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(1),
      I4 => \window_1_2_1_reg_335_reg_n_0_[1]\,
      O => \window_1_1_reg_403[1]_i_1_n_0\
    );
\window_1_1_reg_403[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(20),
      I4 => \window_1_2_1_reg_335_reg_n_0_[20]\,
      O => \window_1_1_reg_403[20]_i_1_n_0\
    );
\window_1_1_reg_403[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(21),
      I4 => \window_1_2_1_reg_335_reg_n_0_[21]\,
      O => \window_1_1_reg_403[21]_i_1_n_0\
    );
\window_1_1_reg_403[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(22),
      I4 => \window_1_2_1_reg_335_reg_n_0_[22]\,
      O => \window_1_1_reg_403[22]_i_1_n_0\
    );
\window_1_1_reg_403[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(23),
      I4 => \window_1_2_1_reg_335_reg_n_0_[23]\,
      O => \window_1_1_reg_403[23]_i_1_n_0\
    );
\window_1_1_reg_403[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(24),
      I4 => \window_1_2_1_reg_335_reg_n_0_[24]\,
      O => \window_1_1_reg_403[24]_i_1_n_0\
    );
\window_1_1_reg_403[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(25),
      I4 => \window_1_2_1_reg_335_reg_n_0_[25]\,
      O => \window_1_1_reg_403[25]_i_1_n_0\
    );
\window_1_1_reg_403[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(26),
      I4 => \window_1_2_1_reg_335_reg_n_0_[26]\,
      O => \window_1_1_reg_403[26]_i_1_n_0\
    );
\window_1_1_reg_403[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(27),
      I4 => \window_1_2_1_reg_335_reg_n_0_[27]\,
      O => \window_1_1_reg_403[27]_i_1_n_0\
    );
\window_1_1_reg_403[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(28),
      I4 => \window_1_2_1_reg_335_reg_n_0_[28]\,
      O => \window_1_1_reg_403[28]_i_1_n_0\
    );
\window_1_1_reg_403[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(29),
      I4 => \window_1_2_1_reg_335_reg_n_0_[29]\,
      O => \window_1_1_reg_403[29]_i_1_n_0\
    );
\window_1_1_reg_403[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(2),
      I4 => \window_1_2_1_reg_335_reg_n_0_[2]\,
      O => \window_1_1_reg_403[2]_i_1_n_0\
    );
\window_1_1_reg_403[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(30),
      I4 => \window_1_2_1_reg_335_reg_n_0_[30]\,
      O => \window_1_1_reg_403[30]_i_1_n_0\
    );
\window_1_1_reg_403[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF04"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => ap_CS_fsm_state10,
      O => window_1_1_reg_403
    );
\window_1_1_reg_403[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(31),
      I4 => \window_1_2_1_reg_335_reg_n_0_[31]\,
      O => \window_1_1_reg_403[31]_i_2_n_0\
    );
\window_1_1_reg_403[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(3),
      I4 => \window_1_2_1_reg_335_reg_n_0_[3]\,
      O => \window_1_1_reg_403[3]_i_1_n_0\
    );
\window_1_1_reg_403[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(4),
      I4 => \window_1_2_1_reg_335_reg_n_0_[4]\,
      O => \window_1_1_reg_403[4]_i_1_n_0\
    );
\window_1_1_reg_403[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(5),
      I4 => \window_1_2_1_reg_335_reg_n_0_[5]\,
      O => \window_1_1_reg_403[5]_i_1_n_0\
    );
\window_1_1_reg_403[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(6),
      I4 => \window_1_2_1_reg_335_reg_n_0_[6]\,
      O => \window_1_1_reg_403[6]_i_1_n_0\
    );
\window_1_1_reg_403[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(7),
      I4 => \window_1_2_1_reg_335_reg_n_0_[7]\,
      O => \window_1_1_reg_403[7]_i_1_n_0\
    );
\window_1_1_reg_403[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(8),
      I4 => \window_1_2_1_reg_335_reg_n_0_[8]\,
      O => \window_1_1_reg_403[8]_i_1_n_0\
    );
\window_1_1_reg_403[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFB0400"
    )
        port map (
      I0 => lineBuffer_0_U_n_35,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => \ap_pipeline_reg_pp3_iter1_exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I3 => windowRightCol_1_reg_1073(9),
      I4 => \window_1_2_1_reg_335_reg_n_0_[9]\,
      O => \window_1_1_reg_403[9]_i_1_n_0\
    );
\window_1_1_reg_403_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[0]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[0]\,
      R => '0'
    );
\window_1_1_reg_403_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[10]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[10]\,
      R => '0'
    );
\window_1_1_reg_403_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[11]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[11]\,
      R => '0'
    );
\window_1_1_reg_403_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[12]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[12]\,
      R => '0'
    );
\window_1_1_reg_403_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[13]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[13]\,
      R => '0'
    );
\window_1_1_reg_403_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[14]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[14]\,
      R => '0'
    );
\window_1_1_reg_403_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[15]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[15]\,
      R => '0'
    );
\window_1_1_reg_403_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[16]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[16]\,
      R => '0'
    );
\window_1_1_reg_403_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[17]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[17]\,
      R => '0'
    );
\window_1_1_reg_403_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[18]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[18]\,
      R => '0'
    );
\window_1_1_reg_403_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[19]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[19]\,
      R => '0'
    );
\window_1_1_reg_403_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[1]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[1]\,
      R => '0'
    );
\window_1_1_reg_403_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[20]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[20]\,
      R => '0'
    );
\window_1_1_reg_403_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[21]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[21]\,
      R => '0'
    );
\window_1_1_reg_403_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[22]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[22]\,
      R => '0'
    );
\window_1_1_reg_403_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[23]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[23]\,
      R => '0'
    );
\window_1_1_reg_403_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[24]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[24]\,
      R => '0'
    );
\window_1_1_reg_403_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[25]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[25]\,
      R => '0'
    );
\window_1_1_reg_403_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[26]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[26]\,
      R => '0'
    );
\window_1_1_reg_403_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[27]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[27]\,
      R => '0'
    );
\window_1_1_reg_403_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[28]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[28]\,
      R => '0'
    );
\window_1_1_reg_403_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[29]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[29]\,
      R => '0'
    );
\window_1_1_reg_403_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[2]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[2]\,
      R => '0'
    );
\window_1_1_reg_403_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[30]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[30]\,
      R => '0'
    );
\window_1_1_reg_403_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[31]_i_2_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[31]\,
      R => '0'
    );
\window_1_1_reg_403_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[3]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[3]\,
      R => '0'
    );
\window_1_1_reg_403_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[4]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[4]\,
      R => '0'
    );
\window_1_1_reg_403_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[5]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[5]\,
      R => '0'
    );
\window_1_1_reg_403_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[6]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[6]\,
      R => '0'
    );
\window_1_1_reg_403_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[7]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[7]\,
      R => '0'
    );
\window_1_1_reg_403_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[8]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[8]\,
      R => '0'
    );
\window_1_1_reg_403_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_1_reg_403,
      D => \window_1_1_reg_403[9]_i_1_n_0\,
      Q => \window_1_1_reg_403_reg_n_0_[9]\,
      R => '0'
    );
\window_1_2_1_reg_335[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"10000000"
    )
        port map (
      I0 => \cond1_reg_948_reg_n_0_[0]\,
      I1 => exitcond_flatten_reg_913,
      I2 => ap_enable_reg_pp2_iter1,
      I3 => ap_CS_fsm_pp2_stage0,
      I4 => \cond_mid2_reg_932_reg_n_0_[0]\,
      O => window_1_2_1_reg_335
    );
\window_1_2_1_reg_335_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(0),
      Q => \window_1_2_1_reg_335_reg_n_0_[0]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(10),
      Q => \window_1_2_1_reg_335_reg_n_0_[10]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(11),
      Q => \window_1_2_1_reg_335_reg_n_0_[11]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(12),
      Q => \window_1_2_1_reg_335_reg_n_0_[12]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(13),
      Q => \window_1_2_1_reg_335_reg_n_0_[13]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(14),
      Q => \window_1_2_1_reg_335_reg_n_0_[14]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(15),
      Q => \window_1_2_1_reg_335_reg_n_0_[15]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(16),
      Q => \window_1_2_1_reg_335_reg_n_0_[16]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(17),
      Q => \window_1_2_1_reg_335_reg_n_0_[17]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(18),
      Q => \window_1_2_1_reg_335_reg_n_0_[18]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(19),
      Q => \window_1_2_1_reg_335_reg_n_0_[19]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(1),
      Q => \window_1_2_1_reg_335_reg_n_0_[1]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(20),
      Q => \window_1_2_1_reg_335_reg_n_0_[20]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(21),
      Q => \window_1_2_1_reg_335_reg_n_0_[21]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(22),
      Q => \window_1_2_1_reg_335_reg_n_0_[22]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(23),
      Q => \window_1_2_1_reg_335_reg_n_0_[23]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(24),
      Q => \window_1_2_1_reg_335_reg_n_0_[24]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(25),
      Q => \window_1_2_1_reg_335_reg_n_0_[25]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(26),
      Q => \window_1_2_1_reg_335_reg_n_0_[26]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(27),
      Q => \window_1_2_1_reg_335_reg_n_0_[27]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(28),
      Q => \window_1_2_1_reg_335_reg_n_0_[28]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(29),
      Q => \window_1_2_1_reg_335_reg_n_0_[29]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(2),
      Q => \window_1_2_1_reg_335_reg_n_0_[2]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(30),
      Q => \window_1_2_1_reg_335_reg_n_0_[30]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(31),
      Q => \window_1_2_1_reg_335_reg_n_0_[31]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(3),
      Q => \window_1_2_1_reg_335_reg_n_0_[3]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(4),
      Q => \window_1_2_1_reg_335_reg_n_0_[4]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(5),
      Q => \window_1_2_1_reg_335_reg_n_0_[5]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(6),
      Q => \window_1_2_1_reg_335_reg_n_0_[6]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(7),
      Q => \window_1_2_1_reg_335_reg_n_0_[7]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(8),
      Q => \window_1_2_1_reg_335_reg_n_0_[8]\,
      R => '0'
    );
\window_1_2_1_reg_335_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => window_1_2_1_reg_335,
      D => window_2_2_7_fu_566_p3(9),
      Q => \window_1_2_1_reg_335_reg_n_0_[9]\,
      R => '0'
    );
\window_2_2_2_fu_174[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => tmp_7_reg_1048,
      I1 => lineBuffer_0_we1,
      O => inStream_V_data_V_0_sel2
    );
\window_2_2_2_fu_174_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(0),
      Q => window_2_2_2_fu_174(0),
      R => '0'
    );
\window_2_2_2_fu_174_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(10),
      Q => window_2_2_2_fu_174(10),
      R => '0'
    );
\window_2_2_2_fu_174_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(11),
      Q => window_2_2_2_fu_174(11),
      R => '0'
    );
\window_2_2_2_fu_174_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(12),
      Q => window_2_2_2_fu_174(12),
      R => '0'
    );
\window_2_2_2_fu_174_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(13),
      Q => window_2_2_2_fu_174(13),
      R => '0'
    );
\window_2_2_2_fu_174_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(14),
      Q => window_2_2_2_fu_174(14),
      R => '0'
    );
\window_2_2_2_fu_174_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(15),
      Q => window_2_2_2_fu_174(15),
      R => '0'
    );
\window_2_2_2_fu_174_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(16),
      Q => window_2_2_2_fu_174(16),
      R => '0'
    );
\window_2_2_2_fu_174_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(17),
      Q => window_2_2_2_fu_174(17),
      R => '0'
    );
\window_2_2_2_fu_174_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(18),
      Q => window_2_2_2_fu_174(18),
      R => '0'
    );
\window_2_2_2_fu_174_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(19),
      Q => window_2_2_2_fu_174(19),
      R => '0'
    );
\window_2_2_2_fu_174_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(1),
      Q => window_2_2_2_fu_174(1),
      R => '0'
    );
\window_2_2_2_fu_174_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(20),
      Q => window_2_2_2_fu_174(20),
      R => '0'
    );
\window_2_2_2_fu_174_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(21),
      Q => window_2_2_2_fu_174(21),
      R => '0'
    );
\window_2_2_2_fu_174_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(22),
      Q => window_2_2_2_fu_174(22),
      R => '0'
    );
\window_2_2_2_fu_174_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(23),
      Q => window_2_2_2_fu_174(23),
      R => '0'
    );
\window_2_2_2_fu_174_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(24),
      Q => window_2_2_2_fu_174(24),
      R => '0'
    );
\window_2_2_2_fu_174_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(25),
      Q => window_2_2_2_fu_174(25),
      R => '0'
    );
\window_2_2_2_fu_174_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(26),
      Q => window_2_2_2_fu_174(26),
      R => '0'
    );
\window_2_2_2_fu_174_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(27),
      Q => window_2_2_2_fu_174(27),
      R => '0'
    );
\window_2_2_2_fu_174_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(28),
      Q => window_2_2_2_fu_174(28),
      R => '0'
    );
\window_2_2_2_fu_174_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(29),
      Q => window_2_2_2_fu_174(29),
      R => '0'
    );
\window_2_2_2_fu_174_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(2),
      Q => window_2_2_2_fu_174(2),
      R => '0'
    );
\window_2_2_2_fu_174_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(30),
      Q => window_2_2_2_fu_174(30),
      R => '0'
    );
\window_2_2_2_fu_174_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(31),
      Q => window_2_2_2_fu_174(31),
      R => '0'
    );
\window_2_2_2_fu_174_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(3),
      Q => window_2_2_2_fu_174(3),
      R => '0'
    );
\window_2_2_2_fu_174_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(4),
      Q => window_2_2_2_fu_174(4),
      R => '0'
    );
\window_2_2_2_fu_174_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(5),
      Q => window_2_2_2_fu_174(5),
      R => '0'
    );
\window_2_2_2_fu_174_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(6),
      Q => window_2_2_2_fu_174(6),
      R => '0'
    );
\window_2_2_2_fu_174_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(7),
      Q => window_2_2_2_fu_174(7),
      R => '0'
    );
\window_2_2_2_fu_174_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(8),
      Q => window_2_2_2_fu_174(8),
      R => '0'
    );
\window_2_2_2_fu_174_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => inStream_V_data_V_0_sel2,
      D => inStream_V_data_V_0_data_out(9),
      Q => window_2_2_2_fu_174(9),
      R => '0'
    );
\writeCount_1_fu_166[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => outStream_V_data_V_1_sel_wr052_out,
      O => writeCount_1_fu_166
    );
\writeCount_1_fu_166[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_pipeline_reg_pp3_iter1_tmp_reg_1032,
      I1 => ap_enable_reg_pp3_iter2,
      I2 => lineBuffer_0_U_n_35,
      O => outStream_V_data_V_1_sel_wr052_out
    );
\writeCount_1_fu_166[0]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(3),
      O => \writeCount_1_fu_166[0]_i_4_n_0\
    );
\writeCount_1_fu_166[0]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(2),
      O => \writeCount_1_fu_166[0]_i_5_n_0\
    );
\writeCount_1_fu_166[0]_i_6\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(1),
      O => \writeCount_1_fu_166[0]_i_6_n_0\
    );
\writeCount_1_fu_166[0]_i_7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(0),
      O => \writeCount_1_fu_166[0]_i_7_n_0\
    );
\writeCount_1_fu_166[12]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(15),
      O => \writeCount_1_fu_166[12]_i_2_n_0\
    );
\writeCount_1_fu_166[12]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(14),
      O => \writeCount_1_fu_166[12]_i_3_n_0\
    );
\writeCount_1_fu_166[12]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(13),
      O => \writeCount_1_fu_166[12]_i_4_n_0\
    );
\writeCount_1_fu_166[12]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(12),
      O => \writeCount_1_fu_166[12]_i_5_n_0\
    );
\writeCount_1_fu_166[16]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(19),
      O => \writeCount_1_fu_166[16]_i_2_n_0\
    );
\writeCount_1_fu_166[16]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(18),
      O => \writeCount_1_fu_166[16]_i_3_n_0\
    );
\writeCount_1_fu_166[16]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(17),
      O => \writeCount_1_fu_166[16]_i_4_n_0\
    );
\writeCount_1_fu_166[16]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(16),
      O => \writeCount_1_fu_166[16]_i_5_n_0\
    );
\writeCount_1_fu_166[20]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(23),
      O => \writeCount_1_fu_166[20]_i_2_n_0\
    );
\writeCount_1_fu_166[20]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(22),
      O => \writeCount_1_fu_166[20]_i_3_n_0\
    );
\writeCount_1_fu_166[20]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(21),
      O => \writeCount_1_fu_166[20]_i_4_n_0\
    );
\writeCount_1_fu_166[20]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(20),
      O => \writeCount_1_fu_166[20]_i_5_n_0\
    );
\writeCount_1_fu_166[24]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(27),
      O => \writeCount_1_fu_166[24]_i_2_n_0\
    );
\writeCount_1_fu_166[24]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(26),
      O => \writeCount_1_fu_166[24]_i_3_n_0\
    );
\writeCount_1_fu_166[24]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(25),
      O => \writeCount_1_fu_166[24]_i_4_n_0\
    );
\writeCount_1_fu_166[24]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(24),
      O => \writeCount_1_fu_166[24]_i_5_n_0\
    );
\writeCount_1_fu_166[28]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(31),
      O => \writeCount_1_fu_166[28]_i_2_n_0\
    );
\writeCount_1_fu_166[28]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(30),
      O => \writeCount_1_fu_166[28]_i_3_n_0\
    );
\writeCount_1_fu_166[28]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(29),
      O => \writeCount_1_fu_166[28]_i_4_n_0\
    );
\writeCount_1_fu_166[28]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(28),
      O => \writeCount_1_fu_166[28]_i_5_n_0\
    );
\writeCount_1_fu_166[4]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(7),
      O => \writeCount_1_fu_166[4]_i_2_n_0\
    );
\writeCount_1_fu_166[4]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(6),
      O => \writeCount_1_fu_166[4]_i_3_n_0\
    );
\writeCount_1_fu_166[4]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(5),
      O => \writeCount_1_fu_166[4]_i_4_n_0\
    );
\writeCount_1_fu_166[4]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(4),
      O => \writeCount_1_fu_166[4]_i_5_n_0\
    );
\writeCount_1_fu_166[8]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(11),
      O => \writeCount_1_fu_166[8]_i_2_n_0\
    );
\writeCount_1_fu_166[8]_i_3\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(10),
      O => \writeCount_1_fu_166[8]_i_3_n_0\
    );
\writeCount_1_fu_166[8]_i_4\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(9),
      O => \writeCount_1_fu_166[8]_i_4_n_0\
    );
\writeCount_1_fu_166[8]_i_5\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => writeCount_1_fu_166_reg(8),
      O => \writeCount_1_fu_166[8]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[0]_i_3_n_7\,
      Q => writeCount_1_fu_166_reg(0),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[0]_i_3\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \writeCount_1_fu_166_reg[0]_i_3_n_0\,
      CO(2) => \writeCount_1_fu_166_reg[0]_i_3_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[0]_i_3_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[0]_i_3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0001",
      O(3) => \writeCount_1_fu_166_reg[0]_i_3_n_4\,
      O(2) => \writeCount_1_fu_166_reg[0]_i_3_n_5\,
      O(1) => \writeCount_1_fu_166_reg[0]_i_3_n_6\,
      O(0) => \writeCount_1_fu_166_reg[0]_i_3_n_7\,
      S(3) => \writeCount_1_fu_166[0]_i_4_n_0\,
      S(2) => \writeCount_1_fu_166[0]_i_5_n_0\,
      S(1) => \writeCount_1_fu_166[0]_i_6_n_0\,
      S(0) => \writeCount_1_fu_166[0]_i_7_n_0\
    );
\writeCount_1_fu_166_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[8]_i_1_n_5\,
      Q => writeCount_1_fu_166_reg(10),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[8]_i_1_n_4\,
      Q => writeCount_1_fu_166_reg(11),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[12]_i_1_n_7\,
      Q => writeCount_1_fu_166_reg(12),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeCount_1_fu_166_reg[8]_i_1_n_0\,
      CO(3) => \writeCount_1_fu_166_reg[12]_i_1_n_0\,
      CO(2) => \writeCount_1_fu_166_reg[12]_i_1_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[12]_i_1_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeCount_1_fu_166_reg[12]_i_1_n_4\,
      O(2) => \writeCount_1_fu_166_reg[12]_i_1_n_5\,
      O(1) => \writeCount_1_fu_166_reg[12]_i_1_n_6\,
      O(0) => \writeCount_1_fu_166_reg[12]_i_1_n_7\,
      S(3) => \writeCount_1_fu_166[12]_i_2_n_0\,
      S(2) => \writeCount_1_fu_166[12]_i_3_n_0\,
      S(1) => \writeCount_1_fu_166[12]_i_4_n_0\,
      S(0) => \writeCount_1_fu_166[12]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[12]_i_1_n_6\,
      Q => writeCount_1_fu_166_reg(13),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[12]_i_1_n_5\,
      Q => writeCount_1_fu_166_reg(14),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[12]_i_1_n_4\,
      Q => writeCount_1_fu_166_reg(15),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[16]_i_1_n_7\,
      Q => writeCount_1_fu_166_reg(16),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeCount_1_fu_166_reg[12]_i_1_n_0\,
      CO(3) => \writeCount_1_fu_166_reg[16]_i_1_n_0\,
      CO(2) => \writeCount_1_fu_166_reg[16]_i_1_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[16]_i_1_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeCount_1_fu_166_reg[16]_i_1_n_4\,
      O(2) => \writeCount_1_fu_166_reg[16]_i_1_n_5\,
      O(1) => \writeCount_1_fu_166_reg[16]_i_1_n_6\,
      O(0) => \writeCount_1_fu_166_reg[16]_i_1_n_7\,
      S(3) => \writeCount_1_fu_166[16]_i_2_n_0\,
      S(2) => \writeCount_1_fu_166[16]_i_3_n_0\,
      S(1) => \writeCount_1_fu_166[16]_i_4_n_0\,
      S(0) => \writeCount_1_fu_166[16]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[16]_i_1_n_6\,
      Q => writeCount_1_fu_166_reg(17),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[16]_i_1_n_5\,
      Q => writeCount_1_fu_166_reg(18),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[16]_i_1_n_4\,
      Q => writeCount_1_fu_166_reg(19),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[0]_i_3_n_6\,
      Q => writeCount_1_fu_166_reg(1),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[20]_i_1_n_7\,
      Q => writeCount_1_fu_166_reg(20),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeCount_1_fu_166_reg[16]_i_1_n_0\,
      CO(3) => \writeCount_1_fu_166_reg[20]_i_1_n_0\,
      CO(2) => \writeCount_1_fu_166_reg[20]_i_1_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[20]_i_1_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeCount_1_fu_166_reg[20]_i_1_n_4\,
      O(2) => \writeCount_1_fu_166_reg[20]_i_1_n_5\,
      O(1) => \writeCount_1_fu_166_reg[20]_i_1_n_6\,
      O(0) => \writeCount_1_fu_166_reg[20]_i_1_n_7\,
      S(3) => \writeCount_1_fu_166[20]_i_2_n_0\,
      S(2) => \writeCount_1_fu_166[20]_i_3_n_0\,
      S(1) => \writeCount_1_fu_166[20]_i_4_n_0\,
      S(0) => \writeCount_1_fu_166[20]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[20]_i_1_n_6\,
      Q => writeCount_1_fu_166_reg(21),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[20]_i_1_n_5\,
      Q => writeCount_1_fu_166_reg(22),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[20]_i_1_n_4\,
      Q => writeCount_1_fu_166_reg(23),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[24]_i_1_n_7\,
      Q => writeCount_1_fu_166_reg(24),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeCount_1_fu_166_reg[20]_i_1_n_0\,
      CO(3) => \writeCount_1_fu_166_reg[24]_i_1_n_0\,
      CO(2) => \writeCount_1_fu_166_reg[24]_i_1_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[24]_i_1_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeCount_1_fu_166_reg[24]_i_1_n_4\,
      O(2) => \writeCount_1_fu_166_reg[24]_i_1_n_5\,
      O(1) => \writeCount_1_fu_166_reg[24]_i_1_n_6\,
      O(0) => \writeCount_1_fu_166_reg[24]_i_1_n_7\,
      S(3) => \writeCount_1_fu_166[24]_i_2_n_0\,
      S(2) => \writeCount_1_fu_166[24]_i_3_n_0\,
      S(1) => \writeCount_1_fu_166[24]_i_4_n_0\,
      S(0) => \writeCount_1_fu_166[24]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[24]_i_1_n_6\,
      Q => writeCount_1_fu_166_reg(25),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[24]_i_1_n_5\,
      Q => writeCount_1_fu_166_reg(26),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[24]_i_1_n_4\,
      Q => writeCount_1_fu_166_reg(27),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[28]_i_1_n_7\,
      Q => writeCount_1_fu_166_reg(28),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeCount_1_fu_166_reg[24]_i_1_n_0\,
      CO(3) => \NLW_writeCount_1_fu_166_reg[28]_i_1_CO_UNCONNECTED\(3),
      CO(2) => \writeCount_1_fu_166_reg[28]_i_1_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[28]_i_1_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeCount_1_fu_166_reg[28]_i_1_n_4\,
      O(2) => \writeCount_1_fu_166_reg[28]_i_1_n_5\,
      O(1) => \writeCount_1_fu_166_reg[28]_i_1_n_6\,
      O(0) => \writeCount_1_fu_166_reg[28]_i_1_n_7\,
      S(3) => \writeCount_1_fu_166[28]_i_2_n_0\,
      S(2) => \writeCount_1_fu_166[28]_i_3_n_0\,
      S(1) => \writeCount_1_fu_166[28]_i_4_n_0\,
      S(0) => \writeCount_1_fu_166[28]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[28]_i_1_n_6\,
      Q => writeCount_1_fu_166_reg(29),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[0]_i_3_n_5\,
      Q => writeCount_1_fu_166_reg(2),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[28]_i_1_n_5\,
      Q => writeCount_1_fu_166_reg(30),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[28]_i_1_n_4\,
      Q => writeCount_1_fu_166_reg(31),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[0]_i_3_n_4\,
      Q => writeCount_1_fu_166_reg(3),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[4]_i_1_n_7\,
      Q => writeCount_1_fu_166_reg(4),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeCount_1_fu_166_reg[0]_i_3_n_0\,
      CO(3) => \writeCount_1_fu_166_reg[4]_i_1_n_0\,
      CO(2) => \writeCount_1_fu_166_reg[4]_i_1_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[4]_i_1_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeCount_1_fu_166_reg[4]_i_1_n_4\,
      O(2) => \writeCount_1_fu_166_reg[4]_i_1_n_5\,
      O(1) => \writeCount_1_fu_166_reg[4]_i_1_n_6\,
      O(0) => \writeCount_1_fu_166_reg[4]_i_1_n_7\,
      S(3) => \writeCount_1_fu_166[4]_i_2_n_0\,
      S(2) => \writeCount_1_fu_166[4]_i_3_n_0\,
      S(1) => \writeCount_1_fu_166[4]_i_4_n_0\,
      S(0) => \writeCount_1_fu_166[4]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[4]_i_1_n_6\,
      Q => writeCount_1_fu_166_reg(5),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[4]_i_1_n_5\,
      Q => writeCount_1_fu_166_reg(6),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[4]_i_1_n_4\,
      Q => writeCount_1_fu_166_reg(7),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[8]_i_1_n_7\,
      Q => writeCount_1_fu_166_reg(8),
      R => writeCount_1_fu_166
    );
\writeCount_1_fu_166_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \writeCount_1_fu_166_reg[4]_i_1_n_0\,
      CO(3) => \writeCount_1_fu_166_reg[8]_i_1_n_0\,
      CO(2) => \writeCount_1_fu_166_reg[8]_i_1_n_1\,
      CO(1) => \writeCount_1_fu_166_reg[8]_i_1_n_2\,
      CO(0) => \writeCount_1_fu_166_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \writeCount_1_fu_166_reg[8]_i_1_n_4\,
      O(2) => \writeCount_1_fu_166_reg[8]_i_1_n_5\,
      O(1) => \writeCount_1_fu_166_reg[8]_i_1_n_6\,
      O(0) => \writeCount_1_fu_166_reg[8]_i_1_n_7\,
      S(3) => \writeCount_1_fu_166[8]_i_2_n_0\,
      S(2) => \writeCount_1_fu_166[8]_i_3_n_0\,
      S(1) => \writeCount_1_fu_166[8]_i_4_n_0\,
      S(0) => \writeCount_1_fu_166[8]_i_5_n_0\
    );
\writeCount_1_fu_166_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => outStream_V_data_V_1_sel_wr052_out,
      D => \writeCount_1_fu_166_reg[8]_i_1_n_6\,
      Q => writeCount_1_fu_166_reg(9),
      R => writeCount_1_fu_166
    );
\x1_reg_301_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_1_U_n_64,
      D => \x_2_reg_908_reg__0\(0),
      Q => x1_reg_301(0),
      R => ap_CS_fsm_state4
    );
\x1_reg_301_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_1_U_n_64,
      D => \x_2_reg_908_reg__0\(1),
      Q => x1_reg_301(1),
      R => ap_CS_fsm_state4
    );
\x1_reg_301_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_1_U_n_64,
      D => \x_2_reg_908_reg__0\(2),
      Q => x1_reg_301(2),
      R => ap_CS_fsm_state4
    );
\x1_reg_301_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_1_U_n_64,
      D => \x_2_reg_908_reg__0\(3),
      Q => x1_reg_301(3),
      R => ap_CS_fsm_state4
    );
\x1_reg_301_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_1_U_n_64,
      D => \x_2_reg_908_reg__0\(4),
      Q => x1_reg_301(4),
      R => ap_CS_fsm_state4
    );
\x4_reg_359[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x4_reg_359(0),
      O => tmp_5_cast_fu_548_p1(0)
    );
\x4_reg_359[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => x4_reg_359(1),
      I1 => x4_reg_359(0),
      O => x_3_fu_560_p2(1)
    );
\x4_reg_359_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_3130,
      D => tmp_5_cast_fu_548_p1(0),
      Q => x4_reg_359(0),
      S => ap_CS_fsm_state7
    );
\x4_reg_359_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => indvar_flatten_reg_3130,
      D => x_3_fu_560_p2(1),
      Q => x4_reg_359(1),
      R => ap_CS_fsm_state7
    );
\x_1_reg_899[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"45557555"
    )
        port map (
      I0 => \x_reg_289_reg_n_0_[0]\,
      I1 => \exitcond1_reg_895_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => ap_CS_fsm_pp0_stage0,
      I4 => \x_1_reg_899_reg__0\(0),
      O => x_1_fu_438_p2(0)
    );
\x_1_reg_899[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => \x_reg_289_reg_n_0_[1]\,
      I1 => \x_1_reg_899_reg__0\(1),
      I2 => \x_reg_289_reg_n_0_[0]\,
      I3 => \x_1_reg_899[3]_i_4_n_0\,
      I4 => \x_1_reg_899_reg__0\(0),
      O => x_1_fu_438_p2(1)
    );
\x_1_reg_899[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"77885F5F7788A0A0"
    )
        port map (
      I0 => \x_1_reg_899[2]_i_2_n_0\,
      I1 => \x_1_reg_899_reg__0\(1),
      I2 => \x_reg_289_reg_n_0_[1]\,
      I3 => \x_1_reg_899_reg__0\(2),
      I4 => \x_1_reg_899[3]_i_4_n_0\,
      I5 => \x_reg_289_reg_n_0_[2]\,
      O => \x_1_reg_899[2]_i_1_n_0\
    );
\x_1_reg_899[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFBF0080"
    )
        port map (
      I0 => \x_1_reg_899_reg__0\(0),
      I1 => ap_CS_fsm_pp0_stage0,
      I2 => ap_enable_reg_pp0_iter1,
      I3 => \exitcond1_reg_895_reg_n_0_[0]\,
      I4 => \x_reg_289_reg_n_0_[0]\,
      O => \x_1_reg_899[2]_i_2_n_0\
    );
\x_1_reg_899[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080808080008080"
    )
        port map (
      I0 => ap_enable_reg_pp0_iter0,
      I1 => \ap_CS_fsm[2]_i_2_n_0\,
      I2 => ap_CS_fsm_pp0_stage0,
      I3 => \exitcond1_reg_895_reg_n_0_[0]\,
      I4 => ap_enable_reg_pp0_iter1,
      I5 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      O => x_1_reg_8990
    );
\x_1_reg_899[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"3F3F5FA0C0C05FA0"
    )
        port map (
      I0 => \x_reg_289_reg_n_0_[2]\,
      I1 => \x_1_reg_899_reg__0\(2),
      I2 => \x_1_reg_899[3]_i_3_n_0\,
      I3 => \x_reg_289_reg_n_0_[3]\,
      I4 => \x_1_reg_899[3]_i_4_n_0\,
      I5 => \x_1_reg_899_reg__0\(3),
      O => x_1_fu_438_p2(3)
    );
\x_1_reg_899[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCA000A0"
    )
        port map (
      I0 => \x_reg_289_reg_n_0_[1]\,
      I1 => \x_1_reg_899_reg__0\(1),
      I2 => \x_reg_289_reg_n_0_[0]\,
      I3 => \x_1_reg_899[3]_i_4_n_0\,
      I4 => \x_1_reg_899_reg__0\(0),
      O => \x_1_reg_899[3]_i_3_n_0\
    );
\x_1_reg_899[3]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_CS_fsm_pp0_stage0,
      I1 => ap_enable_reg_pp0_iter1,
      I2 => \exitcond1_reg_895_reg_n_0_[0]\,
      O => \x_1_reg_899[3]_i_4_n_0\
    );
\x_1_reg_899_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_1_reg_8990,
      D => x_1_fu_438_p2(0),
      Q => \x_1_reg_899_reg__0\(0),
      R => '0'
    );
\x_1_reg_899_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_1_reg_8990,
      D => x_1_fu_438_p2(1),
      Q => \x_1_reg_899_reg__0\(1),
      R => '0'
    );
\x_1_reg_899_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_1_reg_8990,
      D => \x_1_reg_899[2]_i_1_n_0\,
      Q => \x_1_reg_899_reg__0\(2),
      R => '0'
    );
\x_1_reg_899_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_1_reg_8990,
      D => x_1_fu_438_p2(3),
      Q => \x_1_reg_899_reg__0\(3),
      R => '0'
    );
\x_2_reg_908[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0040FF7F"
    )
        port map (
      I0 => \x_2_reg_908_reg__0\(0),
      I1 => ap_CS_fsm_pp1_stage0,
      I2 => ap_enable_reg_pp1_iter1,
      I3 => \exitcond4_reg_904_reg_n_0_[0]\,
      I4 => x1_reg_301(0),
      O => x_2_fu_459_p2(0)
    );
\x_2_reg_908[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335ACC5A"
    )
        port map (
      I0 => x1_reg_301(0),
      I1 => \x_2_reg_908_reg__0\(0),
      I2 => x1_reg_301(1),
      I3 => \x_2_reg_908[4]_i_4_n_0\,
      I4 => \x_2_reg_908_reg__0\(1),
      O => x_2_fu_459_p2(1)
    );
\x_2_reg_908[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F30C0A0AF30C"
    )
        port map (
      I0 => \x_2_reg_908_reg__0\(1),
      I1 => x1_reg_301(1),
      I2 => x_2_fu_459_p2(0),
      I3 => x1_reg_301(2),
      I4 => \x_2_reg_908[4]_i_4_n_0\,
      I5 => \x_2_reg_908_reg__0\(2),
      O => x_2_fu_459_p2(2)
    );
\x_2_reg_908[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F30C0A0AF30C"
    )
        port map (
      I0 => \x_2_reg_908_reg__0\(2),
      I1 => x1_reg_301(2),
      I2 => \x_2_reg_908[3]_i_2_n_0\,
      I3 => x1_reg_301(3),
      I4 => \x_2_reg_908[4]_i_4_n_0\,
      I5 => \x_2_reg_908_reg__0\(3),
      O => x_2_fu_459_p2(3)
    );
\x_2_reg_908[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"335FFF5F"
    )
        port map (
      I0 => x1_reg_301(0),
      I1 => \x_2_reg_908_reg__0\(0),
      I2 => x1_reg_301(1),
      I3 => \x_2_reg_908[4]_i_4_n_0\,
      I4 => \x_2_reg_908_reg__0\(1),
      O => \x_2_reg_908[3]_i_2_n_0\
    );
\x_2_reg_908[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA8A0000"
    )
        port map (
      I0 => ap_enable_reg_pp1_iter0,
      I1 => \inStream_V_data_V_0_state_reg_n_0_[0]\,
      I2 => ap_enable_reg_pp1_iter1,
      I3 => \exitcond4_reg_904_reg_n_0_[0]\,
      I4 => ap_CS_fsm_pp1_stage0,
      O => x_2_reg_9080
    );
\x_2_reg_908[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F30C0A0AF30C"
    )
        port map (
      I0 => \x_2_reg_908_reg__0\(3),
      I1 => x1_reg_301(3),
      I2 => \x_2_reg_908[4]_i_3_n_0\,
      I3 => x1_reg_301(4),
      I4 => \x_2_reg_908[4]_i_4_n_0\,
      I5 => \x_2_reg_908_reg__0\(4),
      O => x_2_fu_459_p2(4)
    );
\x_2_reg_908[4]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F5F5F3FFFFFFF3FF"
    )
        port map (
      I0 => \x_2_reg_908_reg__0\(1),
      I1 => x1_reg_301(1),
      I2 => x_2_fu_459_p2(0),
      I3 => x1_reg_301(2),
      I4 => \x_2_reg_908[4]_i_4_n_0\,
      I5 => \x_2_reg_908_reg__0\(2),
      O => \x_2_reg_908[4]_i_3_n_0\
    );
\x_2_reg_908[4]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => ap_CS_fsm_pp1_stage0,
      I1 => ap_enable_reg_pp1_iter1,
      I2 => \exitcond4_reg_904_reg_n_0_[0]\,
      O => \x_2_reg_908[4]_i_4_n_0\
    );
\x_2_reg_908_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_2_reg_9080,
      D => x_2_fu_459_p2(0),
      Q => \x_2_reg_908_reg__0\(0),
      R => '0'
    );
\x_2_reg_908_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_2_reg_9080,
      D => x_2_fu_459_p2(1),
      Q => \x_2_reg_908_reg__0\(1),
      R => '0'
    );
\x_2_reg_908_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_2_reg_9080,
      D => x_2_fu_459_p2(2),
      Q => \x_2_reg_908_reg__0\(2),
      R => '0'
    );
\x_2_reg_908_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_2_reg_9080,
      D => x_2_fu_459_p2(3),
      Q => \x_2_reg_908_reg__0\(3),
      R => '0'
    );
\x_2_reg_908_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => x_2_reg_9080,
      D => x_2_fu_459_p2(4),
      Q => \x_2_reg_908_reg__0\(4),
      R => '0'
    );
\x_assign_reg_392[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => x_assign_reg_392(0),
      O => x_4_fu_694_p2(0)
    );
\x_assign_reg_392[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => x_assign_reg_392(0),
      I1 => x_assign_reg_392(1),
      O => x_4_fu_694_p2(1)
    );
\x_assign_reg_392[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"33CCCC4C"
    )
        port map (
      I0 => x_assign_reg_392(4),
      I1 => x_assign_reg_392(2),
      I2 => x_assign_reg_392(3),
      I3 => x_assign_reg_392(1),
      I4 => x_assign_reg_392(0),
      O => x_4_fu_694_p2(2)
    );
\x_assign_reg_392[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CC4CCCC"
    )
        port map (
      I0 => x_assign_reg_392(4),
      I1 => x_assign_reg_392(3),
      I2 => x_assign_reg_392(0),
      I3 => x_assign_reg_392(1),
      I4 => x_assign_reg_392(2),
      O => x_4_fu_694_p2(3)
    );
\x_assign_reg_392[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => ap_CS_fsm_state10,
      I1 => \x_assign_reg_392[4]_i_2_n_0\,
      O => indvar_flatten6_reg_370
    );
\x_assign_reg_392[4]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0040"
    )
        port map (
      I0 => \x_assign_reg_392[4]_i_4_n_0\,
      I1 => ap_CS_fsm_pp3_stage0,
      I2 => ap_enable_reg_pp3_iter0,
      I3 => lineBuffer_0_U_n_35,
      O => \x_assign_reg_392[4]_i_2_n_0\
    );
\x_assign_reg_392[4]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7DFF8000"
    )
        port map (
      I0 => x_assign_reg_392(2),
      I1 => x_assign_reg_392(1),
      I2 => x_assign_reg_392(0),
      I3 => x_assign_reg_392(3),
      I4 => x_assign_reg_392(4),
      O => \x_assign_reg_392[4]_i_3_n_0\
    );
\x_assign_reg_392[4]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(2),
      I1 => \indvar_flatten6_reg_370_reg__0\(0),
      I2 => \x_assign_reg_392[4]_i_5_n_0\,
      I3 => \x_assign_reg_392[4]_i_6_n_0\,
      I4 => \indvar_flatten6_reg_370_reg__0\(8),
      I5 => \indvar_flatten6_reg_370_reg__0\(4),
      O => \x_assign_reg_392[4]_i_4_n_0\
    );
\x_assign_reg_392[4]_i_5\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(5),
      I1 => \indvar_flatten6_reg_370_reg__0\(1),
      I2 => \indvar_flatten6_reg_370_reg__0\(7),
      I3 => \indvar_flatten6_reg_370_reg__0\(6),
      O => \x_assign_reg_392[4]_i_5_n_0\
    );
\x_assign_reg_392[4]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \indvar_flatten6_reg_370_reg__0\(3),
      I1 => \indvar_flatten6_reg_370_reg__0\(9),
      O => \x_assign_reg_392[4]_i_6_n_0\
    );
\x_assign_reg_392_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => x_4_fu_694_p2(0),
      Q => x_assign_reg_392(0),
      R => indvar_flatten6_reg_370
    );
\x_assign_reg_392_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => x_4_fu_694_p2(1),
      Q => x_assign_reg_392(1),
      R => indvar_flatten6_reg_370
    );
\x_assign_reg_392_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => x_4_fu_694_p2(2),
      Q => x_assign_reg_392(2),
      R => indvar_flatten6_reg_370
    );
\x_assign_reg_392_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => x_4_fu_694_p2(3),
      Q => x_assign_reg_392(3),
      R => indvar_flatten6_reg_370
    );
\x_assign_reg_392_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => \x_assign_reg_392[4]_i_2_n_0\,
      D => \x_assign_reg_392[4]_i_3_n_0\,
      Q => x_assign_reg_392(4),
      R => indvar_flatten6_reg_370
    );
\x_reg_289_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_U_n_33,
      D => \x_1_reg_899_reg__0\(0),
      Q => \x_reg_289_reg_n_0_[0]\,
      R => x_reg_289
    );
\x_reg_289_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_U_n_33,
      D => \x_1_reg_899_reg__0\(1),
      Q => \x_reg_289_reg_n_0_[1]\,
      S => x_reg_289
    );
\x_reg_289_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_U_n_33,
      D => \x_1_reg_899_reg__0\(2),
      Q => \x_reg_289_reg_n_0_[2]\,
      R => x_reg_289
    );
\x_reg_289_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => ap_clk,
      CE => lineBuffer_0_U_n_33,
      D => \x_1_reg_899_reg__0\(3),
      Q => \x_reg_289_reg_n_0_[3]\,
      S => x_reg_289
    );
\y3_reg_324[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAAEAAA2A"
    )
        port map (
      I0 => y3_reg_324(0),
      I1 => ap_CS_fsm_pp2_stage0,
      I2 => ap_enable_reg_pp2_iter1,
      I3 => exitcond_flatten_reg_913,
      I4 => tmp_3_mid2_v_reg_922(0),
      I5 => ap_CS_fsm_state7,
      O => \y3_reg_324[0]_i_1_n_0\
    );
\y3_reg_324[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAEAAA2A"
    )
        port map (
      I0 => y3_reg_324(1),
      I1 => ap_CS_fsm_pp2_stage0,
      I2 => ap_enable_reg_pp2_iter1,
      I3 => exitcond_flatten_reg_913,
      I4 => tmp_3_mid2_v_reg_922(1),
      I5 => ap_CS_fsm_state7,
      O => \y3_reg_324[1]_i_1_n_0\
    );
\y3_reg_324_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \y3_reg_324[0]_i_1_n_0\,
      Q => y3_reg_324(0),
      R => '0'
    );
\y3_reg_324_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \y3_reg_324[1]_i_1_n_0\,
      Q => y3_reg_324(1),
      R => '0'
    );
\y_assign_cast7_mid2_s_reg_1027[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6665FFFF666A0000"
    )
        port map (
      I0 => lineBuffer_1_U_n_70,
      I1 => \y_assign_reg_381_reg_n_0_[0]\,
      I2 => \tmp_reg_1032[0]_i_3_n_0\,
      I3 => \exitcond_flatten8_reg_1018_reg_n_0_[0]\,
      I4 => \x_assign_reg_392[4]_i_2_n_0\,
      I5 => y_assign_cast7_mid2_s_reg_1027_reg(0),
      O => \y_assign_cast7_mid2_s_reg_1027[0]_i_1_n_0\
    );
\y_assign_cast7_mid2_s_reg_1027_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \y_assign_cast7_mid2_s_reg_1027[0]_i_1_n_0\,
      Q => y_assign_cast7_mid2_s_reg_1027_reg(0),
      R => '0'
    );
\y_assign_reg_381[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"C0CA"
    )
        port map (
      I0 => \y_assign_reg_381_reg_n_0_[0]\,
      I1 => y_assign_cast7_mid2_s_reg_1027_reg(0),
      I2 => lineBuffer_0_we1,
      I3 => ap_CS_fsm_state10,
      O => \y_assign_reg_381[0]_i_1_n_0\
    );
\y_assign_reg_381_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => ap_clk,
      CE => '1',
      D => \y_assign_reg_381[0]_i_1_n_0\,
      Q => \y_assign_reg_381_reg_n_0_[0]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    s_axi_CTRL_AWADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_AWVALID : in STD_LOGIC;
    s_axi_CTRL_AWREADY : out STD_LOGIC;
    s_axi_CTRL_WDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_WSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_CTRL_WVALID : in STD_LOGIC;
    s_axi_CTRL_WREADY : out STD_LOGIC;
    s_axi_CTRL_BRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_BVALID : out STD_LOGIC;
    s_axi_CTRL_BREADY : in STD_LOGIC;
    s_axi_CTRL_ARADDR : in STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_CTRL_ARVALID : in STD_LOGIC;
    s_axi_CTRL_ARREADY : out STD_LOGIC;
    s_axi_CTRL_RDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_CTRL_RRESP : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_CTRL_RVALID : out STD_LOGIC;
    s_axi_CTRL_RREADY : in STD_LOGIC;
    ap_clk : in STD_LOGIC;
    ap_rst_n : in STD_LOGIC;
    interrupt : out STD_LOGIC;
    inStream_TVALID : in STD_LOGIC;
    inStream_TREADY : out STD_LOGIC;
    inStream_TDATA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    inStream_TDEST : in STD_LOGIC_VECTOR ( 5 downto 0 );
    inStream_TKEEP : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TSTRB : in STD_LOGIC_VECTOR ( 3 downto 0 );
    inStream_TUSER : in STD_LOGIC_VECTOR ( 1 downto 0 );
    inStream_TLAST : in STD_LOGIC_VECTOR ( 0 to 0 );
    inStream_TID : in STD_LOGIC_VECTOR ( 4 downto 0 );
    outStream_TVALID : out STD_LOGIC;
    outStream_TREADY : in STD_LOGIC;
    outStream_TDATA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    outStream_TDEST : out STD_LOGIC_VECTOR ( 5 downto 0 );
    outStream_TKEEP : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TSTRB : out STD_LOGIC_VECTOR ( 3 downto 0 );
    outStream_TUSER : out STD_LOGIC_VECTOR ( 1 downto 0 );
    outStream_TLAST : out STD_LOGIC_VECTOR ( 0 to 0 );
    outStream_TID : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_cnn_pool_d28x28_p2x2_0_0,cnn_pool_d28x28_p2x2,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cnn_pool_d28x28_p2x2,Vivado 2016.4";
  attribute hls_module : string;
  attribute hls_module of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  attribute C_S_AXI_CTRL_ADDR_WIDTH : integer;
  attribute C_S_AXI_CTRL_ADDR_WIDTH of inst : label is 5;
  attribute C_S_AXI_CTRL_DATA_WIDTH : integer;
  attribute C_S_AXI_CTRL_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH : integer;
  attribute C_S_AXI_CTRL_WSTRB_WIDTH of inst : label is 4;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_S_AXI_WSTRB_WIDTH : integer;
  attribute C_S_AXI_WSTRB_WIDTH of inst : label is 4;
  attribute ap_ST_fsm_pp0_stage0 : string;
  attribute ap_ST_fsm_pp0_stage0 of inst : label is "9'b000000010";
  attribute ap_ST_fsm_pp1_stage0 : string;
  attribute ap_ST_fsm_pp1_stage0 of inst : label is "9'b000001000";
  attribute ap_ST_fsm_pp2_stage0 : string;
  attribute ap_ST_fsm_pp2_stage0 of inst : label is "9'b000100000";
  attribute ap_ST_fsm_pp3_stage0 : string;
  attribute ap_ST_fsm_pp3_stage0 of inst : label is "9'b010000000";
  attribute ap_ST_fsm_state1 : string;
  attribute ap_ST_fsm_state1 of inst : label is "9'b000000001";
  attribute ap_ST_fsm_state10 : string;
  attribute ap_ST_fsm_state10 of inst : label is "9'b001000000";
  attribute ap_ST_fsm_state15 : string;
  attribute ap_ST_fsm_state15 of inst : label is "9'b100000000";
  attribute ap_ST_fsm_state4 : string;
  attribute ap_ST_fsm_state4 of inst : label is "9'b000000100";
  attribute ap_ST_fsm_state7 : string;
  attribute ap_ST_fsm_state7 of inst : label is "9'b000010000";
  attribute ap_const_int64_8 : integer;
  attribute ap_const_int64_8 of inst : label is 8;
  attribute ap_const_lv10_0 : string;
  attribute ap_const_lv10_0 of inst : label is "10'b0000000000";
  attribute ap_const_lv10_1 : string;
  attribute ap_const_lv10_1 of inst : label is "10'b0000000001";
  attribute ap_const_lv10_310 : string;
  attribute ap_const_lv10_310 of inst : label is "10'b1100010000";
  attribute ap_const_lv21_0 : string;
  attribute ap_const_lv21_0 of inst : label is "21'b000000000000000000000";
  attribute ap_const_lv2_0 : string;
  attribute ap_const_lv2_0 of inst : label is "2'b00";
  attribute ap_const_lv2_1 : string;
  attribute ap_const_lv2_1 of inst : label is "2'b01";
  attribute ap_const_lv2_2 : string;
  attribute ap_const_lv2_2 of inst : label is "2'b10";
  attribute ap_const_lv2_3 : string;
  attribute ap_const_lv2_3 of inst : label is "2'b11";
  attribute ap_const_lv32_0 : integer;
  attribute ap_const_lv32_0 of inst : label is 0;
  attribute ap_const_lv32_1 : integer;
  attribute ap_const_lv32_1 of inst : label is 1;
  attribute ap_const_lv32_15 : integer;
  attribute ap_const_lv32_15 of inst : label is 21;
  attribute ap_const_lv32_1E : integer;
  attribute ap_const_lv32_1E of inst : label is 30;
  attribute ap_const_lv32_1F : integer;
  attribute ap_const_lv32_1F of inst : label is 31;
  attribute ap_const_lv32_2 : integer;
  attribute ap_const_lv32_2 of inst : label is 2;
  attribute ap_const_lv32_3 : integer;
  attribute ap_const_lv32_3 of inst : label is 3;
  attribute ap_const_lv32_310 : integer;
  attribute ap_const_lv32_310 of inst : label is 784;
  attribute ap_const_lv32_4 : integer;
  attribute ap_const_lv32_4 of inst : label is 4;
  attribute ap_const_lv32_5 : integer;
  attribute ap_const_lv32_5 of inst : label is 5;
  attribute ap_const_lv32_6 : integer;
  attribute ap_const_lv32_6 of inst : label is 6;
  attribute ap_const_lv32_7 : integer;
  attribute ap_const_lv32_7 of inst : label is 7;
  attribute ap_const_lv32_8 : integer;
  attribute ap_const_lv32_8 of inst : label is 8;
  attribute ap_const_lv32_C4 : integer;
  attribute ap_const_lv32_C4 of inst : label is 196;
  attribute ap_const_lv3_0 : string;
  attribute ap_const_lv3_0 of inst : label is "3'b000";
  attribute ap_const_lv3_1 : string;
  attribute ap_const_lv3_1 of inst : label is "3'b001";
  attribute ap_const_lv3_4 : string;
  attribute ap_const_lv3_4 of inst : label is "3'b100";
  attribute ap_const_lv4_0 : string;
  attribute ap_const_lv4_0 of inst : label is "4'b0000";
  attribute ap_const_lv4_1 : string;
  attribute ap_const_lv4_1 of inst : label is "4'b0001";
  attribute ap_const_lv4_A : string;
  attribute ap_const_lv4_A of inst : label is "4'b1010";
  attribute ap_const_lv4_B : string;
  attribute ap_const_lv4_B of inst : label is "4'b1011";
  attribute ap_const_lv4_C : string;
  attribute ap_const_lv4_C of inst : label is "4'b1100";
  attribute ap_const_lv4_F : string;
  attribute ap_const_lv4_F of inst : label is "4'b1111";
  attribute ap_const_lv5_0 : string;
  attribute ap_const_lv5_0 of inst : label is "5'b00000";
  attribute ap_const_lv5_1 : string;
  attribute ap_const_lv5_1 of inst : label is "5'b00001";
  attribute ap_const_lv5_1C : string;
  attribute ap_const_lv5_1C of inst : label is "5'b11100";
  attribute ap_const_lv6_0 : string;
  attribute ap_const_lv6_0 of inst : label is "6'b000000";
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_cnn_pool_d28x28_p2x2
     port map (
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      inStream_TDATA(31 downto 0) => inStream_TDATA(31 downto 0),
      inStream_TDEST(5 downto 0) => inStream_TDEST(5 downto 0),
      inStream_TID(4 downto 0) => inStream_TID(4 downto 0),
      inStream_TKEEP(3 downto 0) => inStream_TKEEP(3 downto 0),
      inStream_TLAST(0) => inStream_TLAST(0),
      inStream_TREADY => inStream_TREADY,
      inStream_TSTRB(3 downto 0) => inStream_TSTRB(3 downto 0),
      inStream_TUSER(1 downto 0) => inStream_TUSER(1 downto 0),
      inStream_TVALID => inStream_TVALID,
      interrupt => interrupt,
      outStream_TDATA(31 downto 0) => outStream_TDATA(31 downto 0),
      outStream_TDEST(5 downto 0) => outStream_TDEST(5 downto 0),
      outStream_TID(4 downto 0) => outStream_TID(4 downto 0),
      outStream_TKEEP(3 downto 0) => outStream_TKEEP(3 downto 0),
      outStream_TLAST(0) => outStream_TLAST(0),
      outStream_TREADY => outStream_TREADY,
      outStream_TSTRB(3 downto 0) => outStream_TSTRB(3 downto 0),
      outStream_TUSER(1 downto 0) => outStream_TUSER(1 downto 0),
      outStream_TVALID => outStream_TVALID,
      s_axi_CTRL_ARADDR(4 downto 0) => s_axi_CTRL_ARADDR(4 downto 0),
      s_axi_CTRL_ARREADY => s_axi_CTRL_ARREADY,
      s_axi_CTRL_ARVALID => s_axi_CTRL_ARVALID,
      s_axi_CTRL_AWADDR(4 downto 0) => s_axi_CTRL_AWADDR(4 downto 0),
      s_axi_CTRL_AWREADY => s_axi_CTRL_AWREADY,
      s_axi_CTRL_AWVALID => s_axi_CTRL_AWVALID,
      s_axi_CTRL_BREADY => s_axi_CTRL_BREADY,
      s_axi_CTRL_BRESP(1 downto 0) => s_axi_CTRL_BRESP(1 downto 0),
      s_axi_CTRL_BVALID => s_axi_CTRL_BVALID,
      s_axi_CTRL_RDATA(31 downto 0) => s_axi_CTRL_RDATA(31 downto 0),
      s_axi_CTRL_RREADY => s_axi_CTRL_RREADY,
      s_axi_CTRL_RRESP(1 downto 0) => s_axi_CTRL_RRESP(1 downto 0),
      s_axi_CTRL_RVALID => s_axi_CTRL_RVALID,
      s_axi_CTRL_WDATA(31 downto 0) => s_axi_CTRL_WDATA(31 downto 0),
      s_axi_CTRL_WREADY => s_axi_CTRL_WREADY,
      s_axi_CTRL_WSTRB(3 downto 0) => s_axi_CTRL_WSTRB(3 downto 0),
      s_axi_CTRL_WVALID => s_axi_CTRL_WVALID
    );
end STRUCTURE;
