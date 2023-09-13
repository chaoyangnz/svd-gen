const mmio = @import("./mmio.zig");

pub const devices = struct {
    pub const BL602 = struct {
        pub const peripherals = struct {
            
            /// Global register
            pub const GLB = struct {
                
                
                /// Clock configuration for processor and bus
                pub const clk_cfg0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] PLL enable
                    reg_pll_en:  u1, 
                    
                    /// [1:1] 
                    reg_fclk_en:  u1, 
                    
                    /// [2:2] MCU clock enable
                    reg_hclk_en:  u1, 
                    
                    /// [3:3] Base clock enable
                    reg_bclk_en:  u1, 
                    
                    /// [4:5] PLL clock selection (0: 48MHz, 1: 120MHz, 2: 160MHz and 3: 192MHz)
                    reg_pll_sel:  u2, 
                    
                    /// [6:7] 
                    hbn_root_clk_sel:  u2, 
                    
                    /// [8:15] MCU clock divider
                    reg_hclk_div:  u8, 
                    
                    /// [16:23] Base clock divider
                    reg_bclk_div:  u8, 
                    
                    /// [24:26] 
                    fclk_sw_state:  u3, 
                    
                    /// [27:27] 
                    chip_rdy:  u1, 
                    
                    /// [28:31] 
                    glb_id:  u4, 
                    
                }), @ptrFromInt(0x40000000));
                
                
                
                /// clk_cfg1.
                pub const clk_cfg1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] WiFi core clock divider (0: 80MHz, 1: 40MHz)
                    wifi_mac_core_div:  u4, 
                    
                    /// [4:7] WiFi encryption clock divider
                    wifi_mac_wt_div:  u4, 
                    
                    /// [8:15] 
                    res0:  u8, 
                    
                    /// [16:21] 
                    ble_clk_sel:  u6, 
                    
                    /// [22:23] 
                    res1:  u2, 
                    
                    /// [24:24] Bluetooth clock enable
                    ble_en:  u1, 
                    
                    /// [25:31] 
                    res2:  u7, 
                    
                }), @ptrFromInt(0x40000004));
                
                
                
                /// Clock configuration for UART and Flash
                pub const clk_cfg2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    uart_clk_div:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:4] 
                    uart_clk_en:  u1, 
                    
                    /// [5:6] 
                    res1:  u2, 
                    
                    /// [7:7] 
                    hbn_uart_clk_sel:  u1, 
                    
                    /// [8:10] 
                    sf_clk_div:  u3, 
                    
                    /// [11:11] 
                    sf_clk_en:  u1, 
                    
                    /// [12:13] 
                    sf_clk_sel:  u2, 
                    
                    /// [14:15] 
                    sf_clk_sel2:  u2, 
                    
                    /// [16:21] 
                    ir_clk_div:  u6, 
                    
                    /// [22:22] 
                    res2:  u1, 
                    
                    /// [23:23] 
                    ir_clk_en:  u1, 
                    
                    /// [24:31] 
                    dma_clk_en:  u8, 
                    
                }), @ptrFromInt(0x40000008));
                
                
                
                /// Clock configuration for I2C and SPI
                pub const clk_cfg3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    spi_clk_div:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:8] 
                    spi_clk_en:  u1, 
                    
                    /// [9:15] 
                    res1:  u7, 
                    
                    /// [16:23] 
                    i2c_clk_div:  u8, 
                    
                    /// [24:24] 
                    i2c_clk_en:  u1, 
                    
                    /// [25:31] 
                    res2:  u7, 
                    
                }), @ptrFromInt(0x4000000c));
                
                
                
                /// swrst_cfg0.
                pub const swrst_cfg0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    swrst_s00:  u1, 
                    
                    /// [1:1] 
                    swrst_s01:  u1, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:4] 
                    swrst_s20:  u1, 
                    
                    /// [5:7] 
                    res1:  u3, 
                    
                    /// [8:8] 
                    swrst_s30:  u1, 
                    
                    /// [9:31] 
                    res2:  u23, 
                    
                }), @ptrFromInt(0x40000010));
                
                
                
                /// swrst_cfg1.
                pub const swrst_cfg1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    swrst_s10:  u1, 
                    
                    /// [1:1] 
                    swrst_s11:  u1, 
                    
                    /// [2:2] 
                    swrst_s12:  u1, 
                    
                    /// [3:3] 
                    swrst_s13:  u1, 
                    
                    /// [4:4] 
                    swrst_s14:  u1, 
                    
                    /// [5:5] 
                    swrst_s15:  u1, 
                    
                    /// [6:6] 
                    swrst_s16:  u1, 
                    
                    /// [7:7] 
                    swrst_s17:  u1, 
                    
                    /// [8:8] 
                    swrst_s18:  u1, 
                    
                    /// [9:9] 
                    swrst_s19:  u1, 
                    
                    /// [10:10] 
                    swrst_s1a:  u1, 
                    
                    /// [11:11] 
                    swrst_s1b:  u1, 
                    
                    /// [12:12] 
                    swrst_s1c:  u1, 
                    
                    /// [13:13] 
                    swrst_s1d:  u1, 
                    
                    /// [14:14] 
                    swrst_s1e:  u1, 
                    
                    /// [15:15] 
                    swrst_s1f:  u1, 
                    
                    /// [16:16] 
                    swrst_s1a0:  u1, 
                    
                    /// [17:17] 
                    swrst_s1a1:  u1, 
                    
                    /// [18:18] 
                    swrst_s1a2:  u1, 
                    
                    /// [19:19] 
                    swrst_s1a3:  u1, 
                    
                    /// [20:20] 
                    swrst_s1a4:  u1, 
                    
                    /// [21:21] 
                    swrst_s1a5:  u1, 
                    
                    /// [22:22] 
                    swrst_s1a6:  u1, 
                    
                    /// [23:23] 
                    swrst_s1a7:  u1, 
                    
                    /// [24:31] 
                    res0:  u8, 
                    
                }), @ptrFromInt(0x40000014));
                
                
                
                /// swrst_cfg2.
                pub const swrst_cfg2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    reg_ctrl_pwron_rst:  u1, 
                    
                    /// [1:1] 
                    reg_ctrl_cpu_reset:  u1, 
                    
                    /// [2:2] 
                    reg_ctrl_sys_reset:  u1, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:7] 
                    reg_ctrl_reset_dummy:  u4, 
                    
                    /// [8:23] 
                    res1:  u16, 
                    
                    /// [24:24] 
                    pka_clk_sel:  u1, 
                    
                    /// [25:31] 
                    res2:  u7, 
                    
                }), @ptrFromInt(0x40000018));
                
                
                
                /// swrst_cfg3.
                pub const swrst_cfg3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x4000001c));
                
                
                
                /// cgen_cfg0.
                pub const cgen_cfg0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cgen_m:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x40000020));
                
                
                
                /// cgen_cfg1.
                pub const cgen_cfg1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    cgen_s1:  u16, 
                    
                    /// [16:23] 
                    cgen_s1a:  u8, 
                    
                    /// [24:31] 
                    res0:  u8, 
                    
                }), @ptrFromInt(0x40000024));
                
                
                
                /// cgen_cfg2.
                pub const cgen_cfg2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cgen_s2:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    cgen_s3:  u1, 
                    
                    /// [5:31] 
                    res1:  u27, 
                    
                }), @ptrFromInt(0x40000028));
                
                
                
                /// cgen_cfg3.
                pub const cgen_cfg3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x4000002c));
                
                
                
                /// MBIST_CTL.
                pub const MBIST_CTL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    irom_mbist_mode:  u1, 
                    
                    /// [1:1] 
                    hsram_mbist_mode:  u1, 
                    
                    /// [2:2] 
                    tag_mbist_mode:  u1, 
                    
                    /// [3:3] 
                    ocram_mbist_mode:  u1, 
                    
                    /// [4:4] 
                    wifi_mbist_mode:  u1, 
                    
                    /// [5:30] 
                    res0:  u26, 
                    
                    /// [31:31] 
                    reg_mbist_rst_n:  u1, 
                    
                }), @ptrFromInt(0x40000030));
                
                
                
                /// MBIST_STAT.
                pub const MBIST_STAT = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    irom_mbist_done:  u1, 
                    
                    /// [1:1] 
                    hsram_mbist_done:  u1, 
                    
                    /// [2:2] 
                    tag_mbist_done:  u1, 
                    
                    /// [3:3] 
                    ocram_mbist_done:  u1, 
                    
                    /// [4:4] 
                    wifi_mbist_done:  u1, 
                    
                    /// [5:15] 
                    res0:  u11, 
                    
                    /// [16:16] 
                    irom_mbist_fail:  u1, 
                    
                    /// [17:17] 
                    hsram_mbist_fail:  u1, 
                    
                    /// [18:18] 
                    tag_mbist_fail:  u1, 
                    
                    /// [19:19] 
                    ocram_mbist_fail:  u1, 
                    
                    /// [20:20] 
                    wifi_mbist_fail:  u1, 
                    
                    /// [21:31] 
                    res1:  u11, 
                    
                }), @ptrFromInt(0x40000034));
                
                
                
                /// bmx_cfg1.
                pub const bmx_cfg1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    bmx_timeout_en:  u4, 
                    
                    /// [4:5] 
                    bmx_arb_mode:  u2, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:8] 
                    bmx_err_en:  u1, 
                    
                    /// [9:9] 
                    bmx_busy_option_dis:  u1, 
                    
                    /// [10:10] 
                    bmx_gating_dis:  u1, 
                    
                    /// [11:11] 
                    res1:  u1, 
                    
                    /// [12:15] 
                    hsel_option:  u4, 
                    
                    /// [16:23] 
                    pds_apb_cfg:  u8, 
                    
                    /// [24:31] 
                    hbn_apb_cfg:  u8, 
                    
                }), @ptrFromInt(0x40000050));
                
                
                
                /// bmx_cfg2.
                pub const bmx_cfg2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] BMX address monitor disable
                    bmx_err_addr_dis:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    bmx_err_dec:  u1, 
                    
                    /// [5:5] 
                    bmx_err_tz:  u1, 
                    
                    /// [6:27] 
                    res1:  u22, 
                    
                    /// [28:31] 
                    bmx_dbg_sel:  u4, 
                    
                }), @ptrFromInt(0x40000054));
                
                
                
                /// bmx_err_addr.
                pub const bmx_err_addr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    bmx_err_addr:  u32, 
                    
                }), @ptrFromInt(0x40000058));
                
                
                
                /// bmx_dbg_out.
                pub const bmx_dbg_out = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    bmx_dbg_out:  u32, 
                    
                }), @ptrFromInt(0x4000005c));
                
                
                
                /// rsv0.
                pub const rsv0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rsvd_31_0:  u32, 
                    
                }), @ptrFromInt(0x40000060));
                
                
                
                /// rsv1.
                pub const rsv1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rsvd_31_0:  u32, 
                    
                }), @ptrFromInt(0x40000064));
                
                
                
                /// rsv2.
                pub const rsv2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rsvd_31_0:  u32, 
                    
                }), @ptrFromInt(0x40000068));
                
                
                
                /// rsv3.
                pub const rsv3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rsvd_31_0:  u32, 
                    
                }), @ptrFromInt(0x4000006c));
                
                
                
                /// sram_ret.
                pub const sram_ret = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_sram_ret:  u32, 
                    
                }), @ptrFromInt(0x40000070));
                
                
                
                /// sram_slp.
                pub const sram_slp = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_sram_slp:  u32, 
                    
                }), @ptrFromInt(0x40000074));
                
                
                
                /// sram_parm.
                pub const sram_parm = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_sram_parm:  u32, 
                    
                }), @ptrFromInt(0x40000078));
                
                
                
                /// seam_misc.
                pub const seam_misc = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    em_sel:  u4, 
                    
                    /// [4:31] 
                    res0:  u28, 
                    
                }), @ptrFromInt(0x4000007c));
                
                
                
                /// glb_parm.
                pub const glb_parm = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    reg_bd_en:  u1, 
                    
                    /// [1:1] 
                    reg_ext_rst_smt:  u1, 
                    
                    /// [2:7] 
                    jtag_swap_set:  u6, 
                    
                    /// [8:8] 
                    swap_sflash_io_3_io_0:  u1, 
                    
                    /// [9:9] 
                    sel_embedded_sflash:  u1, 
                    
                    /// [10:11] 
                    res0:  u2, 
                    
                    /// [12:12] 
                    reg_spi_0_master_mode:  u1, 
                    
                    /// [13:13] 
                    reg_spi_0_swap:  u1, 
                    
                    /// [14:14] 
                    res1:  u1, 
                    
                    /// [15:15] 
                    reg_cci_use_jtag_pin:  u1, 
                    
                    /// [16:16] 
                    reg_cci_use_sdio_pin:  u1, 
                    
                    /// [17:17] 
                    p1_adc_test_with_cci:  u1, 
                    
                    /// [18:18] 
                    p2_dac_test_with_cci:  u1, 
                    
                    /// [19:19] 
                    p3_cci_use_io_2_5:  u1, 
                    
                    /// [20:20] 
                    p4_adc_test_with_jtag:  u1, 
                    
                    /// [21:21] 
                    p5_dac_test_with_jtag:  u1, 
                    
                    /// [22:22] 
                    p6_sdio_use_io_0_5:  u1, 
                    
                    /// [23:23] 
                    p7_jtag_use_io_2_5:  u1, 
                    
                    /// [24:26] 
                    uart_swap_set:  u3, 
                    
                    /// [27:31] 
                    res2:  u5, 
                    
                }), @ptrFromInt(0x40000080));
                
                
                
                /// CPU_CLK_CFG.
                pub const CPU_CLK_CFG = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:16] 
                    cpu_rtc_div:  u17, 
                    
                    /// [17:17] 
                    res0:  u1, 
                    
                    /// [18:18] 
                    cpu_rtc_en:  u1, 
                    
                    /// [19:19] 
                    cpu_rtc_sel:  u1, 
                    
                    /// [20:20] 
                    debug_ndreset_gate:  u1, 
                    
                    /// [21:31] 
                    res1:  u11, 
                    
                }), @ptrFromInt(0x40000090));
                
                
                
                /// Clock configuration for GPADC
                pub const GPADC_32M_SRC_CTRL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    gpadc_32m_clk_div:  u6, 
                    
                    /// [6:6] 
                    res0:  u1, 
                    
                    /// [7:7] 
                    gpadc_32m_clk_sel:  u1, 
                    
                    /// [8:8] 
                    gpadc_32m_div_en:  u1, 
                    
                    /// [9:31] 
                    res1:  u23, 
                    
                }), @ptrFromInt(0x400000a4));
                
                
                
                /// DIG32K_WAKEUP_CTRL.
                pub const DIG32K_WAKEUP_CTRL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:10] 
                    dig_32k_div:  u11, 
                    
                    /// [11:11] 
                    res0:  u1, 
                    
                    /// [12:12] 
                    dig_32k_en:  u1, 
                    
                    /// [13:13] 
                    dig_32k_comp:  u1, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:22] 
                    dig_512k_div:  u7, 
                    
                    /// [23:23] 
                    res2:  u1, 
                    
                    /// [24:24] 
                    dig_512k_en:  u1, 
                    
                    /// [25:25] 
                    dig_512k_comp:  u1, 
                    
                    /// [26:27] 
                    res3:  u2, 
                    
                    /// [28:28] 
                    dig_clk_src_sel:  u1, 
                    
                    /// [29:30] 
                    res4:  u2, 
                    
                    /// [31:31] 
                    reg_en_platform_wakeup:  u1, 
                    
                }), @ptrFromInt(0x400000a8));
                
                
                
                /// WIFI_BT_COEX_CTRL.
                pub const WIFI_BT_COEX_CTRL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    coex_bt_channel:  u7, 
                    
                    /// [7:10] 
                    coex_bt_pti:  u4, 
                    
                    /// [11:11] 
                    coex_bt_bw:  u1, 
                    
                    /// [12:12] 
                    en_gpio_bt_coex:  u1, 
                    
                    /// [13:31] 
                    res0:  u19, 
                    
                }), @ptrFromInt(0x400000ac));
                
                
                
                /// UART_SIG_SEL_0.
                pub const UART_SIG_SEL_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    uart_sig_0_sel:  u4, 
                    
                    /// [4:7] 
                    uart_sig_1_sel:  u4, 
                    
                    /// [8:11] 
                    uart_sig_2_sel:  u4, 
                    
                    /// [12:15] 
                    uart_sig_3_sel:  u4, 
                    
                    /// [16:19] 
                    uart_sig_4_sel:  u4, 
                    
                    /// [20:23] 
                    uart_sig_5_sel:  u4, 
                    
                    /// [24:27] 
                    uart_sig_6_sel:  u4, 
                    
                    /// [28:31] 
                    uart_sig_7_sel:  u4, 
                    
                }), @ptrFromInt(0x400000c0));
                
                
                
                /// DBG_SEL_LL.
                pub const DBG_SEL_LL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_dbg_ll_ctrl:  u32, 
                    
                }), @ptrFromInt(0x400000d0));
                
                
                
                /// DBG_SEL_LH.
                pub const DBG_SEL_LH = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_dbg_lh_ctrl:  u32, 
                    
                }), @ptrFromInt(0x400000d4));
                
                
                
                /// DBG_SEL_HL.
                pub const DBG_SEL_HL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_dbg_hl_ctrl:  u32, 
                    
                }), @ptrFromInt(0x400000d8));
                
                
                
                /// DBG_SEL_HH.
                pub const DBG_SEL_HH = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_dbg_hh_ctrl:  u32, 
                    
                }), @ptrFromInt(0x400000dc));
                
                
                
                /// debug.
                pub const debug = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    debug_oe:  u1, 
                    
                    /// [1:31] 
                    debug_i:  u31, 
                    
                }), @ptrFromInt(0x400000e0));
                
                
                
                /// GPIO0, GPIO1 configuration
                pub const GPIO_CFGCTL0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] GPIO0 input enable.
                    reg_gpio_0_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO0.
                    reg_gpio_0_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control for GPIO0.
                    reg_gpio_0_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO0.
                    reg_gpio_0_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO0.
                    reg_gpio_0_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO0.
                    reg_gpio_0_func_sel:  enum(u4) {
                        
                        SDIO_CLK = 1,
                        
                        SF_D1 = 2,
                        
                        SPI_MOSI_SPI_MISO = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG0 = 7,
                        
                        PWM_CH0 = 8,
                        
                        FEM_GPIO_0 = 9,
                        
                        ATEST_IN = 10,
                        
                        SWGPIO_0 = 11,
                        
                        E21_TMS = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    real_gpio_0_func_sel:  enum(u4) {
                        
                        GLB_GPIO_REAL_MODE_REG = 0,
                        
                        GLB_GPIO_REAL_MODE_SDIO = 1,
                        
                        GLB_GPIO_REAL_MODE_RF = 12,
                        
                        GLB_GPIO_REAL_MODE_JTAG = 14,
                        
                        GLB_GPIO_REAL_MODE_CCI = 15,
                        
                    }, 
                    
                    /// [16:16] Input enable for GPIO1.
                    reg_gpio_1_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO1.
                    reg_gpio_1_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO1.
                    reg_gpio_1_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO1.
                    reg_gpio_1_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO1.
                    reg_gpio_1_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res1:  u2, 
                    
                    /// [24:27] Function select for GPIO1.
                    reg_gpio_1_func_sel:  enum(u4) {
                        
                        SDIO_CMD = 1,
                        
                        SF_D2 = 2,
                        
                        SPI_MOSI_SPI_MISO = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG1 = 7,
                        
                        PWM_CH1 = 8,
                        
                        FEM_GPIO_1 = 9,
                        
                        ATEST_IP = 10,
                        
                        SWGPIO_1 = 11,
                        
                        E21_TDI = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    real_gpio_1_func_sel:  enum(u4) {
                        
                        GLB_GPIO_REAL_MODE_REG = 0,
                        
                        GLB_GPIO_REAL_MODE_SDIO = 1,
                        
                        GLB_GPIO_REAL_MODE_RF = 12,
                        
                        GLB_GPIO_REAL_MODE_JTAG = 14,
                        
                        GLB_GPIO_REAL_MODE_CCI = 15,
                        
                    }, 
                    
                }), @ptrFromInt(0x40000100));
                
                
                
                /// GPIO2, GPIO3 configuration
                pub const GPIO_CFGCTL1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO2.
                    reg_gpio_2_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO2.
                    reg_gpio_2_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO2.
                    reg_gpio_2_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO2.
                    reg_gpio_2_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO2.
                    reg_gpio_2_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO2.
                    reg_gpio_2_func_sel:  enum(u4) {
                        
                        SDIO_DAT0 = 1,
                        
                        SF_D3 = 2,
                        
                        SPI_SS = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG2 = 7,
                        
                        PWM_CH2 = 8,
                        
                        FEM_GPIO_2 = 9,
                        
                        ATEST_QN = 10,
                        
                        SWGPIO_2 = 11,
                        
                        E21_TCK = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    real_gpio_2_func_sel:  enum(u4) {
                        
                        GLB_GPIO_REAL_MODE_REG = 0,
                        
                        GLB_GPIO_REAL_MODE_SDIO = 1,
                        
                        GLB_GPIO_REAL_MODE_RF = 12,
                        
                        GLB_GPIO_REAL_MODE_JTAG = 14,
                        
                        GLB_GPIO_REAL_MODE_CCI = 15,
                        
                    }, 
                    
                    /// [16:16] Input enable for GPIO3.
                    reg_gpio_3_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO3.
                    reg_gpio_3_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO3.
                    reg_gpio_3_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO3.
                    reg_gpio_3_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO3.
                    reg_gpio_3_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res1:  u2, 
                    
                    /// [24:27] Function select for GPIO3.
                    reg_gpio_3_func_sel:  enum(u4) {
                        
                        SDIO_DAT1 = 1,
                        
                        SPI_SCLK = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG3 = 7,
                        
                        PWM_CH3 = 8,
                        
                        FEM_GPIO_3 = 9,
                        
                        ATEST_QP = 10,
                        
                        SWGPIO_3 = 11,
                        
                        E21_TDO = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    real_gpio_3_func_sel:  enum(u4) {
                        
                        GLB_GPIO_REAL_MODE_REG = 0,
                        
                        GLB_GPIO_REAL_MODE_SDIO = 1,
                        
                        GLB_GPIO_REAL_MODE_RF = 12,
                        
                        GLB_GPIO_REAL_MODE_JTAG = 14,
                        
                        GLB_GPIO_REAL_MODE_CCI = 15,
                        
                    }, 
                    
                }), @ptrFromInt(0x40000104));
                
                
                
                /// GPIO4, GPIO5 configuration
                pub const GPIO_CFGCTL2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO4.
                    reg_gpio_4_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO4.
                    reg_gpio_4_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO4.
                    reg_gpio_4_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO4.
                    reg_gpio_4_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO4.
                    reg_gpio_4_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO4.
                    reg_gpio_4_func_sel:  enum(u4) {
                        
                        SDIO_DAT2 = 1,
                        
                        SPI_MISO_SPI_MOSI = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG4 = 7,
                        
                        PWM_CH4 = 8,
                        
                        FEM_GPIO_0 = 9,
                        
                        GPIP_CH1 = 10,
                        
                        SWGPIO_4 = 11,
                        
                        E21_TMS = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    real_gpio_4_func_sel:  enum(u4) {
                        
                        GLB_GPIO_REAL_MODE_REG = 0,
                        
                        GLB_GPIO_REAL_MODE_SDIO = 1,
                        
                        GLB_GPIO_REAL_MODE_RF = 12,
                        
                        GLB_GPIO_REAL_MODE_JTAG = 14,
                        
                        GLB_GPIO_REAL_MODE_CCI = 15,
                        
                    }, 
                    
                    /// [16:16] Input enable for GPIO5.
                    reg_gpio_5_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO5.
                    reg_gpio_5_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO5.
                    reg_gpio_5_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO5.
                    reg_gpio_5_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO5.
                    reg_gpio_5_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res1:  u2, 
                    
                    /// [24:27] Function select for GPIO5.
                    reg_gpio_5_func_sel:  enum(u4) {
                        
                        SDIO_DAT3 = 1,
                        
                        SPI_MOSI_SPI_MISO = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG5 = 7,
                        
                        PWM_CH0 = 8,
                        
                        FEM_GPIO_1 = 9,
                        
                        GPIP_CH4 = 10,
                        
                        SWGPIO_5 = 11,
                        
                        E21_TDI = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    real_gpio_5_func_sel:  enum(u4) {
                        
                        GLB_GPIO_REAL_MODE_REG = 0,
                        
                        GLB_GPIO_REAL_MODE_SDIO = 1,
                        
                        GLB_GPIO_REAL_MODE_RF = 12,
                        
                        GLB_GPIO_REAL_MODE_JTAG = 14,
                        
                        GLB_GPIO_REAL_MODE_CCI = 15,
                        
                    }, 
                    
                }), @ptrFromInt(0x40000108));
                
                
                
                /// GPIO6, GPIO7 configuration
                pub const GPIO_CFGCTL3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO6.
                    reg_gpio_6_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO6.
                    reg_gpio_6_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO6.
                    reg_gpio_6_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO6.
                    reg_gpio_6_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO6.
                    reg_gpio_6_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO6.
                    reg_gpio_6_func_sel:  enum(u4) {
                        
                        SPI_SS = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG6 = 7,
                        
                        PWM_CH1 = 8,
                        
                        FEM_GPIO_2 = 9,
                        
                        GPIP_CH5 = 10,
                        
                        SWGPIO_6 = 11,
                        
                        E21_TCK = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO7.
                    reg_gpio_7_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO7.
                    reg_gpio_7_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO7.
                    reg_gpio_7_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO7.
                    reg_gpio_7_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO7.
                    reg_gpio_7_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO7.
                    reg_gpio_7_func_sel:  enum(u4) {
                        
                        SPI_SCLK = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG7 = 7,
                        
                        PWM_CH2 = 8,
                        
                        FEM_GPIO_3 = 9,
                        
                        SWGPIO_7 = 11,
                        
                        E21_TDO = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x4000010c));
                
                
                
                /// GPIO8, GPIO9 configuration
                pub const GPIO_CFGCTL4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO8.
                    reg_gpio_8_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO8.
                    reg_gpio_8_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO8.
                    reg_gpio_8_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO8.
                    reg_gpio_8_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO8.
                    reg_gpio_8_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO8.
                    reg_gpio_8_func_sel:  enum(u4) {
                        
                        SPI_MISO_SPI_MOSI = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG0 = 7,
                        
                        PWM_CH3 = 8,
                        
                        FEM_GPIO_0 = 9,
                        
                        SWGPIO_8 = 11,
                        
                        E21_TMS = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO9.
                    reg_gpio_9_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO9.
                    reg_gpio_9_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO9.
                    reg_gpio_9_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO9.
                    reg_gpio_9_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO9.
                    reg_gpio_9_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO9.
                    reg_gpio_9_func_sel:  enum(u4) {
                        
                        SPI_MOSI_SPI_MISO = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG1 = 7,
                        
                        PWM_CH4 = 8,
                        
                        FEM_GPIO_1 = 9,
                        
                        GPIP_CH6_GPIP_CH7 = 10,
                        
                        SWGPIO_9 = 11,
                        
                        E21_TDI = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x40000110));
                
                
                
                /// GPIO10, GPIO11 configuration
                pub const GPIO_CFGCTL5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO10.
                    reg_gpio_10_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO10.
                    reg_gpio_10_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO10.
                    reg_gpio_10_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO10.
                    reg_gpio_10_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO10.
                    reg_gpio_10_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO10.
                    reg_gpio_10_func_sel:  enum(u4) {
                        
                        SPI_SS = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG2 = 7,
                        
                        PWM_CH0 = 8,
                        
                        FEM_GPIO_2 = 9,
                        
                        MICBIAS_GPIP_CH8_GPIP_CH9 = 10,
                        
                        SWGPIO_10 = 11,
                        
                        E21_TCK = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO11.
                    reg_gpio_11_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO11.
                    reg_gpio_11_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO11.
                    reg_gpio_11_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO11.
                    reg_gpio_11_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO11.
                    reg_gpio_11_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO11.
                    reg_gpio_11_func_sel:  enum(u4) {
                        
                        SPI_SCLK = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG3 = 7,
                        
                        PWM_CH1 = 8,
                        
                        FEM_GPIO_3 = 9,
                        
                        IRLED_OUT_GPIP_CH10 = 10,
                        
                        SWGPIO_11 = 11,
                        
                        E21_TDO = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x40000114));
                
                
                
                /// GPIO12, GPIO13 configuration
                pub const GPIO_CFGCTL6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO12.
                    reg_gpio_12_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO12.
                    reg_gpio_12_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO12.
                    reg_gpio_12_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO12.
                    reg_gpio_12_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO12.
                    reg_gpio_12_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO12.
                    reg_gpio_12_func_sel:  enum(u4) {
                        
                        SPI_MISO_SPI_MOSI = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG4 = 7,
                        
                        PWM_CH2 = 8,
                        
                        FEM_GPIO_0 = 9,
                        
                        GPIP_CH0_GPADC_VREF_EXT = 10,
                        
                        SWGPIO_12 = 11,
                        
                        E21_TMS = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO13.
                    reg_gpio_13_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO13.
                    reg_gpio_13_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO13.
                    reg_gpio_13_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO13.
                    reg_gpio_13_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO13.
                    reg_gpio_13_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO13.
                    reg_gpio_13_func_sel:  enum(u4) {
                        
                        SPI_MOSI_SPI_MISO = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG5 = 7,
                        
                        PWM_CH3 = 8,
                        
                        FEM_GPIO_1 = 9,
                        
                        GPIP_CH3 = 10,
                        
                        SWGPIO_13 = 11,
                        
                        E21_TDI = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x40000118));
                
                
                
                /// GPIO14, GPIO15 configuration
                pub const GPIO_CFGCTL7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO14.
                    reg_gpio_14_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO14.
                    reg_gpio_14_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO14.
                    reg_gpio_14_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO14.
                    reg_gpio_14_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO14.
                    reg_gpio_14_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO14.
                    reg_gpio_14_func_sel:  enum(u4) {
                        
                        SPI_SS = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG6 = 7,
                        
                        PWM_CH4 = 8,
                        
                        FEM_GPIO_2 = 9,
                        
                        GPIP_CH2 = 10,
                        
                        SWGPIO_14 = 11,
                        
                        E21_TCK = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO15.
                    reg_gpio_15_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO15.
                    reg_gpio_15_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO15.
                    reg_gpio_15_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO15.
                    reg_gpio_15_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO15.
                    reg_gpio_15_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO15.
                    reg_gpio_15_func_sel:  enum(u4) {
                        
                        SPI_SCLK = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG7 = 7,
                        
                        PWM_CH0 = 8,
                        
                        FEM_GPIO_3 = 9,
                        
                        PSW_IRRCV_OUT_GPIP_CH11 = 10,
                        
                        SWGPIO_15 = 11,
                        
                        E21_TDO = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x4000011c));
                
                
                
                /// GPIO16, GPIO17 configuration
                pub const GPIO_CFGCTL8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO16.
                    reg_gpio_16_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO16.
                    reg_gpio_16_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO16.
                    reg_gpio_16_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO16.
                    reg_gpio_16_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO16.
                    reg_gpio_16_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO16.
                    reg_gpio_16_func_sel:  enum(u4) {
                        
                        SPI_MISO_SPI_MOSI = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG0 = 7,
                        
                        PWM_CH1 = 8,
                        
                        FEM_GPIO_0 = 9,
                        
                        SWGPIO_16 = 11,
                        
                        E21_TMS = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO17.
                    reg_gpio_17_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO17.
                    reg_gpio_17_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO17.
                    reg_gpio_17_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO17.
                    reg_gpio_17_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO17.
                    reg_gpio_17_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO17.
                    reg_gpio_17_func_sel:  enum(u4) {
                        
                        SF_D3 = 2,
                        
                        SPI_MOSI_SPI_MISO = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG1 = 7,
                        
                        PWM_CH2 = 8,
                        
                        FEM_GPIO_1 = 9,
                        
                        PMIP_DC_TP_OUT = 10,
                        
                        SWGPIO_17 = 11,
                        
                        E21_TDI = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x40000120));
                
                
                
                /// GPIO18, GPIO19 configuration
                pub const GPIO_CFGCTL9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO18.
                    reg_gpio_18_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO18.
                    reg_gpio_18_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO18.
                    reg_gpio_18_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO18.
                    reg_gpio_18_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO18.
                    reg_gpio_18_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO18.
                    reg_gpio_18_func_sel:  enum(u4) {
                        
                        SF_D2 = 2,
                        
                        SPI_SS = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG2 = 7,
                        
                        PWM_CH3 = 8,
                        
                        FEM_GPIO_2 = 9,
                        
                        SWGPIO_18 = 11,
                        
                        E21_TCK = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO19.
                    reg_gpio_19_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO19.
                    reg_gpio_19_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO19.
                    reg_gpio_19_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO19.
                    reg_gpio_19_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO19.
                    reg_gpio_19_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO19.
                    reg_gpio_19_func_sel:  enum(u4) {
                        
                        SF_D1 = 2,
                        
                        SPI_SCLK = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG3 = 7,
                        
                        PWM_CH4 = 8,
                        
                        FEM_GPIO_3 = 9,
                        
                        SWGPIO_19 = 11,
                        
                        E21_TDO = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x40000124));
                
                
                
                /// GPIO20, GPIO21 configuration
                pub const GPIO_CFGCTL10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO20.
                    reg_gpio_20_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO20.
                    reg_gpio_20_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO20.
                    reg_gpio_20_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO20.
                    reg_gpio_20_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO20.
                    reg_gpio_20_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO20.
                    reg_gpio_20_func_sel:  enum(u4) {
                        
                        SF_D0 = 2,
                        
                        SPI_MISO_SPI_MOSI = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG4 = 7,
                        
                        PWM_CH0 = 8,
                        
                        FEM_GPIO_0 = 9,
                        
                        SWGPIO_20 = 11,
                        
                        E21_TMS = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO21.
                    reg_gpio_21_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO21.
                    reg_gpio_21_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO21.
                    reg_gpio_21_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO21.
                    reg_gpio_21_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO21.
                    reg_gpio_21_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:27] Function select for GPIO21.
                    reg_gpio_21_func_sel:  enum(u4) {
                        
                        SF_CS = 2,
                        
                        SPI_MOSI_SPI_MISO = 4,
                        
                        I2C_SDA = 6,
                        
                        UART_SIG5 = 7,
                        
                        PWM_CH1 = 8,
                        
                        FEM_GPIO_1 = 9,
                        
                        SWGPIO_21 = 11,
                        
                        E21_TDI = 14,
                        
                    }, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x40000128));
                
                
                
                /// GPIO22, GPIO23 configuration
                pub const GPIO_CFGCTL11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO22.
                    reg_gpio_22_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO22.
                    reg_gpio_22_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO22.
                    reg_gpio_22_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO22.
                    reg_gpio_22_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO22.
                    reg_gpio_22_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:11] Function select for GPIO22.
                    reg_gpio_22_func_sel:  enum(u4) {
                        
                        SF_CLK_OUT = 2,
                        
                        SPI_SS = 4,
                        
                        I2C_SCL = 6,
                        
                        UART_SIG6 = 7,
                        
                        PWM_CH2 = 8,
                        
                        FEM_GPIO_2 = 9,
                        
                        SWGPIO_22 = 11,
                        
                        E21_TCK = 14,
                        
                    }, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] Input enable for GPIO23.
                    reg_gpio_23_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO23.
                    reg_gpio_23_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO23.
                    reg_gpio_23_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO23.
                    reg_gpio_23_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO23.
                    reg_gpio_23_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:31] 
                    res2:  u10, 
                    
                }), @ptrFromInt(0x4000012c));
                
                
                
                /// GPIO24, GPIO25 configuration
                pub const GPIO_CFGCTL12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO24.
                    reg_gpio_24_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO24.
                    reg_gpio_24_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO24.
                    reg_gpio_24_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO24.
                    reg_gpio_24_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO24.
                    reg_gpio_24_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:15] 
                    res0:  u10, 
                    
                    /// [16:16] Input enable for GPIO25.
                    reg_gpio_25_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO25.
                    reg_gpio_25_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO25.
                    reg_gpio_25_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO25.
                    reg_gpio_25_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO25.
                    reg_gpio_25_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:31] 
                    res1:  u10, 
                    
                }), @ptrFromInt(0x40000130));
                
                
                
                /// GPIO26, GPIO27 configuration
                pub const GPIO_CFGCTL13 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO26.
                    reg_gpio_26_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO26.
                    reg_gpio_26_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO26.
                    reg_gpio_26_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO26.
                    reg_gpio_26_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO26.
                    reg_gpio_26_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:15] 
                    res0:  u10, 
                    
                    /// [16:16] Input enable for GPIO27.
                    reg_gpio_27_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Schmitt trigger enabled for GPIO27.
                    reg_gpio_27_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:19] Driving control enabled for GPIO27.
                    reg_gpio_27_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Pull Up Resistor for GPIO27.
                    reg_gpio_27_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Pull Down Resistor for GPIO27.
                    reg_gpio_27_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:31] 
                    res1:  u10, 
                    
                }), @ptrFromInt(0x40000134));
                
                
                
                /// GPIO28 configuration
                pub const GPIO_CFGCTL14 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Input enable for GPIO28.
                    reg_gpio_28_ie:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Schmitt trigger enabled for GPIO28.
                    reg_gpio_28_smt:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:3] Driving control enabled for GPIO28.
                    reg_gpio_28_drv:  enum(u2) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Pull Up Resistor for GPIO28.
                    reg_gpio_28_pu:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Pull Down Resistor for GPIO28.
                    reg_gpio_28_pd:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:31] 
                    res0:  u26, 
                    
                }), @ptrFromInt(0x40000138));
                
                
                
                /// Input register for all GPIO pins. Input Enabled bit must be set in configuration register to work.
                pub const GPIO_CFGCTL30 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    reg_gpio_0_i:  u1, 
                    
                    /// [1:1] Input register for GPIO1.
                    reg_gpio_1_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:2] Input register for GPIO2.
                    reg_gpio_2_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [3:3] Input register for GPIO3.
                    reg_gpio_3_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Input register for GPIO4.
                    reg_gpio_4_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Input register for GPIO5.
                    reg_gpio_5_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:6] Input register for GPIO6.
                    reg_gpio_6_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [7:7] Input register for GPIO7.
                    reg_gpio_7_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [8:8] Input register for GPIO8.
                    reg_gpio_8_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [9:9] Input register for GPIO9.
                    reg_gpio_9_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [10:10] Input register for GPIO10.
                    reg_gpio_10_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [11:11] Input register for GPIO11.
                    reg_gpio_11_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [12:12] Input register for GPIO12.
                    reg_gpio_12_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [13:13] Input register for GPIO13.
                    reg_gpio_13_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [14:14] Input register for GPIO14.
                    reg_gpio_14_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [15:15] Input register for GPIO15.
                    reg_gpio_15_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [16:16] Input register for GPIO16.
                    reg_gpio_16_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Input register for GPIO17.
                    reg_gpio_17_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:18] Input register for GPIO18.
                    reg_gpio_18_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [19:19] Input register for GPIO19.
                    reg_gpio_19_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Input register for GPIO20.
                    reg_gpio_20_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Input register for GPIO21.
                    reg_gpio_21_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:22] Input register for GPIO22.
                    reg_gpio_22_i:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [23:31] 
                    res0:  u9, 
                    
                }), @ptrFromInt(0x40000180));
                
                
                
                /// Reserved according to SDK.
                pub const GPIO_CFGCTL31 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40000184));
                
                
                
                /// Output register for all GPIO pins. Output Enabled bit must be set in Output Enable register to work.
                pub const GPIO_CFGCTL32 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Output register for GPIO0.
                    reg_gpio_0_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Output register for GPIO1.
                    reg_gpio_1_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:2] Output register for GPIO2.
                    reg_gpio_2_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [3:3] Output register for GPIO3.
                    reg_gpio_3_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Output register for GPIO4.
                    reg_gpio_4_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Output register for GPIO5.
                    reg_gpio_5_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:6] Output register for GPIO6.
                    reg_gpio_6_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [7:7] Output register for GPIO7.
                    reg_gpio_7_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [8:8] Output register for GPIO8.
                    reg_gpio_8_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [9:9] Output register for GPIO9.
                    reg_gpio_9_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [10:10] Output register for GPIO10.
                    reg_gpio_10_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [11:11] Output register for GPIO11.
                    reg_gpio_11_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [12:12] Output register for GPIO12.
                    reg_gpio_12_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [13:13] Output register for GPIO13.
                    reg_gpio_13_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [14:14] Output register for GPIO14.
                    reg_gpio_14_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [15:15] Output register for GPIO15.
                    reg_gpio_15_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [16:16] Output register for GPIO16.
                    reg_gpio_16_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Output register for GPIO17.
                    reg_gpio_17_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:18] Output register for GPIO18.
                    reg_gpio_18_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [19:19] Output register for GPIO19.
                    reg_gpio_19_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Output register for GPIO20.
                    reg_gpio_20_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Output register for GPIO21.
                    reg_gpio_21_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:22] Output register for GPIO22.
                    reg_gpio_22_o:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [23:31] 
                    res0:  u9, 
                    
                }), @ptrFromInt(0x40000188));
                
                
                
                /// Reserved according to SDK.
                pub const GPIO_CFGCTL33 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x4000018c));
                
                
                
                /// Output enable register for GPIO.
                pub const GPIO_CFGCTL34 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Output enable register for GPIO0.
                    reg_gpio_0_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [1:1] Output enable register for GPIO1.
                    reg_gpio_1_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [2:2] Output enable register for GPIO2.
                    reg_gpio_2_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [3:3] Output enable register for GPIO3.
                    reg_gpio_3_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [4:4] Output enable register for GPIO4.
                    reg_gpio_4_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [5:5] Output enable register for GPIO5.
                    reg_gpio_5_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [6:6] Output enable register for GPIO6.
                    reg_gpio_6_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [7:7] Output enable register for GPIO7.
                    reg_gpio_7_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [8:8] Output enable register for GPIO8.
                    reg_gpio_8_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [9:9] Output enable register for GPIO9.
                    reg_gpio_9_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [10:10] Output enable register for GPIO10.
                    reg_gpio_10_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [11:11] Output enable register for GPIO11.
                    reg_gpio_11_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [12:12] Output enable register for GPIO12.
                    reg_gpio_12_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [13:13] Output enable register for GPIO13.
                    reg_gpio_13_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [14:14] Output enable register for GPIO14.
                    reg_gpio_14_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [15:15] Output enable register for GPIO15.
                    reg_gpio_15_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [16:16] Output enable register for GPIO16.
                    reg_gpio_16_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [17:17] Output enable register for GPIO17.
                    reg_gpio_17_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [18:18] Output enable register for GPIO18.
                    reg_gpio_18_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [19:19] Output enable register for GPIO19.
                    reg_gpio_19_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [20:20] Output enable register for GPIO20.
                    reg_gpio_20_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [21:21] Output enable register for GPIO21.
                    reg_gpio_21_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [22:22] Output enable register for GPIO22.
                    reg_gpio_22_oe:  enum(u1) {
                        
                        disabled = 0,
                        
                        enabled = 1,
                        
                    }, 
                    
                    /// [23:31] 
                    res0:  u9, 
                    
                }), @ptrFromInt(0x40000190));
                
                
                
                /// Reserved according to SDK.
                pub const GPIO_CFGCTL35 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40000194));
                
                
                
                /// Interrupt masking register. The SDK limits the GPIO pins to < 32 although the docs do not mention more than 28 GPIO pins.
                pub const GPIO_INT_MASK1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Mask register for GPIO0.
                    reg_gpio_0_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [1:1] Mask register for GPIO1.
                    reg_gpio_1_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [2:2] Mask register for GPIO2.
                    reg_gpio_2_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [3:3] Mask register for GPIO3.
                    reg_gpio_3_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [4:4] Mask register for GPIO4.
                    reg_gpio_4_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [5:5] Mask register for GPIO5.
                    reg_gpio_5_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [6:6] Mask register for GPIO6.
                    reg_gpio_6_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [7:7] Mask register for GPIO7.
                    reg_gpio_7_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [8:8] Mask register for GPIO8.
                    reg_gpio_8_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [9:9] Mask register for GPIO9.
                    reg_gpio_9_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [10:10] Mask register for GPIO10.
                    reg_gpio_10_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [11:11] Mask register for GPIO11.
                    reg_gpio_11_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [12:12] Mask register for GPIO12.
                    reg_gpio_12_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [13:13] Mask register for GPIO13.
                    reg_gpio_13_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [14:14] Mask register for GPIO14.
                    reg_gpio_14_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [15:15] Mask register for GPIO15.
                    reg_gpio_15_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [16:16] Mask register for GPIO16.
                    reg_gpio_16_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [17:17] Mask register for GPIO17.
                    reg_gpio_17_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [18:18] Mask register for GPIO18.
                    reg_gpio_18_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [19:19] Mask register for GPIO19.
                    reg_gpio_19_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [20:20] Mask register for GPIO20.
                    reg_gpio_20_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [21:21] Mask register for GPIO21.
                    reg_gpio_21_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [22:22] Mask register for GPIO22.
                    reg_gpio_22_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [23:23] Mask register for GPIO23.
                    reg_gpio_23_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [24:24] Mask register for GPIO24.
                    reg_gpio_24_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [25:25] Mask register for GPIO25.
                    reg_gpio_25_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [26:26] Mask register for GPIO26.
                    reg_gpio_26_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [27:27] Mask register for GPIO27.
                    reg_gpio_27_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [28:28] Mask register for GPIO28.
                    reg_gpio_28_mask:  enum(u1) {
                        
                        unmasked = 0,
                        
                        masked = 1,
                        
                    }, 
                    
                    /// [29:31] 
                    res0:  u3, 
                    
                }), @ptrFromInt(0x400001a0));
                
                
                
                /// Interrupt status register. The SDK limits the GPIO pins to < 32 although the docs do not mention more than 28 GPIO pins.
                pub const GPIO_INT_STAT1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Interrupt status register for GPIO0.
                    reg_gpio_0_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [1:1] Interrupt status register for GPIO1.
                    reg_gpio_1_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [2:2] Interrupt status register for GPIO2.
                    reg_gpio_2_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [3:3] Interrupt status register for GPIO3.
                    reg_gpio_3_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [4:4] Interrupt status register for GPIO4.
                    reg_gpio_4_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [5:5] Interrupt status register for GPIO5.
                    reg_gpio_5_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [6:6] Interrupt status register for GPIO6.
                    reg_gpio_6_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [7:7] Interrupt status register for GPIO7.
                    reg_gpio_7_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [8:8] Interrupt status register for GPIO8.
                    reg_gpio_8_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [9:9] Interrupt status register for GPIO9.
                    reg_gpio_9_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [10:10] Interrupt status register for GPIO10.
                    reg_gpio_10_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [11:11] Interrupt status register for GPIO11.
                    reg_gpio_11_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [12:12] Interrupt status register for GPIO12.
                    reg_gpio_12_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [13:13] Interrupt status register for GPIO13.
                    reg_gpio_13_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [14:14] Interrupt status register for GPIO14.
                    reg_gpio_14_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [15:15] Interrupt status register for GPIO15.
                    reg_gpio_15_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [16:16] Interrupt status register for GPIO16.
                    reg_gpio_16_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [17:17] Interrupt status register for GPIO17.
                    reg_gpio_17_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [18:18] Interrupt status register for GPIO18.
                    reg_gpio_18_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [19:19] Interrupt status register for GPIO19.
                    reg_gpio_19_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [20:20] Interrupt status register for GPIO20.
                    reg_gpio_20_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [21:21] Interrupt status register for GPIO21.
                    reg_gpio_21_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [22:22] Interrupt status register for GPIO22.
                    reg_gpio_22_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [23:23] Interrupt status register for GPIO23.
                    reg_gpio_23_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [24:24] Interrupt status register for GPIO24.
                    reg_gpio_24_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [25:25] Interrupt status register for GPIO25.
                    reg_gpio_25_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [26:26] Interrupt status register for GPIO26.
                    reg_gpio_26_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [27:27] Interrupt status register for GPIO27.
                    reg_gpio_27_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [28:28] Interrupt status register for GPIO28.
                    reg_gpio_28_interrupt_status:  enum(u1) {
                        
                        reset = 0,
                        
                        set = 1,
                        
                    }, 
                    
                    /// [29:31] 
                    res0:  u3, 
                    
                }), @ptrFromInt(0x400001a8));
                
                
                
                /// Interrupt clearing register.
                pub const GPIO_INT_CLR1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] Interrupt clearing register for GPIO0.
                    reg_gpio_0_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [1:1] Interrupt clearing register for GPIO1.
                    reg_gpio_1_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [2:2] Interrupt clearing register for GPIO2.
                    reg_gpio_2_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [3:3] Interrupt clearing register for GPIO3.
                    reg_gpio_3_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [4:4] Interrupt clearing register for GPIO4.
                    reg_gpio_4_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [5:5] Interrupt clearing register for GPIO5.
                    reg_gpio_5_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [6:6] Interrupt clearing register for GPIO6.
                    reg_gpio_6_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [7:7] Interrupt clearing register for GPIO7.
                    reg_gpio_7_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [8:8] Interrupt clearing register for GPIO8.
                    reg_gpio_8_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [9:9] Interrupt clearing register for GPIO9.
                    reg_gpio_9_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [10:10] Interrupt clearing register for GPIO10.
                    reg_gpio_10_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [11:11] Interrupt clearing register for GPIO11.
                    reg_gpio_11_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [12:12] Interrupt clearing register for GPIO12.
                    reg_gpio_12_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [13:13] Interrupt clearing register for GPIO13.
                    reg_gpio_13_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [14:14] Interrupt clearing register for GPIO14.
                    reg_gpio_14_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [15:15] Interrupt clearing register for GPIO15.
                    reg_gpio_15_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [16:16] Interrupt clearing register for GPIO16.
                    reg_gpio_16_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [17:17] Interrupt clearing register for GPIO17.
                    reg_gpio_17_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [18:18] Interrupt clearing register for GPIO18.
                    reg_gpio_18_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [19:19] Interrupt clearing register for GPIO19.
                    reg_gpio_19_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [20:20] Interrupt clearing register for GPIO20.
                    reg_gpio_20_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [21:21] Interrupt clearing register for GPIO21.
                    reg_gpio_21_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [22:22] Interrupt clearing register for GPIO22.
                    reg_gpio_22_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [23:23] Interrupt clearing register for GPIO23.
                    reg_gpio_23_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [24:24] Interrupt clearing register for GPIO24.
                    reg_gpio_24_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [25:25] Interrupt clearing register for GPIO25.
                    reg_gpio_25_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [26:26] Interrupt clearing register for GPIO26.
                    reg_gpio_26_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [27:27] Interrupt clearing register for GPIO27.
                    reg_gpio_27_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [28:28] Interrupt clearing register for GPIO28.
                    reg_gpio_28_interrupt_clear:  enum(u1) {
                        
                        no_clear = 0,
                        
                        clear = 1,
                        
                    }, 
                    
                    /// [29:31] 
                    res0:  u3, 
                    
                }), @ptrFromInt(0x400001b0));
                
                
                
                /// GPIO interrupt trigger and control register for GPIO0-GPIO9.
                pub const GPIO_INT_MODE_SET1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] Interrupt trigger mode register for GPIO0.
                    reg_gpio_0_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [2:2] Interrupt control mode register for GPIO0.
                    reg_gpio_0_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [3:4] Interrupt trigger mode register for GPIO1.
                    reg_gpio_1_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [5:5] Interrupt control mode register for GPIO1.
                    reg_gpio_1_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [6:7] Interrupt trigger mode register for GPIO2.
                    reg_gpio_2_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [8:8] Interrupt control mode register for GPIO2.
                    reg_gpio_2_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [9:10] Interrupt trigger mode register for GPIO3.
                    reg_gpio_3_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [11:11] Interrupt control mode register for GPIO3.
                    reg_gpio_3_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [12:13] Interrupt trigger mode register for GPIO4.
                    reg_gpio_4_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [14:14] Interrupt control mode register for GPIO4.
                    reg_gpio_4_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [15:16] Interrupt trigger mode register for GPIO5.
                    reg_gpio_5_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [17:17] Interrupt control mode register for GPIO5.
                    reg_gpio_5_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [18:19] Interrupt trigger mode register for GPIO6.
                    reg_gpio_6_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [20:20] Interrupt control mode register for GPIO6.
                    reg_gpio_6_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [21:22] Interrupt trigger mode register for GPIO7.
                    reg_gpio_7_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [23:23] Interrupt control mode register for GPIO7.
                    reg_gpio_7_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [24:25] Interrupt trigger mode register for GPIO8.
                    reg_gpio_8_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [26:26] Interrupt control mode register for GPIO8.
                    reg_gpio_8_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [27:28] Interrupt trigger mode register for GPIO9.
                    reg_gpio_9_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [29:29] Interrupt control mode register for GPIO9.
                    reg_gpio_9_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x400001c0));
                
                
                
                /// GPIO interrupt trigger and control register for GPIO10-GPIO19.
                pub const GPIO_INT_MODE_SET2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] Interrupt trigger mode register for GPIO10.
                    reg_gpio_10_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [2:2] Interrupt control mode register for GPIO10.
                    reg_gpio_10_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [3:4] Interrupt trigger mode register for GPIO11.
                    reg_gpio_11_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [5:5] Interrupt control mode register for GPIO11.
                    reg_gpio_11_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [6:7] Interrupt trigger mode register for GPIO12.
                    reg_gpio_12_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [8:8] Interrupt control mode register for GPIO12.
                    reg_gpio_12_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [9:10] Interrupt trigger mode register for GPIO13.
                    reg_gpio_13_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [11:11] Interrupt control mode register for GPIO13.
                    reg_gpio_13_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [12:13] Interrupt trigger mode register for GPIO14.
                    reg_gpio_14_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [14:14] Interrupt control mode register for GPIO14.
                    reg_gpio_14_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [15:16] Interrupt trigger mode register for GPIO15.
                    reg_gpio_15_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [17:17] Interrupt control mode register for GPIO15.
                    reg_gpio_15_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [18:19] Interrupt trigger mode register for GPIO16.
                    reg_gpio_16_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [20:20] Interrupt control mode register for GPIO16.
                    reg_gpio_16_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [21:22] Interrupt trigger mode register for GPIO17.
                    reg_gpio_17_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [23:23] Interrupt control mode register for GPIO17.
                    reg_gpio_17_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [24:25] Interrupt trigger mode register for GPIO18.
                    reg_gpio_18_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [26:26] Interrupt control mode register for GPIO18.
                    reg_gpio_18_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [27:28] Interrupt trigger mode register for GPIO19.
                    reg_gpio_19_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [29:29] Interrupt control mode register for GPIO19.
                    reg_gpio_19_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x400001c4));
                
                
                
                /// GPIO interrupt trigger and control register for GPIO20-GPIO29.
                pub const GPIO_INT_MODE_SET3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] Interrupt trigger mode register for GPIO20.
                    reg_gpio_20_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [2:2] Interrupt control mode register for GPIO20.
                    reg_gpio_20_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [3:4] Interrupt trigger mode register for GPIO21.
                    reg_gpio_21_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [5:5] Interrupt control mode register for GPIO21.
                    reg_gpio_21_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [6:7] Interrupt trigger mode register for GPIO22.
                    reg_gpio_22_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [8:8] Interrupt control mode register for GPIO22.
                    reg_gpio_22_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [9:10] Interrupt trigger mode register for GPIO23.
                    reg_gpio_23_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [11:11] Interrupt control mode register for GPIO23.
                    reg_gpio_23_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [12:13] Interrupt trigger mode register for GPIO24.
                    reg_gpio_24_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [14:14] Interrupt control mode register for GPIO24.
                    reg_gpio_24_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [15:16] Interrupt trigger mode register for GPIO25.
                    reg_gpio_25_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [17:17] Interrupt control mode register for GPIO25.
                    reg_gpio_25_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [18:19] Interrupt trigger mode register for GPIO26.
                    reg_gpio_26_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [20:20] Interrupt control mode register for GPIO26.
                    reg_gpio_26_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [21:22] Interrupt trigger mode register for GPIO27.
                    reg_gpio_27_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [23:23] Interrupt control mode register for GPIO27.
                    reg_gpio_27_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [24:25] Interrupt trigger mode register for GPIO28.
                    reg_gpio_28_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [26:26] Interrupt control mode register for GPIO28.
                    reg_gpio_28_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [27:28] Interrupt trigger mode register for GPIO29.
                    reg_gpio_29_interrupt_trigger_mode:  enum(u2) {
                        
                        negative_pulse = 0,
                        
                        positive_pulse = 1,
                        
                        negative_level = 2,
                        
                        positive_level = 3,
                        
                    }, 
                    
                    /// [29:29] Interrupt control mode register for GPIO29.
                    reg_gpio_29_interrupt_control_mode:  enum(u1) {
                        
                        synchronous = 0,
                        
                        asynchronous = 1,
                        
                    }, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x400001c8));
                
                
                
                /// led_driver.
                pub const led_driver = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    led_din_reg:  u1, 
                    
                    /// [1:1] 
                    led_din_sel:  u1, 
                    
                    /// [2:2] 
                    led_din_polarity_sel:  u1, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:7] 
                    leddrv_ibias:  u4, 
                    
                    /// [8:9] 
                    ir_rx_gpio_sel:  u2, 
                    
                    /// [10:30] 
                    res1:  u21, 
                    
                    /// [31:31] 
                    pu_leddrv:  u1, 
                    
                }), @ptrFromInt(0x40000224));
                
                
                
                /// gpdac_ctrl.
                pub const gpdac_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpdaca_rstn_ana:  u1, 
                    
                    /// [1:1] 
                    gpdacb_rstn_ana:  u1, 
                    
                    /// [2:6] 
                    res0:  u5, 
                    
                    /// [7:7] 
                    gpdac_test_en:  u1, 
                    
                    /// [8:8] 
                    gpdac_ref_sel:  u1, 
                    
                    /// [9:11] 
                    gpdac_test_sel:  u3, 
                    
                    /// [12:23] 
                    res1:  u12, 
                    
                    /// [24:31] 
                    gpdac_reserved:  u8, 
                    
                }), @ptrFromInt(0x40000308));
                
                
                
                /// gpdac_actrl.
                pub const gpdac_actrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpdac_a_en:  u1, 
                    
                    /// [1:1] 
                    gpdac_ioa_en:  u1, 
                    
                    /// [2:17] 
                    res0:  u16, 
                    
                    /// [18:19] 
                    gpdac_a_rng:  u2, 
                    
                    /// [20:22] 
                    gpdac_a_outmux:  u3, 
                    
                    /// [23:31] 
                    res1:  u9, 
                    
                }), @ptrFromInt(0x4000030c));
                
                
                
                /// gpdac_bctrl.
                pub const gpdac_bctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpdac_b_en:  u1, 
                    
                    /// [1:1] 
                    gpdac_iob_en:  u1, 
                    
                    /// [2:17] 
                    res0:  u16, 
                    
                    /// [18:19] 
                    gpdac_b_rng:  u2, 
                    
                    /// [20:22] 
                    gpdac_b_outmux:  u3, 
                    
                    /// [23:31] 
                    res1:  u9, 
                    
                }), @ptrFromInt(0x40000310));
                
                
                
                /// gpdac_data.
                pub const gpdac_data = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    gpdac_b_data:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:25] 
                    gpdac_a_data:  u10, 
                    
                    /// [26:31] 
                    res1:  u6, 
                    
                }), @ptrFromInt(0x40000314));
                
                
                
                /// tzc_glb_ctrl_0.
                pub const tzc_glb_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tzc_glb_swrst_s00_lock:  u1, 
                    
                    /// [1:1] 
                    tzc_glb_swrst_s01_lock:  u1, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:8] 
                    tzc_glb_swrst_s30_lock:  u1, 
                    
                    /// [9:11] 
                    res1:  u3, 
                    
                    /// [12:12] 
                    tzc_glb_ctrl_pwron_rst_lock:  u1, 
                    
                    /// [13:13] 
                    tzc_glb_ctrl_cpu_reset_lock:  u1, 
                    
                    /// [14:14] 
                    tzc_glb_ctrl_sys_reset_lock:  u1, 
                    
                    /// [15:15] 
                    tzc_glb_ctrl_ungated_ap_lock:  u1, 
                    
                    /// [16:24] 
                    res2:  u9, 
                    
                    /// [25:25] 
                    tzc_glb_misc_lock:  u1, 
                    
                    /// [26:26] 
                    tzc_glb_sram_lock:  u1, 
                    
                    /// [27:27] 
                    tzc_glb_l2c_lock:  u1, 
                    
                    /// [28:28] 
                    tzc_glb_bmx_lock:  u1, 
                    
                    /// [29:29] 
                    tzc_glb_dbg_lock:  u1, 
                    
                    /// [30:30] 
                    tzc_glb_mbist_lock:  u1, 
                    
                    /// [31:31] 
                    tzc_glb_clk_lock:  u1, 
                    
                }), @ptrFromInt(0x40000f00));
                
                
                
                /// tzc_glb_ctrl_1.
                pub const tzc_glb_ctrl_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tzc_glb_swrst_s20_lock:  u1, 
                    
                    /// [1:1] 
                    tzc_glb_swrst_s21_lock:  u1, 
                    
                    /// [2:2] 
                    tzc_glb_swrst_s22_lock:  u1, 
                    
                    /// [3:3] 
                    tzc_glb_swrst_s23_lock:  u1, 
                    
                    /// [4:4] 
                    tzc_glb_swrst_s24_lock:  u1, 
                    
                    /// [5:5] 
                    tzc_glb_swrst_s25_lock:  u1, 
                    
                    /// [6:6] 
                    tzc_glb_swrst_s26_lock:  u1, 
                    
                    /// [7:7] 
                    tzc_glb_swrst_s27_lock:  u1, 
                    
                    /// [8:8] 
                    tzc_glb_swrst_s28_lock:  u1, 
                    
                    /// [9:9] 
                    tzc_glb_swrst_s29_lock:  u1, 
                    
                    /// [10:10] 
                    tzc_glb_swrst_s2a_lock:  u1, 
                    
                    /// [11:11] 
                    tzc_glb_swrst_s2b_lock:  u1, 
                    
                    /// [12:12] 
                    tzc_glb_swrst_s2c_lock:  u1, 
                    
                    /// [13:13] 
                    tzc_glb_swrst_s2d_lock:  u1, 
                    
                    /// [14:14] 
                    tzc_glb_swrst_s2e_lock:  u1, 
                    
                    /// [15:15] 
                    tzc_glb_swrst_s2f_lock:  u1, 
                    
                    /// [16:16] 
                    tzc_glb_swrst_s10_lock:  u1, 
                    
                    /// [17:17] 
                    tzc_glb_swrst_s11_lock:  u1, 
                    
                    /// [18:18] 
                    tzc_glb_swrst_s12_lock:  u1, 
                    
                    /// [19:19] 
                    tzc_glb_swrst_s13_lock:  u1, 
                    
                    /// [20:20] 
                    tzc_glb_swrst_s14_lock:  u1, 
                    
                    /// [21:21] 
                    tzc_glb_swrst_s15_lock:  u1, 
                    
                    /// [22:22] 
                    tzc_glb_swrst_s16_lock:  u1, 
                    
                    /// [23:23] 
                    tzc_glb_swrst_s17_lock:  u1, 
                    
                    /// [24:24] 
                    tzc_glb_swrst_s18_lock:  u1, 
                    
                    /// [25:25] 
                    tzc_glb_swrst_s19_lock:  u1, 
                    
                    /// [26:26] 
                    tzc_glb_swrst_s1a_lock:  u1, 
                    
                    /// [27:27] 
                    tzc_glb_swrst_s1b_lock:  u1, 
                    
                    /// [28:28] 
                    tzc_glb_swrst_s1c_lock:  u1, 
                    
                    /// [29:29] 
                    tzc_glb_swrst_s1d_lock:  u1, 
                    
                    /// [30:30] 
                    tzc_glb_swrst_s1e_lock:  u1, 
                    
                    /// [31:31] 
                    tzc_glb_swrst_s1f_lock:  u1, 
                    
                }), @ptrFromInt(0x40000f04));
                
                
                
                /// tzc_glb_ctrl_2.
                pub const tzc_glb_ctrl_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tzc_glb_gpio_0_lock:  u1, 
                    
                    /// [1:1] 
                    tzc_glb_gpio_1_lock:  u1, 
                    
                    /// [2:2] 
                    tzc_glb_gpio_2_lock:  u1, 
                    
                    /// [3:3] 
                    tzc_glb_gpio_3_lock:  u1, 
                    
                    /// [4:4] 
                    tzc_glb_gpio_4_lock:  u1, 
                    
                    /// [5:5] 
                    tzc_glb_gpio_5_lock:  u1, 
                    
                    /// [6:6] 
                    tzc_glb_gpio_6_lock:  u1, 
                    
                    /// [7:7] 
                    tzc_glb_gpio_7_lock:  u1, 
                    
                    /// [8:8] 
                    tzc_glb_gpio_8_lock:  u1, 
                    
                    /// [9:9] 
                    tzc_glb_gpio_9_lock:  u1, 
                    
                    /// [10:10] 
                    tzc_glb_gpio_10_lock:  u1, 
                    
                    /// [11:11] 
                    tzc_glb_gpio_11_lock:  u1, 
                    
                    /// [12:12] 
                    tzc_glb_gpio_12_lock:  u1, 
                    
                    /// [13:13] 
                    tzc_glb_gpio_13_lock:  u1, 
                    
                    /// [14:14] 
                    tzc_glb_gpio_14_lock:  u1, 
                    
                    /// [15:15] 
                    tzc_glb_gpio_15_lock:  u1, 
                    
                    /// [16:16] 
                    tzc_glb_gpio_16_lock:  u1, 
                    
                    /// [17:17] 
                    tzc_glb_gpio_17_lock:  u1, 
                    
                    /// [18:18] 
                    tzc_glb_gpio_18_lock:  u1, 
                    
                    /// [19:19] 
                    tzc_glb_gpio_19_lock:  u1, 
                    
                    /// [20:20] 
                    tzc_glb_gpio_20_lock:  u1, 
                    
                    /// [21:21] 
                    tzc_glb_gpio_21_lock:  u1, 
                    
                    /// [22:22] 
                    tzc_glb_gpio_22_lock:  u1, 
                    
                    /// [23:23] 
                    tzc_glb_gpio_23_lock:  u1, 
                    
                    /// [24:24] 
                    tzc_glb_gpio_24_lock:  u1, 
                    
                    /// [25:25] 
                    tzc_glb_gpio_25_lock:  u1, 
                    
                    /// [26:26] 
                    tzc_glb_gpio_26_lock:  u1, 
                    
                    /// [27:27] 
                    tzc_glb_gpio_27_lock:  u1, 
                    
                    /// [28:28] 
                    tzc_glb_gpio_28_lock:  u1, 
                    
                    /// [29:31] 
                    res0:  u3, 
                    
                }), @ptrFromInt(0x40000f08));
                
                
                
                /// Reserved according to SDK.
                pub const tzc_glb_ctrl_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40000f0c));
                
                
            };
            
            /// RF control
            pub const RF = struct {
                
                
                /// Silicon revision
                pub const rf_rev = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    rf_id:  u8, 
                    
                    /// [8:15] 
                    fw_rev:  u8, 
                    
                    /// [16:23] 
                    hw_rev:  u8, 
                    
                    /// [24:31] 
                    res0:  u8, 
                    
                }), @ptrFromInt(0x40001000));
                
                
                
                /// Digital Control
                pub const rf_fsm_ctrl_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    res0:  u1, 
                    
                    /// [1:1] 
                    rf_fsm_ctrl_en:  u1, 
                    
                    /// [2:3] 
                    rf_fsm_t2r_cal_mode:  u2, 
                    
                    /// [4:6] 
                    rf_fsm_state:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:10] 
                    rf_rc_state_dbg:  u3, 
                    
                    /// [11:11] 
                    rf_rc_state_dbg_en:  u1, 
                    
                    /// [12:14] 
                    rf_fsm_st_int_sel:  u3, 
                    
                    /// [15:15] 
                    res2:  u1, 
                    
                    /// [16:16] 
                    rf_fsm_st_int:  u1, 
                    
                    /// [17:19] 
                    res3:  u3, 
                    
                    /// [20:20] 
                    rf_fsm_st_int_clr:  u1, 
                    
                    /// [21:23] 
                    res4:  u3, 
                    
                    /// [24:24] 
                    rf_fsm_st_int_set:  u1, 
                    
                    /// [25:27] 
                    res5:  u3, 
                    
                    /// [28:30] 
                    rf_rc_state_value:  u3, 
                    
                    /// [31:31] 
                    res6:  u1, 
                    
                }), @ptrFromInt(0x40001004));
                
                
                
                /// rfsm status reg
                pub const rf_fsm_ctrl_sw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    rf_fsm_sw_st:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:8] 
                    rf_fsm_sw_st_vld:  u1, 
                    
                    /// [9:11] 
                    res1:  u3, 
                    
                    /// [12:12] 
                    full_cal_en:  u1, 
                    
                    /// [13:15] 
                    res2:  u3, 
                    
                    /// [16:16] 
                    inc_cal_timeout:  u1, 
                    
                    /// [17:19] 
                    res3:  u3, 
                    
                    /// [20:20] 
                    lo_unlocked:  u1, 
                    
                    /// [21:31] 
                    res4:  u11, 
                    
                }), @ptrFromInt(0x40001008));
                
                
                
                /// Control logic switch
                pub const rfctrl_hw_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pu_ctrl_hw:  u1, 
                    
                    /// [1:1] 
                    rx_gain_ctrl_hw:  u1, 
                    
                    /// [2:2] 
                    tx_gain_ctrl_hw:  u1, 
                    
                    /// [3:3] 
                    lna_ctrl_hw:  u1, 
                    
                    /// [4:4] 
                    rbb_bw_ctrl_hw:  u1, 
                    
                    /// [5:5] 
                    trxcal_ctrl_hw:  u1, 
                    
                    /// [6:6] 
                    lo_ctrl_hw:  u1, 
                    
                    /// [7:7] 
                    inc_acal_ctrl_en_hw:  u1, 
                    
                    /// [8:8] 
                    inc_fcal_ctrl_en_hw:  u1, 
                    
                    /// [9:9] 
                    sdm_ctrl_hw:  u1, 
                    
                    /// [10:10] 
                    rbb_pkdet_en_ctrl_hw:  u1, 
                    
                    /// [11:11] 
                    rbb_pkdet_out_rstn_ctrl_hw:  u1, 
                    
                    /// [12:12] 
                    adda_ctrl_hw:  u1, 
                    
                    /// [13:31] 
                    res0:  u19, 
                    
                }), @ptrFromInt(0x4000100c));
                
                
                
                /// temp_comp.
                pub const temp_comp = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    const_acal:  u8, 
                    
                    /// [8:15] 
                    const_fcal:  u8, 
                    
                    /// [16:16] 
                    temp_comp_en:  u1, 
                    
                    /// [17:31] 
                    res0:  u15, 
                    
                }), @ptrFromInt(0x40001010));
                
                
                
                /// rfcal_status.
                pub const rfcal_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    rcal_status:  u2, 
                    
                    /// [2:3] 
                    adc_oscal_status:  u2, 
                    
                    /// [4:5] 
                    fcal_status:  u2, 
                    
                    /// [6:7] 
                    acal_status:  u2, 
                    
                    /// [8:9] 
                    inc_fcal_status:  u2, 
                    
                    /// [10:11] 
                    inc_acal_status:  u2, 
                    
                    /// [12:13] 
                    clkpll_cal_status:  u2, 
                    
                    /// [14:15] 
                    ros_status:  u2, 
                    
                    /// [16:17] 
                    tos_status:  u2, 
                    
                    /// [18:19] 
                    rccal_status:  u2, 
                    
                    /// [20:21] 
                    lo_leakcal_status:  u2, 
                    
                    /// [22:23] 
                    tiqcal_status_resv:  u2, 
                    
                    /// [24:25] 
                    riqcal_status_resv:  u2, 
                    
                    /// [26:27] 
                    pwdet_cal_status:  u2, 
                    
                    /// [28:29] 
                    tenscal_status:  u2, 
                    
                    /// [30:31] 
                    dpd_status:  u2, 
                    
                }), @ptrFromInt(0x40001014));
                
                
                
                /// rfcal_status2.
                pub const rfcal_status2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    dl_rfcal_table_status:  u2, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x40001018));
                
                
                
                /// Calibration mode register
                pub const rfcal_ctrlen = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rcal_en_resv:  u1, 
                    
                    /// [1:1] 
                    adc_oscal_en:  u1, 
                    
                    /// [2:2] 
                    dl_rfcal_table_en:  u1, 
                    
                    /// [3:3] 
                    fcal_en:  u1, 
                    
                    /// [4:4] 
                    acal_en:  u1, 
                    
                    /// [5:5] 
                    fcal_inc_en:  u1, 
                    
                    /// [6:6] 
                    acal_inc_en:  u1, 
                    
                    /// [7:7] 
                    roscal_inc_en:  u1, 
                    
                    /// [8:8] 
                    clkpll_cal_en:  u1, 
                    
                    /// [9:9] 
                    roscal_en:  u1, 
                    
                    /// [10:10] 
                    toscal_en:  u1, 
                    
                    /// [11:11] 
                    rccal_en:  u1, 
                    
                    /// [12:12] 
                    lo_leakcal_en:  u1, 
                    
                    /// [13:13] 
                    tiqcal_en:  u1, 
                    
                    /// [14:14] 
                    riqcal_en:  u1, 
                    
                    /// [15:15] 
                    pwdet_cal_en:  u1, 
                    
                    /// [16:16] 
                    tsencal_en:  u1, 
                    
                    /// [17:17] 
                    dpd_en:  u1, 
                    
                    /// [18:31] 
                    res0:  u14, 
                    
                }), @ptrFromInt(0x4000101c));
                
                
                
                /// rf calibration state enabl in full cal list
                pub const rfcal_stateen = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rcal_sten_resv:  u1, 
                    
                    /// [1:1] 
                    adc_oscal_sten:  u1, 
                    
                    /// [2:2] 
                    dl_rfcal_table_sten:  u1, 
                    
                    /// [3:3] 
                    fcal_sten:  u1, 
                    
                    /// [4:4] 
                    acal_sten:  u1, 
                    
                    /// [5:5] 
                    inc_fcal_sten:  u1, 
                    
                    /// [6:6] 
                    inc_acal_sten:  u1, 
                    
                    /// [7:7] 
                    clkpll_cal_sten:  u1, 
                    
                    /// [8:8] 
                    roscal_sten:  u1, 
                    
                    /// [9:9] 
                    toscal_sten_resv:  u1, 
                    
                    /// [10:10] 
                    rccal_sten:  u1, 
                    
                    /// [11:11] 
                    lo_leakcal_sten:  u1, 
                    
                    /// [12:12] 
                    tiqcal_sten:  u1, 
                    
                    /// [13:13] 
                    riqcal_sten:  u1, 
                    
                    /// [14:14] 
                    pwdet_cal_sten:  u1, 
                    
                    /// [15:15] 
                    tsencal_sten:  u1, 
                    
                    /// [16:16] 
                    dpd_sten:  u1, 
                    
                    /// [17:29] 
                    res0:  u13, 
                    
                    /// [30:31] 
                    rfcal_level:  u2, 
                    
                }), @ptrFromInt(0x40001020));
                
                
                
                /// SARADC Control Registers
                pub const saradc_resv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40001024));
                
                
                
                /// ZRF Control register 0
                pub const rf_base_ctrl1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    aupll_sdm_rst_dly:  u2, 
                    
                    /// [2:3] 
                    lo_sdm_rst_dly:  u2, 
                    
                    /// [4:7] 
                    res0:  u4, 
                    
                    /// [8:9] 
                    ppu_lead:  u2, 
                    
                    /// [10:11] 
                    pud_vco_dly:  u2, 
                    
                    /// [12:13] 
                    pud_iref_dly:  u2, 
                    
                    /// [14:15] 
                    pud_pa_dly:  u2, 
                    
                    /// [16:26] 
                    res1:  u11, 
                    
                    /// [27:28] 
                    mbg_trim:  u2, 
                    
                    /// [29:31] 
                    res2:  u3, 
                    
                }), @ptrFromInt(0x40001028));
                
                
                
                /// ZRF Control register 0
                pub const rf_base_ctrl2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x4000102c));
                
                
                
                /// pucr1.
                pub const pucr1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pu_sfreg:  u1, 
                    
                    /// [1:7] 
                    res0:  u7, 
                    
                    /// [8:8] 
                    pu_lna:  u1, 
                    
                    /// [9:9] 
                    pu_rmxgm:  u1, 
                    
                    /// [10:10] 
                    pu_rmx:  u1, 
                    
                    /// [11:11] 
                    pu_rbb:  u1, 
                    
                    /// [12:12] 
                    pu_adda_ldo:  u1, 
                    
                    /// [13:13] 
                    adc_clk_en:  u1, 
                    
                    /// [14:14] 
                    pu_adc:  u1, 
                    
                    /// [15:15] 
                    pu_op_atest:  u1, 
                    
                    /// [16:16] 
                    pu_pa:  u1, 
                    
                    /// [17:17] 
                    pu_tmx:  u1, 
                    
                    /// [18:18] 
                    pu_tbb:  u1, 
                    
                    /// [19:19] 
                    pu_dac:  u1, 
                    
                    /// [20:20] 
                    pu_vco:  u1, 
                    
                    /// [21:21] 
                    pu_fbdv:  u1, 
                    
                    /// [22:22] 
                    pu_pfd:  u1, 
                    
                    /// [23:23] 
                    pu_osmx:  u1, 
                    
                    /// [24:24] 
                    pu_rxbuf:  u1, 
                    
                    /// [25:25] 
                    pu_txbuf:  u1, 
                    
                    /// [26:26] 
                    trsw_en:  u1, 
                    
                    /// [27:27] 
                    res1:  u1, 
                    
                    /// [28:28] 
                    pu_pkdet:  u1, 
                    
                    /// [29:29] 
                    pu_rosdac:  u1, 
                    
                    /// [30:30] 
                    pu_pwrmx:  u1, 
                    
                    /// [31:31] 
                    pu_tosdac:  u1, 
                    
                }), @ptrFromInt(0x40001030));
                
                
                
                /// read only from hardware logic
                pub const pucr1_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pu_sfreg_hw:  u1, 
                    
                    /// [1:7] 
                    res0:  u7, 
                    
                    /// [8:8] 
                    pu_lna_hw:  u1, 
                    
                    /// [9:9] 
                    pu_rmxgm_hw:  u1, 
                    
                    /// [10:10] 
                    pu_rmx_hw:  u1, 
                    
                    /// [11:11] 
                    pu_rbb_hw:  u1, 
                    
                    /// [12:12] 
                    pu_adda_ldo_hw:  u1, 
                    
                    /// [13:13] 
                    adc_clk_en_hw:  u1, 
                    
                    /// [14:14] 
                    pu_adc_hw:  u1, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:16] 
                    pu_pa_hw:  u1, 
                    
                    /// [17:17] 
                    pu_tmx_hw:  u1, 
                    
                    /// [18:18] 
                    pu_tbb_hw:  u1, 
                    
                    /// [19:19] 
                    pu_dac_hw:  u1, 
                    
                    /// [20:20] 
                    pu_vco_hw:  u1, 
                    
                    /// [21:21] 
                    pu_fbdv_hw:  u1, 
                    
                    /// [22:22] 
                    pu_pfd_hw:  u1, 
                    
                    /// [23:23] 
                    pu_osmx_hw:  u1, 
                    
                    /// [24:24] 
                    pu_rxbuf_hw:  u1, 
                    
                    /// [25:25] 
                    pu_txbuf_hw:  u1, 
                    
                    /// [26:26] 
                    trsw_en_hw:  u1, 
                    
                    /// [27:27] 
                    res2:  u1, 
                    
                    /// [28:28] 
                    pu_pkdet_hw:  u1, 
                    
                    /// [29:29] 
                    pu_rosdac_hw:  u1, 
                    
                    /// [30:30] 
                    res3:  u1, 
                    
                    /// [31:31] 
                    pu_tosdac_hw:  u1, 
                    
                }), @ptrFromInt(0x40001034));
                
                
                
                /// pucr2.
                pub const pucr2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40001038));
                
                
                
                /// pucr2_hw.
                pub const pucr2_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x4000103c));
                
                
                
                /// ppu_ctrl_hw.
                pub const ppu_ctrl_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    res0:  u8, 
                    
                    /// [8:8] 
                    ppu_lna_hw:  u1, 
                    
                    /// [9:9] 
                    ppu_rmxgm_hw:  u1, 
                    
                    /// [10:10] 
                    res1:  u1, 
                    
                    /// [11:11] 
                    ppu_rbb_hw:  u1, 
                    
                    /// [12:19] 
                    res2:  u8, 
                    
                    /// [20:20] 
                    ppu_vco_hw:  u1, 
                    
                    /// [21:21] 
                    ppu_fbdv_hw:  u1, 
                    
                    /// [22:22] 
                    ppu_pfd_hw:  u1, 
                    
                    /// [23:23] 
                    ppu_osmx_hw:  u1, 
                    
                    /// [24:24] 
                    ppu_rxbuf_hw:  u1, 
                    
                    /// [25:25] 
                    ppu_txbuf_hw:  u1, 
                    
                    /// [26:31] 
                    res3:  u6, 
                    
                }), @ptrFromInt(0x40001040));
                
                
                
                /// pud_ctrl_hw.
                pub const pud_ctrl_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:19] 
                    res0:  u20, 
                    
                    /// [20:20] 
                    pud_vco_hw:  u1, 
                    
                    /// [21:31] 
                    res1:  u11, 
                    
                }), @ptrFromInt(0x40001044));
                
                
                
                /// gain control1
                pub const trx_gain1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    gc_lna:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:5] 
                    gc_rmxgm:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:9] 
                    gc_rbb1:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:14] 
                    gc_rbb2:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:18] 
                    gc_tmx:  u3, 
                    
                    /// [19:19] 
                    res4:  u1, 
                    
                    /// [20:24] 
                    gc_tbb:  u5, 
                    
                    /// [25:27] 
                    res5:  u3, 
                    
                    /// [28:29] 
                    gc_tbb_boost:  u2, 
                    
                    /// [30:31] 
                    res6:  u2, 
                    
                }), @ptrFromInt(0x40001048));
                
                
                
                /// trx gain hardware readback
                pub const trx_gain_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    gc_lna_hw:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:5] 
                    gc_rmxgm_hw:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:9] 
                    gc_rbb1_hw:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:14] 
                    gc_rbb2_hw:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:18] 
                    gc_tmx_hw:  u3, 
                    
                    /// [19:19] 
                    res4:  u1, 
                    
                    /// [20:24] 
                    gc_tbb_hw:  u5, 
                    
                    /// [25:27] 
                    res5:  u3, 
                    
                    /// [28:29] 
                    gc_tbb_boost_hw:  u2, 
                    
                    /// [30:31] 
                    res6:  u2, 
                    
                }), @ptrFromInt(0x4000104c));
                
                
                
                /// dc test register
                pub const ten_dc = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    tmux:  u3, 
                    
                    /// [3:3] 
                    dc_tp_en:  u1, 
                    
                    /// [4:4] 
                    dc_tp_clkpll_en:  u1, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:8] 
                    ten_clkpll:  u1, 
                    
                    /// [9:9] 
                    ten_clkpll_sfreg:  u1, 
                    
                    /// [10:11] 
                    res1:  u2, 
                    
                    /// [12:12] 
                    ten_rrf_0:  u1, 
                    
                    /// [13:13] 
                    ten_rrf_1:  u1, 
                    
                    /// [14:14] 
                    ten_pa:  u1, 
                    
                    /// [15:15] 
                    ten_tmx:  u1, 
                    
                    /// [16:16] 
                    ten_tia:  u1, 
                    
                    /// [17:17] 
                    ten_bq:  u1, 
                    
                    /// [18:18] 
                    ten_atest:  u1, 
                    
                    /// [19:19] 
                    ten_tbb:  u1, 
                    
                    /// [20:20] 
                    ten_adc:  u1, 
                    
                    /// [21:21] 
                    ten_dac_i:  u1, 
                    
                    /// [22:22] 
                    ten_dac_q:  u1, 
                    
                    /// [23:23] 
                    res2:  u1, 
                    
                    /// [24:24] 
                    ten_vco:  u1, 
                    
                    /// [25:25] 
                    ten_pfdcp:  u1, 
                    
                    /// [26:26] 
                    ten_lf:  u1, 
                    
                    /// [27:27] 
                    ten_lodist:  u1, 
                    
                    /// [28:31] 
                    res3:  u4, 
                    
                }), @ptrFromInt(0x40001050));
                
                
                
                /// digital test register
                pub const ten_dig = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    dten_clkpll_postdiv_clk:  u1, 
                    
                    /// [1:1] 
                    dten_clkpll_clk96m:  u1, 
                    
                    /// [2:2] 
                    dten_clkpll_clk32m:  u1, 
                    
                    /// [3:3] 
                    dten_clkpll_fsdm:  u1, 
                    
                    /// [4:4] 
                    dten_clkpll_fref:  u1, 
                    
                    /// [5:5] 
                    dten_clkpll_fin:  u1, 
                    
                    /// [6:6] 
                    dten_lo_fsdm:  u1, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:8] 
                    dten_lo_fref:  u1, 
                    
                    /// [9:9] 
                    dtest_pull_down:  u1, 
                    
                    /// [10:22] 
                    res1:  u13, 
                    
                    /// [23:23] 
                    rf_dtest_en:  u1, 
                    
                    /// [24:31] 
                    res2:  u8, 
                    
                }), @ptrFromInt(0x40001054));
                
                
                
                /// ac test register
                pub const ten_ac = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    atest_op_cc:  u4, 
                    
                    /// [4:4] 
                    atest_dac_en:  u1, 
                    
                    /// [5:5] 
                    atest_in_trx_sw:  u1, 
                    
                    /// [6:6] 
                    atest_in_en:  u1, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:9] 
                    atest_gain_r9:  u2, 
                    
                    /// [10:11] 
                    atest_gain_r8:  u2, 
                    
                    /// [12:13] 
                    atest_gain_r7:  u2, 
                    
                    /// [14:15] 
                    atest_gain_r6:  u2, 
                    
                    /// [16:18] 
                    atest_gain_r5:  u3, 
                    
                    /// [19:19] 
                    res1:  u1, 
                    
                    /// [20:20] 
                    atest_out_en_q:  u1, 
                    
                    /// [21:21] 
                    atest_out_en_i:  u1, 
                    
                    /// [22:22] 
                    atest_in_en_q:  u1, 
                    
                    /// [23:23] 
                    atest_in_en_i:  u1, 
                    
                    /// [24:31] 
                    res2:  u8, 
                    
                }), @ptrFromInt(0x40001058));
                
                
                
                /// pmip_mv2aon.
                pub const pmip_mv2aon = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x4000105c));
                
                
                
                /// RX normal bias mode registers
                pub const cip = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    vg11_sel:  u2, 
                    
                    /// [2:3] 
                    vg13_sel:  u2, 
                    
                    /// [4:31] 
                    res0:  u28, 
                    
                }), @ptrFromInt(0x40001060));
                
                
                
                /// pa1.
                pub const pa1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    pa_iaq:  u3, 
                    
                    /// [3:3] 
                    pa_etb_en:  u1, 
                    
                    /// [4:7] 
                    pa_iet:  u4, 
                    
                    /// [8:11] 
                    pa_vbcore:  u4, 
                    
                    /// [12:14] 
                    pa_vbcas:  u3, 
                    
                    /// [15:15] 
                    pa_half_on:  u1, 
                    
                    /// [16:16] 
                    pa_ib_fix:  u1, 
                    
                    /// [17:17] 
                    pa_lz_bias_en:  u1, 
                    
                    /// [18:21] 
                    pa_pwrmx_osdac:  u4, 
                    
                    /// [22:22] 
                    pa_pwrmx_dac_pn_switch:  u1, 
                    
                    /// [23:23] 
                    res0:  u1, 
                    
                    /// [24:26] 
                    pa_pwrmx_bm:  u3, 
                    
                    /// [27:27] 
                    res1:  u1, 
                    
                    /// [28:31] 
                    pa_att_gc:  u4, 
                    
                }), @ptrFromInt(0x40001064));
                
                
                
                /// RX normal bias mode registers
                pub const pa2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    res0:  u3, 
                    
                    /// [3:3] 
                    pa_etb_en_hw:  u1, 
                    
                    /// [4:7] 
                    pa_iet_hw:  u4, 
                    
                    /// [8:11] 
                    pa_vbcore_hw:  u4, 
                    
                    /// [12:14] 
                    pa_vbcas_hw:  u3, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:16] 
                    pa_half_on_hw:  u1, 
                    
                    /// [17:17] 
                    pa_ib_fix_hw:  u1, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x40001068));
                
                
                
                /// tmx.
                pub const tmx = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    tmx_cs:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:6] 
                    tmx_bm_sw:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:10] 
                    tmx_bm_cas:  u3, 
                    
                    /// [11:11] 
                    res2:  u1, 
                    
                    /// [12:14] 
                    tmx_bm_cas_bulk:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:16] 
                    tx_tsense_en:  u1, 
                    
                    /// [17:31] 
                    res4:  u15, 
                    
                }), @ptrFromInt(0x4000106c));
                
                
                
                /// tbb.
                pub const tbb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    tbb_bm_sf:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:5] 
                    tbb_bm_cg:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:9] 
                    tbb_vcm:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:13] 
                    tbb_cflt:  u2, 
                    
                    /// [14:14] 
                    tbb_iq_bias_short:  u1, 
                    
                    /// [15:15] 
                    tbb_atest_out_en:  u1, 
                    
                    /// [16:21] 
                    tbb_tosdac_q:  u6, 
                    
                    /// [22:23] 
                    res3:  u2, 
                    
                    /// [24:29] 
                    tbb_tosdac_i:  u6, 
                    
                    /// [30:31] 
                    res4:  u2, 
                    
                }), @ptrFromInt(0x40001070));
                
                
                
                /// lna.
                pub const lna = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    lna_bm:  u4, 
                    
                    /// [4:7] 
                    lna_bm_hw:  u4, 
                    
                    /// [8:11] 
                    lna_load_csw:  u4, 
                    
                    /// [12:15] 
                    lna_load_csw_hw:  u4, 
                    
                    /// [16:18] 
                    lna_rfb_match:  u3, 
                    
                    /// [19:19] 
                    res0:  u1, 
                    
                    /// [20:21] 
                    lna_cap_lg:  u2, 
                    
                    /// [22:23] 
                    res1:  u2, 
                    
                    /// [24:26] 
                    lna_lg_gsel:  u3, 
                    
                    /// [27:31] 
                    res2:  u5, 
                    
                }), @ptrFromInt(0x40001074));
                
                
                
                /// rmxgm.
                pub const rmxgm = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    rmx_bm:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:6] 
                    rmxgm_bm:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:8] 
                    rmxgm_10m_mode_en:  u1, 
                    
                    /// [9:31] 
                    res2:  u23, 
                    
                }), @ptrFromInt(0x40001078));
                
                
                
                /// rbb1.
                pub const rbb1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    rosdac_q:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    rosdac_i:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    rosdac_q_hw:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    rosdac_i_hw:  u6, 
                    
                    /// [30:30] 
                    res3:  u1, 
                    
                    /// [31:31] 
                    rosdac_range:  u1, 
                    
                }), @ptrFromInt(0x4000107c));
                
                
                
                /// rbb2.
                pub const rbb2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    rbb_cap2_fc_q:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    rbb_cap2_fc_i:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    rbb_cap1_fc_q:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    rbb_cap1_fc_i:  u6, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x40001080));
                
                
                
                /// rbb3.
                pub const rbb3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rbb_bt_mode_hw:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    rbb_bt_mode:  u1, 
                    
                    /// [5:6] 
                    rbb_bt_fif_tune:  u2, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:9] 
                    rbb_deq:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:14] 
                    rbb_bm_op:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:17] 
                    rbb_vcm:  u2, 
                    
                    /// [18:19] 
                    res4:  u2, 
                    
                    /// [20:20] 
                    rbb_bq_iqbias_short:  u1, 
                    
                    /// [21:21] 
                    rbb_tia_iqbias_short:  u1, 
                    
                    /// [22:23] 
                    res5:  u2, 
                    
                    /// [24:25] 
                    rbb_bw:  u2, 
                    
                    /// [26:27] 
                    res6:  u2, 
                    
                    /// [28:28] 
                    rxiqcal_en:  u1, 
                    
                    /// [29:30] 
                    res7:  u2, 
                    
                    /// [31:31] 
                    pwr_det_en:  u1, 
                    
                }), @ptrFromInt(0x40001084));
                
                
                
                /// rbb4.
                pub const rbb4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    rbb_pkdet_vth:  u4, 
                    
                    /// [4:4] 
                    rbb_pkdet_out_rstn:  u1, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:8] 
                    rbb_pkdet_en:  u1, 
                    
                    /// [9:11] 
                    res1:  u3, 
                    
                    /// [12:12] 
                    rbb_pkdet_out_rstn_hw:  u1, 
                    
                    /// [13:15] 
                    res2:  u3, 
                    
                    /// [16:16] 
                    rbb_pkdet_en_hw:  u1, 
                    
                    /// [17:19] 
                    res3:  u3, 
                    
                    /// [20:20] 
                    pkdet_out_raw:  u1, 
                    
                    /// [21:23] 
                    res4:  u3, 
                    
                    /// [24:24] 
                    pkdet_out_latch:  u1, 
                    
                    /// [25:31] 
                    res5:  u7, 
                    
                }), @ptrFromInt(0x40001088));
                
                
                
                /// adda1.
                pub const adda1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    dac_dvdd_sel:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:5] 
                    dac_bias_sel:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:9] 
                    dac_clk_sel:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:12] 
                    dac_rccalsel:  u1, 
                    
                    /// [13:13] 
                    dac_clk_sync_inv:  u1, 
                    
                    /// [14:15] 
                    res3:  u2, 
                    
                    /// [16:16] 
                    adda_ldo_byps:  u1, 
                    
                    /// [17:19] 
                    res4:  u3, 
                    
                    /// [20:22] 
                    adda_ldo_dvdd_sel:  u3, 
                    
                    /// [23:23] 
                    res5:  u1, 
                    
                    /// [24:26] 
                    adda_ldo_dvdd_sel_hw:  u3, 
                    
                    /// [27:31] 
                    res6:  u5, 
                    
                }), @ptrFromInt(0x4000108c));
                
                
                
                /// adda2.
                pub const adda2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    adc_vref_sel:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:5] 
                    adc_dly_ctl:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:9] 
                    adc_dvdd_sel:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:12] 
                    adc_sar_ascal_en:  u1, 
                    
                    /// [13:15] 
                    res3:  u3, 
                    
                    /// [16:16] 
                    adc_gt_rm:  u1, 
                    
                    /// [17:19] 
                    res4:  u3, 
                    
                    /// [20:20] 
                    adc_clk_sync_inv:  u1, 
                    
                    /// [21:23] 
                    res5:  u3, 
                    
                    /// [24:24] 
                    adc_clk_inv:  u1, 
                    
                    /// [25:27] 
                    res6:  u3, 
                    
                    /// [28:28] 
                    adc_clk_div_sel:  u1, 
                    
                    /// [29:31] 
                    res7:  u3, 
                    
                }), @ptrFromInt(0x40001090));
                
                
                
                /// vco1.
                pub const vco1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    lo_vco_freq_cw:  u8, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_hw:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw:  u5, 
                    
                    /// [21:23] 
                    res0:  u3, 
                    
                    /// [24:28] 
                    lo_vco_idac_cw_hw:  u5, 
                    
                    /// [29:31] 
                    res1:  u3, 
                    
                }), @ptrFromInt(0x400010a0));
                
                
                
                /// vco2.
                pub const vco2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    lo_vco_vbias_cw:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:4] 
                    lo_vco_idac_boot:  u1, 
                    
                    /// [5:5] 
                    lo_vco_short_vbias_filter:  u1, 
                    
                    /// [6:6] 
                    lo_vco_short_idac_filter:  u1, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:10] 
                    acal_vref_cw:  u3, 
                    
                    /// [11:11] 
                    res2:  u1, 
                    
                    /// [12:12] 
                    acal_vco_ud:  u1, 
                    
                    /// [13:15] 
                    res3:  u3, 
                    
                    /// [16:16] 
                    acal_inc_en_hw:  u1, 
                    
                    /// [17:31] 
                    res4:  u15, 
                    
                }), @ptrFromInt(0x400010a4));
                
                
                
                /// vco3.
                pub const vco3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    fcal_div:  u16, 
                    
                    /// [16:31] 
                    fcal_cnt_op:  u16, 
                    
                }), @ptrFromInt(0x400010a8));
                
                
                
                /// vco4.
                pub const vco4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    res0:  u4, 
                    
                    /// [4:4] 
                    fcal_cnt_start:  u1, 
                    
                    /// [5:7] 
                    res1:  u3, 
                    
                    /// [8:8] 
                    fcal_inc_en_hw:  u1, 
                    
                    /// [9:15] 
                    res2:  u7, 
                    
                    /// [16:16] 
                    fcal_inc_large_range:  u1, 
                    
                    /// [17:19] 
                    res3:  u3, 
                    
                    /// [20:20] 
                    fcal_cnt_rdy:  u1, 
                    
                    /// [21:23] 
                    res4:  u3, 
                    
                    /// [24:25] 
                    fcal_inc_vctrl_ud:  u2, 
                    
                    /// [26:31] 
                    res5:  u6, 
                    
                }), @ptrFromInt(0x400010ac));
                
                
                
                /// pfdcp.
                pub const pfdcp = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    lo_cp_sel:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    lo_cp_sel_hw:  u1, 
                    
                    /// [5:7] 
                    res1:  u3, 
                    
                    /// [8:8] 
                    lo_cp_startup_en:  u1, 
                    
                    /// [9:11] 
                    res2:  u3, 
                    
                    /// [12:12] 
                    lo_cp_ota_en:  u1, 
                    
                    /// [13:15] 
                    res3:  u3, 
                    
                    /// [16:16] 
                    lo_cp_opamp_en:  u1, 
                    
                    /// [17:19] 
                    res4:  u3, 
                    
                    /// [20:20] 
                    lo_cp_hiz:  u1, 
                    
                    /// [21:23] 
                    res5:  u3, 
                    
                    /// [24:24] 
                    lo_pfd_rvdd_boost:  u1, 
                    
                    /// [25:27] 
                    res6:  u3, 
                    
                    /// [28:28] 
                    lo_pfd_rst_csd:  u1, 
                    
                    /// [29:29] 
                    lo_pfd_rst_csd_hw:  u1, 
                    
                    /// [30:31] 
                    res7:  u2, 
                    
                }), @ptrFromInt(0x400010b0));
                
                
                
                /// lo.
                pub const lo = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    lo_lf_rz_hw:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:5] 
                    lo_lf_r4_hw:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:9] 
                    lo_lf_cz_hw:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:13] 
                    lo_lf_rz:  u2, 
                    
                    /// [14:15] 
                    lo_lf_cz:  u2, 
                    
                    /// [16:17] 
                    lo_lf_r4:  u2, 
                    
                    /// [18:18] 
                    lo_lf_r4_short:  u1, 
                    
                    /// [19:19] 
                    res3:  u1, 
                    
                    /// [20:20] 
                    lo_slipped_dn:  u1, 
                    
                    /// [21:23] 
                    res4:  u3, 
                    
                    /// [24:24] 
                    lo_slipped_up:  u1, 
                    
                    /// [25:31] 
                    res5:  u7, 
                    
                }), @ptrFromInt(0x400010b4));
                
                
                
                /// fbdv.
                pub const fbdv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    lo_fbdv_halfstep_en_hw:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    lo_fbdv_halfstep_en:  u1, 
                    
                    /// [5:7] 
                    res1:  u3, 
                    
                    /// [8:9] 
                    lo_fbdv_sel_sample_clk:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:13] 
                    lo_fbdv_sel_fb_clk:  u2, 
                    
                    /// [14:15] 
                    res3:  u2, 
                    
                    /// [16:16] 
                    lo_fbdv_rst:  u1, 
                    
                    /// [17:19] 
                    res4:  u3, 
                    
                    /// [20:20] 
                    lo_fbdv_rst_hw:  u1, 
                    
                    /// [21:31] 
                    res5:  u11, 
                    
                }), @ptrFromInt(0x400010b8));
                
                
                
                /// lodist.
                pub const lodist = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    lo_osmx_xgm_boost:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    lo_osmx_en_xgm:  u1, 
                    
                    /// [5:7] 
                    res1:  u3, 
                    
                    /// [8:8] 
                    lo_osmx_fix_cap:  u1, 
                    
                    /// [9:11] 
                    res2:  u3, 
                    
                    /// [12:12] 
                    lo_osmx_vbuf_stre:  u1, 
                    
                    /// [13:15] 
                    res3:  u3, 
                    
                    /// [16:17] 
                    lo_osmx_capbank_bias:  u2, 
                    
                    /// [18:19] 
                    res4:  u2, 
                    
                    /// [20:23] 
                    lo_osmx_cap:  u4, 
                    
                    /// [24:24] 
                    lo_lodist_txbuf_stre:  u1, 
                    
                    /// [25:27] 
                    res5:  u3, 
                    
                    /// [28:28] 
                    lo_lodist_rxbuf_stre:  u1, 
                    
                    /// [29:31] 
                    res6:  u3, 
                    
                }), @ptrFromInt(0x400010bc));
                
                
                
                /// sdm1.
                pub const sdm1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    lo_sdm_dither_sel_hw:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:4] 
                    lo_sdm_bypass_hw:  u1, 
                    
                    /// [5:7] 
                    res1:  u3, 
                    
                    /// [8:9] 
                    lo_sdm_dither_sel:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:12] 
                    lo_sdm_bypass:  u1, 
                    
                    /// [13:15] 
                    res3:  u3, 
                    
                    /// [16:16] 
                    lo_sdm_rstb:  u1, 
                    
                    /// [17:17] 
                    lo_sdm_rstb_hw:  u1, 
                    
                    /// [18:19] 
                    res4:  u2, 
                    
                    /// [20:20] 
                    lo_sdm_flag:  u1, 
                    
                    /// [21:31] 
                    res5:  u11, 
                    
                }), @ptrFromInt(0x400010c0));
                
                
                
                /// sdm2.
                pub const sdm2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:29] 
                    lo_sdmin:  u30, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x400010c4));
                
                
                
                /// sdm3.
                pub const sdm3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:29] 
                    lo_sdmin_hw:  u30, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x400010c8));
                
                
                
                /// rf_resv_reg_0.
                pub const rf_resv_reg_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_reserved0:  u32, 
                    
                }), @ptrFromInt(0x400010ec));
                
                
                
                /// rf_resv_reg_1.
                pub const rf_resv_reg_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_reserved1:  u32, 
                    
                }), @ptrFromInt(0x400010f0));
                
                
                
                /// rf_resv_reg_2.
                pub const rf_resv_reg_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_reserved2:  u32, 
                    
                }), @ptrFromInt(0x400010f4));
                
                
                
                /// rrf_gain_index1.
                pub const rrf_gain_index1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    gain_ctrl0_gc_rmxgm:  u2, 
                    
                    /// [2:4] 
                    gain_ctrl0_gc_lna:  u3, 
                    
                    /// [5:6] 
                    gain_ctrl1_gc_rmxgm:  u2, 
                    
                    /// [7:9] 
                    gain_ctrl1_gc_lna:  u3, 
                    
                    /// [10:11] 
                    gain_ctrl2_gc_rmxgm:  u2, 
                    
                    /// [12:14] 
                    gain_ctrl2_gc_lna:  u3, 
                    
                    /// [15:16] 
                    gain_ctrl3_gc_rmxgm:  u2, 
                    
                    /// [17:19] 
                    gain_ctrl3_gc_lna:  u3, 
                    
                    /// [20:21] 
                    gain_ctrl4_gc_rmxgm:  u2, 
                    
                    /// [22:24] 
                    gain_ctrl4_gc_lna:  u3, 
                    
                    /// [25:26] 
                    gain_ctrl5_gc_rmxgm:  u2, 
                    
                    /// [27:29] 
                    gain_ctrl5_gc_lna:  u3, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x400010f8));
                
                
                
                /// rrf_gain_index2.
                pub const rrf_gain_index2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    gain_ctrl8_gc_rmxgm:  u2, 
                    
                    /// [2:4] 
                    gain_ctrl8_gc_lna:  u3, 
                    
                    /// [5:6] 
                    gain_ctrl7_gc_rmxgm:  u2, 
                    
                    /// [7:9] 
                    gain_ctrl7_gc_lna:  u3, 
                    
                    /// [10:11] 
                    gain_ctrl6_gc_rmxgm:  u2, 
                    
                    /// [12:14] 
                    gain_ctrl6_gc_lna:  u3, 
                    
                    /// [15:31] 
                    res0:  u17, 
                    
                }), @ptrFromInt(0x400010fc));
                
                
                
                /// lna_ctrl_hw_mux.
                pub const lna_ctrl_hw_mux = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    lna_bm_hg:  u4, 
                    
                    /// [4:7] 
                    lna_bm_lg:  u4, 
                    
                    /// [8:11] 
                    lna_load_csw_hg:  u4, 
                    
                    /// [12:15] 
                    lna_load_csw_lg:  u4, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x40001100));
                
                
                
                /// rbb_gain_index1.
                pub const rbb_gain_index1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    gain_ctrl0_gc_rbb1:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:6] 
                    gain_ctrl0_gc_rbb2:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:9] 
                    gain_ctrl1_gc_rbb1:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:14] 
                    gain_ctrl1_gc_rbb2:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:17] 
                    gain_ctrl2_gc_rbb1:  u2, 
                    
                    /// [18:19] 
                    res4:  u2, 
                    
                    /// [20:22] 
                    gain_ctrl2_gc_rbb2:  u3, 
                    
                    /// [23:23] 
                    res5:  u1, 
                    
                    /// [24:25] 
                    gain_ctrl3_gc_rbb1:  u2, 
                    
                    /// [26:27] 
                    res6:  u2, 
                    
                    /// [28:30] 
                    gain_ctrl3_gc_rbb2:  u3, 
                    
                    /// [31:31] 
                    res7:  u1, 
                    
                }), @ptrFromInt(0x40001104));
                
                
                
                /// rbb_gain_index2.
                pub const rbb_gain_index2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    gain_ctrl4_gc_rbb1:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:6] 
                    gain_ctrl4_gc_rbb2:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:9] 
                    gain_ctrl5_gc_rbb1:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:14] 
                    gain_ctrl5_gc_rbb2:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:17] 
                    gain_ctrl6_gc_rbb1:  u2, 
                    
                    /// [18:19] 
                    res4:  u2, 
                    
                    /// [20:22] 
                    gain_ctrl6_gc_rbb2:  u3, 
                    
                    /// [23:23] 
                    res5:  u1, 
                    
                    /// [24:25] 
                    gain_ctrl7_gc_rbb1:  u2, 
                    
                    /// [26:27] 
                    res6:  u2, 
                    
                    /// [28:30] 
                    gain_ctrl7_gc_rbb2:  u3, 
                    
                    /// [31:31] 
                    res7:  u1, 
                    
                }), @ptrFromInt(0x40001108));
                
                
                
                /// rbb_gain_index3.
                pub const rbb_gain_index3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    gain_ctrl8_gc_rbb1:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:6] 
                    gain_ctrl8_gc_rbb2:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:9] 
                    gain_ctrl9_gc_rbb1:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:14] 
                    gain_ctrl9_gc_rbb2:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:17] 
                    gain_ctrl10_gc_rbb1:  u2, 
                    
                    /// [18:19] 
                    res4:  u2, 
                    
                    /// [20:22] 
                    gain_ctrl10_gc_rbb2:  u3, 
                    
                    /// [23:23] 
                    res5:  u1, 
                    
                    /// [24:25] 
                    gain_ctrl11_gc_rbb1:  u2, 
                    
                    /// [26:27] 
                    res6:  u2, 
                    
                    /// [28:30] 
                    gain_ctrl11_gc_rbb2:  u3, 
                    
                    /// [31:31] 
                    res7:  u1, 
                    
                }), @ptrFromInt(0x4000110c));
                
                
                
                /// rbb_gain_index4.
                pub const rbb_gain_index4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    gain_ctrl12_gc_rbb1:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:6] 
                    gain_ctrl12_gc_rbb2:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:9] 
                    gain_ctrl13_gc_rbb1:  u2, 
                    
                    /// [10:11] 
                    res2:  u2, 
                    
                    /// [12:14] 
                    gain_ctrl13_gc_rbb2:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:17] 
                    gain_ctrl14_gc_rbb1:  u2, 
                    
                    /// [18:19] 
                    res4:  u2, 
                    
                    /// [20:22] 
                    gain_ctrl14_gc_rbb2:  u3, 
                    
                    /// [23:23] 
                    res5:  u1, 
                    
                    /// [24:25] 
                    gain_ctrl15_gc_rbb1:  u2, 
                    
                    /// [26:27] 
                    res6:  u2, 
                    
                    /// [28:30] 
                    gain_ctrl15_gc_rbb2:  u3, 
                    
                    /// [31:31] 
                    res7:  u1, 
                    
                }), @ptrFromInt(0x40001110));
                
                
                
                /// rbb_gain_index5.
                pub const rbb_gain_index5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    gain_ctrl16_gc_rbb1:  u2, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:6] 
                    gain_ctrl16_gc_rbb2:  u3, 
                    
                    /// [7:31] 
                    res1:  u25, 
                    
                }), @ptrFromInt(0x40001114));
                
                
                
                /// tbb_gain_index1.
                pub const tbb_gain_index1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gain_ctrl0_gc_tbb:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:10] 
                    gain_ctrl0_gc_tmx:  u3, 
                    
                    /// [11:11] 
                    res1:  u1, 
                    
                    /// [12:13] 
                    gain_ctrl0_dac_bias_sel:  u2, 
                    
                    /// [14:15] 
                    gain_ctrl0_gc_tbb_boost:  u2, 
                    
                    /// [16:20] 
                    gain_ctrl1_gc_tbb:  u5, 
                    
                    /// [21:23] 
                    res2:  u3, 
                    
                    /// [24:26] 
                    gain_ctrl1_gc_tmx:  u3, 
                    
                    /// [27:27] 
                    res3:  u1, 
                    
                    /// [28:29] 
                    gain_ctrl1_dac_bias_sel:  u2, 
                    
                    /// [30:31] 
                    gain_ctrl1_gc_tbb_boost:  u2, 
                    
                }), @ptrFromInt(0x40001118));
                
                
                
                /// tbb_gain_index2.
                pub const tbb_gain_index2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gain_ctrl2_gc_tbb:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:10] 
                    gain_ctrl2_gc_tmx:  u3, 
                    
                    /// [11:11] 
                    res1:  u1, 
                    
                    /// [12:13] 
                    gain_ctrl2_dac_bias_sel:  u2, 
                    
                    /// [14:15] 
                    gain_ctrl2_gc_tbb_boost:  u2, 
                    
                    /// [16:20] 
                    gain_ctrl3_gc_tbb:  u5, 
                    
                    /// [21:23] 
                    res2:  u3, 
                    
                    /// [24:26] 
                    gain_ctrl3_gc_tmx:  u3, 
                    
                    /// [27:27] 
                    res3:  u1, 
                    
                    /// [28:29] 
                    gain_ctrl3_dac_bias_sel:  u2, 
                    
                    /// [30:31] 
                    gain_ctrl3_gc_tbb_boost:  u2, 
                    
                }), @ptrFromInt(0x4000111c));
                
                
                
                /// tbb_gain_index3.
                pub const tbb_gain_index3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gain_ctrl4_gc_tbb:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:10] 
                    gain_ctrl4_gc_tmx:  u3, 
                    
                    /// [11:11] 
                    res1:  u1, 
                    
                    /// [12:13] 
                    gain_ctrl4_dac_bias_sel:  u2, 
                    
                    /// [14:15] 
                    gain_ctrl4_gc_tbb_boost:  u2, 
                    
                    /// [16:20] 
                    gain_ctrl5_gc_tbb:  u5, 
                    
                    /// [21:23] 
                    res2:  u3, 
                    
                    /// [24:26] 
                    gain_ctrl5_gc_tmx:  u3, 
                    
                    /// [27:27] 
                    res3:  u1, 
                    
                    /// [28:29] 
                    gain_ctrl5_dac_bias_sel:  u2, 
                    
                    /// [30:31] 
                    gain_ctrl5_gc_tbb_boost:  u2, 
                    
                }), @ptrFromInt(0x40001120));
                
                
                
                /// tbb_gain_index4.
                pub const tbb_gain_index4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gain_ctrl6_gc_tbb:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:10] 
                    gain_ctrl6_gc_tmx:  u3, 
                    
                    /// [11:11] 
                    res1:  u1, 
                    
                    /// [12:13] 
                    gain_ctrl6_dac_bias_sel:  u2, 
                    
                    /// [14:15] 
                    gain_ctrl6_gc_tbb_boost:  u2, 
                    
                    /// [16:20] 
                    gain_ctrl7_gc_tbb:  u5, 
                    
                    /// [21:23] 
                    res2:  u3, 
                    
                    /// [24:26] 
                    gain_ctrl7_gc_tmx:  u3, 
                    
                    /// [27:27] 
                    res3:  u1, 
                    
                    /// [28:29] 
                    gain_ctrl7_dac_bias_sel:  u2, 
                    
                    /// [30:31] 
                    gain_ctrl7_gc_tbb_boost:  u2, 
                    
                }), @ptrFromInt(0x40001124));
                
                
                
                /// pa_reg_ctrl_hw1.
                pub const pa_reg_ctrl_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    res0:  u12, 
                    
                    /// [12:15] 
                    pa_iet_11n:  u4, 
                    
                    /// [16:19] 
                    pa_vbcore_11n:  u4, 
                    
                    /// [20:22] 
                    pa_vbcas_11n:  u3, 
                    
                    /// [23:31] 
                    res1:  u9, 
                    
                }), @ptrFromInt(0x40001128));
                
                
                
                /// pa_reg_ctrl_hw2.
                pub const pa_reg_ctrl_hw2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    pa_iet_11g:  u4, 
                    
                    /// [4:7] 
                    pa_vbcore_11g:  u4, 
                    
                    /// [8:10] 
                    pa_vbcas_11g:  u3, 
                    
                    /// [11:11] 
                    res0:  u1, 
                    
                    /// [12:15] 
                    pa_iet_11b:  u4, 
                    
                    /// [16:19] 
                    pa_vbcore_11b:  u4, 
                    
                    /// [20:22] 
                    pa_vbcas_11b:  u3, 
                    
                    /// [23:31] 
                    res1:  u9, 
                    
                }), @ptrFromInt(0x4000112c));
                
                
                
                /// pa_reg_wifi_ctrl_hw.
                pub const pa_reg_wifi_ctrl_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pa_half_on_wifi:  u1, 
                    
                    /// [1:7] 
                    res0:  u7, 
                    
                    /// [8:8] 
                    pa_etb_en_wifi:  u1, 
                    
                    /// [9:15] 
                    res1:  u7, 
                    
                    /// [16:16] 
                    pa_ib_fix_wifi:  u1, 
                    
                    /// [17:31] 
                    res2:  u15, 
                    
                }), @ptrFromInt(0x40001130));
                
                
                
                /// adda_reg_ctrl_hw.
                pub const adda_reg_ctrl_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    adda_ldo_dvdd_sel_rx:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:6] 
                    adda_ldo_dvdd_sel_tx:  u3, 
                    
                    /// [7:31] 
                    res1:  u25, 
                    
                }), @ptrFromInt(0x40001134));
                
                
                
                /// lo_reg_ctrl_hw1.
                pub const lo_reg_ctrl_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    lo_fbdv_halfstep_en_rx:  u1, 
                    
                    /// [1:1] 
                    lo_fbdv_halfstep_en_tx:  u1, 
                    
                    /// [2:2] 
                    lo_cp_sel_rx:  u1, 
                    
                    /// [3:3] 
                    lo_cp_sel_tx:  u1, 
                    
                    /// [4:5] 
                    lo_lf_cz_rx:  u2, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:9] 
                    lo_lf_cz_tx:  u2, 
                    
                    /// [10:11] 
                    res1:  u2, 
                    
                    /// [12:13] 
                    lo_lf_rz_rx:  u2, 
                    
                    /// [14:15] 
                    res2:  u2, 
                    
                    /// [16:17] 
                    lo_lf_rz_tx:  u2, 
                    
                    /// [18:19] 
                    res3:  u2, 
                    
                    /// [20:21] 
                    lo_lf_r4_rx:  u2, 
                    
                    /// [22:23] 
                    res4:  u2, 
                    
                    /// [24:25] 
                    lo_lf_r4_tx:  u2, 
                    
                    /// [26:31] 
                    res5:  u6, 
                    
                }), @ptrFromInt(0x40001138));
                
                
                
                /// lo_cal_ctrl_hw1.
                pub const lo_cal_ctrl_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2404:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2404:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2408:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2408:  u8, 
                    
                }), @ptrFromInt(0x4000113c));
                
                
                
                /// lo_cal_ctrl_hw2.
                pub const lo_cal_ctrl_hw2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2412:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2412:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2416:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2416:  u8, 
                    
                }), @ptrFromInt(0x40001140));
                
                
                
                /// lo_cal_ctrl_hw3.
                pub const lo_cal_ctrl_hw3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2420:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2420:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2424:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2424:  u8, 
                    
                }), @ptrFromInt(0x40001144));
                
                
                
                /// lo_cal_ctrl_hw4.
                pub const lo_cal_ctrl_hw4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2428:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2428:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2432:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2432:  u8, 
                    
                }), @ptrFromInt(0x40001148));
                
                
                
                /// lo_cal_ctrl_hw5.
                pub const lo_cal_ctrl_hw5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2436:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2436:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2440:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2440:  u8, 
                    
                }), @ptrFromInt(0x4000114c));
                
                
                
                /// lo_cal_ctrl_hw6.
                pub const lo_cal_ctrl_hw6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2444:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2444:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2448:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2448:  u8, 
                    
                }), @ptrFromInt(0x40001150));
                
                
                
                /// lo_cal_ctrl_hw7.
                pub const lo_cal_ctrl_hw7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2452:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2452:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2456:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2456:  u8, 
                    
                }), @ptrFromInt(0x40001154));
                
                
                
                /// lo_cal_ctrl_hw8.
                pub const lo_cal_ctrl_hw8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2460:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2460:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2464:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2464:  u8, 
                    
                }), @ptrFromInt(0x40001158));
                
                
                
                /// lo_cal_ctrl_hw9.
                pub const lo_cal_ctrl_hw9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2468:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2468:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2472:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2472:  u8, 
                    
                }), @ptrFromInt(0x4000115c));
                
                
                
                /// lo_cal_ctrl_hw10.
                pub const lo_cal_ctrl_hw10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2476:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2476:  u8, 
                    
                    /// [16:20] 
                    lo_vco_idac_cw_2480:  u5, 
                    
                    /// [21:23] 
                    res1:  u3, 
                    
                    /// [24:31] 
                    lo_vco_freq_cw_2480:  u8, 
                    
                }), @ptrFromInt(0x40001160));
                
                
                
                /// lo_cal_ctrl_hw11.
                pub const lo_cal_ctrl_hw11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    lo_vco_idac_cw_2484:  u5, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:15] 
                    lo_vco_freq_cw_2484:  u8, 
                    
                    /// [16:31] 
                    res1:  u16, 
                    
                }), @ptrFromInt(0x40001164));
                
                
                
                /// rosdac_ctrl_hw1.
                pub const rosdac_ctrl_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    rosdac_i_gc0:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    rosdac_q_gc0:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    rosdac_i_gc1:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    rosdac_q_gc1:  u6, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x40001168));
                
                
                
                /// rosdac_ctrl_hw2.
                pub const rosdac_ctrl_hw2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    rosdac_i_gc2:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    rosdac_q_gc2:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    rosdac_i_gc3:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    rosdac_q_gc3:  u6, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x4000116c));
                
                
                
                /// rxiq_ctrl_hw1.
                pub const rxiq_ctrl_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_iq_phase_comp_gc0:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    rx_iq_gain_comp_gc0:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40001170));
                
                
                
                /// rxiq_ctrl_hw2.
                pub const rxiq_ctrl_hw2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_iq_phase_comp_gc1:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    rx_iq_gain_comp_gc1:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40001174));
                
                
                
                /// rxiq_ctrl_hw3.
                pub const rxiq_ctrl_hw3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_iq_phase_comp_gc2:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    rx_iq_gain_comp_gc2:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40001178));
                
                
                
                /// rxiq_ctrl_hw4.
                pub const rxiq_ctrl_hw4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_iq_phase_comp_gc3:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    rx_iq_gain_comp_gc3:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x4000117c));
                
                
                
                /// tosdac_ctrl_hw1.
                pub const tosdac_ctrl_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    tbb_tosdac_i_gc0:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    tbb_tosdac_q_gc0:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    tbb_tosdac_i_gc1:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    tbb_tosdac_q_gc1:  u6, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x40001180));
                
                
                
                /// tosdac_ctrl_hw2.
                pub const tosdac_ctrl_hw2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    tbb_tosdac_i_gc2:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    tbb_tosdac_q_gc2:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    tbb_tosdac_i_gc3:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    tbb_tosdac_q_gc3:  u6, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x40001184));
                
                
                
                /// tosdac_ctrl_hw3.
                pub const tosdac_ctrl_hw3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    tbb_tosdac_i_gc4:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    tbb_tosdac_q_gc4:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    tbb_tosdac_i_gc5:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    tbb_tosdac_q_gc5:  u6, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x40001188));
                
                
                
                /// tosdac_ctrl_hw4.
                pub const tosdac_ctrl_hw4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    tbb_tosdac_i_gc6:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    tbb_tosdac_q_gc6:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:21] 
                    tbb_tosdac_i_gc7:  u6, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:29] 
                    tbb_tosdac_q_gc7:  u6, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x4000118c));
                
                
                
                /// tx_iq_gain_hw0.
                pub const tx_iq_gain_hw0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc0:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc0:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40001190));
                
                
                
                /// tx_iq_gain_hw1.
                pub const tx_iq_gain_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc1:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc1:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40001194));
                
                
                
                /// tx_iq_gain_hw2.
                pub const tx_iq_gain_hw2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc2:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc2:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40001198));
                
                
                
                /// tx_iq_gain_hw3.
                pub const tx_iq_gain_hw3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc3:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc3:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x4000119c));
                
                
                
                /// tx_iq_gain_hw4.
                pub const tx_iq_gain_hw4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc4:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc4:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x400011a0));
                
                
                
                /// tx_iq_gain_hw5.
                pub const tx_iq_gain_hw5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc5:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc5:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x400011a4));
                
                
                
                /// tx_iq_gain_hw6.
                pub const tx_iq_gain_hw6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc6:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc6:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x400011a8));
                
                
                
                /// tx_iq_gain_hw7.
                pub const tx_iq_gain_hw7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iq_phase_comp_gc7:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:26] 
                    tx_iq_gain_comp_gc7:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x400011ac));
                
                
                
                /// lo_sdm_ctrl_hw1.
                pub const lo_sdm_ctrl_hw1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    lo_sdm_dither_sel_wlan_2412:  u2, 
                    
                    /// [2:3] 
                    lo_sdm_dither_sel_wlan_2417:  u2, 
                    
                    /// [4:5] 
                    lo_sdm_dither_sel_wlan_2422:  u2, 
                    
                    /// [6:7] 
                    lo_sdm_dither_sel_wlan_2427:  u2, 
                    
                    /// [8:9] 
                    lo_sdm_dither_sel_wlan_2432:  u2, 
                    
                    /// [10:11] 
                    lo_sdm_dither_sel_wlan_2437:  u2, 
                    
                    /// [12:13] 
                    lo_sdm_dither_sel_wlan_2442:  u2, 
                    
                    /// [14:15] 
                    lo_sdm_dither_sel_wlan_2447:  u2, 
                    
                    /// [16:17] 
                    lo_sdm_dither_sel_wlan_2452:  u2, 
                    
                    /// [18:19] 
                    lo_sdm_dither_sel_wlan_2457:  u2, 
                    
                    /// [20:21] 
                    lo_sdm_dither_sel_wlan_2462:  u2, 
                    
                    /// [22:23] 
                    lo_sdm_dither_sel_wlan_2467:  u2, 
                    
                    /// [24:25] 
                    lo_sdm_dither_sel_wlan_2472:  u2, 
                    
                    /// [26:27] 
                    lo_sdm_dither_sel_wlan_2484:  u2, 
                    
                    /// [28:31] 
                    res0:  u4, 
                    
                }), @ptrFromInt(0x400011b0));
                
                
                
                /// lo_sdm_ctrl_hw2.
                pub const lo_sdm_ctrl_hw2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    lo_sdm_dither_sel_ble_2402:  u2, 
                    
                    /// [2:3] 
                    lo_sdm_dither_sel_ble_2404:  u2, 
                    
                    /// [4:5] 
                    lo_sdm_dither_sel_ble_2406:  u2, 
                    
                    /// [6:7] 
                    lo_sdm_dither_sel_ble_2408:  u2, 
                    
                    /// [8:9] 
                    lo_sdm_dither_sel_ble_2410:  u2, 
                    
                    /// [10:11] 
                    lo_sdm_dither_sel_ble_2412:  u2, 
                    
                    /// [12:13] 
                    lo_sdm_dither_sel_ble_2414:  u2, 
                    
                    /// [14:15] 
                    lo_sdm_dither_sel_ble_2416:  u2, 
                    
                    /// [16:17] 
                    lo_sdm_dither_sel_ble_2418:  u2, 
                    
                    /// [18:19] 
                    lo_sdm_dither_sel_ble_2420:  u2, 
                    
                    /// [20:21] 
                    lo_sdm_dither_sel_ble_2422:  u2, 
                    
                    /// [22:23] 
                    lo_sdm_dither_sel_ble_2424:  u2, 
                    
                    /// [24:25] 
                    lo_sdm_dither_sel_ble_2426:  u2, 
                    
                    /// [26:27] 
                    lo_sdm_dither_sel_ble_2428:  u2, 
                    
                    /// [28:29] 
                    lo_sdm_dither_sel_ble_2430:  u2, 
                    
                    /// [30:31] 
                    lo_sdm_dither_sel_ble_2432:  u2, 
                    
                }), @ptrFromInt(0x400011b4));
                
                
                
                /// lo_sdm_ctrl_hw3.
                pub const lo_sdm_ctrl_hw3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    lo_sdm_dither_sel_ble_2434:  u2, 
                    
                    /// [2:3] 
                    lo_sdm_dither_sel_ble_2436:  u2, 
                    
                    /// [4:5] 
                    lo_sdm_dither_sel_ble_2438:  u2, 
                    
                    /// [6:7] 
                    lo_sdm_dither_sel_ble_2440:  u2, 
                    
                    /// [8:9] 
                    lo_sdm_dither_sel_ble_2442:  u2, 
                    
                    /// [10:11] 
                    lo_sdm_dither_sel_ble_2444:  u2, 
                    
                    /// [12:13] 
                    lo_sdm_dither_sel_ble_2446:  u2, 
                    
                    /// [14:15] 
                    lo_sdm_dither_sel_ble_2448:  u2, 
                    
                    /// [16:17] 
                    lo_sdm_dither_sel_ble_2450:  u2, 
                    
                    /// [18:19] 
                    lo_sdm_dither_sel_ble_2452:  u2, 
                    
                    /// [20:21] 
                    lo_sdm_dither_sel_ble_2454:  u2, 
                    
                    /// [22:23] 
                    lo_sdm_dither_sel_ble_2456:  u2, 
                    
                    /// [24:25] 
                    lo_sdm_dither_sel_ble_2458:  u2, 
                    
                    /// [26:27] 
                    lo_sdm_dither_sel_ble_2460:  u2, 
                    
                    /// [28:29] 
                    lo_sdm_dither_sel_ble_2462:  u2, 
                    
                    /// [30:31] 
                    lo_sdm_dither_sel_ble_2464:  u2, 
                    
                }), @ptrFromInt(0x400011b8));
                
                
                
                /// lo_sdm_ctrl_hw4.
                pub const lo_sdm_ctrl_hw4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    lo_sdm_dither_sel_ble_2466:  u2, 
                    
                    /// [2:3] 
                    lo_sdm_dither_sel_ble_2468:  u2, 
                    
                    /// [4:5] 
                    lo_sdm_dither_sel_ble_2470:  u2, 
                    
                    /// [6:7] 
                    lo_sdm_dither_sel_ble_2472:  u2, 
                    
                    /// [8:9] 
                    lo_sdm_dither_sel_ble_2474:  u2, 
                    
                    /// [10:11] 
                    lo_sdm_dither_sel_ble_2476:  u2, 
                    
                    /// [12:13] 
                    lo_sdm_dither_sel_ble_2478:  u2, 
                    
                    /// [14:15] 
                    lo_sdm_dither_sel_ble_2480:  u2, 
                    
                    /// [16:17] 
                    lo_sdm_dither_sel_ble_tx:  u2, 
                    
                    /// [18:31] 
                    res0:  u14, 
                    
                }), @ptrFromInt(0x400011bc));
                
                
                
                /// lo_sdm_ctrl_hw5.
                pub const lo_sdm_ctrl_hw5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    lo_center_freq_mhz:  u12, 
                    
                    /// [12:17] 
                    lo_sdm_bypass_mode:  u6, 
                    
                    /// [18:31] 
                    res0:  u14, 
                    
                }), @ptrFromInt(0x400011c0));
                
                
                
                /// lo_sdm_ctrl_hw6.
                pub const lo_sdm_ctrl_hw6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:28] 
                    lo_sdmin_center:  u29, 
                    
                    /// [29:31] 
                    res0:  u3, 
                    
                }), @ptrFromInt(0x400011c4));
                
                
                
                /// lo_sdm_ctrl_hw7.
                pub const lo_sdm_ctrl_hw7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:19] 
                    lo_sdmin_1m:  u20, 
                    
                    /// [20:31] 
                    res0:  u12, 
                    
                }), @ptrFromInt(0x400011c8));
                
                
                
                /// lo_sdm_ctrl_hw8.
                pub const lo_sdm_ctrl_hw8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:19] 
                    lo_sdmin_if:  u20, 
                    
                    /// [20:31] 
                    res0:  u12, 
                    
                }), @ptrFromInt(0x400011cc));
                
                
                
                /// rbb_bw_ctrl_hw.
                pub const rbb_bw_ctrl_hw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rbb_bt_mode_ble:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x400011d0));
                
                
                
                /// singen_ctrl0.
                pub const singen_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    singen_inc_step1:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:25] 
                    singen_inc_step0:  u10, 
                    
                    /// [26:27] 
                    res1:  u2, 
                    
                    /// [28:28] 
                    singen_unsign_en:  u1, 
                    
                    /// [29:30] 
                    singen_clkdiv_n:  u2, 
                    
                    /// [31:31] 
                    singen_en:  u1, 
                    
                }), @ptrFromInt(0x4000120c));
                
                
                
                /// singen_ctrl1.
                pub const singen_ctrl1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    singen_clkdiv_q:  u10, 
                    
                    /// [10:11] 
                    res0:  u2, 
                    
                    /// [12:15] 
                    singen_mode_q:  u4, 
                    
                    /// [16:25] 
                    singen_clkdiv_i:  u10, 
                    
                    /// [26:27] 
                    res1:  u2, 
                    
                    /// [28:31] 
                    singen_mode_i:  u4, 
                    
                }), @ptrFromInt(0x40001210));
                
                
                
                /// singen_ctrl2.
                pub const singen_ctrl2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:10] 
                    singen_gain_i:  u11, 
                    
                    /// [11:11] 
                    res0:  u1, 
                    
                    /// [12:21] 
                    singen_start_addr1_i:  u10, 
                    
                    /// [22:31] 
                    singen_start_addr0_i:  u10, 
                    
                }), @ptrFromInt(0x40001214));
                
                
                
                /// singen_ctrl3.
                pub const singen_ctrl3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:10] 
                    singen_gain_q:  u11, 
                    
                    /// [11:11] 
                    res0:  u1, 
                    
                    /// [12:21] 
                    singen_start_addr1_q:  u10, 
                    
                    /// [22:31] 
                    singen_start_addr0_q:  u10, 
                    
                }), @ptrFromInt(0x40001218));
                
                
                
                /// singen_ctrl4.
                pub const singen_ctrl4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    singen_fix_q:  u12, 
                    
                    /// [12:12] 
                    singen_fix_en_q:  u1, 
                    
                    /// [13:15] 
                    res0:  u3, 
                    
                    /// [16:27] 
                    singen_fix_i:  u12, 
                    
                    /// [28:28] 
                    singen_fix_en_i:  u1, 
                    
                    /// [29:31] 
                    res1:  u3, 
                    
                }), @ptrFromInt(0x4000121c));
                
                
                
                /// rfif_dfe_ctrl0.
                pub const rfif_dfe_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rfckg_rxclk_4s_on:  u1, 
                    
                    /// [1:1] 
                    rfckg_txclk_4s_on:  u1, 
                    
                    /// [2:2] 
                    rfckg_adc_afifo_inv:  u1, 
                    
                    /// [3:3] 
                    rfckg_adc_clkout_sel:  u1, 
                    
                    /// [4:4] 
                    rfckg_dac_afifo_inv:  u1, 
                    
                    /// [5:5] 
                    rx_dfe_en_4s:  u1, 
                    
                    /// [6:6] 
                    rx_dfe_en_4s_en:  u1, 
                    
                    /// [7:7] 
                    tx_dfe_en_4s:  u1, 
                    
                    /// [8:8] 
                    tx_dfe_en_4s_en:  u1, 
                    
                    /// [9:10] 
                    rx_test_sel:  u2, 
                    
                    /// [11:12] 
                    tx_test_sel:  u2, 
                    
                    /// [13:13] 
                    pad_adc_clkout_inv_en:  u1, 
                    
                    /// [14:14] 
                    pad_dac_clkout_inv_en:  u1, 
                    
                    /// [15:21] 
                    rf_ch_ind_ble_4s:  u7, 
                    
                    /// [22:22] 
                    rf_ch_ind_ble_4s_en:  u1, 
                    
                    /// [23:24] 
                    wifimode_4s:  u2, 
                    
                    /// [25:25] 
                    wifimode_4s_en:  u1, 
                    
                    /// [26:26] 
                    bbmode_4s:  u1, 
                    
                    /// [27:27] 
                    bbmode_4s_en:  u1, 
                    
                    /// [28:31] 
                    test_sel:  u4, 
                    
                }), @ptrFromInt(0x40001220));
                
                
                
                /// rfif_test_read.
                pub const rfif_test_read = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    test_read:  u32, 
                    
                }), @ptrFromInt(0x40001224));
                
                
                
                /// rfif_dig_ctrl.
                pub const rfif_dig_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    test_from_pad_en:  u1, 
                    
                    /// [1:1] 
                    test_gc_from_pad_en:  u1, 
                    
                    /// [2:2] 
                    rfckg_rxclk_div2_mode:  u1, 
                    
                    /// [3:3] 
                    rfif_int_lo_unlocked_mask:  u1, 
                    
                    /// [4:15] 
                    res0:  u12, 
                    
                    /// [16:24] 
                    rfif_ppud_cnt2:  u9, 
                    
                    /// [25:29] 
                    rfif_ppud_cnt1:  u5, 
                    
                    /// [30:30] 
                    rfif_ppud_manaual_en:  u1, 
                    
                    /// [31:31] 
                    res1:  u1, 
                    
                }), @ptrFromInt(0x40001228));
                
                
                
                /// rf_data_temp_0.
                pub const rf_data_temp_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_data_temp_0:  u32, 
                    
                }), @ptrFromInt(0x4000122c));
                
                
                
                /// rf_data_temp_1.
                pub const rf_data_temp_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_data_temp_1:  u32, 
                    
                }), @ptrFromInt(0x40001230));
                
                
                
                /// rf_data_temp_2.
                pub const rf_data_temp_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_data_temp_2:  u32, 
                    
                }), @ptrFromInt(0x40001234));
                
                
                
                /// rf_data_temp_3.
                pub const rf_data_temp_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_data_temp_3:  u32, 
                    
                }), @ptrFromInt(0x40001238));
                
                
                
                /// rf_sram_ctrl0.
                pub const rf_sram_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    rf_sram_link_dly:  u16, 
                    
                    /// [16:17] 
                    rf_sram_link_mode:  u2, 
                    
                    /// [18:18] 
                    rf_sram_swap:  u1, 
                    
                    /// [19:19] 
                    rf_sram_ext_clr:  u1, 
                    
                    /// [20:31] 
                    res0:  u12, 
                    
                }), @ptrFromInt(0x4000123c));
                
                
                
                /// rf_sram_ctrl1.
                pub const rf_sram_ctrl1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rf_sram_adc_done:  u1, 
                    
                    /// [1:1] 
                    rf_sram_adc_en:  u1, 
                    
                    /// [2:2] 
                    rf_sram_adc_loop_en:  u1, 
                    
                    /// [3:3] 
                    rf_sram_adc_sts_clr:  u1, 
                    
                    /// [4:15] 
                    res0:  u12, 
                    
                    /// [16:31] 
                    rf_sram_adc_done_cnt:  u16, 
                    
                }), @ptrFromInt(0x40001240));
                
                
                
                /// rf_sram_ctrl2.
                pub const rf_sram_ctrl2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    rf_sram_adc_addr_end:  u16, 
                    
                    /// [16:31] 
                    rf_sram_adc_addr_start:  u16, 
                    
                }), @ptrFromInt(0x40001244));
                
                
                
                /// rf_sram_ctrl3.
                pub const rf_sram_ctrl3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_sram_adc_sts:  u32, 
                    
                }), @ptrFromInt(0x40001248));
                
                
                
                /// rf_sram_ctrl4.
                pub const rf_sram_ctrl4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rf_sram_dac_done:  u1, 
                    
                    /// [1:1] 
                    rf_sram_dac_en:  u1, 
                    
                    /// [2:2] 
                    rf_sram_dac_loop_en:  u1, 
                    
                    /// [3:3] 
                    rf_sram_dac_sts_clr:  u1, 
                    
                    /// [4:15] 
                    res0:  u12, 
                    
                    /// [16:31] 
                    rf_sram_dac_done_cnt:  u16, 
                    
                }), @ptrFromInt(0x4000124c));
                
                
                
                /// rf_sram_ctrl5.
                pub const rf_sram_ctrl5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    rf_sram_dac_addr_end:  u16, 
                    
                    /// [16:31] 
                    rf_sram_dac_addr_start:  u16, 
                    
                }), @ptrFromInt(0x40001250));
                
                
                
                /// rf_sram_ctrl6.
                pub const rf_sram_ctrl6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rf_sram_dac_sts:  u32, 
                    
                }), @ptrFromInt(0x40001254));
                
                
                
                /// rf_ical_ctrl0.
                pub const rf_ical_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rf_ical_r_cnt_n:  u10, 
                    
                    /// [10:19] 
                    rf_ical_a_cnt_n:  u10, 
                    
                    /// [20:29] 
                    rf_ical_f_cnt_n:  u10, 
                    
                    /// [30:30] 
                    rf_ical_a_ud_inv_en:  u1, 
                    
                    /// [31:31] 
                    rf_ical_f_ud_inv_en:  u1, 
                    
                }), @ptrFromInt(0x40001258));
                
                
                
                /// rf_ical_ctrl1.
                pub const rf_ical_ctrl1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    rf_ical_r_avg_n:  u5, 
                    
                    /// [5:9] 
                    res0:  u5, 
                    
                    /// [10:19] 
                    rf_ical_r_os_q:  u10, 
                    
                    /// [20:29] 
                    rf_ical_r_os_i:  u10, 
                    
                    /// [30:31] 
                    res1:  u2, 
                    
                }), @ptrFromInt(0x4000125c));
                
                
                
                /// rf_ical_ctrl2.
                pub const rf_ical_ctrl2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    rf_ical_period_n:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x40001260));
                
                
                
                /// rf_fsm_ctrl0.
                pub const rf_fsm_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    rf_ch_ind_wifi:  u12, 
                    
                    /// [12:31] 
                    res0:  u20, 
                    
                }), @ptrFromInt(0x40001264));
                
                
                
                /// rf_fsm_ctrl1.
                pub const rf_fsm_ctrl1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    rf_fsm_lo_time:  u16, 
                    
                    /// [16:16] 
                    rf_fsm_lo_rdy:  u1, 
                    
                    /// [17:17] 
                    rf_fsm_lo_rdy_rst:  u1, 
                    
                    /// [18:18] 
                    rf_fsm_lo_rdy_4s_1:  u1, 
                    
                    /// [19:19] 
                    rf_fsm_lo_rdy_sbclr:  u1, 
                    
                    /// [20:29] 
                    rf_fsm_pu_pa_dly_n:  u10, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x40001268));
                
                
                
                /// rf_fsm_ctrl2.
                pub const rf_fsm_ctrl2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    rf_fsm_st_dbg:  u3, 
                    
                    /// [3:3] 
                    rf_fsm_st_dbg_en:  u1, 
                    
                    /// [4:4] 
                    rf_trx_en_ble_4s:  u1, 
                    
                    /// [5:5] 
                    rf_trx_sw_ble_4s:  u1, 
                    
                    /// [6:6] 
                    rf_trx_ble_4s_en:  u1, 
                    
                    /// [7:9] 
                    res0:  u3, 
                    
                    /// [10:19] 
                    rf_fsm_dfe_tx_dly_n:  u10, 
                    
                    /// [20:29] 
                    rf_fsm_dfe_rx_dly_n:  u10, 
                    
                    /// [30:31] 
                    res1:  u2, 
                    
                }), @ptrFromInt(0x4000126c));
                
                
                
                /// rf_pkdet_ctrl0.
                pub const rf_pkdet_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    pkdet_out_cnt_sts:  u4, 
                    
                    /// [4:4] 
                    pkdet_out_cnt_en:  u1, 
                    
                    /// [5:5] 
                    pkdet_out_mode:  u1, 
                    
                    /// [6:31] 
                    res0:  u26, 
                    
                }), @ptrFromInt(0x40001270));
                
                
                
                /// dfe_ctrl_0.
                pub const dfe_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    tx_iqc_phase:  u10, 
                    
                    /// [10:10] 
                    tx_iqc_phase_en:  u1, 
                    
                    /// [11:11] 
                    res0:  u1, 
                    
                    /// [12:22] 
                    tx_iqc_gain:  u11, 
                    
                    /// [23:23] 
                    tx_iqc_gain_en:  u1, 
                    
                    /// [24:30] 
                    tx_dvga_gain_qdb:  u7, 
                    
                    /// [31:31] 
                    tx_dvga_gain_ctrl_hw:  u1, 
                    
                }), @ptrFromInt(0x40001600));
                
                
                
                /// dfe_ctrl_1.
                pub const dfe_ctrl_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    tx_dac_os_i:  u12, 
                    
                    /// [12:15] 
                    res0:  u4, 
                    
                    /// [16:27] 
                    tx_dac_os_q:  u12, 
                    
                    /// [28:29] 
                    res1:  u2, 
                    
                    /// [30:30] 
                    tx_dac_dat_format:  u1, 
                    
                    /// [31:31] 
                    tx_dac_iq_swap:  u1, 
                    
                }), @ptrFromInt(0x40001604));
                
                
                
                /// dfe_ctrl_2.
                pub const dfe_ctrl_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_adc_os_i:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:25] 
                    rx_adc_os_q:  u10, 
                    
                    /// [26:27] 
                    res1:  u2, 
                    
                    /// [28:28] 
                    rx_adc_dce_flt_en:  u1, 
                    
                    /// [29:29] 
                    rx_adc_low_pow_en:  u1, 
                    
                    /// [30:30] 
                    rx_adc_dat_format:  u1, 
                    
                    /// [31:31] 
                    rx_adc_iq_swap:  u1, 
                    
                }), @ptrFromInt(0x40001608));
                
                
                
                /// dfe_ctrl_3.
                pub const dfe_ctrl_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_adc_4s_i_val:  u10, 
                    
                    /// [10:10] 
                    rx_adc_4s_i_en:  u1, 
                    
                    /// [11:15] 
                    res0:  u5, 
                    
                    /// [16:25] 
                    rx_adc_4s_q_val:  u10, 
                    
                    /// [26:26] 
                    rx_adc_4s_q_en:  u1, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x4000160c));
                
                
                
                /// dfe_ctrl_4.
                pub const dfe_ctrl_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_pf_th2:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:25] 
                    rx_pf_th1:  u10, 
                    
                    /// [26:29] 
                    res1:  u4, 
                    
                    /// [30:30] 
                    rx_pf_q_en:  u1, 
                    
                    /// [31:31] 
                    rx_pf_i_en:  u1, 
                    
                }), @ptrFromInt(0x40001610));
                
                
                
                /// dfe_ctrl_5.
                pub const dfe_ctrl_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    rx_iqc_phase:  u10, 
                    
                    /// [10:10] 
                    rx_iqc_phase_en:  u1, 
                    
                    /// [11:11] 
                    res0:  u1, 
                    
                    /// [12:22] 
                    rx_iqc_gain:  u11, 
                    
                    /// [23:23] 
                    rx_iqc_gain_en:  u1, 
                    
                    /// [24:31] 
                    res1:  u8, 
                    
                }), @ptrFromInt(0x40001614));
                
                
                
                /// dfe_ctrl_6.
                pub const dfe_ctrl_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:19] 
                    rx_pm_freqshift_cw:  u20, 
                    
                    /// [20:20] 
                    rx_pm_freqshift_en:  u1, 
                    
                    /// [21:27] 
                    res0:  u7, 
                    
                    /// [28:28] 
                    rx_pm_done:  u1, 
                    
                    /// [29:29] 
                    rx_pm_en:  u1, 
                    
                    /// [30:31] 
                    rx_pm_in_sel:  u2, 
                    
                }), @ptrFromInt(0x40001618));
                
                
                
                /// dfe_ctrl_7.
                pub const dfe_ctrl_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    rx_pm_start_ofs:  u16, 
                    
                    /// [16:31] 
                    rx_pm_acc_len:  u16, 
                    
                }), @ptrFromInt(0x4000161c));
                
                
                
                /// dfe_ctrl_8.
                pub const dfe_ctrl_8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:24] 
                    rx_pm_iqacc_i:  u25, 
                    
                    /// [25:31] 
                    res0:  u7, 
                    
                }), @ptrFromInt(0x40001620));
                
                
                
                /// dfe_ctrl_9.
                pub const dfe_ctrl_9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:24] 
                    rx_pm_iqacc_q:  u25, 
                    
                    /// [25:31] 
                    res0:  u7, 
                    
                }), @ptrFromInt(0x40001624));
                
                
                
                /// dfe_ctrl_10.
                pub const dfe_ctrl_10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:10] 
                    dfe_dac_raw_i:  u11, 
                    
                    /// [11:15] 
                    res0:  u5, 
                    
                    /// [16:26] 
                    dfe_dac_raw_q:  u11, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40001628));
                
                
                
                /// dfe_ctrl_11.
                pub const dfe_ctrl_11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    dfe_adc_raw_i:  u10, 
                    
                    /// [10:15] 
                    res0:  u6, 
                    
                    /// [16:25] 
                    dfe_adc_raw_q:  u10, 
                    
                    /// [26:31] 
                    res1:  u6, 
                    
                }), @ptrFromInt(0x4000162c));
                
                
                
                /// dfe_ctrl_12.
                pub const dfe_ctrl_12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    tx_dvga_gain_qdb_gc0:  u7, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:14] 
                    tx_dvga_gain_qdb_gc1:  u7, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:22] 
                    tx_dvga_gain_qdb_gc2:  u7, 
                    
                    /// [23:23] 
                    res2:  u1, 
                    
                    /// [24:30] 
                    tx_dvga_gain_qdb_gc3:  u7, 
                    
                    /// [31:31] 
                    res3:  u1, 
                    
                }), @ptrFromInt(0x40001630));
                
                
                
                /// dfe_ctrl_13.
                pub const dfe_ctrl_13 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    tx_dvga_gain_qdb_gc4:  u7, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:14] 
                    tx_dvga_gain_qdb_gc5:  u7, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:22] 
                    tx_dvga_gain_qdb_gc6:  u7, 
                    
                    /// [23:23] 
                    res2:  u1, 
                    
                    /// [24:30] 
                    tx_dvga_gain_qdb_gc7:  u7, 
                    
                    /// [31:31] 
                    res3:  u1, 
                    
                }), @ptrFromInt(0x40001634));
                
                
                
                /// dfe_ctrl_14.
                pub const dfe_ctrl_14 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    tx_dvga_gain_qdb_gc8:  u7, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:14] 
                    tx_dvga_gain_qdb_gc9:  u7, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:22] 
                    tx_dvga_gain_qdb_gc10:  u7, 
                    
                    /// [23:23] 
                    res2:  u1, 
                    
                    /// [24:30] 
                    tx_dvga_gain_qdb_gc11:  u7, 
                    
                    /// [31:31] 
                    res3:  u1, 
                    
                }), @ptrFromInt(0x40001638));
                
                
                
                /// dfe_ctrl_15.
                pub const dfe_ctrl_15 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    tx_dvga_gain_qdb_gc12:  u7, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:14] 
                    tx_dvga_gain_qdb_gc13:  u7, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:22] 
                    tx_dvga_gain_qdb_gc14:  u7, 
                    
                    /// [23:23] 
                    res2:  u1, 
                    
                    /// [24:30] 
                    tx_dvga_gain_qdb_gc15:  u7, 
                    
                    /// [31:31] 
                    res3:  u1, 
                    
                }), @ptrFromInt(0x4000163c));
                
                
                
                /// dfe_ctrl_16.
                pub const dfe_ctrl_16 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    rf_tbb_ind_gc0:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:6] 
                    rf_tbb_ind_gc1:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:10] 
                    rf_tbb_ind_gc2:  u3, 
                    
                    /// [11:11] 
                    res2:  u1, 
                    
                    /// [12:14] 
                    rf_tbb_ind_gc3:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:18] 
                    rf_tbb_ind_gc4:  u3, 
                    
                    /// [19:19] 
                    res4:  u1, 
                    
                    /// [20:22] 
                    rf_tbb_ind_gc5:  u3, 
                    
                    /// [23:23] 
                    res5:  u1, 
                    
                    /// [24:26] 
                    rf_tbb_ind_gc6:  u3, 
                    
                    /// [27:27] 
                    res6:  u1, 
                    
                    /// [28:30] 
                    rf_tbb_ind_gc7:  u3, 
                    
                    /// [31:31] 
                    res7:  u1, 
                    
                }), @ptrFromInt(0x40001640));
                
                
                
                /// dfe_ctrl_17.
                pub const dfe_ctrl_17 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    rf_tbb_ind_gc8:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:6] 
                    rf_tbb_ind_gc9:  u3, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:10] 
                    rf_tbb_ind_gc10:  u3, 
                    
                    /// [11:11] 
                    res2:  u1, 
                    
                    /// [12:14] 
                    rf_tbb_ind_gc11:  u3, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:18] 
                    rf_tbb_ind_gc12:  u3, 
                    
                    /// [19:19] 
                    res4:  u1, 
                    
                    /// [20:22] 
                    rf_tbb_ind_gc13:  u3, 
                    
                    /// [23:23] 
                    res5:  u1, 
                    
                    /// [24:26] 
                    rf_tbb_ind_gc14:  u3, 
                    
                    /// [27:27] 
                    res6:  u1, 
                    
                    /// [28:30] 
                    rf_tbb_ind_gc15:  u3, 
                    
                    /// [31:31] 
                    res7:  u1, 
                    
                }), @ptrFromInt(0x40001644));
                
                
                
                /// dfe_ctrl_18.
                pub const dfe_ctrl_18 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    tx_dvga_gain_qdb_ble_gc0:  u7, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:14] 
                    tx_dvga_gain_qdb_ble_gc1:  u7, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:22] 
                    tx_dvga_gain_qdb_ble_gc2:  u7, 
                    
                    /// [23:31] 
                    res2:  u9, 
                    
                }), @ptrFromInt(0x40001648));
                
                
            };
            
            /// Universal DAC/ADC/ACOMP interface control
            pub const GPIP = struct {
                
                
                /// gpadc_config.
                pub const gpadc_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpadc_dma_en:  u1, 
                    
                    /// [1:1] 
                    gpadc_fifo_clr:  u1, 
                    
                    /// [2:2] 
                    gpadc_fifo_ne:  u1, 
                    
                    /// [3:3] 
                    gpadc_fifo_full:  u1, 
                    
                    /// [4:4] 
                    gpadc_rdy:  u1, 
                    
                    /// [5:5] 
                    gpadc_fifo_overrun:  u1, 
                    
                    /// [6:6] 
                    gpadc_fifo_underrun:  u1, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:8] 
                    gpadc_rdy_clr:  u1, 
                    
                    /// [9:9] 
                    gpadc_fifo_overrun_clr:  u1, 
                    
                    /// [10:10] 
                    gpadc_fifo_underrun_clr:  u1, 
                    
                    /// [11:11] 
                    res1:  u1, 
                    
                    /// [12:12] 
                    gpadc_rdy_mask:  u1, 
                    
                    /// [13:13] 
                    gpadc_fifo_overrun_mask:  u1, 
                    
                    /// [14:14] 
                    gpadc_fifo_underrun_mask:  u1, 
                    
                    /// [15:15] 
                    res2:  u1, 
                    
                    /// [16:21] 
                    gpadc_fifo_data_count:  u6, 
                    
                    /// [22:23] 
                    gpadc_fifo_thl:  u2, 
                    
                    /// [24:31] 
                    rsvd_31_24:  u8, 
                    
                }), @ptrFromInt(0x40002000));
                
                
                
                /// gpadc_dma_rdata.
                pub const gpadc_dma_rdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:25] 
                    gpadc_dma_rdata:  u26, 
                    
                    /// [26:31] 
                    rsvd_31_26:  u6, 
                    
                }), @ptrFromInt(0x40002004));
                
                
                
                /// gpdac_config.
                pub const gpdac_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpdac_en:  u1, 
                    
                    /// [1:1] 
                    gpdac_en2:  u1, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:5] 
                    dsm_mode:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:10] 
                    gpdac_mode:  u3, 
                    
                    /// [11:15] 
                    res2:  u5, 
                    
                    /// [16:19] 
                    gpdac_ch_a_sel:  u4, 
                    
                    /// [20:23] 
                    gpdac_ch_b_sel:  u4, 
                    
                    /// [24:31] 
                    rsvd_31_24:  u8, 
                    
                }), @ptrFromInt(0x40002040));
                
                
                
                /// gpdac_dma_config.
                pub const gpdac_dma_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpdac_dma_tx_en:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:5] 
                    gpdac_dma_format:  u2, 
                    
                    /// [6:31] 
                    res1:  u26, 
                    
                }), @ptrFromInt(0x40002044));
                
                
                
                /// gpdac_dma_wdata.
                pub const gpdac_dma_wdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    gpdac_dma_wdata:  u32, 
                    
                }), @ptrFromInt(0x40002048));
                
                
                
                /// gpdac_tx_fifo_status.
                pub const gpdac_tx_fifo_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tx_fifo_empty:  u1, 
                    
                    /// [1:1] 
                    tx_fifo_full:  u1, 
                    
                    /// [2:3] 
                    tx_cs:  u2, 
                    
                    /// [4:6] 
                    TxFifoRdPtr:  u3, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:9] 
                    TxFifoWrPtr:  u2, 
                    
                    /// [10:31] 
                    res1:  u22, 
                    
                }), @ptrFromInt(0x4000204c));
                
                
            };
            
            /// SEC_DBG.
            pub const SEC_DBG = struct {
                
                
                /// sd_chip_id_low.
                pub const sd_chip_id_low = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sd_chip_id_low:  u32, 
                    
                }), @ptrFromInt(0x40003000));
                
                
                
                /// sd_chip_id_high.
                pub const sd_chip_id_high = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sd_chip_id_high:  u32, 
                    
                }), @ptrFromInt(0x40003004));
                
                
                
                /// sd_wifi_mac_low.
                pub const sd_wifi_mac_low = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sd_wifi_mac_low:  u32, 
                    
                }), @ptrFromInt(0x40003008));
                
                
                
                /// sd_wifi_mac_high.
                pub const sd_wifi_mac_high = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sd_wifi_mac_high:  u32, 
                    
                }), @ptrFromInt(0x4000300c));
                
                
                
                /// sd_dbg_pwd_low.
                pub const sd_dbg_pwd_low = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sd_dbg_pwd_low:  u32, 
                    
                }), @ptrFromInt(0x40003010));
                
                
                
                /// sd_dbg_pwd_high.
                pub const sd_dbg_pwd_high = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sd_dbg_pwd_high:  u32, 
                    
                }), @ptrFromInt(0x40003014));
                
                
                
                /// sd_status.
                pub const sd_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sd_dbg_pwd_busy:  u1, 
                    
                    /// [1:1] 
                    sd_dbg_pwd_trig:  u1, 
                    
                    /// [2:2] 
                    sd_dbg_cci_read_en:  u1, 
                    
                    /// [3:3] 
                    sd_dbg_cci_clk_sel:  u1, 
                    
                    /// [4:23] 
                    sd_dbg_pwd_cnt:  u20, 
                    
                    /// [24:27] 
                    sd_dbg_mode:  u4, 
                    
                    /// [28:31] 
                    sd_dbg_ena:  u4, 
                    
                }), @ptrFromInt(0x40003018));
                
                
                
                /// sd_dbg_reserved.
                pub const sd_dbg_reserved = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sd_dbg_reserved:  u32, 
                    
                }), @ptrFromInt(0x4000301c));
                
                
            };
            
            /// SEC_ENG.
            pub const SEC_ENG = struct {
                
                
                /// se_sha_0_ctrl.
                pub const se_sha_0_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_sha_0_busy:  u1, 
                    
                    /// [1:1] 
                    se_sha_0_trig_1t:  u1, 
                    
                    /// [2:4] 
                    se_sha_0_mode:  u3, 
                    
                    /// [5:5] 
                    se_sha_0_en:  u1, 
                    
                    /// [6:6] 
                    se_sha_0_hash_sel:  u1, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:8] 
                    se_sha_0_int:  u1, 
                    
                    /// [9:9] 
                    se_sha_0_int_clr_1t:  u1, 
                    
                    /// [10:10] 
                    se_sha_0_int_set_1t:  u1, 
                    
                    /// [11:11] 
                    se_sha_0_int_mask:  u1, 
                    
                    /// [12:14] 
                    res1:  u3, 
                    
                    /// [15:15] 
                    se_sha_0_link_mode:  u1, 
                    
                    /// [16:31] 
                    se_sha_0_msg_len:  u16, 
                    
                }), @ptrFromInt(0x40004000));
                
                
                
                /// se_sha_0_msa.
                pub const se_sha_0_msa = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_msa:  u32, 
                    
                }), @ptrFromInt(0x40004004));
                
                
                
                /// se_sha_0_status.
                pub const se_sha_0_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_status:  u32, 
                    
                }), @ptrFromInt(0x40004008));
                
                
                
                /// se_sha_0_endian.
                pub const se_sha_0_endian = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_sha_0_dout_endian:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x4000400c));
                
                
                
                /// se_sha_0_hash_l_0.
                pub const se_sha_0_hash_l_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_0:  u32, 
                    
                }), @ptrFromInt(0x40004010));
                
                
                
                /// se_sha_0_hash_l_1.
                pub const se_sha_0_hash_l_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_1:  u32, 
                    
                }), @ptrFromInt(0x40004014));
                
                
                
                /// se_sha_0_hash_l_2.
                pub const se_sha_0_hash_l_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_2:  u32, 
                    
                }), @ptrFromInt(0x40004018));
                
                
                
                /// se_sha_0_hash_l_3.
                pub const se_sha_0_hash_l_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_3:  u32, 
                    
                }), @ptrFromInt(0x4000401c));
                
                
                
                /// se_sha_0_hash_l_4.
                pub const se_sha_0_hash_l_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_4:  u32, 
                    
                }), @ptrFromInt(0x40004020));
                
                
                
                /// se_sha_0_hash_l_5.
                pub const se_sha_0_hash_l_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_5:  u32, 
                    
                }), @ptrFromInt(0x40004024));
                
                
                
                /// se_sha_0_hash_l_6.
                pub const se_sha_0_hash_l_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_6:  u32, 
                    
                }), @ptrFromInt(0x40004028));
                
                
                
                /// se_sha_0_hash_l_7.
                pub const se_sha_0_hash_l_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_l_7:  u32, 
                    
                }), @ptrFromInt(0x4000402c));
                
                
                
                /// se_sha_0_hash_h_0.
                pub const se_sha_0_hash_h_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_0:  u32, 
                    
                }), @ptrFromInt(0x40004030));
                
                
                
                /// se_sha_0_hash_h_1.
                pub const se_sha_0_hash_h_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_1:  u32, 
                    
                }), @ptrFromInt(0x40004034));
                
                
                
                /// se_sha_0_hash_h_2.
                pub const se_sha_0_hash_h_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_2:  u32, 
                    
                }), @ptrFromInt(0x40004038));
                
                
                
                /// se_sha_0_hash_h_3.
                pub const se_sha_0_hash_h_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_3:  u32, 
                    
                }), @ptrFromInt(0x4000403c));
                
                
                
                /// se_sha_0_hash_h_4.
                pub const se_sha_0_hash_h_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_4:  u32, 
                    
                }), @ptrFromInt(0x40004040));
                
                
                
                /// se_sha_0_hash_h_5.
                pub const se_sha_0_hash_h_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_5:  u32, 
                    
                }), @ptrFromInt(0x40004044));
                
                
                
                /// se_sha_0_hash_h_6.
                pub const se_sha_0_hash_h_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_6:  u32, 
                    
                }), @ptrFromInt(0x40004048));
                
                
                
                /// se_sha_0_hash_h_7.
                pub const se_sha_0_hash_h_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_hash_h_7:  u32, 
                    
                }), @ptrFromInt(0x4000404c));
                
                
                
                /// se_sha_0_link.
                pub const se_sha_0_link = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_sha_0_lca:  u32, 
                    
                }), @ptrFromInt(0x40004050));
                
                
                
                /// se_sha_0_ctrl_prot.
                pub const se_sha_0_ctrl_prot = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_sha_prot_en:  u1, 
                    
                    /// [1:1] 
                    se_sha_id0_en:  u1, 
                    
                    /// [2:2] 
                    se_sha_id1_en:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x400040fc));
                
                
                
                /// se_aes_0_ctrl.
                pub const se_aes_0_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_aes_0_busy:  u1, 
                    
                    /// [1:1] 
                    se_aes_0_trig_1t:  u1, 
                    
                    /// [2:2] 
                    se_aes_0_en:  u1, 
                    
                    /// [3:4] 
                    se_aes_0_mode:  u2, 
                    
                    /// [5:5] 
                    se_aes_0_dec_en:  u1, 
                    
                    /// [6:6] 
                    se_aes_0_dec_key_sel:  u1, 
                    
                    /// [7:7] 
                    se_aes_0_hw_key_en:  u1, 
                    
                    /// [8:8] 
                    se_aes_0_int:  u1, 
                    
                    /// [9:9] 
                    se_aes_0_int_clr_1t:  u1, 
                    
                    /// [10:10] 
                    se_aes_0_int_set_1t:  u1, 
                    
                    /// [11:11] 
                    se_aes_0_int_mask:  u1, 
                    
                    /// [12:13] 
                    se_aes_0_block_mode:  u2, 
                    
                    /// [14:14] 
                    se_aes_0_iv_sel:  u1, 
                    
                    /// [15:15] 
                    se_aes_0_link_mode:  u1, 
                    
                    /// [16:31] 
                    se_aes_0_msg_len:  u16, 
                    
                }), @ptrFromInt(0x40004100));
                
                
                
                /// se_aes_0_msa.
                pub const se_aes_0_msa = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_msa:  u32, 
                    
                }), @ptrFromInt(0x40004104));
                
                
                
                /// se_aes_0_mda.
                pub const se_aes_0_mda = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_mda:  u32, 
                    
                }), @ptrFromInt(0x40004108));
                
                
                
                /// se_aes_0_status.
                pub const se_aes_0_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_status:  u32, 
                    
                }), @ptrFromInt(0x4000410c));
                
                
                
                /// se_aes_0_iv_0.
                pub const se_aes_0_iv_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_iv_0:  u32, 
                    
                }), @ptrFromInt(0x40004110));
                
                
                
                /// se_aes_0_iv_1.
                pub const se_aes_0_iv_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_iv_1:  u32, 
                    
                }), @ptrFromInt(0x40004114));
                
                
                
                /// se_aes_0_iv_2.
                pub const se_aes_0_iv_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_iv_2:  u32, 
                    
                }), @ptrFromInt(0x40004118));
                
                
                
                /// se_aes_0_iv_3.
                pub const se_aes_0_iv_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_iv_3:  u32, 
                    
                }), @ptrFromInt(0x4000411c));
                
                
                
                /// se_aes_0_key_0.
                pub const se_aes_0_key_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_0:  u32, 
                    
                }), @ptrFromInt(0x40004120));
                
                
                
                /// se_aes_0_key_1.
                pub const se_aes_0_key_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_1:  u32, 
                    
                }), @ptrFromInt(0x40004124));
                
                
                
                /// se_aes_0_key_2.
                pub const se_aes_0_key_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_2:  u32, 
                    
                }), @ptrFromInt(0x40004128));
                
                
                
                /// se_aes_0_key_3.
                pub const se_aes_0_key_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_3:  u32, 
                    
                }), @ptrFromInt(0x4000412c));
                
                
                
                /// se_aes_0_key_4.
                pub const se_aes_0_key_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_4:  u32, 
                    
                }), @ptrFromInt(0x40004130));
                
                
                
                /// se_aes_0_key_5.
                pub const se_aes_0_key_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_5:  u32, 
                    
                }), @ptrFromInt(0x40004134));
                
                
                
                /// se_aes_0_key_6.
                pub const se_aes_0_key_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_6:  u32, 
                    
                }), @ptrFromInt(0x40004138));
                
                
                
                /// se_aes_0_key_7.
                pub const se_aes_0_key_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_key_7:  u32, 
                    
                }), @ptrFromInt(0x4000413c));
                
                
                
                /// se_aes_0_key_sel_0.
                pub const se_aes_0_key_sel_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    se_aes_0_key_sel_0:  u2, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x40004140));
                
                
                
                /// se_aes_0_key_sel_1.
                pub const se_aes_0_key_sel_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    se_aes_0_key_sel_1:  u2, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x40004144));
                
                
                
                /// se_aes_0_endian.
                pub const se_aes_0_endian = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_aes_0_dout_endian:  u1, 
                    
                    /// [1:1] 
                    se_aes_0_din_endian:  u1, 
                    
                    /// [2:2] 
                    se_aes_0_key_endian:  u1, 
                    
                    /// [3:3] 
                    se_aes_0_iv_endian:  u1, 
                    
                    /// [4:29] 
                    res0:  u26, 
                    
                    /// [30:31] 
                    se_aes_0_ctr_len:  u2, 
                    
                }), @ptrFromInt(0x40004148));
                
                
                
                /// se_aes_0_sboot.
                pub const se_aes_0_sboot = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_aes_0_sboot_key_sel:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x4000414c));
                
                
                
                /// se_aes_0_link.
                pub const se_aes_0_link = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_aes_0_lca:  u32, 
                    
                }), @ptrFromInt(0x40004150));
                
                
                
                /// se_aes_0_ctrl_prot.
                pub const se_aes_0_ctrl_prot = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_aes_prot_en:  u1, 
                    
                    /// [1:1] 
                    se_aes_id0_en:  u1, 
                    
                    /// [2:2] 
                    se_aes_id1_en:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x400041fc));
                
                
                
                /// se_trng_0_ctrl_0.
                pub const se_trng_0_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_trng_0_busy:  u1, 
                    
                    /// [1:1] 
                    se_trng_0_trig_1t:  u1, 
                    
                    /// [2:2] 
                    se_trng_0_en:  u1, 
                    
                    /// [3:3] 
                    se_trng_0_dout_clr_1t:  u1, 
                    
                    /// [4:4] 
                    se_trng_0_ht_error:  u1, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:8] 
                    se_trng_0_int:  u1, 
                    
                    /// [9:9] 
                    se_trng_0_int_clr_1t:  u1, 
                    
                    /// [10:10] 
                    se_trng_0_int_set_1t:  u1, 
                    
                    /// [11:11] 
                    se_trng_0_int_mask:  u1, 
                    
                    /// [12:12] 
                    res1:  u1, 
                    
                    /// [13:13] 
                    se_trng_0_manual_fun_sel:  u1, 
                    
                    /// [14:14] 
                    se_trng_0_manual_reseed:  u1, 
                    
                    /// [15:15] 
                    se_trng_0_manual_en:  u1, 
                    
                    /// [16:31] 
                    res2:  u16, 
                    
                }), @ptrFromInt(0x40004200));
                
                
                
                /// se_trng_0_status.
                pub const se_trng_0_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_status:  u32, 
                    
                }), @ptrFromInt(0x40004204));
                
                
                
                /// se_trng_0_dout_0.
                pub const se_trng_0_dout_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_0:  u32, 
                    
                }), @ptrFromInt(0x40004208));
                
                
                
                /// se_trng_0_dout_1.
                pub const se_trng_0_dout_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_1:  u32, 
                    
                }), @ptrFromInt(0x4000420c));
                
                
                
                /// se_trng_0_dout_2.
                pub const se_trng_0_dout_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_2:  u32, 
                    
                }), @ptrFromInt(0x40004210));
                
                
                
                /// se_trng_0_dout_3.
                pub const se_trng_0_dout_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_3:  u32, 
                    
                }), @ptrFromInt(0x40004214));
                
                
                
                /// se_trng_0_dout_4.
                pub const se_trng_0_dout_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_4:  u32, 
                    
                }), @ptrFromInt(0x40004218));
                
                
                
                /// se_trng_0_dout_5.
                pub const se_trng_0_dout_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_5:  u32, 
                    
                }), @ptrFromInt(0x4000421c));
                
                
                
                /// se_trng_0_dout_6.
                pub const se_trng_0_dout_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_6:  u32, 
                    
                }), @ptrFromInt(0x40004220));
                
                
                
                /// se_trng_0_dout_7.
                pub const se_trng_0_dout_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_dout_7:  u32, 
                    
                }), @ptrFromInt(0x40004224));
                
                
                
                /// se_trng_0_test.
                pub const se_trng_0_test = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_trng_0_test_en:  u1, 
                    
                    /// [1:1] 
                    se_trng_0_cp_test_en:  u1, 
                    
                    /// [2:2] 
                    se_trng_0_cp_bypass:  u1, 
                    
                    /// [3:3] 
                    se_trng_0_ht_dis:  u1, 
                    
                    /// [4:11] 
                    se_trng_0_ht_alarm_n:  u8, 
                    
                    /// [12:31] 
                    res0:  u20, 
                    
                }), @ptrFromInt(0x40004228));
                
                
                
                /// se_trng_0_ctrl_1.
                pub const se_trng_0_ctrl_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_reseed_n_lsb:  u32, 
                    
                }), @ptrFromInt(0x4000422c));
                
                
                
                /// se_trng_0_ctrl_2.
                pub const se_trng_0_ctrl_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    se_trng_0_reseed_n_msb:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x40004230));
                
                
                
                /// se_trng_0_ctrl_3.
                pub const se_trng_0_ctrl_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    se_trng_0_cp_ratio:  u8, 
                    
                    /// [8:15] 
                    se_trng_0_ht_rct_c:  u8, 
                    
                    /// [16:25] 
                    se_trng_0_ht_apt_c:  u10, 
                    
                    /// [26:26] 
                    se_trng_0_ht_od_en:  u1, 
                    
                    /// [27:30] 
                    res0:  u4, 
                    
                    /// [31:31] Used to be called 'se_trng_0_rosc_en', but the SDK calls it 'se_trng_0_rosc_dis'.
                    se_trng_0_rosc_dis:  u1, 
                    
                }), @ptrFromInt(0x40004234));
                
                
                
                /// se_trng_0_test_out_0.
                pub const se_trng_0_test_out_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_test_out_0:  u32, 
                    
                }), @ptrFromInt(0x40004240));
                
                
                
                /// se_trng_0_test_out_1.
                pub const se_trng_0_test_out_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_test_out_1:  u32, 
                    
                }), @ptrFromInt(0x40004244));
                
                
                
                /// se_trng_0_test_out_2.
                pub const se_trng_0_test_out_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_test_out_2:  u32, 
                    
                }), @ptrFromInt(0x40004248));
                
                
                
                /// se_trng_0_test_out_3.
                pub const se_trng_0_test_out_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_trng_0_test_out_3:  u32, 
                    
                }), @ptrFromInt(0x4000424c));
                
                
                
                /// se_trng_0_ctrl_prot.
                pub const se_trng_0_ctrl_prot = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_trng_prot_en:  u1, 
                    
                    /// [1:1] 
                    se_trng_id0_en:  u1, 
                    
                    /// [2:2] 
                    se_trng_id1_en:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x400042fc));
                
                
                
                /// se_pka_0_ctrl_0.
                pub const se_pka_0_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_pka_0_done:  u1, 
                    
                    /// [1:1] 
                    se_pka_0_done_clr_1t:  u1, 
                    
                    /// [2:2] 
                    se_pka_0_busy:  u1, 
                    
                    /// [3:3] 
                    se_pka_0_en:  u1, 
                    
                    /// [4:7] 
                    se_pka_0_prot_md:  u4, 
                    
                    /// [8:8] 
                    se_pka_0_int:  u1, 
                    
                    /// [9:9] 
                    se_pka_0_int_clr_1t:  u1, 
                    
                    /// [10:10] 
                    se_pka_0_int_set:  u1, 
                    
                    /// [11:11] 
                    se_pka_0_int_mask:  u1, 
                    
                    /// [12:12] 
                    se_pka_0_endian:  u1, 
                    
                    /// [13:13] 
                    se_pka_0_ram_clr_md:  u1, 
                    
                    /// [14:15] 
                    res0:  u2, 
                    
                    /// [16:16] 
                    se_pka_0_status_clr_1t:  u1, 
                    
                    /// [17:31] 
                    se_pka_0_status:  u15, 
                    
                }), @ptrFromInt(0x40004300));
                
                
                
                /// se_pka_0_seed.
                pub const se_pka_0_seed = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_pka_0_seed:  u32, 
                    
                }), @ptrFromInt(0x4000430c));
                
                
                
                /// se_pka_0_ctrl_1.
                pub const se_pka_0_ctrl_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    se_pka_0_hburst:  u3, 
                    
                    /// [3:3] 
                    se_pka_0_hbypass:  u1, 
                    
                    /// [4:31] 
                    res0:  u28, 
                    
                }), @ptrFromInt(0x40004310));
                
                
                
                /// se_pka_0_rw.
                pub const se_pka_0_rw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40004340));
                
                
                
                /// se_pka_0_rw_burst.
                pub const se_pka_0_rw_burst = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40004360));
                
                
                
                /// se_pka_0_ctrl_prot.
                pub const se_pka_0_ctrl_prot = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_pka_prot_en:  u1, 
                    
                    /// [1:1] 
                    se_pka_id0_en:  u1, 
                    
                    /// [2:2] 
                    se_pka_id1_en:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x400043fc));
                
                
                
                /// se_cdet_0_ctrl_0.
                pub const se_cdet_0_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_cdet_0_en:  u1, 
                    
                    /// [1:1] 
                    se_cdet_0_error:  u1, 
                    
                    /// [2:15] 
                    se_cdet_0_status:  u14, 
                    
                    /// [16:23] 
                    se_cdet_0_g_loop_max:  u8, 
                    
                    /// [24:31] 
                    se_cdet_0_g_loop_min:  u8, 
                    
                }), @ptrFromInt(0x40004400));
                
                
                
                /// se_cdet_0_ctrl_1.
                pub const se_cdet_0_ctrl_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    se_cdet_0_t_loop_n:  u8, 
                    
                    /// [8:15] 
                    se_cdet_0_t_dly_n:  u8, 
                    
                    /// [16:23] 
                    se_cdet_0_g_slp_n:  u8, 
                    
                    /// [24:31] 
                    res0:  u8, 
                    
                }), @ptrFromInt(0x40004404));
                
                
                
                /// se_cdet_0_ctrl_prot.
                pub const se_cdet_0_ctrl_prot = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_cdet_prot_en:  u1, 
                    
                    /// [1:1] 
                    se_cdet_id0_en:  u1, 
                    
                    /// [2:2] 
                    se_cdet_id1_en:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x400044fc));
                
                
                
                /// se_gmac_0_ctrl_0.
                pub const se_gmac_0_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_gmac_0_busy:  u1, 
                    
                    /// [1:1] 
                    se_gmac_0_trig_1t:  u1, 
                    
                    /// [2:2] 
                    se_gmac_0_en:  u1, 
                    
                    /// [3:7] 
                    res0:  u5, 
                    
                    /// [8:8] 
                    se_gmac_0_int:  u1, 
                    
                    /// [9:9] 
                    se_gmac_0_int_clr_1t:  u1, 
                    
                    /// [10:10] 
                    se_gmac_0_int_set_1t:  u1, 
                    
                    /// [11:11] 
                    se_gmac_0_int_mask:  u1, 
                    
                    /// [12:12] 
                    se_gmac_0_t_endian:  u1, 
                    
                    /// [13:13] 
                    se_gmac_0_h_endian:  u1, 
                    
                    /// [14:14] 
                    se_gmac_0_x_endian:  u1, 
                    
                    /// [15:31] 
                    res1:  u17, 
                    
                }), @ptrFromInt(0x40004500));
                
                
                
                /// se_gmac_0_lca.
                pub const se_gmac_0_lca = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_gmac_0_lca:  u32, 
                    
                }), @ptrFromInt(0x40004504));
                
                
                
                /// se_gmac_0_status.
                pub const se_gmac_0_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_gmac_0_status:  u32, 
                    
                }), @ptrFromInt(0x40004508));
                
                
                
                /// se_gmac_0_ctrl_prot.
                pub const se_gmac_0_ctrl_prot = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_gmac_prot_en:  u1, 
                    
                    /// [1:1] 
                    se_gmac_id0_en:  u1, 
                    
                    /// [2:2] 
                    se_gmac_id1_en:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x400045fc));
                
                
                
                /// se_ctrl_prot_rd.
                pub const se_ctrl_prot_rd = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    se_sha_prot_en_rd:  u1, 
                    
                    /// [1:1] 
                    se_sha_id0_en_rd:  u1, 
                    
                    /// [2:2] 
                    se_sha_id1_en_rd:  u1, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:4] 
                    se_aes_prot_en_rd:  u1, 
                    
                    /// [5:5] 
                    se_aes_id0_en_rd:  u1, 
                    
                    /// [6:6] 
                    se_aes_id1_en_rd:  u1, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:8] 
                    se_trng_prot_en_rd:  u1, 
                    
                    /// [9:9] 
                    se_trng_id0_en_rd:  u1, 
                    
                    /// [10:10] 
                    se_trng_id1_en_rd:  u1, 
                    
                    /// [11:11] 
                    res2:  u1, 
                    
                    /// [12:12] 
                    se_pka_prot_en_rd:  u1, 
                    
                    /// [13:13] 
                    se_pka_id0_en_rd:  u1, 
                    
                    /// [14:14] 
                    se_pka_id1_en_rd:  u1, 
                    
                    /// [15:15] 
                    res3:  u1, 
                    
                    /// [16:16] 
                    se_cdet_prot_en_rd:  u1, 
                    
                    /// [17:17] 
                    se_cdet_id0_en_rd:  u1, 
                    
                    /// [18:18] 
                    se_cdet_id1_en_rd:  u1, 
                    
                    /// [19:19] 
                    res4:  u1, 
                    
                    /// [20:20] 
                    se_gmac_prot_en_rd:  u1, 
                    
                    /// [21:21] 
                    se_gmac_id0_en_rd:  u1, 
                    
                    /// [22:22] 
                    se_gmac_id1_en_rd:  u1, 
                    
                    /// [23:30] 
                    res5:  u8, 
                    
                    /// [31:31] 
                    se_dbg_dis:  u1, 
                    
                }), @ptrFromInt(0x40004f00));
                
                
                
                /// se_ctrl_reserved_0.
                pub const se_ctrl_reserved_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_ctrl_reserved_0:  u32, 
                    
                }), @ptrFromInt(0x40004f04));
                
                
                
                /// se_ctrl_reserved_1.
                pub const se_ctrl_reserved_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_ctrl_reserved_1:  u32, 
                    
                }), @ptrFromInt(0x40004f08));
                
                
                
                /// se_ctrl_reserved_2.
                pub const se_ctrl_reserved_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    se_ctrl_reserved_2:  u32, 
                    
                }), @ptrFromInt(0x40004f0c));
                
                
            };
            
            /// TZC_SEC.
            pub const TZC_SEC = struct {
                
                
                /// tzc_rom_ctrl.
                pub const tzc_rom_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tzc_rom0_r0_id0_en:  u1, 
                    
                    /// [1:1] 
                    tzc_rom0_r1_id0_en:  u1, 
                    
                    /// [2:2] 
                    tzc_rom1_r0_id0_en:  u1, 
                    
                    /// [3:3] 
                    tzc_rom1_r1_id0_en:  u1, 
                    
                    /// [4:7] 
                    res0:  u4, 
                    
                    /// [8:8] 
                    tzc_rom0_r0_id1_en:  u1, 
                    
                    /// [9:9] 
                    tzc_rom0_r1_id1_en:  u1, 
                    
                    /// [10:10] 
                    tzc_rom1_r0_id1_en:  u1, 
                    
                    /// [11:11] 
                    tzc_rom1_r1_id1_en:  u1, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] 
                    tzc_rom0_r0_en:  u1, 
                    
                    /// [17:17] 
                    tzc_rom0_r1_en:  u1, 
                    
                    /// [18:18] 
                    tzc_rom1_r0_en:  u1, 
                    
                    /// [19:19] 
                    tzc_rom1_r1_en:  u1, 
                    
                    /// [20:23] 
                    res2:  u4, 
                    
                    /// [24:24] 
                    tzc_rom0_r0_lock:  u1, 
                    
                    /// [25:25] 
                    tzc_rom0_r1_lock:  u1, 
                    
                    /// [26:26] 
                    tzc_rom1_r0_lock:  u1, 
                    
                    /// [27:27] 
                    tzc_rom1_r1_lock:  u1, 
                    
                    /// [28:31] 
                    tzc_sboot_done:  u4, 
                    
                }), @ptrFromInt(0x40005040));
                
                
                
                /// tzc_rom0_r0.
                pub const tzc_rom0_r0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom0_r0_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom0_r0_start:  u16, 
                    
                }), @ptrFromInt(0x40005044));
                
                
                
                /// tzc_rom0_r1.
                pub const tzc_rom0_r1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom0_r1_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom0_r1_start:  u16, 
                    
                }), @ptrFromInt(0x40005048));
                
                
                
                /// tzc_rom1_r0.
                pub const tzc_rom1_r0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom1_r0_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom1_r0_start:  u16, 
                    
                }), @ptrFromInt(0x4000504c));
                
                
                
                /// tzc_rom1_r1.
                pub const tzc_rom1_r1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom1_r1_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom1_r1_start:  u16, 
                    
                }), @ptrFromInt(0x40005050));
                
                
            };
            
            /// TZC_NSEC.
            pub const TZC_NSEC = struct {
                
                
                /// tzc_rom_ctrl.
                pub const tzc_rom_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tzc_rom0_r0_id0_en:  u1, 
                    
                    /// [1:1] 
                    tzc_rom0_r1_id0_en:  u1, 
                    
                    /// [2:2] 
                    tzc_rom1_r0_id0_en:  u1, 
                    
                    /// [3:3] 
                    tzc_rom1_r1_id0_en:  u1, 
                    
                    /// [4:7] 
                    res0:  u4, 
                    
                    /// [8:8] 
                    tzc_rom0_r0_id1_en:  u1, 
                    
                    /// [9:9] 
                    tzc_rom0_r1_id1_en:  u1, 
                    
                    /// [10:10] 
                    tzc_rom1_r0_id1_en:  u1, 
                    
                    /// [11:11] 
                    tzc_rom1_r1_id1_en:  u1, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] 
                    tzc_rom0_r0_en:  u1, 
                    
                    /// [17:17] 
                    tzc_rom0_r1_en:  u1, 
                    
                    /// [18:18] 
                    tzc_rom1_r0_en:  u1, 
                    
                    /// [19:19] 
                    tzc_rom1_r1_en:  u1, 
                    
                    /// [20:23] 
                    res2:  u4, 
                    
                    /// [24:24] 
                    tzc_rom0_r0_lock:  u1, 
                    
                    /// [25:25] 
                    tzc_rom0_r1_lock:  u1, 
                    
                    /// [26:26] 
                    tzc_rom1_r0_lock:  u1, 
                    
                    /// [27:27] 
                    tzc_rom1_r1_lock:  u1, 
                    
                    /// [28:31] 
                    tzc_sboot_done:  u4, 
                    
                }), @ptrFromInt(0x40006040));
                
                
                
                /// tzc_rom0_r0.
                pub const tzc_rom0_r0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom0_r0_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom0_r0_start:  u16, 
                    
                }), @ptrFromInt(0x40006044));
                
                
                
                /// tzc_rom0_r1.
                pub const tzc_rom0_r1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom0_r1_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom0_r1_start:  u16, 
                    
                }), @ptrFromInt(0x40006048));
                
                
                
                /// tzc_rom1_r0.
                pub const tzc_rom1_r0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom1_r0_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom1_r0_start:  u16, 
                    
                }), @ptrFromInt(0x4000604c));
                
                
                
                /// tzc_rom1_r1.
                pub const tzc_rom1_r1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    tzc_rom1_r1_end:  u16, 
                    
                    /// [16:31] 
                    tzc_rom1_r1_start:  u16, 
                    
                }), @ptrFromInt(0x40006050));
                
                
            };
            
            /// EF_DATA_0
            pub const EF_DATA_0 = struct {
                
                
                /// ef_cfg_0.
                pub const ef_cfg_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    ef_sf_aes_mode:  u2, 
                    
                    /// [2:3] 
                    ef_sboot_sign_mode:  u2, 
                    
                    /// [4:5] 
                    ef_sboot_en:  u2, 
                    
                    /// [6:6] 
                    ef_cpu1_enc_en:  u1, 
                    
                    /// [7:7] 
                    ef_cpu0_enc_en:  u1, 
                    
                    /// [8:11] 
                    ef_boot_sel:  u4, 
                    
                    /// [12:13] 
                    ef_sw_usage_1:  u2, 
                    
                    /// [14:14] 
                    ef_sdu_dis:  u1, 
                    
                    /// [15:15] 
                    ef_ble_dis:  u1, 
                    
                    /// [16:16] 
                    ef_wifi_dis:  u1, 
                    
                    /// [17:17] 
                    ef_0_key_enc_en:  u1, 
                    
                    /// [18:18] 
                    ef_cam_dis:  u1, 
                    
                    /// [19:19] 
                    ef_sf_dis:  u1, 
                    
                    /// [20:20] 
                    ef_cpu1_dis:  u1, 
                    
                    /// [21:21] 
                    ef_cpu_rst_dbg_dis:  u1, 
                    
                    /// [22:22] 
                    ef_se_dbg_dis:  u1, 
                    
                    /// [23:23] 
                    ef_efuse_dbg_dis:  u1, 
                    
                    /// [24:25] 
                    ef_dbg_jtag_1_dis:  u2, 
                    
                    /// [26:27] 
                    ef_dbg_jtag_0_dis:  u2, 
                    
                    /// [28:31] 
                    ef_dbg_mode:  u4, 
                    
                }), @ptrFromInt(0x40007000));
                
                
                
                /// ef_dbg_pwd_low.
                pub const ef_dbg_pwd_low = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_dbg_pwd_low:  u32, 
                    
                }), @ptrFromInt(0x40007004));
                
                
                
                /// ef_dbg_pwd_high.
                pub const ef_dbg_pwd_high = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_dbg_pwd_high:  u32, 
                    
                }), @ptrFromInt(0x40007008));
                
                
                
                /// ef_ana_trim_0.
                pub const ef_ana_trim_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_ana_trim_0:  u32, 
                    
                }), @ptrFromInt(0x4000700c));
                
                
                
                /// ef_sw_usage_0.
                pub const ef_sw_usage_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_sw_usage_0:  u32, 
                    
                }), @ptrFromInt(0x40007010));
                
                
                
                /// ef_wifi_mac_low.
                pub const ef_wifi_mac_low = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_wifi_mac_low:  u32, 
                    
                }), @ptrFromInt(0x40007014));
                
                
                
                /// ef_wifi_mac_high.
                pub const ef_wifi_mac_high = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_wifi_mac_high:  u32, 
                    
                }), @ptrFromInt(0x40007018));
                
                
                
                /// ef_key_slot_0_w0.
                pub const ef_key_slot_0_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_0_w0:  u32, 
                    
                }), @ptrFromInt(0x4000701c));
                
                
                
                /// ef_key_slot_0_w1.
                pub const ef_key_slot_0_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_0_w1:  u32, 
                    
                }), @ptrFromInt(0x40007020));
                
                
                
                /// ef_key_slot_0_w2.
                pub const ef_key_slot_0_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_0_w2:  u32, 
                    
                }), @ptrFromInt(0x40007024));
                
                
                
                /// ef_key_slot_0_w3.
                pub const ef_key_slot_0_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_0_w3:  u32, 
                    
                }), @ptrFromInt(0x40007028));
                
                
                
                /// ef_key_slot_1_w0.
                pub const ef_key_slot_1_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_1_w0:  u32, 
                    
                }), @ptrFromInt(0x4000702c));
                
                
                
                /// ef_key_slot_1_w1.
                pub const ef_key_slot_1_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_1_w1:  u32, 
                    
                }), @ptrFromInt(0x40007030));
                
                
                
                /// ef_key_slot_1_w2.
                pub const ef_key_slot_1_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_1_w2:  u32, 
                    
                }), @ptrFromInt(0x40007034));
                
                
                
                /// ef_key_slot_1_w3.
                pub const ef_key_slot_1_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_1_w3:  u32, 
                    
                }), @ptrFromInt(0x40007038));
                
                
                
                /// ef_key_slot_2_w0.
                pub const ef_key_slot_2_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_2_w0:  u32, 
                    
                }), @ptrFromInt(0x4000703c));
                
                
                
                /// ef_key_slot_2_w1.
                pub const ef_key_slot_2_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_2_w1:  u32, 
                    
                }), @ptrFromInt(0x40007040));
                
                
                
                /// ef_key_slot_2_w2.
                pub const ef_key_slot_2_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_2_w2:  u32, 
                    
                }), @ptrFromInt(0x40007044));
                
                
                
                /// ef_key_slot_2_w3.
                pub const ef_key_slot_2_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_2_w3:  u32, 
                    
                }), @ptrFromInt(0x40007048));
                
                
                
                /// ef_key_slot_3_w0.
                pub const ef_key_slot_3_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_3_w0:  u32, 
                    
                }), @ptrFromInt(0x4000704c));
                
                
                
                /// ef_key_slot_3_w1.
                pub const ef_key_slot_3_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_3_w1:  u32, 
                    
                }), @ptrFromInt(0x40007050));
                
                
                
                /// ef_key_slot_3_w2.
                pub const ef_key_slot_3_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_3_w2:  u32, 
                    
                }), @ptrFromInt(0x40007054));
                
                
                
                /// ef_key_slot_3_w3.
                pub const ef_key_slot_3_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_3_w3:  u32, 
                    
                }), @ptrFromInt(0x40007058));
                
                
                
                /// ef_key_slot_4_w0.
                pub const ef_key_slot_4_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_4_w0:  u32, 
                    
                }), @ptrFromInt(0x4000705c));
                
                
                
                /// ef_key_slot_4_w1.
                pub const ef_key_slot_4_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_4_w1:  u32, 
                    
                }), @ptrFromInt(0x40007060));
                
                
                
                /// ef_key_slot_4_w2.
                pub const ef_key_slot_4_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_4_w2:  u32, 
                    
                }), @ptrFromInt(0x40007064));
                
                
                
                /// ef_key_slot_4_w3.
                pub const ef_key_slot_4_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_4_w3:  u32, 
                    
                }), @ptrFromInt(0x40007068));
                
                
                
                /// ef_key_slot_5_w0.
                pub const ef_key_slot_5_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_5_w0:  u32, 
                    
                }), @ptrFromInt(0x4000706c));
                
                
                
                /// ef_key_slot_5_w1.
                pub const ef_key_slot_5_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_5_w1:  u32, 
                    
                }), @ptrFromInt(0x40007070));
                
                
                
                /// ef_key_slot_5_w2.
                pub const ef_key_slot_5_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_5_w2:  u32, 
                    
                }), @ptrFromInt(0x40007074));
                
                
                
                /// ef_key_slot_5_w3.
                pub const ef_key_slot_5_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_key_slot_5_w3:  u32, 
                    
                }), @ptrFromInt(0x40007078));
                
                
                
                /// ef_data_0_lock.
                pub const ef_data_0_lock = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:12] 
                    ef_ana_trim_1:  u13, 
                    
                    /// [13:13] 
                    wr_lock_key_slot_4_l:  u1, 
                    
                    /// [14:14] 
                    wr_lock_key_slot_5_l:  u1, 
                    
                    /// [15:15] 
                    wr_lock_boot_mode:  u1, 
                    
                    /// [16:16] 
                    wr_lock_dbg_pwd:  u1, 
                    
                    /// [17:17] 
                    wr_lock_sw_usage_0:  u1, 
                    
                    /// [18:18] 
                    wr_lock_wifi_mac:  u1, 
                    
                    /// [19:19] 
                    wr_lock_key_slot_0:  u1, 
                    
                    /// [20:20] 
                    wr_lock_key_slot_1:  u1, 
                    
                    /// [21:21] 
                    wr_lock_key_slot_2:  u1, 
                    
                    /// [22:22] 
                    wr_lock_key_slot_3:  u1, 
                    
                    /// [23:23] 
                    wr_lock_key_slot_4_h:  u1, 
                    
                    /// [24:24] 
                    wr_lock_key_slot_5_h:  u1, 
                    
                    /// [25:25] 
                    rd_lock_dbg_pwd:  u1, 
                    
                    /// [26:26] 
                    rd_lock_key_slot_0:  u1, 
                    
                    /// [27:27] 
                    rd_lock_key_slot_1:  u1, 
                    
                    /// [28:28] 
                    rd_lock_key_slot_2:  u1, 
                    
                    /// [29:29] 
                    rd_lock_key_slot_3:  u1, 
                    
                    /// [30:30] 
                    rd_lock_key_slot_4:  u1, 
                    
                    /// [31:31] 
                    rd_lock_key_slot_5:  u1, 
                    
                }), @ptrFromInt(0x4000707c));
                
                
            };
            
            /// EF_DATA_1.
            pub const EF_DATA_1 = struct {
                
                
                /// reg_key_slot_6_w0.
                pub const reg_key_slot_6_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_6_w0:  u32, 
                    
                }), @ptrFromInt(0x40007080));
                
                
                
                /// reg_key_slot_6_w1.
                pub const reg_key_slot_6_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_6_w1:  u32, 
                    
                }), @ptrFromInt(0x40007084));
                
                
                
                /// reg_key_slot_6_w2.
                pub const reg_key_slot_6_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_6_w2:  u32, 
                    
                }), @ptrFromInt(0x40007088));
                
                
                
                /// reg_key_slot_6_w3.
                pub const reg_key_slot_6_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_6_w3:  u32, 
                    
                }), @ptrFromInt(0x4000708c));
                
                
                
                /// reg_key_slot_7_w0.
                pub const reg_key_slot_7_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_7_w0:  u32, 
                    
                }), @ptrFromInt(0x40007090));
                
                
                
                /// reg_key_slot_7_w1.
                pub const reg_key_slot_7_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_7_w1:  u32, 
                    
                }), @ptrFromInt(0x40007094));
                
                
                
                /// reg_key_slot_7_w2.
                pub const reg_key_slot_7_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_7_w2:  u32, 
                    
                }), @ptrFromInt(0x40007098));
                
                
                
                /// reg_key_slot_7_w3.
                pub const reg_key_slot_7_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_7_w3:  u32, 
                    
                }), @ptrFromInt(0x4000709c));
                
                
                
                /// reg_key_slot_8_w0.
                pub const reg_key_slot_8_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_8_w0:  u32, 
                    
                }), @ptrFromInt(0x400070a0));
                
                
                
                /// reg_key_slot_8_w1.
                pub const reg_key_slot_8_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_8_w1:  u32, 
                    
                }), @ptrFromInt(0x400070a4));
                
                
                
                /// reg_key_slot_8_w2.
                pub const reg_key_slot_8_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_8_w2:  u32, 
                    
                }), @ptrFromInt(0x400070a8));
                
                
                
                /// reg_key_slot_8_w3.
                pub const reg_key_slot_8_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_8_w3:  u32, 
                    
                }), @ptrFromInt(0x400070ac));
                
                
                
                /// reg_key_slot_9_w0.
                pub const reg_key_slot_9_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_9_w0:  u32, 
                    
                }), @ptrFromInt(0x400070b0));
                
                
                
                /// reg_key_slot_9_w1.
                pub const reg_key_slot_9_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_9_w1:  u32, 
                    
                }), @ptrFromInt(0x400070b4));
                
                
                
                /// reg_key_slot_9_w2.
                pub const reg_key_slot_9_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_9_w2:  u32, 
                    
                }), @ptrFromInt(0x400070b8));
                
                
                
                /// reg_key_slot_9_w3.
                pub const reg_key_slot_9_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    reg_key_slot_9_w3:  u32, 
                    
                }), @ptrFromInt(0x400070bc));
                
                
                
                /// reg_key_slot_10_w0.
                pub const reg_key_slot_10_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070c0));
                
                
                
                /// reg_key_slot_10_w1.
                pub const reg_key_slot_10_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070c4));
                
                
                
                /// reg_key_slot_10_w2.
                pub const reg_key_slot_10_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070c8));
                
                
                
                /// reg_key_slot_10_w3.
                pub const reg_key_slot_10_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070cc));
                
                
                
                /// reg_key_slot_11_w0.
                pub const reg_key_slot_11_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070d0));
                
                
                
                /// reg_key_slot_11_w1.
                pub const reg_key_slot_11_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070d4));
                
                
                
                /// reg_key_slot_11_w2.
                pub const reg_key_slot_11_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070d8));
                
                
                
                /// reg_key_slot_11_w3.
                pub const reg_key_slot_11_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x400070dc));
                
                
                
                /// reg_data_1_lock.
                pub const reg_data_1_lock = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    RESERVED_9_0:  u10, 
                    
                    /// [10:10] 
                    wr_lock_key_slot_6:  u1, 
                    
                    /// [11:11] 
                    wr_lock_key_slot_7:  u1, 
                    
                    /// [12:12] 
                    wr_lock_key_slot_8:  u1, 
                    
                    /// [13:13] 
                    wr_lock_key_slot_9:  u1, 
                    
                    /// [14:15] 
                    res0:  u2, 
                    
                    /// [16:25] 
                    RESERVED_25_16:  u10, 
                    
                    /// [26:26] 
                    rd_lock_key_slot_6:  u1, 
                    
                    /// [27:27] 
                    rd_lock_key_slot_7:  u1, 
                    
                    /// [28:28] 
                    rd_lock_key_slot_8:  u1, 
                    
                    /// [29:29] 
                    rd_lock_key_slot_9:  u1, 
                    
                    /// [30:31] 
                    res1:  u2, 
                    
                }), @ptrFromInt(0x400070e0));
                
                
            };
            
            /// eFuse memory control
            pub const EF_CTRL = struct {
                
                
                /// ef_if_ctrl_0.
                pub const ef_if_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    ef_if_0_autoload_p1_done:  u1, 
                    
                    /// [1:1] 
                    ef_if_0_autoload_done:  u1, 
                    
                    /// [2:2] 
                    ef_if_0_busy:  u1, 
                    
                    /// [3:3] 
                    ef_if_0_rw:  u1, 
                    
                    /// [4:4] 
                    ef_if_0_trig:  u1, 
                    
                    /// [5:5] 
                    ef_if_0_manual_en:  u1, 
                    
                    /// [6:6] 
                    ef_if_0_cyc_modify:  u1, 
                    
                    /// [7:7] 
                    ef_clk_sahb_data_sel:  u1, 
                    
                    /// [8:15] 
                    ef_if_prot_code_ctrl:  u8, 
                    
                    /// [16:16] 
                    ef_if_por_dig:  u1, 
                    
                    /// [17:17] 
                    ef_clk_sahb_data_gate:  u1, 
                    
                    /// [18:18] 
                    ef_if_auto_rd_en:  u1, 
                    
                    /// [19:19] 
                    ef_if_cyc_modify_lock:  u1, 
                    
                    /// [20:20] 
                    ef_if_0_int:  u1, 
                    
                    /// [21:21] 
                    ef_if_0_int_clr:  u1, 
                    
                    /// [22:22] 
                    ef_if_0_int_set:  u1, 
                    
                    /// [23:23] 
                    res0:  u1, 
                    
                    /// [24:31] 
                    ef_if_prot_code_cyc:  u8, 
                    
                }), @ptrFromInt(0x40007800));
                
                
                
                /// ef_if_cyc_0.
                pub const ef_if_cyc_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    ef_if_cyc_rd_dmy:  u6, 
                    
                    /// [6:11] 
                    ef_if_cyc_rd_dat:  u6, 
                    
                    /// [12:17] 
                    ef_if_cyc_rd_adr:  u6, 
                    
                    /// [18:23] 
                    ef_if_cyc_cs:  u6, 
                    
                    /// [24:31] 
                    ef_if_cyc_pd_cs_s:  u8, 
                    
                }), @ptrFromInt(0x40007804));
                
                
                
                /// ef_if_cyc_1.
                pub const ef_if_cyc_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    ef_if_cyc_pi:  u6, 
                    
                    /// [6:13] 
                    ef_if_cyc_pp:  u8, 
                    
                    /// [14:19] 
                    ef_if_cyc_wr_adr:  u6, 
                    
                    /// [20:25] 
                    ef_if_cyc_ps_cs:  u6, 
                    
                    /// [26:31] 
                    ef_if_cyc_pd_cs_h:  u6, 
                    
                }), @ptrFromInt(0x40007808));
                
                
                
                /// ef_if_0_manual.
                pub const ef_if_0_manual = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:9] 
                    ef_if_a:  u10, 
                    
                    /// [10:10] 
                    ef_if_pd:  u1, 
                    
                    /// [11:11] 
                    ef_if_ps:  u1, 
                    
                    /// [12:12] 
                    ef_if_strobe:  u1, 
                    
                    /// [13:13] 
                    ef_if_pgenb:  u1, 
                    
                    /// [14:14] 
                    ef_if_load:  u1, 
                    
                    /// [15:15] 
                    ef_if_csb:  u1, 
                    
                    /// [16:23] 
                    ef_if_0_q:  u8, 
                    
                    /// [24:31] 
                    ef_if_prot_code_manual:  u8, 
                    
                }), @ptrFromInt(0x4000780c));
                
                
                
                /// ef_if_0_status.
                pub const ef_if_0_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_if_0_status:  u32, 
                    
                }), @ptrFromInt(0x40007810));
                
                
                
                /// ef_if_cfg_0.
                pub const ef_if_cfg_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    ef_if_sf_aes_mode:  u2, 
                    
                    /// [2:3] 
                    ef_if_sboot_sign_mode:  u2, 
                    
                    /// [4:5] 
                    ef_if_sboot_en:  u2, 
                    
                    /// [6:6] 
                    ef_if_cpu1_enc_en:  u1, 
                    
                    /// [7:7] 
                    ef_if_cpu0_enc_en:  u1, 
                    
                    /// [8:11] 
                    ef_if_boot_sel:  u4, 
                    
                    /// [12:13] 
                    ef_if_sw_usage_1:  u2, 
                    
                    /// [14:14] 
                    ef_if_sdu_dis:  u1, 
                    
                    /// [15:15] 
                    ef_if_ble_dis:  u1, 
                    
                    /// [16:16] 
                    ef_if_wifi_dis:  u1, 
                    
                    /// [17:17] 
                    ef_if_0_key_enc_en:  u1, 
                    
                    /// [18:18] 
                    ef_if_cam_dis:  u1, 
                    
                    /// [19:19] 
                    ef_if_sf_dis:  u1, 
                    
                    /// [20:20] 
                    ef_if_cpu1_dis:  u1, 
                    
                    /// [21:21] 
                    ef_if_cpu_rst_dbg_dis:  u1, 
                    
                    /// [22:22] 
                    ef_if_se_dbg_dis:  u1, 
                    
                    /// [23:23] 
                    ef_if_efuse_dbg_dis:  u1, 
                    
                    /// [24:25] 
                    ef_if_dbg_jtag_1_dis:  u2, 
                    
                    /// [26:27] 
                    ef_if_dbg_jtag_0_dis:  u2, 
                    
                    /// [28:31] 
                    ef_if_dbg_mode:  u4, 
                    
                }), @ptrFromInt(0x40007814));
                
                
                
                /// ef_sw_cfg_0.
                pub const ef_sw_cfg_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    ef_sw_sf_aes_mode:  u2, 
                    
                    /// [2:3] 
                    ef_sw_sboot_sign_mode:  u2, 
                    
                    /// [4:5] 
                    ef_sw_sboot_en:  u2, 
                    
                    /// [6:6] 
                    ef_sw_cpu1_enc_en:  u1, 
                    
                    /// [7:7] 
                    ef_sw_cpu0_enc_en:  u1, 
                    
                    /// [8:11] 
                    res0:  u4, 
                    
                    /// [12:13] 
                    ef_sw_sw_usage_1:  u2, 
                    
                    /// [14:14] 
                    ef_sw_sdu_dis:  u1, 
                    
                    /// [15:15] 
                    ef_sw_ble_dis:  u1, 
                    
                    /// [16:16] 
                    ef_sw_wifi_dis:  u1, 
                    
                    /// [17:17] 
                    ef_sw_0_key_enc_en:  u1, 
                    
                    /// [18:18] 
                    ef_sw_cam_dis:  u1, 
                    
                    /// [19:19] 
                    ef_sw_sf_dis:  u1, 
                    
                    /// [20:20] 
                    ef_sw_cpu1_dis:  u1, 
                    
                    /// [21:21] 
                    ef_sw_cpu_rst_dbg_dis:  u1, 
                    
                    /// [22:22] 
                    ef_sw_se_dbg_dis:  u1, 
                    
                    /// [23:23] 
                    ef_sw_efuse_dbg_dis:  u1, 
                    
                    /// [24:25] 
                    ef_sw_dbg_jtag_1_dis:  u2, 
                    
                    /// [26:27] 
                    ef_sw_dbg_jtag_0_dis:  u2, 
                    
                    /// [28:31] 
                    ef_sw_dbg_mode:  u4, 
                    
                }), @ptrFromInt(0x40007818));
                
                
                
                /// ef_reserved.
                pub const ef_reserved = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_reserved:  u32, 
                    
                }), @ptrFromInt(0x4000781c));
                
                
                
                /// ef_if_ana_trim_0.
                pub const ef_if_ana_trim_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_if_ana_trim_0:  u32, 
                    
                }), @ptrFromInt(0x40007820));
                
                
                
                /// ef_if_sw_usage_0.
                pub const ef_if_sw_usage_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_if_sw_usage_0:  u32, 
                    
                }), @ptrFromInt(0x40007824));
                
                
                
                /// ef_crc_ctrl_0.
                pub const ef_crc_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    ef_crc_busy:  u1, 
                    
                    /// [1:1] 
                    ef_crc_trig:  u1, 
                    
                    /// [2:2] 
                    ef_crc_en:  u1, 
                    
                    /// [3:3] 
                    ef_crc_mode:  u1, 
                    
                    /// [4:4] 
                    ef_crc_error:  u1, 
                    
                    /// [5:5] 
                    ef_crc_dout_inv_en:  u1, 
                    
                    /// [6:6] 
                    ef_crc_dout_endian:  u1, 
                    
                    /// [7:7] 
                    ef_crc_din_endian:  u1, 
                    
                    /// [8:8] 
                    ef_crc_int:  u1, 
                    
                    /// [9:9] 
                    ef_crc_int_clr:  u1, 
                    
                    /// [10:10] 
                    ef_crc_int_set:  u1, 
                    
                    /// [11:11] 
                    ef_crc_lock:  u1, 
                    
                    /// [12:15] 
                    res0:  u4, 
                    
                    /// [16:31] 
                    ef_crc_slp_n:  u16, 
                    
                }), @ptrFromInt(0x40007a00));
                
                
                
                /// ef_crc_ctrl_1.
                pub const ef_crc_ctrl_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_crc_data_0_en:  u32, 
                    
                }), @ptrFromInt(0x40007a04));
                
                
                
                /// ef_crc_ctrl_2.
                pub const ef_crc_ctrl_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_crc_data_1_en:  u32, 
                    
                }), @ptrFromInt(0x40007a08));
                
                
                
                /// ef_crc_ctrl_3.
                pub const ef_crc_ctrl_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_crc_iv:  u32, 
                    
                }), @ptrFromInt(0x40007a0c));
                
                
                
                /// ef_crc_ctrl_4.
                pub const ef_crc_ctrl_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_crc_golden:  u32, 
                    
                }), @ptrFromInt(0x40007a10));
                
                
                
                /// ef_crc_ctrl_5.
                pub const ef_crc_ctrl_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    ef_crc_dout:  u32, 
                    
                }), @ptrFromInt(0x40007a14));
                
                
            };
            
            /// CCI.
            pub const CCI = struct {
                
                
                /// cci_cfg.
                pub const cci_cfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cci_en:  u1, 
                    
                    /// [1:1] 
                    cci_slv_sel_cci2:  u1, 
                    
                    /// [2:2] 
                    cci_mas_sel_cci2:  u1, 
                    
                    /// [3:3] 
                    cci_mas_hw_mode:  u1, 
                    
                    /// [4:4] 
                    reg_m_cci_sclk_en:  u1, 
                    
                    /// [5:6] 
                    reg_div_m_cci_sclk:  u2, 
                    
                    /// [7:7] 
                    cfg_cci1_pre_read:  u1, 
                    
                    /// [8:8] 
                    reg_scci_clk_inv:  u1, 
                    
                    /// [9:9] 
                    reg_mcci_clk_inv:  u1, 
                    
                    /// [10:31] 
                    res0:  u22, 
                    
                }), @ptrFromInt(0x40008000));
                
                
                
                /// cci_addr.
                pub const cci_addr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    apb_cci_addr:  u32, 
                    
                }), @ptrFromInt(0x40008004));
                
                
                
                /// cci_wdata.
                pub const cci_wdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    apb_cci_wdata:  u32, 
                    
                }), @ptrFromInt(0x40008008));
                
                
                
                /// cci_rdata.
                pub const cci_rdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    apb_cci_rdata:  u32, 
                    
                }), @ptrFromInt(0x4000800c));
                
                
                
                /// cci_ctl.
                pub const cci_ctl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cci_write_flag:  u1, 
                    
                    /// [1:1] 
                    cci_read_flag:  u1, 
                    
                    /// [2:3] 
                    ahb_state:  u2, 
                    
                    /// [4:31] 
                    res0:  u28, 
                    
                }), @ptrFromInt(0x40008010));
                
                
            };
            
            /// Cache control
            pub const L1C = struct {
                
                
                /// l1c_config.
                pub const l1c_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    l1c_cacheable:  u1, 
                    
                    /// [1:1] 
                    l1c_cnt_en:  u1, 
                    
                    /// [2:2] 
                    l1c_invalid_en:  u1, 
                    
                    /// [3:3] 
                    l1c_invalid_done:  u1, 
                    
                    /// [4:7] 
                    res0:  u4, 
                    
                    /// [8:11] 
                    l1c_way_dis:  u4, 
                    
                    /// [12:12] 
                    irom_2t_access:  u1, 
                    
                    /// [13:13] 
                    res1:  u1, 
                    
                    /// [14:14] 
                    l1c_bypass:  u1, 
                    
                    /// [15:15] 
                    l1c_bmx_err_en:  u1, 
                    
                    /// [16:17] 
                    l1c_bmx_arb_mode:  u2, 
                    
                    /// [18:19] 
                    res2:  u2, 
                    
                    /// [20:23] 
                    l1c_bmx_timeout_en:  u4, 
                    
                    /// [24:24] 
                    l1c_bmx_busy_option_dis:  u1, 
                    
                    /// [25:25] 
                    early_resp_dis:  u1, 
                    
                    /// [26:26] 
                    wrap_dis:  u1, 
                    
                    /// [27:31] 
                    res3:  u5, 
                    
                }), @ptrFromInt(0x40009000));
                
                
                
                /// hit_cnt_lsb.
                pub const hit_cnt_lsb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    hit_cnt_lsb:  u32, 
                    
                }), @ptrFromInt(0x40009004));
                
                
                
                /// hit_cnt_msb.
                pub const hit_cnt_msb = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    hit_cnt_msb:  u32, 
                    
                }), @ptrFromInt(0x40009008));
                
                
                
                /// miss_cnt.
                pub const miss_cnt = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    miss_cnt:  u32, 
                    
                }), @ptrFromInt(0x4000900c));
                
                
                
                /// l1c_range.
                pub const l1c_range = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x40009010));
                
                
                
                /// l1c_bmx_err_addr_en.
                pub const l1c_bmx_err_addr_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    l1c_bmx_err_addr_dis:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    l1c_bmx_err_dec:  u1, 
                    
                    /// [5:5] 
                    l1c_bmx_err_tz:  u1, 
                    
                    /// [6:15] 
                    res1:  u10, 
                    
                    /// [16:19] 
                    l1c_hsel_option:  u4, 
                    
                    /// [20:31] 
                    res2:  u12, 
                    
                }), @ptrFromInt(0x40009200));
                
                
                
                /// l1c_bmx_err_addr.
                pub const l1c_bmx_err_addr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    l1c_bmx_err_addr:  u32, 
                    
                }), @ptrFromInt(0x40009204));
                
                
                
                /// irom1_misr_dataout_0.
                pub const irom1_misr_dataout_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    irom1_misr_dataout_0:  u32, 
                    
                }), @ptrFromInt(0x40009208));
                
                
                
                /// irom1_misr_dataout_1.
                pub const irom1_misr_dataout_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    raw:  u32, 
                    
                }), @ptrFromInt(0x4000920c));
                
                
                
                /// cpu_clk_gate.
                pub const cpu_clk_gate = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    force_e21_clock_on_0:  u1, 
                    
                    /// [1:1] 
                    force_e21_clock_on_1:  u1, 
                    
                    /// [2:2] 
                    force_e21_clock_on_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x40009210));
                
                
            };
            
            /// UART control
            pub const UART = struct {
                
                
                /// utx_config.
                pub const utx_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_utx_en:  u1, 
                    
                    /// [1:1] 
                    cr_utx_cts_en:  u1, 
                    
                    /// [2:2] 
                    cr_utx_frm_en:  u1, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:4] 
                    cr_utx_prt_en:  u1, 
                    
                    /// [5:5] 
                    cr_utx_prt_sel:  u1, 
                    
                    /// [6:6] 
                    cr_utx_ir_en:  u1, 
                    
                    /// [7:7] 
                    cr_utx_ir_inv:  u1, 
                    
                    /// [8:10] 
                    cr_utx_bit_cnt_d:  u3, 
                    
                    /// [11:11] 
                    res1:  u1, 
                    
                    /// [12:13] 
                    cr_utx_bit_cnt_p:  u2, 
                    
                    /// [14:15] 
                    res2:  u2, 
                    
                    /// [16:31] 
                    cr_utx_len:  u16, 
                    
                }), @ptrFromInt(0x4000a000));
                
                
                
                /// urx_config.
                pub const urx_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_urx_en:  u1, 
                    
                    /// [1:1] 
                    cr_urx_rts_sw_mode:  u1, 
                    
                    /// [2:2] 
                    cr_urx_rts_sw_val:  u1, 
                    
                    /// [3:3] 
                    cr_urx_abr_en:  u1, 
                    
                    /// [4:4] 
                    cr_urx_prt_en:  u1, 
                    
                    /// [5:5] 
                    cr_urx_prt_sel:  u1, 
                    
                    /// [6:6] 
                    cr_urx_ir_en:  u1, 
                    
                    /// [7:7] 
                    cr_urx_ir_inv:  u1, 
                    
                    /// [8:10] 
                    cr_urx_bit_cnt_d:  u3, 
                    
                    /// [11:11] 
                    cr_urx_deg_en:  u1, 
                    
                    /// [12:15] 
                    cr_urx_deg_cnt:  u4, 
                    
                    /// [16:31] 
                    cr_urx_len:  u16, 
                    
                }), @ptrFromInt(0x4000a004));
                
                
                
                /// uart_bit_prd.
                pub const uart_bit_prd = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    cr_utx_bit_prd:  u16, 
                    
                    /// [16:31] 
                    cr_urx_bit_prd:  u16, 
                    
                }), @ptrFromInt(0x4000a008));
                
                
                
                /// data_config.
                pub const data_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_uart_bit_inv:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x4000a00c));
                
                
                
                /// utx_ir_position.
                pub const utx_ir_position = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    cr_utx_ir_pos_s:  u16, 
                    
                    /// [16:31] 
                    cr_utx_ir_pos_p:  u16, 
                    
                }), @ptrFromInt(0x4000a010));
                
                
                
                /// urx_ir_position.
                pub const urx_ir_position = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    cr_urx_ir_pos_s:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a014));
                
                
                
                /// urx_rto_timer.
                pub const urx_rto_timer = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_urx_rto_value:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a018));
                
                
                
                /// UART interrupt status
                pub const uart_int_sts = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    utx_end_int:  u1, 
                    
                    /// [1:1] 
                    urx_end_int:  u1, 
                    
                    /// [2:2] 
                    utx_fifo_int:  u1, 
                    
                    /// [3:3] 
                    urx_fifo_int:  u1, 
                    
                    /// [4:4] 
                    urx_rto_int:  u1, 
                    
                    /// [5:5] 
                    urx_pce_int:  u1, 
                    
                    /// [6:6] 
                    utx_fer_int:  u1, 
                    
                    /// [7:7] 
                    urx_fer_int:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a020));
                
                
                
                /// UART interrupt mask
                pub const uart_int_mask = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_utx_end_mask:  u1, 
                    
                    /// [1:1] 
                    cr_urx_end_mask:  u1, 
                    
                    /// [2:2] 
                    cr_utx_fifo_mask:  u1, 
                    
                    /// [3:3] 
                    cr_urx_fifo_mask:  u1, 
                    
                    /// [4:4] 
                    cr_urx_rto_mask:  u1, 
                    
                    /// [5:5] 
                    cr_urx_pce_mask:  u1, 
                    
                    /// [6:6] 
                    cr_utx_fer_mask:  u1, 
                    
                    /// [7:7] 
                    cr_urx_fer_mask:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a024));
                
                
                
                /// UART interrupt clear
                pub const uart_int_clear = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_utx_end_clr:  u1, 
                    
                    /// [1:1] 
                    cr_urx_end_clr:  u1, 
                    
                    /// [2:2] 
                    rsvd_2:  u1, 
                    
                    /// [3:3] 
                    rsvd_3:  u1, 
                    
                    /// [4:4] 
                    cr_urx_rto_clr:  u1, 
                    
                    /// [5:5] 
                    cr_urx_pce_clr:  u1, 
                    
                    /// [6:6] 
                    rsvd_6:  u1, 
                    
                    /// [7:7] 
                    rsvd_7:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a028));
                
                
                
                /// UART interrupt enable
                pub const uart_int_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_utx_end_en:  u1, 
                    
                    /// [1:1] 
                    cr_urx_end_en:  u1, 
                    
                    /// [2:2] 
                    cr_utx_fifo_en:  u1, 
                    
                    /// [3:3] 
                    cr_urx_fifo_en:  u1, 
                    
                    /// [4:4] 
                    cr_urx_rto_en:  u1, 
                    
                    /// [5:5] 
                    cr_urx_pce_en:  u1, 
                    
                    /// [6:6] 
                    cr_utx_fer_en:  u1, 
                    
                    /// [7:7] 
                    cr_urx_fer_en:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a02c));
                
                
                
                /// uart_status.
                pub const uart_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sts_utx_bus_busy:  u1, 
                    
                    /// [1:1] 
                    sts_urx_bus_busy:  u1, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x4000a030));
                
                
                
                /// sts_urx_abr_prd.
                pub const sts_urx_abr_prd = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    sts_urx_abr_prd_start:  u16, 
                    
                    /// [16:31] 
                    sts_urx_abr_prd_0x55:  u16, 
                    
                }), @ptrFromInt(0x4000a034));
                
                
                
                /// uart_fifo_config_0.
                pub const uart_fifo_config_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    uart_dma_tx_en:  u1, 
                    
                    /// [1:1] 
                    uart_dma_rx_en:  u1, 
                    
                    /// [2:2] 
                    tx_fifo_clr:  u1, 
                    
                    /// [3:3] 
                    rx_fifo_clr:  u1, 
                    
                    /// [4:4] 
                    tx_fifo_overflow:  u1, 
                    
                    /// [5:5] 
                    tx_fifo_underflow:  u1, 
                    
                    /// [6:6] 
                    rx_fifo_overflow:  u1, 
                    
                    /// [7:7] 
                    rx_fifo_underflow:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a080));
                
                
                
                /// uart_fifo_config_1.
                pub const uart_fifo_config_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    tx_fifo_cnt:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    rx_fifo_cnt:  u6, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:20] 
                    tx_fifo_th:  u5, 
                    
                    /// [21:23] 
                    res2:  u3, 
                    
                    /// [24:28] 
                    rx_fifo_th:  u5, 
                    
                    /// [29:31] 
                    res3:  u3, 
                    
                }), @ptrFromInt(0x4000a084));
                
                
                
                /// uart_fifo_wdata.
                pub const uart_fifo_wdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    uart_fifo_wdata:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a088));
                
                
                
                /// uart_fifo_rdata.
                pub const uart_fifo_rdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    uart_fifo_rdata:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a08c));
                
                
            };
            
            /// SPI master / slave control
            pub const SPI = struct {
                
                
                /// spi_config.
                pub const spi_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_spi_m_en:  u1, 
                    
                    /// [1:1] 
                    cr_spi_s_en:  u1, 
                    
                    /// [2:3] 
                    cr_spi_frame_size:  u2, 
                    
                    /// [4:4] 
                    cr_spi_sclk_pol:  u1, 
                    
                    /// [5:5] 
                    cr_spi_sclk_ph:  u1, 
                    
                    /// [6:6] 
                    cr_spi_bit_inv:  u1, 
                    
                    /// [7:7] 
                    cr_spi_byte_inv:  u1, 
                    
                    /// [8:8] 
                    cr_spi_rxd_ignr_en:  u1, 
                    
                    /// [9:9] 
                    cr_spi_m_cont_en:  u1, 
                    
                    /// [10:10] 
                    res0:  u1, 
                    
                    /// [11:11] 
                    cr_spi_deg_en:  u1, 
                    
                    /// [12:15] 
                    cr_spi_deg_cnt:  u4, 
                    
                    /// [16:31] 
                    res1:  u16, 
                    
                }), @ptrFromInt(0x4000a200));
                
                
                
                /// spi_int_sts.
                pub const spi_int_sts = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    spi_end_int:  u1, 
                    
                    /// [1:1] 
                    spi_txf_int:  u1, 
                    
                    /// [2:2] 
                    spi_rxf_int:  u1, 
                    
                    /// [3:3] 
                    spi_sto_int:  u1, 
                    
                    /// [4:4] 
                    spi_txu_int:  u1, 
                    
                    /// [5:5] 
                    spi_fer_int:  u1, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:8] 
                    cr_spi_end_mask:  u1, 
                    
                    /// [9:9] 
                    cr_spi_txf_mask:  u1, 
                    
                    /// [10:10] 
                    cr_spi_rxf_mask:  u1, 
                    
                    /// [11:11] 
                    cr_spi_sto_mask:  u1, 
                    
                    /// [12:12] 
                    cr_spi_txu_mask:  u1, 
                    
                    /// [13:13] 
                    cr_spi_fer_mask:  u1, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:16] 
                    cr_spi_end_clr:  u1, 
                    
                    /// [17:17] 
                    rsvd_17:  u1, 
                    
                    /// [18:18] 
                    rsvd_18:  u1, 
                    
                    /// [19:19] 
                    cr_spi_sto_clr:  u1, 
                    
                    /// [20:20] 
                    cr_spi_txu_clr:  u1, 
                    
                    /// [21:21] 
                    rsvd_21:  u1, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:24] 
                    cr_spi_end_en:  u1, 
                    
                    /// [25:25] 
                    cr_spi_txf_en:  u1, 
                    
                    /// [26:26] 
                    cr_spi_rxf_en:  u1, 
                    
                    /// [27:27] 
                    cr_spi_sto_en:  u1, 
                    
                    /// [28:28] 
                    cr_spi_txu_en:  u1, 
                    
                    /// [29:29] 
                    cr_spi_fer_en:  u1, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x4000a204));
                
                
                
                /// spi_bus_busy.
                pub const spi_bus_busy = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sts_spi_bus_busy:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x4000a208));
                
                
                
                /// spi_prd_0.
                pub const spi_prd_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_spi_prd_s:  u8, 
                    
                    /// [8:15] 
                    cr_spi_prd_p:  u8, 
                    
                    /// [16:23] 
                    cr_spi_prd_d_ph_0:  u8, 
                    
                    /// [24:31] 
                    cr_spi_prd_d_ph_1:  u8, 
                    
                }), @ptrFromInt(0x4000a210));
                
                
                
                /// spi_prd_1.
                pub const spi_prd_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_spi_prd_i:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a214));
                
                
                
                /// spi_rxd_ignr.
                pub const spi_rxd_ignr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    cr_spi_rxd_ignr_p:  u5, 
                    
                    /// [5:15] 
                    res0:  u11, 
                    
                    /// [16:20] 
                    cr_spi_rxd_ignr_s:  u5, 
                    
                    /// [21:31] 
                    res1:  u11, 
                    
                }), @ptrFromInt(0x4000a218));
                
                
                
                /// spi_sto_value.
                pub const spi_sto_value = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    cr_spi_sto_value:  u12, 
                    
                    /// [12:31] 
                    res0:  u20, 
                    
                }), @ptrFromInt(0x4000a21c));
                
                
                
                /// spi_fifo_config_0.
                pub const spi_fifo_config_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    spi_dma_tx_en:  u1, 
                    
                    /// [1:1] 
                    spi_dma_rx_en:  u1, 
                    
                    /// [2:2] 
                    tx_fifo_clr:  u1, 
                    
                    /// [3:3] 
                    rx_fifo_clr:  u1, 
                    
                    /// [4:4] 
                    tx_fifo_overflow:  u1, 
                    
                    /// [5:5] 
                    tx_fifo_underflow:  u1, 
                    
                    /// [6:6] 
                    rx_fifo_overflow:  u1, 
                    
                    /// [7:7] 
                    rx_fifo_underflow:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a280));
                
                
                
                /// spi_fifo_config_1.
                pub const spi_fifo_config_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    tx_fifo_cnt:  u3, 
                    
                    /// [3:7] 
                    res0:  u5, 
                    
                    /// [8:10] 
                    rx_fifo_cnt:  u3, 
                    
                    /// [11:15] 
                    res1:  u5, 
                    
                    /// [16:17] 
                    tx_fifo_th:  u2, 
                    
                    /// [18:23] 
                    res2:  u6, 
                    
                    /// [24:25] 
                    rx_fifo_th:  u2, 
                    
                    /// [26:31] 
                    res3:  u6, 
                    
                }), @ptrFromInt(0x4000a284));
                
                
                
                /// spi_fifo_wdata.
                pub const spi_fifo_wdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    spi_fifo_wdata:  u32, 
                    
                }), @ptrFromInt(0x4000a288));
                
                
                
                /// spi_fifo_rdata.
                pub const spi_fifo_rdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    spi_fifo_rdata:  u32, 
                    
                }), @ptrFromInt(0x4000a28c));
                
                
            };
            
            /// I2C control
            pub const I2C = struct {
                
                
                /// i2c_config.
                pub const i2c_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_i2c_m_en:  u1, 
                    
                    /// [1:1] 
                    cr_i2c_pkt_dir:  u1, 
                    
                    /// [2:2] 
                    cr_i2c_deg_en:  u1, 
                    
                    /// [3:3] 
                    cr_i2c_scl_sync_en:  u1, 
                    
                    /// [4:4] 
                    cr_i2c_sub_addr_en:  u1, 
                    
                    /// [5:6] 
                    cr_i2c_sub_addr_bc:  u2, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:14] 
                    cr_i2c_slv_addr:  u7, 
                    
                    /// [15:15] 
                    res1:  u1, 
                    
                    /// [16:23] 
                    cr_i2c_pkt_len:  u8, 
                    
                    /// [24:27] 
                    res2:  u4, 
                    
                    /// [28:31] 
                    cr_i2c_deg_cnt:  u4, 
                    
                }), @ptrFromInt(0x4000a300));
                
                
                
                /// i2c_int_sts.
                pub const i2c_int_sts = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    i2c_end_int:  u1, 
                    
                    /// [1:1] 
                    i2c_txf_int:  u1, 
                    
                    /// [2:2] 
                    i2c_rxf_int:  u1, 
                    
                    /// [3:3] 
                    i2c_nak_int:  u1, 
                    
                    /// [4:4] 
                    i2c_arb_int:  u1, 
                    
                    /// [5:5] 
                    i2c_fer_int:  u1, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:8] 
                    cr_i2c_end_mask:  u1, 
                    
                    /// [9:9] 
                    cr_i2c_txf_mask:  u1, 
                    
                    /// [10:10] 
                    cr_i2c_rxf_mask:  u1, 
                    
                    /// [11:11] 
                    cr_i2c_nak_mask:  u1, 
                    
                    /// [12:12] 
                    cr_i2c_arb_mask:  u1, 
                    
                    /// [13:13] 
                    cr_i2c_fer_mask:  u1, 
                    
                    /// [14:15] 
                    res1:  u2, 
                    
                    /// [16:16] 
                    cr_i2c_end_clr:  u1, 
                    
                    /// [17:17] 
                    rsvd_17:  u1, 
                    
                    /// [18:18] 
                    rsvd_18:  u1, 
                    
                    /// [19:19] 
                    cr_i2c_nak_clr:  u1, 
                    
                    /// [20:20] 
                    cr_i2c_arb_clr:  u1, 
                    
                    /// [21:21] 
                    rsvd_21:  u1, 
                    
                    /// [22:23] 
                    res2:  u2, 
                    
                    /// [24:24] 
                    cr_i2c_end_en:  u1, 
                    
                    /// [25:25] 
                    cr_i2c_txf_en:  u1, 
                    
                    /// [26:26] 
                    cr_i2c_rxf_en:  u1, 
                    
                    /// [27:27] 
                    cr_i2c_nak_en:  u1, 
                    
                    /// [28:28] 
                    cr_i2c_arb_en:  u1, 
                    
                    /// [29:29] 
                    cr_i2c_fer_en:  u1, 
                    
                    /// [30:31] 
                    res3:  u2, 
                    
                }), @ptrFromInt(0x4000a304));
                
                
                
                /// i2c_sub_addr.
                pub const i2c_sub_addr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_i2c_sub_addr_b0:  u8, 
                    
                    /// [8:15] 
                    cr_i2c_sub_addr_b1:  u8, 
                    
                    /// [16:23] 
                    cr_i2c_sub_addr_b2:  u8, 
                    
                    /// [24:31] 
                    cr_i2c_sub_addr_b3:  u8, 
                    
                }), @ptrFromInt(0x4000a308));
                
                
                
                /// i2c_bus_busy.
                pub const i2c_bus_busy = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sts_i2c_bus_busy:  u1, 
                    
                    /// [1:1] 
                    cr_i2c_bus_busy_clr:  u1, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x4000a30c));
                
                
                
                /// i2c_prd_start.
                pub const i2c_prd_start = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_i2c_prd_s_ph_0:  u8, 
                    
                    /// [8:15] 
                    cr_i2c_prd_s_ph_1:  u8, 
                    
                    /// [16:23] 
                    cr_i2c_prd_s_ph_2:  u8, 
                    
                    /// [24:31] 
                    cr_i2c_prd_s_ph_3:  u8, 
                    
                }), @ptrFromInt(0x4000a310));
                
                
                
                /// i2c_prd_stop.
                pub const i2c_prd_stop = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_i2c_prd_p_ph_0:  u8, 
                    
                    /// [8:15] 
                    cr_i2c_prd_p_ph_1:  u8, 
                    
                    /// [16:23] 
                    cr_i2c_prd_p_ph_2:  u8, 
                    
                    /// [24:31] 
                    cr_i2c_prd_p_ph_3:  u8, 
                    
                }), @ptrFromInt(0x4000a314));
                
                
                
                /// i2c_prd_data.
                pub const i2c_prd_data = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_i2c_prd_d_ph_0:  u8, 
                    
                    /// [8:15] 
                    cr_i2c_prd_d_ph_1:  u8, 
                    
                    /// [16:23] 
                    cr_i2c_prd_d_ph_2:  u8, 
                    
                    /// [24:31] 
                    cr_i2c_prd_d_ph_3:  u8, 
                    
                }), @ptrFromInt(0x4000a318));
                
                
                
                /// i2c_fifo_config_0.
                pub const i2c_fifo_config_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    i2c_dma_tx_en:  u1, 
                    
                    /// [1:1] 
                    i2c_dma_rx_en:  u1, 
                    
                    /// [2:2] 
                    tx_fifo_clr:  u1, 
                    
                    /// [3:3] 
                    rx_fifo_clr:  u1, 
                    
                    /// [4:4] 
                    tx_fifo_overflow:  u1, 
                    
                    /// [5:5] 
                    tx_fifo_underflow:  u1, 
                    
                    /// [6:6] 
                    rx_fifo_overflow:  u1, 
                    
                    /// [7:7] 
                    rx_fifo_underflow:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a380));
                
                
                
                /// i2c_fifo_config_1.
                pub const i2c_fifo_config_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    tx_fifo_cnt:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    rx_fifo_cnt:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:16] 
                    tx_fifo_th:  u1, 
                    
                    /// [17:23] 
                    res2:  u7, 
                    
                    /// [24:24] 
                    rx_fifo_th:  u1, 
                    
                    /// [25:31] 
                    res3:  u7, 
                    
                }), @ptrFromInt(0x4000a384));
                
                
                
                /// i2c_fifo_wdata.
                pub const i2c_fifo_wdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    i2c_fifo_wdata:  u32, 
                    
                }), @ptrFromInt(0x4000a388));
                
                
                
                /// i2c_fifo_rdata.
                pub const i2c_fifo_rdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    i2c_fifo_rdata:  u32, 
                    
                }), @ptrFromInt(0x4000a38c));
                
                
            };
            
            /// Pulse width modulation control
            pub const PWM = struct {
                
                
                /// pwm_int_config.
                pub const pwm_int_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    pwm_interrupt_sts:  u6, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:13] 
                    pwm_int_clear:  u6, 
                    
                    /// [14:31] 
                    res1:  u18, 
                    
                }), @ptrFromInt(0x4000a400));
                
                
                
                /// pwm0_clkdiv.
                pub const pwm0_clkdiv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_clk_div:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a420));
                
                
                
                /// pwm0_thre1.
                pub const pwm0_thre1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre1:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a424));
                
                
                
                /// pwm0_thre2.
                pub const pwm0_thre2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre2:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a428));
                
                
                
                /// pwm0_period.
                pub const pwm0_period = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_period:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a42c));
                
                
                
                /// pwm0_config.
                pub const pwm0_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    reg_clk_sel:  u2, 
                    
                    /// [2:2] 
                    pwm_out_inv:  u1, 
                    
                    /// [3:3] 
                    pwm_stop_mode:  u1, 
                    
                    /// [4:4] 
                    pwm_sw_force_val:  u1, 
                    
                    /// [5:5] 
                    pwm_sw_mode:  u1, 
                    
                    /// [6:6] 
                    pwm_stop_en:  u1, 
                    
                    /// [7:7] 
                    pwm_sts_top:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a430));
                
                
                
                /// pwm0_interrupt.
                pub const pwm0_interrupt = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_int_period_cnt:  u16, 
                    
                    /// [16:16] 
                    pwm_int_enable:  u1, 
                    
                    /// [17:31] 
                    res0:  u15, 
                    
                }), @ptrFromInt(0x4000a434));
                
                
                
                /// pwm1_clkdiv.
                pub const pwm1_clkdiv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_clk_div:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a440));
                
                
                
                /// pwm1_thre1.
                pub const pwm1_thre1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre1:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a444));
                
                
                
                /// pwm1_thre2.
                pub const pwm1_thre2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre2:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a448));
                
                
                
                /// pwm1_period.
                pub const pwm1_period = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_period:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a44c));
                
                
                
                /// pwm1_config.
                pub const pwm1_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    reg_clk_sel:  u2, 
                    
                    /// [2:2] 
                    pwm_out_inv:  u1, 
                    
                    /// [3:3] 
                    pwm_stop_mode:  u1, 
                    
                    /// [4:4] 
                    pwm_sw_force_val:  u1, 
                    
                    /// [5:5] 
                    pwm_sw_mode:  u1, 
                    
                    /// [6:6] 
                    pwm_stop_en:  u1, 
                    
                    /// [7:7] 
                    pwm_sts_top:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a450));
                
                
                
                /// pwm1_interrupt.
                pub const pwm1_interrupt = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_int_period_cnt:  u16, 
                    
                    /// [16:16] 
                    pwm_int_enable:  u1, 
                    
                    /// [17:31] 
                    res0:  u15, 
                    
                }), @ptrFromInt(0x4000a454));
                
                
                
                /// pwm2_clkdiv.
                pub const pwm2_clkdiv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_clk_div:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a460));
                
                
                
                /// pwm2_thre1.
                pub const pwm2_thre1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre1:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a464));
                
                
                
                /// pwm2_thre2.
                pub const pwm2_thre2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre2:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a468));
                
                
                
                /// pwm2_period.
                pub const pwm2_period = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_period:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a46c));
                
                
                
                /// pwm2_config.
                pub const pwm2_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    reg_clk_sel:  u2, 
                    
                    /// [2:2] 
                    pwm_out_inv:  u1, 
                    
                    /// [3:3] 
                    pwm_stop_mode:  u1, 
                    
                    /// [4:4] 
                    pwm_sw_force_val:  u1, 
                    
                    /// [5:5] 
                    pwm_sw_mode:  u1, 
                    
                    /// [6:6] 
                    pwm_stop_en:  u1, 
                    
                    /// [7:7] 
                    pwm_sts_top:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a470));
                
                
                
                /// pwm2_interrupt.
                pub const pwm2_interrupt = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_int_period_cnt:  u16, 
                    
                    /// [16:16] 
                    pwm_int_enable:  u1, 
                    
                    /// [17:31] 
                    res0:  u15, 
                    
                }), @ptrFromInt(0x4000a474));
                
                
                
                /// pwm3_clkdiv.
                pub const pwm3_clkdiv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_clk_div:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a480));
                
                
                
                /// pwm3_thre1.
                pub const pwm3_thre1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre1:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a484));
                
                
                
                /// pwm3_thre2.
                pub const pwm3_thre2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre2:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a488));
                
                
                
                /// pwm3_period.
                pub const pwm3_period = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_period:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a48c));
                
                
                
                /// pwm3_config.
                pub const pwm3_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    reg_clk_sel:  u2, 
                    
                    /// [2:2] 
                    pwm_out_inv:  u1, 
                    
                    /// [3:3] 
                    pwm_stop_mode:  u1, 
                    
                    /// [4:4] 
                    pwm_sw_force_val:  u1, 
                    
                    /// [5:5] 
                    pwm_sw_mode:  u1, 
                    
                    /// [6:6] 
                    pwm_stop_en:  u1, 
                    
                    /// [7:7] 
                    pwm_sts_top:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a490));
                
                
                
                /// pwm3_interrupt.
                pub const pwm3_interrupt = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_int_period_cnt:  u16, 
                    
                    /// [16:16] 
                    pwm_int_enable:  u1, 
                    
                    /// [17:31] 
                    res0:  u15, 
                    
                }), @ptrFromInt(0x4000a494));
                
                
                
                /// pwm4_clkdiv.
                pub const pwm4_clkdiv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_clk_div:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a4a0));
                
                
                
                /// pwm4_thre1.
                pub const pwm4_thre1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre1:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a4a4));
                
                
                
                /// pwm4_thre2.
                pub const pwm4_thre2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_thre2:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a4a8));
                
                
                
                /// pwm4_period.
                pub const pwm4_period = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_period:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a4ac));
                
                
                
                /// pwm4_config.
                pub const pwm4_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    reg_clk_sel:  u2, 
                    
                    /// [2:2] 
                    pwm_out_inv:  u1, 
                    
                    /// [3:3] 
                    pwm_stop_mode:  u1, 
                    
                    /// [4:4] 
                    pwm_sw_force_val:  u1, 
                    
                    /// [5:5] 
                    pwm_sw_mode:  u1, 
                    
                    /// [6:6] 
                    pwm_stop_en:  u1, 
                    
                    /// [7:7] 
                    pwm_sts_top:  u1, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a4b0));
                
                
                
                /// pwm4_interrupt.
                pub const pwm4_interrupt = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    pwm_int_period_cnt:  u16, 
                    
                    /// [16:16] 
                    pwm_int_enable:  u1, 
                    
                    /// [17:31] 
                    res0:  u15, 
                    
                }), @ptrFromInt(0x4000a4b4));
                
                
            };
            
            /// Timer control
            pub const TIMER = struct {
                
                
                /// TCCR.
                pub const TCCR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    res0:  u2, 
                    
                    /// [2:3] 
                    cs_1:  u2, 
                    
                    /// [4:4] 
                    RESERVED_4:  u1, 
                    
                    /// [5:6] 
                    cs_2:  u2, 
                    
                    /// [7:7] 
                    RESERVED_7:  u1, 
                    
                    /// [8:9] 
                    cs_wdt:  u2, 
                    
                    /// [10:31] 
                    res1:  u22, 
                    
                }), @ptrFromInt(0x4000a500));
                
                
                
                /// TMR2_0.
                pub const TMR2_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tmr:  u32, 
                    
                }), @ptrFromInt(0x4000a510));
                
                
                
                /// TMR2_1.
                pub const TMR2_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tmr:  u32, 
                    
                }), @ptrFromInt(0x4000a514));
                
                
                
                /// TMR2_2.
                pub const TMR2_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tmr:  u32, 
                    
                }), @ptrFromInt(0x4000a518));
                
                
                
                /// TMR3_0.
                pub const TMR3_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tmr:  u32, 
                    
                }), @ptrFromInt(0x4000a51c));
                
                
                
                /// TMR3_1.
                pub const TMR3_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tmr:  u32, 
                    
                }), @ptrFromInt(0x4000a520));
                
                
                
                /// TMR3_2.
                pub const TMR3_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tmr:  u32, 
                    
                }), @ptrFromInt(0x4000a524));
                
                
                
                /// TCR2.
                pub const TCR2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tcr:  u32, 
                    
                }), @ptrFromInt(0x4000a52c));
                
                
                
                /// TCR3.
                pub const TCR3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tcr3_counter:  u32, 
                    
                }), @ptrFromInt(0x4000a530));
                
                
                
                /// TMSR2.
                pub const TMSR2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tmsr_0:  u1, 
                    
                    /// [1:1] 
                    tmsr_1:  u1, 
                    
                    /// [2:2] 
                    tmsr_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a538));
                
                
                
                /// TMSR3.
                pub const TMSR3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tmsr_0:  u1, 
                    
                    /// [1:1] 
                    tmsr_1:  u1, 
                    
                    /// [2:2] 
                    tmsr_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a53c));
                
                
                
                /// TIER2.
                pub const TIER2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tier_0:  u1, 
                    
                    /// [1:1] 
                    tier_1:  u1, 
                    
                    /// [2:2] 
                    tier_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a544));
                
                
                
                /// TIER3.
                pub const TIER3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tier_0:  u1, 
                    
                    /// [1:1] 
                    tier_1:  u1, 
                    
                    /// [2:2] 
                    tier_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a548));
                
                
                
                /// TPLVR2.
                pub const TPLVR2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tplvr:  u32, 
                    
                }), @ptrFromInt(0x4000a550));
                
                
                
                /// TPLVR3.
                pub const TPLVR3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tplvr:  u32, 
                    
                }), @ptrFromInt(0x4000a554));
                
                
                
                /// TPLCR2.
                pub const TPLCR2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    tplcr:  u2, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x4000a55c));
                
                
                
                /// TPLCR3.
                pub const TPLCR3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    tplcr:  u2, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x4000a560));
                
                
                
                /// WMER.
                pub const WMER = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    we:  u1, 
                    
                    /// [1:1] 
                    wrie:  u1, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x4000a564));
                
                
                
                /// WMR.
                pub const WMR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    wmr:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a568));
                
                
                
                /// WVR.
                pub const WVR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    wvr:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a56c));
                
                
                
                /// WSR.
                pub const WSR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    wts:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x4000a570));
                
                
                
                /// TICR2.
                pub const TICR2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tclr_0:  u1, 
                    
                    /// [1:1] 
                    tclr_1:  u1, 
                    
                    /// [2:2] 
                    tclr_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a578));
                
                
                
                /// TICR3.
                pub const TICR3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tclr_0:  u1, 
                    
                    /// [1:1] 
                    tclr_1:  u1, 
                    
                    /// [2:2] 
                    tclr_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a57c));
                
                
                
                /// WICR.
                pub const WICR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    wiclr:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x4000a580));
                
                
                
                /// TCER.
                pub const TCER = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    res0:  u1, 
                    
                    /// [1:1] 
                    timer2_en:  u1, 
                    
                    /// [2:2] 
                    timer3_en:  u1, 
                    
                    /// [3:31] 
                    res1:  u29, 
                    
                }), @ptrFromInt(0x4000a584));
                
                
                
                /// TCMR.
                pub const TCMR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    res0:  u1, 
                    
                    /// [1:1] 
                    timer2_mode:  u1, 
                    
                    /// [2:2] 
                    timer3_mode:  u1, 
                    
                    /// [3:31] 
                    res1:  u29, 
                    
                }), @ptrFromInt(0x4000a588));
                
                
                
                /// TILR2.
                pub const TILR2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tilr_0:  u1, 
                    
                    /// [1:1] 
                    tilr_1:  u1, 
                    
                    /// [2:2] 
                    tilr_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a590));
                
                
                
                /// TILR3.
                pub const TILR3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    tilr_0:  u1, 
                    
                    /// [1:1] 
                    tilr_1:  u1, 
                    
                    /// [2:2] 
                    tilr_2:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000a594));
                
                
                
                /// WCR.
                pub const WCR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    wcr:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x4000a598));
                
                
                
                /// WFAR.
                pub const WFAR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    wfar:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a59c));
                
                
                
                /// WSAR.
                pub const WSAR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    wsar:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a5a0));
                
                
                
                /// TCVWR2.
                pub const TCVWR2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tcvwr:  u32, 
                    
                }), @ptrFromInt(0x4000a5a8));
                
                
                
                /// TCVWR3.
                pub const TCVWR3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tcvwr:  u32, 
                    
                }), @ptrFromInt(0x4000a5ac));
                
                
                
                /// TCVSYN2.
                pub const TCVSYN2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tcvsyn2:  u32, 
                    
                }), @ptrFromInt(0x4000a5b4));
                
                
                
                /// TCVSYN3.
                pub const TCVSYN3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    tcvsyn3:  u32, 
                    
                }), @ptrFromInt(0x4000a5b8));
                
                
                
                /// TCDR.
                pub const TCDR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    res0:  u8, 
                    
                    /// [8:15] 
                    tcdr2:  u8, 
                    
                    /// [16:23] 
                    tcdr3:  u8, 
                    
                    /// [24:31] 
                    wcdr:  u8, 
                    
                }), @ptrFromInt(0x4000a5bc));
                
                
            };
            
            /// Infrared remote control
            pub const IR = struct {
                
                
                /// irtx_config.
                pub const irtx_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_irtx_en:  u1, 
                    
                    /// [1:1] 
                    cr_irtx_out_inv:  u1, 
                    
                    /// [2:2] 
                    cr_irtx_mod_en:  u1, 
                    
                    /// [3:3] 
                    cr_irtx_swm_en:  u1, 
                    
                    /// [4:4] 
                    cr_irtx_data_en:  u1, 
                    
                    /// [5:5] 
                    cr_irtx_logic0_hl_inv:  u1, 
                    
                    /// [6:6] 
                    cr_irtx_logic1_hl_inv:  u1, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:8] 
                    cr_irtx_head_en:  u1, 
                    
                    /// [9:9] 
                    cr_irtx_head_hl_inv:  u1, 
                    
                    /// [10:10] 
                    cr_irtx_tail_en:  u1, 
                    
                    /// [11:11] 
                    cr_irtx_tail_hl_inv:  u1, 
                    
                    /// [12:17] 
                    cr_irtx_data_num:  u6, 
                    
                    /// [18:31] 
                    res1:  u14, 
                    
                }), @ptrFromInt(0x4000a600));
                
                
                
                /// irtx_int_sts.
                pub const irtx_int_sts = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    irtx_end_int:  u1, 
                    
                    /// [1:7] 
                    res0:  u7, 
                    
                    /// [8:8] 
                    cr_irtx_end_mask:  u1, 
                    
                    /// [9:15] 
                    res1:  u7, 
                    
                    /// [16:16] 
                    cr_irtx_end_clr:  u1, 
                    
                    /// [17:23] 
                    res2:  u7, 
                    
                    /// [24:24] 
                    cr_irtx_end_en:  u1, 
                    
                    /// [25:31] 
                    res3:  u7, 
                    
                }), @ptrFromInt(0x4000a604));
                
                
                
                /// irtx_data_word0.
                pub const irtx_data_word0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_data_word0:  u32, 
                    
                }), @ptrFromInt(0x4000a608));
                
                
                
                /// irtx_data_word1.
                pub const irtx_data_word1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_data_word1:  u32, 
                    
                }), @ptrFromInt(0x4000a60c));
                
                
                
                /// irtx_pulse_width.
                pub const irtx_pulse_width = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    cr_irtx_pw_unit:  u12, 
                    
                    /// [12:15] 
                    res0:  u4, 
                    
                    /// [16:23] 
                    cr_irtx_mod_ph0_w:  u8, 
                    
                    /// [24:31] 
                    cr_irtx_mod_ph1_w:  u8, 
                    
                }), @ptrFromInt(0x4000a610));
                
                
                
                /// irtx_pw.
                pub const irtx_pw = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    cr_irtx_logic0_ph0_w:  u4, 
                    
                    /// [4:7] 
                    cr_irtx_logic0_ph1_w:  u4, 
                    
                    /// [8:11] 
                    cr_irtx_logic1_ph0_w:  u4, 
                    
                    /// [12:15] 
                    cr_irtx_logic1_ph1_w:  u4, 
                    
                    /// [16:19] 
                    cr_irtx_head_ph0_w:  u4, 
                    
                    /// [20:23] 
                    cr_irtx_head_ph1_w:  u4, 
                    
                    /// [24:27] 
                    cr_irtx_tail_ph0_w:  u4, 
                    
                    /// [28:31] 
                    cr_irtx_tail_ph1_w:  u4, 
                    
                }), @ptrFromInt(0x4000a614));
                
                
                
                /// irtx_swm_pw_0.
                pub const irtx_swm_pw_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_0:  u32, 
                    
                }), @ptrFromInt(0x4000a640));
                
                
                
                /// irtx_swm_pw_1.
                pub const irtx_swm_pw_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_1:  u32, 
                    
                }), @ptrFromInt(0x4000a644));
                
                
                
                /// irtx_swm_pw_2.
                pub const irtx_swm_pw_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_2:  u32, 
                    
                }), @ptrFromInt(0x4000a648));
                
                
                
                /// irtx_swm_pw_3.
                pub const irtx_swm_pw_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_3:  u32, 
                    
                }), @ptrFromInt(0x4000a64c));
                
                
                
                /// irtx_swm_pw_4.
                pub const irtx_swm_pw_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_4:  u32, 
                    
                }), @ptrFromInt(0x4000a650));
                
                
                
                /// irtx_swm_pw_5.
                pub const irtx_swm_pw_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_5:  u32, 
                    
                }), @ptrFromInt(0x4000a654));
                
                
                
                /// irtx_swm_pw_6.
                pub const irtx_swm_pw_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_6:  u32, 
                    
                }), @ptrFromInt(0x4000a658));
                
                
                
                /// irtx_swm_pw_7.
                pub const irtx_swm_pw_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_irtx_swm_pw_7:  u32, 
                    
                }), @ptrFromInt(0x4000a65c));
                
                
                
                /// irrx_config.
                pub const irrx_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_irrx_en:  u1, 
                    
                    /// [1:1] 
                    cr_irrx_in_inv:  u1, 
                    
                    /// [2:3] 
                    cr_irrx_mode:  u2, 
                    
                    /// [4:4] 
                    cr_irrx_deg_en:  u1, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:11] 
                    cr_irrx_deg_cnt:  u4, 
                    
                    /// [12:31] 
                    res1:  u20, 
                    
                }), @ptrFromInt(0x4000a680));
                
                
                
                /// irrx_int_sts.
                pub const irrx_int_sts = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    irrx_end_int:  u1, 
                    
                    /// [1:7] 
                    res0:  u7, 
                    
                    /// [8:8] 
                    cr_irrx_end_mask:  u1, 
                    
                    /// [9:15] 
                    res1:  u7, 
                    
                    /// [16:16] 
                    cr_irrx_end_clr:  u1, 
                    
                    /// [17:23] 
                    res2:  u7, 
                    
                    /// [24:24] 
                    cr_irrx_end_en:  u1, 
                    
                    /// [25:31] 
                    res3:  u7, 
                    
                }), @ptrFromInt(0x4000a684));
                
                
                
                /// irrx_pw_config.
                pub const irrx_pw_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    cr_irrx_data_th:  u16, 
                    
                    /// [16:31] 
                    cr_irrx_end_th:  u16, 
                    
                }), @ptrFromInt(0x4000a688));
                
                
                
                /// irrx_data_count.
                pub const irrx_data_count = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    sts_irrx_data_cnt:  u7, 
                    
                    /// [7:31] 
                    res0:  u25, 
                    
                }), @ptrFromInt(0x4000a690));
                
                
                
                /// irrx_data_word0.
                pub const irrx_data_word0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sts_irrx_data_word0:  u32, 
                    
                }), @ptrFromInt(0x4000a694));
                
                
                
                /// irrx_data_word1.
                pub const irrx_data_word1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sts_irrx_data_word1:  u32, 
                    
                }), @ptrFromInt(0x4000a698));
                
                
                
                /// irrx_swm_fifo_config_0.
                pub const irrx_swm_fifo_config_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rx_fifo_clr:  u1, 
                    
                    /// [1:1] 
                    res0:  u1, 
                    
                    /// [2:2] 
                    rx_fifo_overflow:  u1, 
                    
                    /// [3:3] 
                    rx_fifo_underflow:  u1, 
                    
                    /// [4:10] 
                    rx_fifo_cnt:  u7, 
                    
                    /// [11:31] 
                    res1:  u21, 
                    
                }), @ptrFromInt(0x4000a6c0));
                
                
                
                /// irrx_swm_fifo_rdata.
                pub const irrx_swm_fifo_rdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    rx_fifo_rdata:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a6c4));
                
                
            };
            
            /// Checksum engine
            pub const CKS = struct {
                
                
                /// cks_config.
                pub const cks_config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_cks_clr:  u1, 
                    
                    /// [1:1] Endianness.
                    cr_cks_byte_swap:  enum(u1) {
                        
                        little_endian = 0,
                        
                        big_endian = 1,
                        
                    }, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x4000a700));
                
                
                
                /// Checksum data in
                pub const data_in = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    data_in:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000a704));
                
                
                
                /// Checksum value out
                pub const cks_out = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    cks_out:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x4000a708));
                
                
            };
            
            /// Flash control
            pub const SF_CTRL = struct {
                
                
                /// sf_ctrl_0.
                pub const sf_ctrl_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    res0:  u2, 
                    
                    /// [2:2] 
                    sf_clk_sf_rx_inv_sel:  u1, 
                    
                    /// [3:3] 
                    sf_clk_out_gate_en:  u1, 
                    
                    /// [4:4] 
                    sf_clk_out_inv_sel:  u1, 
                    
                    /// [5:5] 
                    sf_clk_sahb_sram_sel:  u1, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:10] 
                    sf_if_read_dly_n:  u3, 
                    
                    /// [11:11] 
                    sf_if_read_dly_en:  u1, 
                    
                    /// [12:15] 
                    res2:  u4, 
                    
                    /// [16:16] 
                    sf_if_int:  u1, 
                    
                    /// [17:17] 
                    sf_if_int_clr:  u1, 
                    
                    /// [18:18] 
                    sf_if_int_set:  u1, 
                    
                    /// [19:19] 
                    sf_aes_dly_mode:  u1, 
                    
                    /// [20:20] 
                    sf_aes_dout_endian:  u1, 
                    
                    /// [21:21] 
                    sf_aes_ctr_plus_en:  u1, 
                    
                    /// [22:22] 
                    sf_aes_key_endian:  u1, 
                    
                    /// [23:23] 
                    sf_aes_iv_endian:  u1, 
                    
                    /// [24:31] 
                    sf_id:  u8, 
                    
                }), @ptrFromInt(0x4000b000));
                
                
                
                /// sf_ctrl_1.
                pub const sf_ctrl_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    sf_if_sr_pat_mask:  u8, 
                    
                    /// [8:15] 
                    sf_if_sr_pat:  u8, 
                    
                    /// [16:16] 
                    sf_if_sr_int:  u1, 
                    
                    /// [17:17] 
                    sf_if_sr_int_en:  u1, 
                    
                    /// [18:18] 
                    sf_if_sr_int_set:  u1, 
                    
                    /// [19:19] 
                    res0:  u1, 
                    
                    /// [20:22] 
                    sf_if_0_ack_lat:  u3, 
                    
                    /// [23:23] 
                    res1:  u1, 
                    
                    /// [24:24] 
                    sf_if_reg_hold:  u1, 
                    
                    /// [25:25] 
                    sf_if_reg_wp:  u1, 
                    
                    /// [26:26] 
                    sf_ahb2sif_stopped:  u1, 
                    
                    /// [27:27] 
                    sf_ahb2sif_stop:  u1, 
                    
                    /// [28:28] 
                    sf_if_fn_sel:  u1, 
                    
                    /// [29:29] 
                    sf_if_en:  u1, 
                    
                    /// [30:30] 
                    sf_ahb2sif_en:  u1, 
                    
                    /// [31:31] 
                    sf_ahb2sram_en:  u1, 
                    
                }), @ptrFromInt(0x4000b004));
                
                
                
                /// sf_if_sahb_0.
                pub const sf_if_sahb_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sf_if_busy:  u1, 
                    
                    /// [1:1] 
                    sf_if_0_trig:  u1, 
                    
                    /// [2:11] 
                    sf_if_0_dat_byte:  u10, 
                    
                    /// [12:16] 
                    sf_if_0_dmy_byte:  u5, 
                    
                    /// [17:19] 
                    sf_if_0_adr_byte:  u3, 
                    
                    /// [20:22] 
                    sf_if_0_cmd_byte:  u3, 
                    
                    /// [23:23] 
                    sf_if_0_dat_rw:  u1, 
                    
                    /// [24:24] 
                    sf_if_0_dat_en:  u1, 
                    
                    /// [25:25] 
                    sf_if_0_dmy_en:  u1, 
                    
                    /// [26:26] 
                    sf_if_0_adr_en:  u1, 
                    
                    /// [27:27] 
                    sf_if_0_cmd_en:  u1, 
                    
                    /// [28:30] 
                    sf_if_0_spi_mode:  u3, 
                    
                    /// [31:31] 
                    sf_if_0_qpi_mode_en:  u1, 
                    
                }), @ptrFromInt(0x4000b008));
                
                
                
                /// sf_if_sahb_1.
                pub const sf_if_sahb_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_0_cmd_buf_0:  u32, 
                    
                }), @ptrFromInt(0x4000b00c));
                
                
                
                /// sf_if_sahb_2.
                pub const sf_if_sahb_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_0_cmd_buf_1:  u32, 
                    
                }), @ptrFromInt(0x4000b010));
                
                
                
                /// sf_if_iahb_0.
                pub const sf_if_iahb_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    res0:  u12, 
                    
                    /// [12:16] 
                    sf_if_1_dmy_byte:  u5, 
                    
                    /// [17:19] 
                    sf_if_1_adr_byte:  u3, 
                    
                    /// [20:22] 
                    sf_if_1_cmd_byte:  u3, 
                    
                    /// [23:23] 
                    sf_if_1_dat_rw:  u1, 
                    
                    /// [24:24] 
                    sf_if_1_dat_en:  u1, 
                    
                    /// [25:25] 
                    sf_if_1_dmy_en:  u1, 
                    
                    /// [26:26] 
                    sf_if_1_adr_en:  u1, 
                    
                    /// [27:27] 
                    sf_if_1_cmd_en:  u1, 
                    
                    /// [28:30] 
                    sf_if_1_spi_mode:  u3, 
                    
                    /// [31:31] 
                    sf_if_1_qpi_mode_en:  u1, 
                    
                }), @ptrFromInt(0x4000b014));
                
                
                
                /// sf_if_iahb_1.
                pub const sf_if_iahb_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_1_cmd_buf_0:  u32, 
                    
                }), @ptrFromInt(0x4000b018));
                
                
                
                /// sf_if_iahb_2.
                pub const sf_if_iahb_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_1_cmd_buf_1:  u32, 
                    
                }), @ptrFromInt(0x4000b01c));
                
                
                
                /// sf_if_status_0.
                pub const sf_if_status_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_status_0:  u32, 
                    
                }), @ptrFromInt(0x4000b020));
                
                
                
                /// sf_if_status_1.
                pub const sf_if_status_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_status_1:  u32, 
                    
                }), @ptrFromInt(0x4000b024));
                
                
                
                /// sf_aes.
                pub const sf_aes = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sf_aes_en:  u1, 
                    
                    /// [1:2] 
                    sf_aes_mode:  u2, 
                    
                    /// [3:3] 
                    sf_aes_pref_trig:  u1, 
                    
                    /// [4:4] 
                    sf_aes_pref_busy:  u1, 
                    
                    /// [5:31] 
                    sf_aes_status:  u27, 
                    
                }), @ptrFromInt(0x4000b028));
                
                
                
                /// sf_ahb2sif_status.
                pub const sf_ahb2sif_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_ahb2sif_status:  u32, 
                    
                }), @ptrFromInt(0x4000b02c));
                
                
                
                /// sf_if_io_dly_0.
                pub const sf_if_io_dly_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf_cs_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf_clk_out_dly_sel:  u2, 
                    
                    /// [10:25] 
                    res1:  u16, 
                    
                    /// [26:27] 
                    sf_dqs_oe_dly_sel:  u2, 
                    
                    /// [28:29] 
                    sf_dqs_di_dly_sel:  u2, 
                    
                    /// [30:31] 
                    sf_dqs_do_dly_sel:  u2, 
                    
                }), @ptrFromInt(0x4000b030));
                
                
                
                /// sf_if_io_dly_1.
                pub const sf_if_io_dly_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf_io_0_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf_io_0_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf_io_0_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b034));
                
                
                
                /// sf_if_io_dly_2.
                pub const sf_if_io_dly_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf_io_1_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf_io_1_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf_io_1_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b038));
                
                
                
                /// sf_if_io_dly_3.
                pub const sf_if_io_dly_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf_io_2_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf_io_2_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf_io_2_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b03c));
                
                
                
                /// sf_if_io_dly_4.
                pub const sf_if_io_dly_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf_io_3_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf_io_3_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf_io_3_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b040));
                
                
                
                /// sf_reserved.
                pub const sf_reserved = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_reserved:  u32, 
                    
                }), @ptrFromInt(0x4000b044));
                
                
                
                /// sf2_if_io_dly_0.
                pub const sf2_if_io_dly_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf2_cs_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf2_clk_out_dly_sel:  u2, 
                    
                    /// [10:25] 
                    res1:  u16, 
                    
                    /// [26:27] 
                    sf2_dqs_oe_dly_sel:  u2, 
                    
                    /// [28:29] 
                    sf2_dqs_di_dly_sel:  u2, 
                    
                    /// [30:31] 
                    sf2_dqs_do_dly_sel:  u2, 
                    
                }), @ptrFromInt(0x4000b048));
                
                
                
                /// sf2_if_io_dly_1.
                pub const sf2_if_io_dly_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf2_io_0_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf2_io_0_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf2_io_0_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b04c));
                
                
                
                /// sf2_if_io_dly_2.
                pub const sf2_if_io_dly_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf2_io_1_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf2_io_1_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf2_io_1_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b050));
                
                
                
                /// sf2_if_io_dly_3.
                pub const sf2_if_io_dly_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf2_io_2_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf2_io_2_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf2_io_2_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b054));
                
                
                
                /// sf2_if_io_dly_4.
                pub const sf2_if_io_dly_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf2_io_3_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf2_io_3_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf2_io_3_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b058));
                
                
                
                /// sf3_if_io_dly_0.
                pub const sf3_if_io_dly_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf3_cs_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf3_clk_out_dly_sel:  u2, 
                    
                    /// [10:25] 
                    res1:  u16, 
                    
                    /// [26:27] 
                    sf3_dqs_oe_dly_sel:  u2, 
                    
                    /// [28:29] 
                    sf3_dqs_di_dly_sel:  u2, 
                    
                    /// [30:31] 
                    sf3_dqs_do_dly_sel:  u2, 
                    
                }), @ptrFromInt(0x4000b05c));
                
                
                
                /// sf3_if_io_dly_1.
                pub const sf3_if_io_dly_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf3_io_0_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf3_io_0_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf3_io_0_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b060));
                
                
                
                /// sf3_if_io_dly_2.
                pub const sf3_if_io_dly_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf3_io_1_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf3_io_1_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf3_io_1_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b064));
                
                
                
                /// sf3_if_io_dly_3.
                pub const sf3_if_io_dly_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf3_io_2_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf3_io_2_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf3_io_2_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b068));
                
                
                
                /// sf3_if_io_dly_4.
                pub const sf3_if_io_dly_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf3_io_3_oe_dly_sel:  u2, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:9] 
                    sf3_io_3_di_dly_sel:  u2, 
                    
                    /// [10:15] 
                    res1:  u6, 
                    
                    /// [16:17] 
                    sf3_io_3_do_dly_sel:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000b06c));
                
                
                
                /// sf_ctrl_2.
                pub const sf_ctrl_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    sf_if_pad_sel:  u2, 
                    
                    /// [2:2] 
                    res0:  u1, 
                    
                    /// [3:3] 
                    sf_if_pad_sel_lock:  u1, 
                    
                    /// [4:4] 
                    sf_if_dtr_en:  u1, 
                    
                    /// [5:5] 
                    sf_if_dqs_en:  u1, 
                    
                    /// [6:31] 
                    res1:  u26, 
                    
                }), @ptrFromInt(0x4000b070));
                
                
                
                /// sf_ctrl_3.
                pub const sf_ctrl_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    sf_cmds_wrap_len:  u4, 
                    
                    /// [4:4] 
                    sf_cmds_en:  u1, 
                    
                    /// [5:7] 
                    sf_cmds_bt_dly:  u3, 
                    
                    /// [8:8] 
                    sf_cmds_bt_en:  u1, 
                    
                    /// [9:9] 
                    sf_cmds_wrap_q_ini:  u1, 
                    
                    /// [10:10] 
                    sf_cmds_wrap_mode:  u1, 
                    
                    /// [11:28] 
                    res0:  u18, 
                    
                    /// [29:31] 
                    sf_if_1_ack_lat:  u3, 
                    
                }), @ptrFromInt(0x4000b074));
                
                
                
                /// sf_if_iahb_3.
                pub const sf_if_iahb_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    res0:  u12, 
                    
                    /// [12:16] 
                    sf_if_2_dmy_byte:  u5, 
                    
                    /// [17:19] 
                    sf_if_2_adr_byte:  u3, 
                    
                    /// [20:22] 
                    sf_if_2_cmd_byte:  u3, 
                    
                    /// [23:23] 
                    sf_if_2_dat_rw:  u1, 
                    
                    /// [24:24] 
                    sf_if_2_dat_en:  u1, 
                    
                    /// [25:25] 
                    sf_if_2_dmy_en:  u1, 
                    
                    /// [26:26] 
                    sf_if_2_adr_en:  u1, 
                    
                    /// [27:27] 
                    sf_if_2_cmd_en:  u1, 
                    
                    /// [28:30] 
                    sf_if_2_spi_mode:  u3, 
                    
                    /// [31:31] 
                    sf_if_2_qpi_mode_en:  u1, 
                    
                }), @ptrFromInt(0x4000b078));
                
                
                
                /// sf_if_iahb_4.
                pub const sf_if_iahb_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_2_cmd_buf_0:  u32, 
                    
                }), @ptrFromInt(0x4000b07c));
                
                
                
                /// sf_if_iahb_5.
                pub const sf_if_iahb_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_2_cmd_buf_1:  u32, 
                    
                }), @ptrFromInt(0x4000b080));
                
                
                
                /// sf_if_iahb_6.
                pub const sf_if_iahb_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:19] 
                    res0:  u20, 
                    
                    /// [20:22] 
                    sf_if_3_cmd_byte:  u3, 
                    
                    /// [23:27] 
                    res1:  u5, 
                    
                    /// [28:30] 
                    sf_if_3_spi_mode:  u3, 
                    
                    /// [31:31] 
                    sf_if_3_qpi_mode_en:  u1, 
                    
                }), @ptrFromInt(0x4000b084));
                
                
                
                /// sf_if_iahb_7.
                pub const sf_if_iahb_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_if_3_cmd_buf_0:  u32, 
                    
                }), @ptrFromInt(0x4000b088));
                
                
                
                /// sf_ctrl_prot_en_rd.
                pub const sf_ctrl_prot_en_rd = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sf_ctrl_prot_en_rd:  u1, 
                    
                    /// [1:1] 
                    sf_ctrl_id0_en_rd:  u1, 
                    
                    /// [2:2] 
                    sf_ctrl_id1_en_rd:  u1, 
                    
                    /// [3:29] 
                    res0:  u27, 
                    
                    /// [30:30] 
                    sf_if_0_trig_wr_lock:  u1, 
                    
                    /// [31:31] 
                    sf_dbg_dis:  u1, 
                    
                }), @ptrFromInt(0x4000b100));
                
                
                
                /// sf_ctrl_prot_en.
                pub const sf_ctrl_prot_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sf_ctrl_prot_en:  u1, 
                    
                    /// [1:1] 
                    sf_ctrl_id0_en:  u1, 
                    
                    /// [2:2] 
                    sf_ctrl_id1_en:  u1, 
                    
                    /// [3:31] 
                    res0:  u29, 
                    
                }), @ptrFromInt(0x4000b104));
                
                
                
                /// sf_aes_key_r0_0.
                pub const sf_aes_key_r0_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_0:  u32, 
                    
                }), @ptrFromInt(0x4000b200));
                
                
                
                /// sf_aes_key_r0_1.
                pub const sf_aes_key_r0_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_1:  u32, 
                    
                }), @ptrFromInt(0x4000b204));
                
                
                
                /// sf_aes_key_r0_2.
                pub const sf_aes_key_r0_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_2:  u32, 
                    
                }), @ptrFromInt(0x4000b208));
                
                
                
                /// sf_aes_key_r0_3.
                pub const sf_aes_key_r0_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_3:  u32, 
                    
                }), @ptrFromInt(0x4000b20c));
                
                
                
                /// sf_aes_key_r0_4.
                pub const sf_aes_key_r0_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_4:  u32, 
                    
                }), @ptrFromInt(0x4000b210));
                
                
                
                /// sf_aes_key_r0_5.
                pub const sf_aes_key_r0_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_5:  u32, 
                    
                }), @ptrFromInt(0x4000b214));
                
                
                
                /// sf_aes_key_r0_6.
                pub const sf_aes_key_r0_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_6:  u32, 
                    
                }), @ptrFromInt(0x4000b218));
                
                
                
                /// sf_aes_key_r0_7.
                pub const sf_aes_key_r0_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r0_7:  u32, 
                    
                }), @ptrFromInt(0x4000b21c));
                
                
                
                /// sf_aes_iv_r0_w0.
                pub const sf_aes_iv_r0_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r0_w0:  u32, 
                    
                }), @ptrFromInt(0x4000b220));
                
                
                
                /// sf_aes_iv_r0_w1.
                pub const sf_aes_iv_r0_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r0_w1:  u32, 
                    
                }), @ptrFromInt(0x4000b224));
                
                
                
                /// sf_aes_iv_r0_w2.
                pub const sf_aes_iv_r0_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r0_w2:  u32, 
                    
                }), @ptrFromInt(0x4000b228));
                
                
                
                /// sf_aes_iv_r0_w3.
                pub const sf_aes_iv_r0_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r0_w3:  u32, 
                    
                }), @ptrFromInt(0x4000b22c));
                
                
                
                /// sf_aes_cfg_r0.
                pub const sf_aes_cfg_r0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:13] 
                    sf_aes_region_r0_end:  u14, 
                    
                    /// [14:27] 
                    sf_aes_region_r0_start:  u14, 
                    
                    /// [28:28] 
                    res0:  u1, 
                    
                    /// [29:29] 
                    sf_aes_region_r0_hw_key_en:  u1, 
                    
                    /// [30:30] 
                    sf_aes_region_r0_en:  u1, 
                    
                    /// [31:31] 
                    sf_aes_region_r0_lock:  u1, 
                    
                }), @ptrFromInt(0x4000b230));
                
                
                
                /// sf_aes_key_r1_0.
                pub const sf_aes_key_r1_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_0:  u32, 
                    
                }), @ptrFromInt(0x4000b300));
                
                
                
                /// sf_aes_key_r1_1.
                pub const sf_aes_key_r1_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_1:  u32, 
                    
                }), @ptrFromInt(0x4000b304));
                
                
                
                /// sf_aes_key_r1_2.
                pub const sf_aes_key_r1_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_2:  u32, 
                    
                }), @ptrFromInt(0x4000b308));
                
                
                
                /// sf_aes_key_r1_3.
                pub const sf_aes_key_r1_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_3:  u32, 
                    
                }), @ptrFromInt(0x4000b30c));
                
                
                
                /// sf_aes_key_r1_4.
                pub const sf_aes_key_r1_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_4:  u32, 
                    
                }), @ptrFromInt(0x4000b310));
                
                
                
                /// sf_aes_key_r1_5.
                pub const sf_aes_key_r1_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_5:  u32, 
                    
                }), @ptrFromInt(0x4000b314));
                
                
                
                /// sf_aes_key_r1_6.
                pub const sf_aes_key_r1_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_6:  u32, 
                    
                }), @ptrFromInt(0x4000b318));
                
                
                
                /// sf_aes_key_r1_7.
                pub const sf_aes_key_r1_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r1_7:  u32, 
                    
                }), @ptrFromInt(0x4000b31c));
                
                
                
                /// sf_aes_iv_r1_w0.
                pub const sf_aes_iv_r1_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r1_w0:  u32, 
                    
                }), @ptrFromInt(0x4000b320));
                
                
                
                /// sf_aes_iv_r1_w1.
                pub const sf_aes_iv_r1_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r1_w1:  u32, 
                    
                }), @ptrFromInt(0x4000b324));
                
                
                
                /// sf_aes_iv_r1_w2.
                pub const sf_aes_iv_r1_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r1_w2:  u32, 
                    
                }), @ptrFromInt(0x4000b328));
                
                
                
                /// sf_aes_iv_r1_w3.
                pub const sf_aes_iv_r1_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r1_w3:  u32, 
                    
                }), @ptrFromInt(0x4000b32c));
                
                
                
                /// sf_aes_r1.
                pub const sf_aes_r1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:13] 
                    sf_aes_r1_end:  u14, 
                    
                    /// [14:27] 
                    sf_aes_r1_start:  u14, 
                    
                    /// [28:28] 
                    res0:  u1, 
                    
                    /// [29:29] 
                    sf_aes_r1_hw_key_en:  u1, 
                    
                    /// [30:30] 
                    sf_aes_r1_en:  u1, 
                    
                    /// [31:31] 
                    sf_aes_r1_lock:  u1, 
                    
                }), @ptrFromInt(0x4000b330));
                
                
                
                /// sf_aes_key_r2_0.
                pub const sf_aes_key_r2_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_0:  u32, 
                    
                }), @ptrFromInt(0x4000b400));
                
                
                
                /// sf_aes_key_r2_1.
                pub const sf_aes_key_r2_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_1:  u32, 
                    
                }), @ptrFromInt(0x4000b404));
                
                
                
                /// sf_aes_key_r2_2.
                pub const sf_aes_key_r2_2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_2:  u32, 
                    
                }), @ptrFromInt(0x4000b408));
                
                
                
                /// sf_aes_key_r2_3.
                pub const sf_aes_key_r2_3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_3:  u32, 
                    
                }), @ptrFromInt(0x4000b40c));
                
                
                
                /// sf_aes_key_r2_4.
                pub const sf_aes_key_r2_4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_4:  u32, 
                    
                }), @ptrFromInt(0x4000b410));
                
                
                
                /// sf_aes_key_r2_5.
                pub const sf_aes_key_r2_5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_5:  u32, 
                    
                }), @ptrFromInt(0x4000b414));
                
                
                
                /// sf_aes_key_r2_6.
                pub const sf_aes_key_r2_6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_6:  u32, 
                    
                }), @ptrFromInt(0x4000b418));
                
                
                
                /// sf_aes_key_r2_7.
                pub const sf_aes_key_r2_7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_key_r2_7:  u32, 
                    
                }), @ptrFromInt(0x4000b41c));
                
                
                
                /// sf_aes_iv_r2_w0.
                pub const sf_aes_iv_r2_w0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r2_w0:  u32, 
                    
                }), @ptrFromInt(0x4000b420));
                
                
                
                /// sf_aes_iv_r2_w1.
                pub const sf_aes_iv_r2_w1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r2_w1:  u32, 
                    
                }), @ptrFromInt(0x4000b424));
                
                
                
                /// sf_aes_iv_r2_w2.
                pub const sf_aes_iv_r2_w2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r2_w2:  u32, 
                    
                }), @ptrFromInt(0x4000b428));
                
                
                
                /// sf_aes_iv_r2_w3.
                pub const sf_aes_iv_r2_w3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    sf_aes_iv_r2_w3:  u32, 
                    
                }), @ptrFromInt(0x4000b42c));
                
                
                
                /// sf_aes_r2.
                pub const sf_aes_r2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:13] 
                    sf_aes_r2_end:  u14, 
                    
                    /// [14:27] 
                    sf_aes_r2_start:  u14, 
                    
                    /// [28:28] 
                    res0:  u1, 
                    
                    /// [29:29] 
                    sf_aes_r2_hw_key_en:  u1, 
                    
                    /// [30:30] 
                    sf_aes_r2_en:  u1, 
                    
                    /// [31:31] 
                    sf_aes_r2_lock:  u1, 
                    
                }), @ptrFromInt(0x4000b430));
                
                
                
                /// sf_id0_offset.
                pub const sf_id0_offset = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:23] 
                    sf_id0_offset:  u24, 
                    
                    /// [24:31] 
                    res0:  u8, 
                    
                }), @ptrFromInt(0x4000b434));
                
                
                
                /// sf_id1_offset.
                pub const sf_id1_offset = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:23] 
                    sf_id1_offset:  u24, 
                    
                    /// [24:31] 
                    res0:  u8, 
                    
                }), @ptrFromInt(0x4000b438));
                
                
            };
            
            /// DMA control
            pub const DMA = struct {
                
                
                /// DMA_IntStatus.
                pub const DMA_IntStatus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    IntStatus:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c000));
                
                
                
                /// DMA_IntTCStatus.
                pub const DMA_IntTCStatus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    IntTCStatus:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c004));
                
                
                
                /// DMA_IntTCClear.
                pub const DMA_IntTCClear = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    IntTCClear:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c008));
                
                
                
                /// DMA_IntErrorStatus.
                pub const DMA_IntErrorStatus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    IntErrorStatus:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c00c));
                
                
                
                /// DMA_IntErrClr.
                pub const DMA_IntErrClr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    IntErrClr:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c010));
                
                
                
                /// DMA_RawIntTCStatus.
                pub const DMA_RawIntTCStatus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    RawIntTCStatus:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c014));
                
                
                
                /// DMA_RawIntErrorStatus.
                pub const DMA_RawIntErrorStatus = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    RawIntErrorStatus:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c018));
                
                
                
                /// DMA_EnbldChns.
                pub const DMA_EnbldChns = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    EnabledChannels:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000c01c));
                
                
                
                /// DMA_SoftBReq.
                pub const DMA_SoftBReq = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SoftBReq:  u32, 
                    
                }), @ptrFromInt(0x4000c020));
                
                
                
                /// DMA_SoftSReq.
                pub const DMA_SoftSReq = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SoftSReq:  u32, 
                    
                }), @ptrFromInt(0x4000c024));
                
                
                
                /// DMA_SoftLBReq.
                pub const DMA_SoftLBReq = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SoftLBReq:  u32, 
                    
                }), @ptrFromInt(0x4000c028));
                
                
                
                /// DMA_SoftLSReq.
                pub const DMA_SoftLSReq = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SoftLSReq:  u32, 
                    
                }), @ptrFromInt(0x4000c02c));
                
                
                
                /// DMA_Top_Config.
                pub const DMA_Top_Config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    E:  u1, 
                    
                    /// [1:1] 
                    M:  u1, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x4000c030));
                
                
                
                /// DMA_Sync.
                pub const DMA_Sync = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    DMA_Sync:  u32, 
                    
                }), @ptrFromInt(0x4000c034));
                
                
                
                /// DMA_C0SrcAddr.
                pub const DMA_C0SrcAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SrcAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c100));
                
                
                
                /// DMA_C0DstAddr.
                pub const DMA_C0DstAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    DstAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c104));
                
                
                
                /// DMA_C0LLI.
                pub const DMA_C0LLI = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    LLI:  u32, 
                    
                }), @ptrFromInt(0x4000c108));
                
                
                
                /// DMA_C0Control.
                pub const DMA_C0Control = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    TransferSize:  u12, 
                    
                    /// [12:14] 
                    SBSize:  u3, 
                    
                    /// [15:17] 
                    DBSize:  u3, 
                    
                    /// [18:20] 
                    SWidth:  u3, 
                    
                    /// [21:23] 
                    DWidth:  u3, 
                    
                    /// [24:24] 
                    SLargerD:  u1, 
                    
                    /// [25:25] 
                    res0:  u1, 
                    
                    /// [26:26] 
                    SI:  u1, 
                    
                    /// [27:27] 
                    DI:  u1, 
                    
                    /// [28:30] 
                    Prot:  u3, 
                    
                    /// [31:31] 
                    I:  u1, 
                    
                }), @ptrFromInt(0x4000c10c));
                
                
                
                /// DMA_C0Config.
                pub const DMA_C0Config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    E:  u1, 
                    
                    /// [1:5] 
                    SrcPeripheral:  u5, 
                    
                    /// [6:10] 
                    DstPeripheral:  u5, 
                    
                    /// [11:13] 
                    FlowCntrl:  u3, 
                    
                    /// [14:14] 
                    IE:  u1, 
                    
                    /// [15:15] 
                    ITC:  u1, 
                    
                    /// [16:16] 
                    L:  u1, 
                    
                    /// [17:17] 
                    A:  u1, 
                    
                    /// [18:18] 
                    H:  u1, 
                    
                    /// [19:19] 
                    res0:  u1, 
                    
                    /// [20:29] 
                    LLICounter:  u10, 
                    
                    /// [30:31] 
                    res1:  u2, 
                    
                }), @ptrFromInt(0x4000c110));
                
                
                
                /// DMA_C1SrcAddr.
                pub const DMA_C1SrcAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SrcAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c200));
                
                
                
                /// DMA_C1DstAddr.
                pub const DMA_C1DstAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    DstAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c204));
                
                
                
                /// DMA_C1LLI.
                pub const DMA_C1LLI = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    res0:  u2, 
                    
                    /// [2:31] 
                    LLI:  u30, 
                    
                }), @ptrFromInt(0x4000c208));
                
                
                
                /// DMA_C1Control.
                pub const DMA_C1Control = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    TransferSize:  u12, 
                    
                    /// [12:14] 
                    SBSize:  u3, 
                    
                    /// [15:17] 
                    DBSize:  u3, 
                    
                    /// [18:20] 
                    SWidth:  u3, 
                    
                    /// [21:23] 
                    DWidth:  u3, 
                    
                    /// [24:25] 
                    res0:  u2, 
                    
                    /// [26:26] 
                    SI:  u1, 
                    
                    /// [27:27] 
                    DI:  u1, 
                    
                    /// [28:30] 
                    Prot:  u3, 
                    
                    /// [31:31] 
                    I:  u1, 
                    
                }), @ptrFromInt(0x4000c20c));
                
                
                
                /// DMA_C1Config.
                pub const DMA_C1Config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    E:  u1, 
                    
                    /// [1:5] 
                    SrcPeripheral:  u5, 
                    
                    /// [6:10] 
                    DstPeripheral:  u5, 
                    
                    /// [11:13] 
                    FlowCntrl:  u3, 
                    
                    /// [14:14] 
                    IE:  u1, 
                    
                    /// [15:15] 
                    ITC:  u1, 
                    
                    /// [16:16] 
                    L:  u1, 
                    
                    /// [17:17] 
                    A:  u1, 
                    
                    /// [18:18] 
                    H:  u1, 
                    
                    /// [19:31] 
                    res0:  u13, 
                    
                }), @ptrFromInt(0x4000c210));
                
                
                
                /// DMA_C2SrcAddr.
                pub const DMA_C2SrcAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SrcAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c300));
                
                
                
                /// DMA_C2DstAddr.
                pub const DMA_C2DstAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    DstAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c304));
                
                
                
                /// DMA_C2LLI.
                pub const DMA_C2LLI = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    res0:  u2, 
                    
                    /// [2:31] 
                    LLI:  u30, 
                    
                }), @ptrFromInt(0x4000c308));
                
                
                
                /// DMA_C2Control.
                pub const DMA_C2Control = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    TransferSize:  u12, 
                    
                    /// [12:14] 
                    SBSize:  u3, 
                    
                    /// [15:17] 
                    DBSize:  u3, 
                    
                    /// [18:20] 
                    SWidth:  u3, 
                    
                    /// [21:23] 
                    DWidth:  u3, 
                    
                    /// [24:25] 
                    res0:  u2, 
                    
                    /// [26:26] 
                    SI:  u1, 
                    
                    /// [27:27] 
                    DI:  u1, 
                    
                    /// [28:30] 
                    Prot:  u3, 
                    
                    /// [31:31] 
                    I:  u1, 
                    
                }), @ptrFromInt(0x4000c30c));
                
                
                
                /// DMA_C2Config.
                pub const DMA_C2Config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    E:  u1, 
                    
                    /// [1:5] 
                    SrcPeripheral:  u5, 
                    
                    /// [6:10] 
                    DstPeripheral:  u5, 
                    
                    /// [11:13] 
                    FlowCntrl:  u3, 
                    
                    /// [14:14] 
                    IE:  u1, 
                    
                    /// [15:15] 
                    ITC:  u1, 
                    
                    /// [16:16] 
                    L:  u1, 
                    
                    /// [17:17] 
                    A:  u1, 
                    
                    /// [18:18] 
                    H:  u1, 
                    
                    /// [19:31] 
                    res0:  u13, 
                    
                }), @ptrFromInt(0x4000c310));
                
                
                
                /// DMA_C3SrcAddr.
                pub const DMA_C3SrcAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    SrcAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c400));
                
                
                
                /// DMA_C3DstAddr.
                pub const DMA_C3DstAddr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    DstAddr:  u32, 
                    
                }), @ptrFromInt(0x4000c404));
                
                
                
                /// DMA_C3LLI.
                pub const DMA_C3LLI = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    res0:  u2, 
                    
                    /// [2:31] 
                    LLI:  u30, 
                    
                }), @ptrFromInt(0x4000c408));
                
                
                
                /// DMA_C3Control.
                pub const DMA_C3Control = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    TransferSize:  u12, 
                    
                    /// [12:14] 
                    SBSize:  u3, 
                    
                    /// [15:17] 
                    DBSize:  u3, 
                    
                    /// [18:20] 
                    SWidth:  u3, 
                    
                    /// [21:23] 
                    DWidth:  u3, 
                    
                    /// [24:25] 
                    res0:  u2, 
                    
                    /// [26:26] 
                    SI:  u1, 
                    
                    /// [27:27] 
                    DI:  u1, 
                    
                    /// [28:30] 
                    Prot:  u3, 
                    
                    /// [31:31] 
                    I:  u1, 
                    
                }), @ptrFromInt(0x4000c40c));
                
                
                
                /// DMA_C3Config.
                pub const DMA_C3Config = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    E:  u1, 
                    
                    /// [1:5] 
                    SrcPeripheral:  u5, 
                    
                    /// [6:10] 
                    DstPeripheral:  u5, 
                    
                    /// [11:13] 
                    FlowCntrl:  u3, 
                    
                    /// [14:14] 
                    IE:  u1, 
                    
                    /// [15:15] 
                    ITC:  u1, 
                    
                    /// [16:16] 
                    L:  u1, 
                    
                    /// [17:17] 
                    A:  u1, 
                    
                    /// [18:18] 
                    H:  u1, 
                    
                    /// [19:31] 
                    res0:  u13, 
                    
                }), @ptrFromInt(0x4000c410));
                
                
            };
            
            /// Sleep control (power-down sleep)
            pub const PDS = struct {
                
                
                /// PDS_CTL.
                pub const PDS_CTL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pds_start_ps:  u1, 
                    
                    /// [1:1] 
                    cr_sleep_forever:  u1, 
                    
                    /// [2:2] 
                    cr_xtal_force_off:  u1, 
                    
                    /// [3:3] 
                    cr_wifi_pds_save_state:  u1, 
                    
                    /// [4:4] 
                    cr_pds_pd_dcdc18:  u1, 
                    
                    /// [5:5] 
                    cr_pds_pd_bg_sys:  u1, 
                    
                    /// [6:7] 
                    res0:  u2, 
                    
                    /// [8:8] 
                    cr_pds_gate_clk:  u1, 
                    
                    /// [9:9] 
                    cr_pds_mem_stby:  u1, 
                    
                    /// [10:10] 
                    res1:  u1, 
                    
                    /// [11:11] 
                    cr_pds_iso_en:  u1, 
                    
                    /// [12:12] 
                    cr_pds_wait_xtal_rdy:  u1, 
                    
                    /// [13:13] 
                    cr_pds_pwr_off:  u1, 
                    
                    /// [14:14] 
                    cr_pds_pd_xtal:  u1, 
                    
                    /// [15:15] 
                    cr_pds_soc_enb_force_on:  u1, 
                    
                    /// [16:16] 
                    cr_pds_rst_soc_en:  u1, 
                    
                    /// [17:17] 
                    cr_pds_rc32m_off_dis:  u1, 
                    
                    /// [18:18] 
                    cr_pds_ldo_vsel_en:  u1, 
                    
                    /// [19:20] 
                    res2:  u2, 
                    
                    /// [21:21] 
                    cr_np_wfi_mask:  u1, 
                    
                    /// [22:22] 
                    cr_pds_pd_ldo11:  u1, 
                    
                    /// [23:23] 
                    res3:  u1, 
                    
                    /// [24:27] 
                    cr_pds_ldo_vol:  u4, 
                    
                    /// [28:29] 
                    cr_pds_ctrl_rf:  u2, 
                    
                    /// [30:31] 
                    cr_pds_ctrl_pll:  u2, 
                    
                }), @ptrFromInt(0x4000e000));
                
                
                
                /// PDS_TIME1.
                pub const PDS_TIME1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    cr_sleep_duration:  u32, 
                    
                }), @ptrFromInt(0x4000e004));
                
                
                
                /// PDS_INT.
                pub const PDS_INT = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    ro_pds_wake_int:  u1, 
                    
                    /// [1:1] 
                    ro_pds_irq_in:  u1, 
                    
                    /// [2:2] 
                    ro_pds_rf_done_int:  u1, 
                    
                    /// [3:3] 
                    ro_pds_pll_done_int:  u1, 
                    
                    /// [4:7] 
                    res0:  u4, 
                    
                    /// [8:8] 
                    cr_pds_wake_int_mask:  u1, 
                    
                    /// [9:9] 
                    cr_pds_irq_in_dis:  u1, 
                    
                    /// [10:10] 
                    cr_pds_rf_done_int_mask:  u1, 
                    
                    /// [11:11] 
                    cr_pds_pll_done_int_mask:  u1, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:16] 
                    cr_pds_int_clr:  u1, 
                    
                    /// [17:31] 
                    res2:  u15, 
                    
                }), @ptrFromInt(0x4000e00c));
                
                
                
                /// PDS_CTL2.
                pub const PDS_CTL2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_pds_force_np_pwr_off:  u1, 
                    
                    /// [1:1] 
                    res0:  u1, 
                    
                    /// [2:2] 
                    cr_pds_force_wb_pwr_off:  u1, 
                    
                    /// [3:3] 
                    res1:  u1, 
                    
                    /// [4:4] 
                    cr_pds_force_np_iso_en:  u1, 
                    
                    /// [5:5] 
                    res2:  u1, 
                    
                    /// [6:6] 
                    cr_pds_force_wb_iso_en:  u1, 
                    
                    /// [7:7] 
                    res3:  u1, 
                    
                    /// [8:8] 
                    cr_pds_force_np_pds_rst:  u1, 
                    
                    /// [9:9] 
                    res4:  u1, 
                    
                    /// [10:10] 
                    cr_pds_force_wb_pds_rst:  u1, 
                    
                    /// [11:11] 
                    res5:  u1, 
                    
                    /// [12:12] 
                    cr_pds_force_np_mem_stby:  u1, 
                    
                    /// [13:13] 
                    res6:  u1, 
                    
                    /// [14:14] 
                    cr_pds_force_wb_mem_stby:  u1, 
                    
                    /// [15:15] 
                    res7:  u1, 
                    
                    /// [16:16] 
                    cr_pds_force_np_gate_clk:  u1, 
                    
                    /// [17:17] 
                    res8:  u1, 
                    
                    /// [18:18] 
                    cr_pds_force_wb_gate_clk:  u1, 
                    
                    /// [19:31] 
                    res9:  u13, 
                    
                }), @ptrFromInt(0x4000e010));
                
                
                
                /// PDS_CTL3.
                pub const PDS_CTL3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    res0:  u1, 
                    
                    /// [1:1] 
                    cr_pds_force_misc_pwr_off:  u1, 
                    
                    /// [2:3] 
                    res1:  u2, 
                    
                    /// [4:4] 
                    cr_pds_force_misc_iso_en:  u1, 
                    
                    /// [5:6] 
                    res2:  u2, 
                    
                    /// [7:7] 
                    cr_pds_force_misc_pds_rst:  u1, 
                    
                    /// [8:9] 
                    res3:  u2, 
                    
                    /// [10:10] 
                    cr_pds_force_misc_mem_stby:  u1, 
                    
                    /// [11:12] 
                    res4:  u2, 
                    
                    /// [13:13] 
                    cr_pds_force_misc_gate_clk:  u1, 
                    
                    /// [14:23] 
                    res5:  u10, 
                    
                    /// [24:24] 
                    cr_pds_np_iso_en:  u1, 
                    
                    /// [25:26] 
                    res6:  u2, 
                    
                    /// [27:27] 
                    cr_pds_wb_iso_en:  u1, 
                    
                    /// [28:29] 
                    res7:  u2, 
                    
                    /// [30:30] 
                    cr_pds_misc_iso_en:  u1, 
                    
                    /// [31:31] 
                    res8:  u1, 
                    
                }), @ptrFromInt(0x4000e014));
                
                
                
                /// PDS_CTL4.
                pub const PDS_CTL4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    cr_pds_np_pwr_off:  u1, 
                    
                    /// [1:1] 
                    cr_pds_np_reset:  u1, 
                    
                    /// [2:2] 
                    cr_pds_np_mem_stby:  u1, 
                    
                    /// [3:3] 
                    cr_pds_np_gate_clk:  u1, 
                    
                    /// [4:11] 
                    res0:  u8, 
                    
                    /// [12:12] 
                    cr_pds_wb_pwr_off:  u1, 
                    
                    /// [13:13] 
                    cr_pds_wb_reset:  u1, 
                    
                    /// [14:14] 
                    cr_pds_wb_mem_stby:  u1, 
                    
                    /// [15:15] 
                    cr_pds_wb_gate_clk:  u1, 
                    
                    /// [16:23] 
                    res1:  u8, 
                    
                    /// [24:24] 
                    cr_pds_misc_pwr_off:  u1, 
                    
                    /// [25:25] 
                    cr_pds_misc_reset:  u1, 
                    
                    /// [26:26] 
                    cr_pds_misc_mem_stby:  u1, 
                    
                    /// [27:27] 
                    cr_pds_misc_gate_clk:  u1, 
                    
                    /// [28:31] 
                    res2:  u4, 
                    
                }), @ptrFromInt(0x4000e018));
                
                
                
                /// pds_stat.
                pub const pds_stat = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:3] 
                    ro_pds_state:  u4, 
                    
                    /// [4:7] 
                    res0:  u4, 
                    
                    /// [8:11] 
                    ro_pds_rf_state:  u4, 
                    
                    /// [12:15] 
                    res1:  u4, 
                    
                    /// [16:17] 
                    ro_pds_pll_state:  u2, 
                    
                    /// [18:31] 
                    res2:  u14, 
                    
                }), @ptrFromInt(0x4000e01c));
                
                
                
                /// pds_ram1.
                pub const pds_ram1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    cr_np_sram_pwr:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000e020));
                
                
                
                /// rc32m_ctrl0.
                pub const rc32m_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rc32m_cal_done:  u1, 
                    
                    /// [1:1] 
                    rc32m_rdy:  u1, 
                    
                    /// [2:2] 
                    rc32m_cal_inprogress:  u1, 
                    
                    /// [3:4] 
                    rc32m_cal_div:  u2, 
                    
                    /// [5:5] 
                    rc32m_cal_precharge:  u1, 
                    
                    /// [6:13] 
                    rc32m_dig_code_fr_cal:  u8, 
                    
                    /// [14:16] 
                    res0:  u3, 
                    
                    /// [17:17] 
                    rc32m_allow_cal:  u1, 
                    
                    /// [18:18] 
                    rc32m_refclk_half:  u1, 
                    
                    /// [19:19] 
                    rc32m_ext_code_en:  u1, 
                    
                    /// [20:20] 
                    rc32m_cal_en:  u1, 
                    
                    /// [21:21] 
                    rc32m_pd:  u1, 
                    
                    /// [22:29] 
                    rc32m_code_fr_ext:  u8, 
                    
                    /// [30:31] 
                    res1:  u2, 
                    
                }), @ptrFromInt(0x4000e300));
                
                
                
                /// rc32m_ctrl1.
                pub const rc32m_ctrl1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rc32m_test_en:  u1, 
                    
                    /// [1:1] 
                    rc32m_soft_rst:  u1, 
                    
                    /// [2:2] 
                    rc32m_clk_soft_rst:  u1, 
                    
                    /// [3:3] 
                    rc32m_clk_inv:  u1, 
                    
                    /// [4:4] 
                    rc32m_clk_force_on:  u1, 
                    
                    /// [5:23] 
                    res0:  u19, 
                    
                    /// [24:31] 
                    rc32m_reserved:  u8, 
                    
                }), @ptrFromInt(0x4000e304));
                
                
                
                /// pu_rst_clkpll.
                pub const pu_rst_clkpll = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    clkpll_sdm_reset:  u1, 
                    
                    /// [1:1] 
                    clkpll_reset_postdiv:  u1, 
                    
                    /// [2:2] 
                    clkpll_reset_fbdv:  u1, 
                    
                    /// [3:3] 
                    clkpll_reset_refdiv:  u1, 
                    
                    /// [4:4] 
                    clkpll_pu_postdiv:  u1, 
                    
                    /// [5:5] 
                    clkpll_pu_fbdv:  u1, 
                    
                    /// [6:6] 
                    clkpll_pu_clamp_op:  u1, 
                    
                    /// [7:7] 
                    clkpll_pu_pfd:  u1, 
                    
                    /// [8:8] 
                    clkpll_pu_cp:  u1, 
                    
                    /// [9:9] 
                    pu_clkpll_sfreg:  u1, 
                    
                    /// [10:10] 
                    pu_clkpll:  u1, 
                    
                    /// [11:31] 
                    res0:  u21, 
                    
                }), @ptrFromInt(0x4000e400));
                
                
                
                /// clkpll_top_ctrl.
                pub const clkpll_top_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    clkpll_postdiv:  u7, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:11] 
                    clkpll_refdiv_ratio:  u4, 
                    
                    /// [12:12] 
                    clkpll_xtal_rc32m_sel:  u1, 
                    
                    /// [13:15] 
                    res1:  u3, 
                    
                    /// [16:16] 
                    clkpll_refclk_sel:  u1, 
                    
                    /// [17:19] 
                    res2:  u3, 
                    
                    /// [20:21] 
                    clkpll_vg11_sel:  u2, 
                    
                    /// [22:23] 
                    res3:  u2, 
                    
                    /// [24:25] 
                    clkpll_vg13_sel:  u2, 
                    
                    /// [26:31] 
                    res4:  u6, 
                    
                }), @ptrFromInt(0x4000e404));
                
                
                
                /// clkpll_cp.
                pub const clkpll_cp = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    clkpll_sel_cp_bias:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:5] 
                    clkpll_icp_5u:  u2, 
                    
                    /// [6:7] 
                    clkpll_icp_1u:  u2, 
                    
                    /// [8:8] 
                    clkpll_int_frac_sw:  u1, 
                    
                    /// [9:9] 
                    clkpll_cp_startup_en:  u1, 
                    
                    /// [10:10] 
                    clkpll_cp_opamp_en:  u1, 
                    
                    /// [11:31] 
                    res1:  u21, 
                    
                }), @ptrFromInt(0x4000e408));
                
                
                
                /// clkpll_rz.
                pub const clkpll_rz = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    clkpll_c4_en:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:5] 
                    clkpll_r4:  u2, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:8] 
                    clkpll_r4_short:  u1, 
                    
                    /// [9:11] 
                    res2:  u3, 
                    
                    /// [12:13] 
                    clkpll_c3:  u2, 
                    
                    /// [14:15] 
                    clkpll_cz:  u2, 
                    
                    /// [16:18] 
                    clkpll_rz:  u3, 
                    
                    /// [19:31] 
                    res3:  u13, 
                    
                }), @ptrFromInt(0x4000e40c));
                
                
                
                /// clkpll_fbdv.
                pub const clkpll_fbdv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    clkpll_sel_sample_clk:  u2, 
                    
                    /// [2:3] 
                    clkpll_sel_fb_clk:  u2, 
                    
                    /// [4:31] 
                    res0:  u28, 
                    
                }), @ptrFromInt(0x4000e410));
                
                
                
                /// clkpll_vco.
                pub const clkpll_vco = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    clkpll_vco_speed:  u3, 
                    
                    /// [3:3] 
                    clkpll_shrtr:  u1, 
                    
                    /// [4:31] 
                    res0:  u28, 
                    
                }), @ptrFromInt(0x4000e414));
                
                
                
                /// clkpll_sdm.
                pub const clkpll_sdm = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:23] 
                    clkpll_sdmin:  u24, 
                    
                    /// [24:25] 
                    clkpll_dither_sel:  u2, 
                    
                    /// [26:27] 
                    res0:  u2, 
                    
                    /// [28:28] 
                    clkpll_sdm_flag:  u1, 
                    
                    /// [29:29] 
                    clkpll_sdm_bypass:  u1, 
                    
                    /// [30:31] 
                    res1:  u2, 
                    
                }), @ptrFromInt(0x4000e418));
                
                
                
                /// clkpll_output_en.
                pub const clkpll_output_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    clkpll_en_480m:  u1, 
                    
                    /// [1:1] 
                    clkpll_en_240m:  u1, 
                    
                    /// [2:2] 
                    clkpll_en_192m:  u1, 
                    
                    /// [3:3] 
                    clkpll_en_160m:  u1, 
                    
                    /// [4:4] 
                    clkpll_en_120m:  u1, 
                    
                    /// [5:5] 
                    clkpll_en_96m:  u1, 
                    
                    /// [6:6] 
                    clkpll_en_80m:  u1, 
                    
                    /// [7:7] 
                    clkpll_en_48m:  u1, 
                    
                    /// [8:8] 
                    clkpll_en_32m:  u1, 
                    
                    /// [9:9] 
                    clkpll_en_div2_480m:  u1, 
                    
                    /// [10:31] 
                    res0:  u22, 
                    
                }), @ptrFromInt(0x4000e41c));
                
                
            };
            
            /// Deep Sleep Control (Hibernation)
            pub const HBN = struct {
                
                
                /// HBN_CTL.
                pub const HBN_CTL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:6] 
                    rtc_ctl:  u7, 
                    
                    /// [7:7] 
                    hbn_mode:  u1, 
                    
                    /// [8:8] 
                    trap_mode:  u1, 
                    
                    /// [9:9] 
                    pwrdn_hbn_core:  u1, 
                    
                    /// [10:10] 
                    res0:  u1, 
                    
                    /// [11:11] 
                    pwrdn_hbn_rtc:  u1, 
                    
                    /// [12:12] 
                    sw_rst:  u1, 
                    
                    /// [13:13] 
                    hbn_dis_pwr_off_ldo11:  u1, 
                    
                    /// [14:14] 
                    hbn_dis_pwr_off_ldo11_rt:  u1, 
                    
                    /// [15:18] 
                    hbn_ldo11_rt_vout_sel:  u4, 
                    
                    /// [19:22] 
                    hbn_ldo11_aon_vout_sel:  u4, 
                    
                    /// [23:23] 
                    pu_dcdc18_aon:  u1, 
                    
                    /// [24:24] 
                    rtc_dly_option:  u1, 
                    
                    /// [25:25] 
                    pwr_on_option:  u1, 
                    
                    /// [26:26] 
                    sram_slp_option:  u1, 
                    
                    /// [27:27] 
                    sram_slp:  u1, 
                    
                    /// [28:31] 
                    hbn_state:  u4, 
                    
                }), @ptrFromInt(0x4000f000));
                
                
                
                /// HBN_TIME_L.
                pub const HBN_TIME_L = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    hbn_time_l:  u32, 
                    
                }), @ptrFromInt(0x4000f004));
                
                
                
                /// HBN_TIME_H.
                pub const HBN_TIME_H = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    hbn_time_h:  u8, 
                    
                    /// [8:31] 
                    res0:  u24, 
                    
                }), @ptrFromInt(0x4000f008));
                
                
                
                /// RTC_TIME_L.
                pub const RTC_TIME_L = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    rtc_time_latch_l:  u32, 
                    
                }), @ptrFromInt(0x4000f00c));
                
                
                
                /// RTC_TIME_H.
                pub const RTC_TIME_H = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    rtc_time_latch_h:  u8, 
                    
                    /// [8:30] 
                    res0:  u23, 
                    
                    /// [31:31] 
                    rtc_time_latch:  u1, 
                    
                }), @ptrFromInt(0x4000f010));
                
                
                
                /// HBN_IRQ_MODE.
                pub const HBN_IRQ_MODE = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    hbn_pin_wakeup_mode:  u3, 
                    
                    /// [3:4] 
                    hbn_pin_wakeup_mask:  u2, 
                    
                    /// [5:7] 
                    res0:  u3, 
                    
                    /// [8:8] 
                    reg_aon_pad_ie_smt:  u1, 
                    
                    /// [9:15] 
                    res1:  u7, 
                    
                    /// [16:16] 
                    reg_en_hw_pu_pd:  u1, 
                    
                    /// [17:17] 
                    res2:  u1, 
                    
                    /// [18:18] 
                    irq_bor_en:  u1, 
                    
                    /// [19:19] 
                    res3:  u1, 
                    
                    /// [20:21] 
                    irq_acomp0_en:  u2, 
                    
                    /// [22:23] 
                    irq_acomp1_en:  u2, 
                    
                    /// [24:26] 
                    pin_wakeup_sel:  u3, 
                    
                    /// [27:27] 
                    pin_wakeup_en:  u1, 
                    
                    /// [28:31] 
                    res4:  u4, 
                    
                }), @ptrFromInt(0x4000f014));
                
                
                
                /// HBN_IRQ_STAT.
                pub const HBN_IRQ_STAT = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    irq_stat:  u32, 
                    
                }), @ptrFromInt(0x4000f018));
                
                
                
                /// HBN_IRQ_CLR.
                pub const HBN_IRQ_CLR = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    irq_clr:  u32, 
                    
                }), @ptrFromInt(0x4000f01c));
                
                
                
                /// HBN_PIR_CFG.
                pub const HBN_PIR_CFG = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    pir_hpf_sel:  u2, 
                    
                    /// [2:2] 
                    pir_lpf_sel:  u1, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:5] 
                    pir_dis:  u2, 
                    
                    /// [6:6] 
                    res1:  u1, 
                    
                    /// [7:7] 
                    pir_en:  u1, 
                    
                    /// [8:8] 
                    gpadc_cgen:  u1, 
                    
                    /// [9:9] 
                    gpadc_nosync:  u1, 
                    
                    /// [10:31] 
                    res2:  u22, 
                    
                }), @ptrFromInt(0x4000f020));
                
                
                
                /// HBN_PIR_VTH.
                pub const HBN_PIR_VTH = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:13] 
                    pir_vth:  u14, 
                    
                    /// [14:31] 
                    res0:  u18, 
                    
                }), @ptrFromInt(0x4000f024));
                
                
                
                /// HBN_PIR_INTERVAL.
                pub const HBN_PIR_INTERVAL = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    pir_interval:  u12, 
                    
                    /// [12:31] 
                    res0:  u20, 
                    
                }), @ptrFromInt(0x4000f028));
                
                
                
                /// HBN_BOR_CFG.
                pub const HBN_BOR_CFG = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    bor_sel:  u1, 
                    
                    /// [1:1] 
                    bor_vth:  u1, 
                    
                    /// [2:2] 
                    pu_bor:  u1, 
                    
                    /// [3:3] 
                    r_bor_out:  u1, 
                    
                    /// [4:31] 
                    res0:  u28, 
                    
                }), @ptrFromInt(0x4000f02c));
                
                
                
                /// HBN_GLB.
                pub const HBN_GLB = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    hbn_root_clk_sel:  u2, 
                    
                    /// [2:2] 
                    hbn_uart_clk_sel:  u1, 
                    
                    /// [3:4] 
                    hbn_f32k_sel:  u2, 
                    
                    /// [5:5] 
                    hbn_pu_rc32k:  u1, 
                    
                    /// [6:15] 
                    res0:  u10, 
                    
                    /// [16:19] 
                    sw_ldo11soc_vout_sel_aon:  u4, 
                    
                    /// [20:23] 
                    res1:  u4, 
                    
                    /// [24:27] 
                    sw_ldo11_rt_vout_sel:  u4, 
                    
                    /// [28:31] 
                    sw_ldo11_aon_vout_sel:  u4, 
                    
                }), @ptrFromInt(0x4000f030));
                
                
                
                /// HBN_SRAM.
                pub const HBN_SRAM = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:5] 
                    res0:  u6, 
                    
                    /// [6:6] 
                    retram_ret:  u1, 
                    
                    /// [7:7] 
                    retram_slp:  u1, 
                    
                    /// [8:31] 
                    res1:  u24, 
                    
                }), @ptrFromInt(0x4000f034));
                
                
                
                /// HBN_RSV0.
                pub const HBN_RSV0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    HBN_RSV0:  u32, 
                    
                }), @ptrFromInt(0x4000f100));
                
                
                
                /// HBN_RSV1.
                pub const HBN_RSV1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    HBN_RSV1:  u32, 
                    
                }), @ptrFromInt(0x4000f104));
                
                
                
                /// HBN_RSV2.
                pub const HBN_RSV2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    HBN_RSV2:  u32, 
                    
                }), @ptrFromInt(0x4000f108));
                
                
                
                /// HBN_RSV3.
                pub const HBN_RSV3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    HBN_RSV3:  u32, 
                    
                }), @ptrFromInt(0x4000f10c));
                
                
                
                /// rc32k_ctrl0.
                pub const rc32k_ctrl0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    rc32k_cal_done:  u1, 
                    
                    /// [1:1] 
                    rc32k_rdy:  u1, 
                    
                    /// [2:2] 
                    rc32k_cal_inprogress:  u1, 
                    
                    /// [3:4] 
                    rc32k_cal_div:  u2, 
                    
                    /// [5:5] 
                    rc32k_cal_precharge:  u1, 
                    
                    /// [6:15] 
                    rc32k_dig_code_fr_cal:  u10, 
                    
                    /// [16:17] 
                    rc32k_vref_dly:  u2, 
                    
                    /// [18:18] 
                    rc32k_allow_cal:  u1, 
                    
                    /// [19:19] 
                    rc32k_ext_code_en:  u1, 
                    
                    /// [20:20] 
                    rc32k_cal_en:  u1, 
                    
                    /// [21:21] 
                    res0:  u1, 
                    
                    /// [22:31] 
                    rc32k_code_fr_ext:  u10, 
                    
                }), @ptrFromInt(0x4000f200));
                
                
                
                /// xtal32k.
                pub const xtal32k = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    res0:  u2, 
                    
                    /// [2:2] 
                    xtal32k_ext_sel:  u1, 
                    
                    /// [3:4] 
                    xtal32k_amp_ctrl:  u2, 
                    
                    /// [5:6] 
                    xtal32k_reg:  u2, 
                    
                    /// [7:7] 
                    xtal32k_outbuf_stre:  u1, 
                    
                    /// [8:8] 
                    xtal32k_otf_short:  u1, 
                    
                    /// [9:10] 
                    xtal32k_inv_stre:  u2, 
                    
                    /// [11:16] 
                    xtal32k_capbank:  u6, 
                    
                    /// [17:17] 
                    xtal32k_ac_cap_short:  u1, 
                    
                    /// [18:18] 
                    pu_xtal32k_buf:  u1, 
                    
                    /// [19:19] 
                    pu_xtal32k:  u1, 
                    
                    /// [20:31] 
                    res1:  u12, 
                    
                }), @ptrFromInt(0x4000f204));
                
                
            };
            
            /// Always-ON periherals
            pub const AON = struct {
                
                
                /// aon.
                pub const aon = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    aon_resv:  u8, 
                    
                    /// [8:11] 
                    res0:  u4, 
                    
                    /// [12:12] 
                    pu_aon_dc_tbuf:  u1, 
                    
                    /// [13:19] 
                    res1:  u7, 
                    
                    /// [20:20] 
                    ldo11_rt_pulldown:  u1, 
                    
                    /// [21:21] 
                    ldo11_rt_pulldown_sel:  u1, 
                    
                    /// [22:22] 
                    sw_pu_ldo11_rt:  u1, 
                    
                    /// [23:31] 
                    res2:  u9, 
                    
                }), @ptrFromInt(0x40010000));
                
                
                
                /// aon_common.
                pub const aon_common = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:2] 
                    tmux_aon:  u3, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:4] 
                    ten_aon:  u1, 
                    
                    /// [5:5] 
                    dten_xtal32k:  u1, 
                    
                    /// [6:6] 
                    ten_xtal32k:  u1, 
                    
                    /// [7:7] 
                    res1:  u1, 
                    
                    /// [8:8] 
                    ten_vddcore_aon:  u1, 
                    
                    /// [9:9] 
                    ten_ldo11soc_aon:  u1, 
                    
                    /// [10:10] 
                    ten_dcdc18_0_aon:  u1, 
                    
                    /// [11:11] 
                    ten_dcdc18_1_aon:  u1, 
                    
                    /// [12:12] 
                    ten_bg_sys_aon:  u1, 
                    
                    /// [13:15] 
                    res2:  u3, 
                    
                    /// [16:16] 
                    ten_ldo15rf_aon:  u1, 
                    
                    /// [17:17] 
                    ten_xtal_aon:  u1, 
                    
                    /// [18:18] 
                    dten_xtal_aon:  u1, 
                    
                    /// [19:19] 
                    ten_mbg_aon:  u1, 
                    
                    /// [20:20] 
                    ten_cip_misc_aon:  u1, 
                    
                    /// [21:31] 
                    res3:  u11, 
                    
                }), @ptrFromInt(0x40010004));
                
                
                
                /// aon_misc.
                pub const aon_misc = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    sw_soc_en_aon:  u1, 
                    
                    /// [1:1] 
                    sw_wb_en_aon:  u1, 
                    
                    /// [2:31] 
                    res0:  u30, 
                    
                }), @ptrFromInt(0x40010008));
                
                
                
                /// bg_sys_top.
                pub const bg_sys_top = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:7] 
                    pmip_resv:  u8, 
                    
                    /// [8:8] 
                    pu_bg_sys_aon:  u1, 
                    
                    /// [9:11] 
                    res0:  u3, 
                    
                    /// [12:12] 
                    bg_sys_start_ctrl_aon:  u1, 
                    
                    /// [13:31] 
                    res1:  u19, 
                    
                }), @ptrFromInt(0x40010010));
                
                
                
                /// dcdc18_top_0.
                pub const dcdc18_top_0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    res0:  u1, 
                    
                    /// [1:5] 
                    dcdc18_vout_sel_aon:  u5, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:11] 
                    dcdc18_vpfm_aon:  u4, 
                    
                    /// [12:12] 
                    dcdc18_osc_2m_mode_aon:  u1, 
                    
                    /// [13:15] 
                    res2:  u3, 
                    
                    /// [16:19] 
                    dcdc18_osc_freq_trim_aon:  u4, 
                    
                    /// [20:24] 
                    dcdc18_slope_curr_sel_aon:  u5, 
                    
                    /// [25:25] 
                    dcdc18_stop_osc_aon:  u1, 
                    
                    /// [26:26] 
                    dcdc18_slow_osc_aon:  u1, 
                    
                    /// [27:27] 
                    dcdc18_osc_inhibit_t2_aon:  u1, 
                    
                    /// [28:29] 
                    dcdc18_sstart_time_aon:  u2, 
                    
                    /// [30:30] 
                    res3:  u1, 
                    
                    /// [31:31] 
                    dcdc18_rdy_aon:  u1, 
                    
                }), @ptrFromInt(0x40010014));
                
                
                
                /// dcdc18_top_1.
                pub const dcdc18_top_1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    dcdc18_force_cs_zvs_aon:  u1, 
                    
                    /// [1:3] 
                    dcdc18_cs_delay_aon:  u3, 
                    
                    /// [4:6] 
                    dcdc18_zvs_td_opt_aon:  u3, 
                    
                    /// [7:7] 
                    res0:  u1, 
                    
                    /// [8:12] 
                    dcdc18_nonoverlap_td_aon:  u5, 
                    
                    /// [13:15] 
                    res1:  u3, 
                    
                    /// [16:19] 
                    dcdc18_rc_sel_aon:  u4, 
                    
                    /// [20:23] 
                    dcdc18_chf_sel_aon:  u4, 
                    
                    /// [24:27] 
                    dcdc18_cfb_sel_aon:  u4, 
                    
                    /// [28:28] 
                    dcdc18_en_antiring_aon:  u1, 
                    
                    /// [29:29] 
                    dcdc18_pulldown_aon:  u1, 
                    
                    /// [30:31] 
                    res2:  u2, 
                    
                }), @ptrFromInt(0x40010018));
                
                
                
                /// ldo11soc_and_dctest.
                pub const ldo11soc_and_dctest = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pu_ldo11soc_aon:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:4] 
                    ldo11soc_sstart_sel_aon:  u1, 
                    
                    /// [5:7] 
                    res1:  u3, 
                    
                    /// [8:9] 
                    ldo11soc_sstart_delay_aon:  u2, 
                    
                    /// [10:10] 
                    ldo11soc_pulldown_aon:  u1, 
                    
                    /// [11:11] 
                    ldo11soc_pulldown_sel_aon:  u1, 
                    
                    /// [12:13] 
                    ldo11soc_vth_sel_aon:  u2, 
                    
                    /// [14:23] 
                    res2:  u10, 
                    
                    /// [24:25] 
                    ldo11soc_cc_aon:  u2, 
                    
                    /// [26:27] 
                    res3:  u2, 
                    
                    /// [28:28] 
                    ldo11soc_rdy_aon:  u1, 
                    
                    /// [29:29] 
                    ldo11soc_power_good_aon:  u1, 
                    
                    /// [30:30] 
                    pu_vddcore_misc_aon:  u1, 
                    
                    /// [31:31] 
                    pmip_dc_tp_out_en_aon:  u1, 
                    
                }), @ptrFromInt(0x4001001c));
                
                
                
                /// psw_irrcv.
                pub const psw_irrcv = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pu_ir_psw_aon:  u1, 
                    
                    /// [1:31] 
                    res0:  u31, 
                    
                }), @ptrFromInt(0x40010020));
                
                
                
                /// rf_top_aon.
                pub const rf_top_aon = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    pu_mbg_aon:  u1, 
                    
                    /// [1:1] 
                    pu_ldo15rf_aon:  u1, 
                    
                    /// [2:2] 
                    pu_sfreg_aon:  u1, 
                    
                    /// [3:3] 
                    res0:  u1, 
                    
                    /// [4:4] 
                    pu_xtal_buf_aon:  u1, 
                    
                    /// [5:5] 
                    pu_xtal_aon:  u1, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:8] 
                    ldo15rf_sstart_sel_aon:  u1, 
                    
                    /// [9:10] 
                    ldo15rf_sstart_delay_aon:  u2, 
                    
                    /// [11:11] 
                    res2:  u1, 
                    
                    /// [12:12] 
                    ldo15rf_pulldown_aon:  u1, 
                    
                    /// [13:13] 
                    ldo15rf_pulldown_sel_aon:  u1, 
                    
                    /// [14:15] 
                    res3:  u2, 
                    
                    /// [16:18] 
                    ldo15rf_vout_sel_aon:  u3, 
                    
                    /// [19:23] 
                    res4:  u5, 
                    
                    /// [24:25] 
                    ldo15rf_cc_aon:  u2, 
                    
                    /// [26:27] 
                    res5:  u2, 
                    
                    /// [28:28] 
                    ldo15rf_bypass_aon:  u1, 
                    
                    /// [29:31] 
                    res6:  u3, 
                    
                }), @ptrFromInt(0x40010080));
                
                
                
                /// xtal_cfg.
                pub const xtal_cfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    xtal_bk_aon:  u2, 
                    
                    /// [2:2] 
                    xtal_capcode_extra_aon:  u1, 
                    
                    /// [3:3] 
                    xtal_ext_sel_aon:  u1, 
                    
                    /// [4:7] 
                    xtal_buf_en_aon:  u4, 
                    
                    /// [8:11] 
                    xtal_buf_hp_aon:  u4, 
                    
                    /// [12:12] 
                    xtal_fast_startup_aon:  u1, 
                    
                    /// [13:13] 
                    xtal_sleep_aon:  u1, 
                    
                    /// [14:15] 
                    xtal_amp_ctrl_aon:  u2, 
                    
                    /// [16:21] 
                    xtal_capcode_out_aon:  u6, 
                    
                    /// [22:27] 
                    xtal_capcode_in_aon:  u6, 
                    
                    /// [28:29] 
                    xtal_gm_boost_aon:  u2, 
                    
                    /// [30:31] 
                    xtal_rdy_sel_aon:  u2, 
                    
                }), @ptrFromInt(0x40010084));
                
                
                
                /// tsen.
                pub const tsen = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    tsen_refcode_corner:  u12, 
                    
                    /// [12:15] 
                    res0:  u4, 
                    
                    /// [16:27] 
                    tsen_refcode_rfcal:  u12, 
                    
                    /// [28:28] 
                    xtal_rdy:  u1, 
                    
                    /// [29:29] 
                    xtal_inn_cfg_en_aon:  u1, 
                    
                    /// [30:31] 
                    xtal_rdy_int_sel_aon:  u2, 
                    
                }), @ptrFromInt(0x40010088));
                
                
                
                /// acomp0_ctrl.
                pub const acomp0_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    acomp0_en:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:6] 
                    acomp0_hyst_seln:  u3, 
                    
                    /// [7:9] 
                    acomp0_hyst_selp:  u3, 
                    
                    /// [10:11] 
                    acomp0_bias_prog:  u2, 
                    
                    /// [12:17] 
                    acomp0_level_sel:  u6, 
                    
                    /// [18:21] 
                    acomp0_neg_sel:  u4, 
                    
                    /// [22:25] 
                    acomp0_pos_sel:  u4, 
                    
                    /// [26:26] 
                    acomp0_muxen:  u1, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40010100));
                
                
                
                /// acomp1_ctrl.
                pub const acomp1_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    acomp1_en:  u1, 
                    
                    /// [1:3] 
                    res0:  u3, 
                    
                    /// [4:6] 
                    acomp1_hyst_seln:  u3, 
                    
                    /// [7:9] 
                    acomp1_hyst_selp:  u3, 
                    
                    /// [10:11] 
                    acomp1_bias_prog:  u2, 
                    
                    /// [12:17] 
                    acomp1_level_sel:  u6, 
                    
                    /// [18:21] 
                    acomp1_neg_sel:  u4, 
                    
                    /// [22:25] 
                    acomp1_pos_sel:  u4, 
                    
                    /// [26:26] 
                    acomp1_muxen:  u1, 
                    
                    /// [27:31] 
                    res1:  u5, 
                    
                }), @ptrFromInt(0x40010104));
                
                
                
                /// acomp_ctrl.
                pub const acomp_ctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    acomp1_rstn_ana:  u1, 
                    
                    /// [1:1] 
                    acomp0_rstn_ana:  u1, 
                    
                    /// [2:7] 
                    res0:  u6, 
                    
                    /// [8:8] 
                    acomp1_test_en:  u1, 
                    
                    /// [9:9] 
                    acomp0_test_en:  u1, 
                    
                    /// [10:11] 
                    acomp1_test_sel:  u2, 
                    
                    /// [12:13] 
                    acomp0_test_sel:  u2, 
                    
                    /// [14:16] 
                    res1:  u3, 
                    
                    /// [17:17] 
                    acomp1_out_raw:  u1, 
                    
                    /// [18:18] 
                    res2:  u1, 
                    
                    /// [19:19] 
                    acomp0_out_raw:  u1, 
                    
                    /// [20:23] 
                    res3:  u4, 
                    
                    /// [24:31] 
                    acomp_reserved:  u8, 
                    
                }), @ptrFromInt(0x40010108));
                
                
                
                /// gpadc_reg_cmd.
                pub const gpadc_reg_cmd = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpadc_global_en:  u1, 
                    
                    /// [1:1] 
                    gpadc_conv_start:  u1, 
                    
                    /// [2:2] 
                    gpadc_soft_rst:  u1, 
                    
                    /// [3:7] 
                    gpadc_neg_sel:  u5, 
                    
                    /// [8:12] 
                    gpadc_pos_sel:  u5, 
                    
                    /// [13:13] 
                    gpadc_neg_gnd:  u1, 
                    
                    /// [14:14] 
                    gpadc_micbias_en:  u1, 
                    
                    /// [15:15] 
                    gpadc_micpga_en:  u1, 
                    
                    /// [16:16] 
                    gpadc_byp_micboost:  u1, 
                    
                    /// [17:17] 
                    res0:  u1, 
                    
                    /// [18:18] 
                    gpadc_dwa_en:  u1, 
                    
                    /// [19:19] 
                    gpadc_mic2_diff:  u1, 
                    
                    /// [20:20] 
                    gpadc_mic1_diff:  u1, 
                    
                    /// [21:22] 
                    gpadc_mic_pga2_gain:  u2, 
                    
                    /// [23:23] 
                    gpadc_micboost_32db_en:  u1, 
                    
                    /// [24:26] 
                    res1:  u3, 
                    
                    /// [27:27] 
                    gpadc_chip_sen_pu:  u1, 
                    
                    /// [28:29] 
                    gpadc_sen_sel:  u2, 
                    
                    /// [30:30] 
                    gpadc_sen_test_en:  u1, 
                    
                    /// [31:31] 
                    res2:  u1, 
                    
                }), @ptrFromInt(0x4001010c));
                
                
                
                /// gpadc_reg_config1.
                pub const gpadc_reg_config1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpadc_cal_os_en:  u1, 
                    
                    /// [1:1] 
                    gpadc_cont_conv_en:  u1, 
                    
                    /// [2:4] 
                    gpadc_res_sel:  u3, 
                    
                    /// [5:16] 
                    res0:  u12, 
                    
                    /// [17:17] 
                    gpadc_clk_ana_inv:  u1, 
                    
                    /// [18:20] 
                    gpadc_clk_div_ratio:  u3, 
                    
                    /// [21:24] 
                    gpadc_scan_length:  u4, 
                    
                    /// [25:25] 
                    gpadc_scan_en:  u1, 
                    
                    /// [26:26] 
                    gpadc_dither_en:  u1, 
                    
                    /// [27:28] 
                    gpadc_v11_sel:  u2, 
                    
                    /// [29:30] 
                    gpadc_v18_sel:  u2, 
                    
                    /// [31:31] 
                    res1:  u1, 
                    
                }), @ptrFromInt(0x40010110));
                
                
                
                /// gpadc_reg_config2.
                pub const gpadc_reg_config2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:1] 
                    res0:  u2, 
                    
                    /// [2:2] 
                    gpadc_diff_mode:  u1, 
                    
                    /// [3:3] 
                    gpadc_vref_sel:  u1, 
                    
                    /// [4:4] 
                    gpadc_vbat_en:  u1, 
                    
                    /// [5:5] 
                    gpadc_tsext_sel:  u1, 
                    
                    /// [6:6] 
                    gpadc_ts_en:  u1, 
                    
                    /// [7:8] 
                    gpadc_pga_vcm:  u2, 
                    
                    /// [9:12] 
                    gpadc_pga_os_cal:  u4, 
                    
                    /// [13:13] 
                    gpadc_pga_en:  u1, 
                    
                    /// [14:14] 
                    gpadc_pga_vcmi_en:  u1, 
                    
                    /// [15:16] 
                    gpadc_chop_mode:  u2, 
                    
                    /// [17:17] 
                    gpadc_bias_sel:  u1, 
                    
                    /// [18:18] 
                    gpadc_test_en:  u1, 
                    
                    /// [19:21] 
                    gpadc_test_sel:  u3, 
                    
                    /// [22:24] 
                    gpadc_pga2_gain:  u3, 
                    
                    /// [25:27] 
                    gpadc_pga1_gain:  u3, 
                    
                    /// [28:30] 
                    gpadc_dly_sel:  u3, 
                    
                    /// [31:31] 
                    gpadc_tsvbe_low:  u1, 
                    
                }), @ptrFromInt(0x40010114));
                
                
                
                /// adc converation sequence 1
                pub const gpadc_reg_scn_pos1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gpadc_scan_pos_0:  u5, 
                    
                    /// [5:9] 
                    gpadc_scan_pos_1:  u5, 
                    
                    /// [10:14] 
                    gpadc_scan_pos_2:  u5, 
                    
                    /// [15:19] 
                    gpadc_scan_pos_3:  u5, 
                    
                    /// [20:24] 
                    gpadc_scan_pos_4:  u5, 
                    
                    /// [25:29] 
                    gpadc_scan_pos_5:  u5, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x40010118));
                
                
                
                /// adc converation sequence 2
                pub const gpadc_reg_scn_pos2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gpadc_scan_pos_6:  u5, 
                    
                    /// [5:9] 
                    gpadc_scan_pos_7:  u5, 
                    
                    /// [10:14] 
                    gpadc_scan_pos_8:  u5, 
                    
                    /// [15:19] 
                    gpadc_scan_pos_9:  u5, 
                    
                    /// [20:24] 
                    gpadc_scan_pos_10:  u5, 
                    
                    /// [25:29] 
                    gpadc_scan_pos_11:  u5, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x4001011c));
                
                
                
                /// adc converation sequence 3
                pub const gpadc_reg_scn_neg1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gpadc_scan_neg_0:  u5, 
                    
                    /// [5:9] 
                    gpadc_scan_neg_1:  u5, 
                    
                    /// [10:14] 
                    gpadc_scan_neg_2:  u5, 
                    
                    /// [15:19] 
                    gpadc_scan_neg_3:  u5, 
                    
                    /// [20:24] 
                    gpadc_scan_neg_4:  u5, 
                    
                    /// [25:29] 
                    gpadc_scan_neg_5:  u5, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x40010120));
                
                
                
                /// adc converation sequence 4
                pub const gpadc_reg_scn_neg2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:4] 
                    gpadc_scan_neg_6:  u5, 
                    
                    /// [5:9] 
                    gpadc_scan_neg_7:  u5, 
                    
                    /// [10:14] 
                    gpadc_scan_neg_8:  u5, 
                    
                    /// [15:19] 
                    gpadc_scan_neg_9:  u5, 
                    
                    /// [20:24] 
                    gpadc_scan_neg_10:  u5, 
                    
                    /// [25:29] 
                    gpadc_scan_neg_11:  u5, 
                    
                    /// [30:31] 
                    res0:  u2, 
                    
                }), @ptrFromInt(0x40010124));
                
                
                
                /// gpadc_reg_status.
                pub const gpadc_reg_status = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpadc_data_rdy:  u1, 
                    
                    /// [1:15] 
                    res0:  u15, 
                    
                    /// [16:31] 
                    gpadc_reserved:  u16, 
                    
                }), @ptrFromInt(0x40010128));
                
                
                
                /// gpadc_reg_isr.
                pub const gpadc_reg_isr = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:0] 
                    gpadc_neg_satur:  u1, 
                    
                    /// [1:1] 
                    gpadc_pos_satur:  u1, 
                    
                    /// [2:3] 
                    res0:  u2, 
                    
                    /// [4:4] 
                    gpadc_neg_satur_clr:  u1, 
                    
                    /// [5:5] 
                    gpadc_pos_satur_clr:  u1, 
                    
                    /// [6:7] 
                    res1:  u2, 
                    
                    /// [8:8] 
                    gpadc_neg_satur_mask:  u1, 
                    
                    /// [9:9] 
                    gpadc_pos_satur_mask:  u1, 
                    
                    /// [10:31] 
                    res2:  u22, 
                    
                }), @ptrFromInt(0x4001012c));
                
                
                
                /// gpadc_reg_result.
                pub const gpadc_reg_result = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:25] 
                    gpadc_data_out:  u26, 
                    
                    /// [26:31] 
                    res0:  u6, 
                    
                }), @ptrFromInt(0x40010130));
                
                
                
                /// gpadc_reg_raw_result.
                pub const gpadc_reg_raw_result = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:11] 
                    gpadc_raw_data:  u12, 
                    
                    /// [12:31] 
                    res0:  u20, 
                    
                }), @ptrFromInt(0x40010134));
                
                
                
                /// gpadc_reg_define.
                pub const gpadc_reg_define = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:15] 
                    gpadc_os_cal_data:  u16, 
                    
                    /// [16:31] 
                    res0:  u16, 
                    
                }), @ptrFromInt(0x40010138));
                
                
                
                /// hbncore_resv0.
                pub const hbncore_resv0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    hbncore_resv0_data:  u32, 
                    
                }), @ptrFromInt(0x4001013c));
                
                
                
                /// hbncore_resv1.
                pub const hbncore_resv1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                    
                    /// [0:31] 
                    hbncore_resv1_data:  u32, 
                    
                }), @ptrFromInt(0x40010140));
                
                
            };
            
        };
    };
};