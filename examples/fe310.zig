const mmio = @import("./mmio.zig");

pub const devices = struct {
    /// 
    pub const FE310 = struct {
        pub const vendor = "SiFive";
        pub const series = "";
        pub const width = 32;
        pub const peripherals = struct {
        
            /// Coreplex Local Interrupts
            pub const CLINT = struct {
            
                
                /// Hart 0 software interrupt register
                pub const msip = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x2000000));
                
            
                
                /// Hart 0 time comparator register
                pub const mtimecmp = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x2004000));
                
            
                
                /// Hart 0 time comparator register
                pub const mtimecmph = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x2004004));
                
            
                
                /// Timer register
                pub const mtime = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x200bff8));
                
            
                
                /// Timer register
                pub const mtimeh = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x200bffc));
                
            
            };
        
            /// Platform Level Interrupt Control
            pub const PLIC = struct {
            
                
                /// Interrupt Priority Register
                pub const priority0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000000));
                
            
                
                /// Interrupt Priority Register
                pub const priority1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000004));
                
            
                
                /// Interrupt Priority Register
                pub const priority2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000008));
                
            
                
                /// Interrupt Priority Register
                pub const priority3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00000c));
                
            
                
                /// Interrupt Priority Register
                pub const priority4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000010));
                
            
                
                /// Interrupt Priority Register
                pub const priority5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000014));
                
            
                
                /// Interrupt Priority Register
                pub const priority6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000018));
                
            
                
                /// Interrupt Priority Register
                pub const priority7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00001c));
                
            
                
                /// Interrupt Priority Register
                pub const priority8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000020));
                
            
                
                /// Interrupt Priority Register
                pub const priority9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000024));
                
            
                
                /// Interrupt Priority Register
                pub const priority10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000028));
                
            
                
                /// Interrupt Priority Register
                pub const priority11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00002c));
                
            
                
                /// Interrupt Priority Register
                pub const priority12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000030));
                
            
                
                /// Interrupt Priority Register
                pub const priority13 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000034));
                
            
                
                /// Interrupt Priority Register
                pub const priority14 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000038));
                
            
                
                /// Interrupt Priority Register
                pub const priority15 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00003c));
                
            
                
                /// Interrupt Priority Register
                pub const priority16 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000040));
                
            
                
                /// Interrupt Priority Register
                pub const priority17 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000044));
                
            
                
                /// Interrupt Priority Register
                pub const priority18 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000048));
                
            
                
                /// Interrupt Priority Register
                pub const priority19 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00004c));
                
            
                
                /// Interrupt Priority Register
                pub const priority20 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000050));
                
            
                
                /// Interrupt Priority Register
                pub const priority21 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000054));
                
            
                
                /// Interrupt Priority Register
                pub const priority22 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000058));
                
            
                
                /// Interrupt Priority Register
                pub const priority23 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00005c));
                
            
                
                /// Interrupt Priority Register
                pub const priority24 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000060));
                
            
                
                /// Interrupt Priority Register
                pub const priority25 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000064));
                
            
                
                /// Interrupt Priority Register
                pub const priority26 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000068));
                
            
                
                /// Interrupt Priority Register
                pub const priority27 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00006c));
                
            
                
                /// Interrupt Priority Register
                pub const priority28 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000070));
                
            
                
                /// Interrupt Priority Register
                pub const priority29 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000074));
                
            
                
                /// Interrupt Priority Register
                pub const priority30 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000078));
                
            
                
                /// Interrupt Priority Register
                pub const priority31 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00007c));
                
            
                
                /// Interrupt Priority Register
                pub const priority32 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000080));
                
            
                
                /// Interrupt Priority Register
                pub const priority33 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000084));
                
            
                
                /// Interrupt Priority Register
                pub const priority34 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000088));
                
            
                
                /// Interrupt Priority Register
                pub const priority35 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00008c));
                
            
                
                /// Interrupt Priority Register
                pub const priority36 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000090));
                
            
                
                /// Interrupt Priority Register
                pub const priority37 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000094));
                
            
                
                /// Interrupt Priority Register
                pub const priority38 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc000098));
                
            
                
                /// Interrupt Priority Register
                pub const priority39 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc00009c));
                
            
                
                /// Interrupt Priority Register
                pub const priority40 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000a0));
                
            
                
                /// Interrupt Priority Register
                pub const priority41 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000a4));
                
            
                
                /// Interrupt Priority Register
                pub const priority42 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000a8));
                
            
                
                /// Interrupt Priority Register
                pub const priority43 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000ac));
                
            
                
                /// Interrupt Priority Register
                pub const priority44 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000b0));
                
            
                
                /// Interrupt Priority Register
                pub const priority45 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000b4));
                
            
                
                /// Interrupt Priority Register
                pub const priority46 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000b8));
                
            
                
                /// Interrupt Priority Register
                pub const priority47 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000bc));
                
            
                
                /// Interrupt Priority Register
                pub const priority48 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000c0));
                
            
                
                /// Interrupt Priority Register
                pub const priority49 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000c4));
                
            
                
                /// Interrupt Priority Register
                pub const priority50 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000c8));
                
            
                
                /// Interrupt Priority Register
                pub const priority51 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc0000cc));
                
            
                
                /// Interrupt Priority Register
                pub const priority = .{ priority0, priority1, priority2, priority3, priority4, priority5, priority6, priority7, priority8, priority9, priority10, priority11, priority12, priority13, priority14, priority15, priority16, priority17, priority18, priority19, priority20, priority21, priority22, priority23, priority24, priority25, priority26, priority27, priority28, priority29, priority30, priority31, priority32, priority33, priority34, priority35, priority36, priority37, priority38, priority39, priority40, priority41, priority42, priority43, priority44, priority45, priority46, priority47, priority48, priority49, priority50, priority51 };
                
            
                
                /// Interrupt Pending Register
                pub const pending0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc001000));
                
            
                
                /// Interrupt Pending Register
                pub const pending1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc001004));
                
            
                
                /// Interrupt Pending Register
                pub const pending = .{ pending0, pending1 };
                
            
                
                /// Interrupt Enable Register
                pub const enable0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc002000));
                
            
                
                /// Interrupt Enable Register
                pub const enable1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc002004));
                
            
                
                /// Interrupt Enable Register
                pub const enable = .{ enable0, enable1 };
                
            
                
                /// Priority Threshold Register
                pub const threshold = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:2] 
                    priority:  enum(u3) {
                    
                        Never = 0,
                    
                        P1 = 1,
                    
                        P2 = 2,
                    
                        P3 = 3,
                    
                        P4 = 4,
                    
                        P5 = 5,
                    
                        P6 = 6,
                    
                        P7 = 7,
                    
                    } ,  
                
                    /// [3:31] 
                    res0:  u29, 
                
                }), @ptrFromInt(0xc200000));
                
            
                
                /// Claim/Complete Register
                pub const claim = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0xc200004));
                
            
            };
        
            /// Watchdog
            pub const WDOG = struct {
            
                
                /// Watchdog Configuration Register
                pub const wdogcfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    scale:  u4, 
                
                    /// [4:7] 
                    res0:  u4, 
                
                    /// [8:8] 
                    rsten:  u1, 
                
                    /// [9:9] 
                    zerocmp:  u1, 
                
                    /// [10:11] 
                    res1:  u2, 
                
                    /// [12:12] 
                    enalways:  u1, 
                
                    /// [13:13] 
                    encoreawake:  u1, 
                
                    /// [14:27] 
                    res2:  u14, 
                
                    /// [28:28] 
                    cmpip:  u1, 
                
                    /// [29:31] 
                    res3:  u3, 
                
                }), @ptrFromInt(0x10000000));
                
            
                
                /// Watchdog Counter Register
                pub const wdogcount = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000008));
                
            
                
                /// Watchdog Scaled Counter Register
                pub const wdogs = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000010));
                
            
                
                /// Watchdog Feed Register
                pub const wdogfeed = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000018));
                
            
                
                /// Watchdog Key Register
                pub const wdogkey = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x1000001c));
                
            
                
                /// Watchdog Compare Register
                pub const wdogcmp = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:15] 
                    value:  u16, 
                
                    /// [16:31] 
                    res0:  u16, 
                
                }), @ptrFromInt(0x10000020));
                
            
            };
        
            /// Watchdog
            pub const RTC = struct {
            
                
                /// RTC Configuration Register
                pub const rtccfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    scale:  u4, 
                
                    /// [4:11] 
                    res0:  u8, 
                
                    /// [12:12] 
                    enalways:  u1, 
                
                    /// [13:27] 
                    res1:  u15, 
                
                    /// [28:28] 
                    cmpip:  u1, 
                
                    /// [29:31] 
                    res2:  u3, 
                
                }), @ptrFromInt(0x10000040));
                
            
                
                /// RTC Counter Low Register
                pub const rtclo = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000048));
                
            
                
                /// RTC Counter High Register
                pub const rtchi = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:15] 
                    value:  u16, 
                
                    /// [16:31] 
                    res0:  u16, 
                
                }), @ptrFromInt(0x1000004c));
                
            
                
                /// RTC Scaled Counter Register
                pub const rtcs = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000050));
                
            
                
                /// RTC Compare Register
                pub const rtccmp = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000060));
                
            
            };
        
            /// Always-On Clock Configuration
            pub const AONCLK = struct {
            
                
                /// AON Clock Configuration Register
                pub const lfrosccfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:5] 
                    div:  u6, 
                
                    /// [6:15] 
                    res0:  u10, 
                
                    /// [16:20] 
                    trim:  u5, 
                
                    /// [21:29] 
                    res1:  u9, 
                
                    /// [30:30] 
                    enable:  u1, 
                
                    /// [31:31] 
                    ready:  u1, 
                
                }), @ptrFromInt(0x10000070));
                
            
            };
        
            /// Backup Registers
            pub const BACKUP = struct {
            
                
                /// Backup Register
                pub const backup0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000080));
                
            
                
                /// Backup Register
                pub const backup1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000084));
                
            
                
                /// Backup Register
                pub const backup2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000088));
                
            
                
                /// Backup Register
                pub const backup3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x1000008c));
                
            
                
                /// Backup Register
                pub const backup4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000090));
                
            
                
                /// Backup Register
                pub const backup5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000094));
                
            
                
                /// Backup Register
                pub const backup6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10000098));
                
            
                
                /// Backup Register
                pub const backup7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x1000009c));
                
            
                
                /// Backup Register
                pub const backup8 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000a0));
                
            
                
                /// Backup Register
                pub const backup9 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000a4));
                
            
                
                /// Backup Register
                pub const backup10 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000a8));
                
            
                
                /// Backup Register
                pub const backup11 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000ac));
                
            
                
                /// Backup Register
                pub const backup12 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000b0));
                
            
                
                /// Backup Register
                pub const backup13 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000b4));
                
            
                
                /// Backup Register
                pub const backup14 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000b8));
                
            
                
                /// Backup Register
                pub const backup15 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x100000bc));
                
            
                
                /// Backup Register
                pub const backup = .{ backup0, backup1, backup2, backup3, backup4, backup5, backup6, backup7, backup8, backup9, backup10, backup11, backup12, backup13, backup14, backup15 };
                
            
            };
        
            /// PMU
            pub const PMU = struct {
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000100));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000104));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000108));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x1000010c));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000110));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000114));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000118));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x1000011c));
                
            
                
                /// PMU Wake Program Memory
                pub const pmuwakepm = .{ pmuwakepm0, pmuwakepm1, pmuwakepm2, pmuwakepm3, pmuwakepm4, pmuwakepm5, pmuwakepm6, pmuwakepm7 };
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000120));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000124));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000128));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x1000012c));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm4 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000130));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm5 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000134));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm6 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000138));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm7 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    delay:  u4, 
                
                    /// [4:4] 
                    pmu_out_0_en:  u1, 
                
                    /// [5:5] 
                    pmu_out_1_en:  u1, 
                
                    /// [6:6] 
                    res0:  u1, 
                
                    /// [7:7] 
                    corerst:  u1, 
                
                    /// [8:8] 
                    hfclkrst:  u1, 
                
                    /// [9:9] 
                    isolate:  u1, 
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x1000013c));
                
            
                
                /// PMU Sleep Program Memory
                pub const pmusleeppm = .{ pmusleeppm0, pmusleeppm1, pmusleeppm2, pmusleeppm3, pmusleeppm4, pmusleeppm5, pmusleeppm6, pmusleeppm7 };
                
            
                
                /// PMU Interrupt Enable Register
                pub const pmuie = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    res0:  u1, 
                
                    /// [1:1] 
                    rtc:  u1, 
                
                    /// [2:2] 
                    dwakeup:  u1, 
                
                    /// [3:3] 
                    awakeup:  u1, 
                
                    /// [4:31] 
                    res1:  u28, 
                
                }), @ptrFromInt(0x10000140));
                
            
                
                /// PMU Cause Register
                pub const pmucause = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:1] 
                    wakeupcause:  enum(u2) {
                    
                        Reset = 0,
                    
                        RTC = 1,
                    
                        Digital = 2,
                    
                    } ,  
                
                    /// [2:7] 
                    res0:  u6, 
                
                    /// [8:9] 
                    resetcause:  enum(u2) {
                    
                        PowerOn = 0,
                    
                        External = 1,
                    
                        Watchdog = 2,
                    
                    } ,  
                
                    /// [10:31] 
                    res1:  u22, 
                
                }), @ptrFromInt(0x10000144));
                
            
                
                /// PMU Sleep Register
                pub const pmusleep = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    sleep:  u1, 
                
                    /// [1:31] 
                    res0:  u31, 
                
                }), @ptrFromInt(0x10000148));
                
            
                
                /// PMU Key Register
                pub const pmukey = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x1000014c));
                
            
            };
        
            /// Power Reset Clock Interrupts
            pub const PRCI = struct {
            
                
                /// Clock Configuration Register
                pub const hfrosccfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:5] 
                    div:  u6, 
                
                    /// [6:15] 
                    res0:  u10, 
                
                    /// [16:20] 
                    trim:  u5, 
                
                    /// [21:29] 
                    res1:  u9, 
                
                    /// [30:30] 
                    enable:  u1, 
                
                    /// [31:31] 
                    ready:  u1, 
                
                }), @ptrFromInt(0x10008000));
                
            
                
                /// Clock Configuration Register
                pub const hfxosccfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:29] 
                    res0:  u30, 
                
                    /// [30:30] 
                    enable:  u1, 
                
                    /// [31:31] 
                    ready:  u1, 
                
                }), @ptrFromInt(0x10008004));
                
            
                
                /// PLL Configuration Register
                pub const pllcfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:2] 
                    pllr:  enum(u3) {
                    
                        R1 = 0,
                    
                        R2 = 1,
                    
                        R3 = 2,
                    
                        R4 = 3,
                    
                    } ,  
                
                    /// [3:3] 
                    res0:  u1, 
                
                    /// [4:9] 
                    pllf:  u6, 
                
                    /// [10:11] 
                    pllq:  enum(u2) {
                    
                        Q2 = 1,
                    
                        Q4 = 2,
                    
                        Q8 = 3,
                    
                    } ,  
                
                    /// [12:15] 
                    res1:  u4, 
                
                    /// [16:16] 
                    sel:  u1, 
                
                    /// [17:17] 
                    refsel:  u1, 
                
                    /// [18:18] 
                    bypass:  u1, 
                
                    /// [19:30] 
                    res2:  u12, 
                
                    /// [31:31] 
                    lock:  u1, 
                
                }), @ptrFromInt(0x10008008));
                
            
                
                /// PLL Divider Register
                pub const plloutdiv = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:5] 
                    div:  u6, 
                
                    /// [6:7] 
                    res0:  u2, 
                
                    /// [8:8] 
                    divby1:  u1, 
                
                    /// [9:31] 
                    res1:  u23, 
                
                }), @ptrFromInt(0x1000800c));
                
            
                
                /// Clock Configuration Register
                pub const coreclkcfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10008010));
                
            
            };
        
            /// One Time Programmable Memory
            pub const OTP = struct {
            
                
                /// Programmed-I/O lock register
                pub const lock = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010000));
                
            
                
                /// OTP device clock signal
                pub const clock = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010004));
                
            
                
                /// OTP device output-enable signal
                pub const output_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010008));
                
            
                
                /// OTP device chip-select signal
                pub const select = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x1001000c));
                
            
                
                /// OTP device write-enable signal
                pub const write_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010010));
                
            
                
                /// OTP device mode register
                pub const mode = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010014));
                
            
                
                /// OTP read-voltage regulator control
                pub const mrr = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010018));
                
            
                
                /// OTP write-voltage charge pump control
                pub const mpp = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x1001001c));
                
            
                
                /// OTP read-voltage enable
                pub const vrren = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010020));
                
            
                
                /// OTP write-voltage enable
                pub const vppen = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010024));
                
            
                
                /// OTP device address
                pub const addr = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010028));
                
            
                
                /// OTP device data input
                pub const data_in = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x1001002c));
                
            
                
                /// OTP device data output
                pub const data_out = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010030));
                
            
                
                /// OTP read sequencer control
                pub const rsctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10010034));
                
            
            };
        
            /// General Purpose Input Output
            pub const GPIO0 = struct {
            
                
                /// Pin value.
                pub const input_val = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012000));
                
            
                
                /// Pin Input Enable Register
                pub const input_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012004));
                
            
                
                /// Pin Output Enable Register
                pub const output_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012008));
                
            
                
                /// Output Port Value Register
                pub const output_val = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x1001200c));
                
            
                
                /// Internal Pull-Up Enable Register
                pub const pue = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012010));
                
            
                
                /// Pin Drive Strength Register
                pub const ds = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012014));
                
            
                
                /// Rise Interrupt Enable Register
                pub const rise_ie = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012018));
                
            
                
                /// Rise Interrupt Pending Register
                pub const rise_ip = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x1001201c));
                
            
                
                /// Fall Interrupt Enable Register
                pub const fall_ie = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012020));
                
            
                
                /// Fall Interrupt Pending Register
                pub const fall_ip = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012024));
                
            
                
                /// High Interrupt Enable Register
                pub const high_ie = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012028));
                
            
                
                /// High Interrupt Pending Register
                pub const high_ip = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x1001202c));
                
            
                
                /// Low Interrupt Enable Register
                pub const low_ie = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012030));
                
            
                
                /// Low Interrupt Pending Register
                pub const low_ip = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012034));
                
            
                
                /// HW I/O Function Enable Register
                pub const iof_en = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012038));
                
            
                
                /// HW I/O Function Select Register
                pub const iof_sel = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM0_0 = 1,
                    
                    } ,  
                
                    /// [1:1] 
                    pin1:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM0_1 = 1,
                    
                    } ,  
                
                    /// [2:2] 
                    pin2:  enum(u1) {
                    
                        QSPI1_SS0 = 0,
                    
                        PWM0_2 = 1,
                    
                    } ,  
                
                    /// [3:3] 
                    pin3:  enum(u1) {
                    
                        QSPI1_SD0 = 0,
                    
                        PWM0_3 = 1,
                    
                    } ,  
                
                    /// [4:4] 
                    pin4:  enum(u1) {
                    
                        QSPI1_SD1 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [5:5] 
                    pin5:  enum(u1) {
                    
                        QSPI1_SCK = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [6:6] 
                    pin6:  enum(u1) {
                    
                        QSPI1_SD2 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [7:7] 
                    pin7:  enum(u1) {
                    
                        QSPI1_SD3 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [8:8] 
                    pin8:  enum(u1) {
                    
                        QSPI1_SS1 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [9:9] 
                    pin9:  enum(u1) {
                    
                        QSPI1_SS2 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [10:10] 
                    pin10:  enum(u1) {
                    
                        QSPI1_SS3 = 0,
                    
                        PWM2_0 = 1,
                    
                    } ,  
                
                    /// [11:11] 
                    pin11:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM2_1 = 1,
                    
                    } ,  
                
                    /// [12:12] 
                    pin12:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM2_2 = 1,
                    
                    } ,  
                
                    /// [13:13] 
                    pin13:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM2_3 = 1,
                    
                    } ,  
                
                    /// [14:14] 
                    pin14:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [15:15] 
                    pin15:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [16:16] 
                    pin16:  enum(u1) {
                    
                        UART0_RX = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [17:17] 
                    pin17:  enum(u1) {
                    
                        UART0_TX = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [18:18] 
                    pin18:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [19:19] 
                    pin19:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM1_1 = 1,
                    
                    } ,  
                
                    /// [20:20] 
                    pin20:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM1_0 = 1,
                    
                    } ,  
                
                    /// [21:21] 
                    pin21:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM1_2 = 1,
                    
                    } ,  
                
                    /// [22:22] 
                    pin22:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        PWM1_3 = 1,
                    
                    } ,  
                
                    /// [23:23] 
                    pin23:  enum(u1) {
                    
                        IOF0 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [24:24] 
                    pin24:  enum(u1) {
                    
                        UART1_RX = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [25:25] 
                    pin25:  enum(u1) {
                    
                        UART1_TX = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [26:26] 
                    pin26:  enum(u1) {
                    
                        QSPI2_SS = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [27:27] 
                    pin27:  enum(u1) {
                    
                        QSPI2_SD0 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [28:28] 
                    pin28:  enum(u1) {
                    
                        QSPI2_SD1 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [29:29] 
                    pin29:  enum(u1) {
                    
                        QSPI2_SCK = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [30:30] 
                    pin30:  enum(u1) {
                    
                        QSPI2_SD2 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                    /// [31:31] 
                    pin31:  enum(u1) {
                    
                        QSPI2_SD3 = 0,
                    
                        IOF1 = 1,
                    
                    } ,  
                
                }), @ptrFromInt(0x1001203c));
                
            
                
                /// Output XOR (invert) Register
                pub const out_xor = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    pin0:  u1, 
                
                    /// [1:1] 
                    pin1:  u1, 
                
                    /// [2:2] 
                    pin2:  u1, 
                
                    /// [3:3] 
                    pin3:  u1, 
                
                    /// [4:4] 
                    pin4:  u1, 
                
                    /// [5:5] 
                    pin5:  u1, 
                
                    /// [6:6] 
                    pin6:  u1, 
                
                    /// [7:7] 
                    pin7:  u1, 
                
                    /// [8:8] 
                    pin8:  u1, 
                
                    /// [9:9] 
                    pin9:  u1, 
                
                    /// [10:10] 
                    pin10:  u1, 
                
                    /// [11:11] 
                    pin11:  u1, 
                
                    /// [12:12] 
                    pin12:  u1, 
                
                    /// [13:13] 
                    pin13:  u1, 
                
                    /// [14:14] 
                    pin14:  u1, 
                
                    /// [15:15] 
                    pin15:  u1, 
                
                    /// [16:16] 
                    pin16:  u1, 
                
                    /// [17:17] 
                    pin17:  u1, 
                
                    /// [18:18] 
                    pin18:  u1, 
                
                    /// [19:19] 
                    pin19:  u1, 
                
                    /// [20:20] 
                    pin20:  u1, 
                
                    /// [21:21] 
                    pin21:  u1, 
                
                    /// [22:22] 
                    pin22:  u1, 
                
                    /// [23:23] 
                    pin23:  u1, 
                
                    /// [24:24] 
                    pin24:  u1, 
                
                    /// [25:25] 
                    pin25:  u1, 
                
                    /// [26:26] 
                    pin26:  u1, 
                
                    /// [27:27] 
                    pin27:  u1, 
                
                    /// [28:28] 
                    pin28:  u1, 
                
                    /// [29:29] 
                    pin29:  u1, 
                
                    /// [30:30] 
                    pin30:  u1, 
                
                    /// [31:31] 
                    pin31:  u1, 
                
                }), @ptrFromInt(0x10012040));
                
            
            };
        
            /// Universal Asynchronous Receiver Transmitter
            pub const UART0 = struct {
            
                
                /// Transmit Data Register
                pub const txdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    data:  u8, 
                
                    /// [8:30] 
                    res0:  u23, 
                
                    /// [31:31] 
                    full:  u1, 
                
                }), @ptrFromInt(0x10013000));
                
            
                
                /// Receive Data Register
                pub const rxdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    data:  u8, 
                
                    /// [8:30] 
                    res0:  u23, 
                
                    /// [31:31] 
                    empty:  u1, 
                
                }), @ptrFromInt(0x10013004));
                
            
                
                /// Transmit Control Register
                pub const txctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    enable:  u1, 
                
                    /// [1:1] 
                    nstop:  u1, 
                
                    /// [2:15] 
                    res0:  u14, 
                
                    /// [16:18] 
                    counter:  u3, 
                
                    /// [19:31] 
                    res1:  u13, 
                
                }), @ptrFromInt(0x10013008));
                
            
                
                /// Receive Control Register
                pub const rxctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    enable:  u1, 
                
                    /// [1:15] 
                    res0:  u15, 
                
                    /// [16:18] 
                    counter:  u3, 
                
                    /// [19:31] 
                    res1:  u13, 
                
                }), @ptrFromInt(0x1001300c));
                
            
                
                /// Interrupt Enable Register
                pub const ie = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    txwm:  u1, 
                
                    /// [1:1] 
                    rxwm:  u1, 
                
                    /// [2:31] 
                    res0:  u30, 
                
                }), @ptrFromInt(0x10013010));
                
            
                
                /// Interrupt Pending Register
                pub const ip = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    txwm:  u1, 
                
                    /// [1:1] 
                    rxwm:  u1, 
                
                    /// [2:31] 
                    res0:  u30, 
                
                }), @ptrFromInt(0x10013014));
                
            
                
                /// Baud Rate Divisor Register
                pub const div = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:15] 
                    value:  u16, 
                
                    /// [16:31] 
                    res0:  u16, 
                
                }), @ptrFromInt(0x10013018));
                
            
            };
        
            /// Quad Serial Peripheral Interface
            pub const QSPI0 = struct {
            
                
                /// Serial Clock Divisor Register
                pub const div = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:11] 
                    value:  u12, 
                
                    /// [12:31] 
                    res0:  u20, 
                
                }), @ptrFromInt(0x10014000));
                
            
                
                /// Serial Clock Mode Register
                pub const mode = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    phase:  u1, 
                
                    /// [1:1] 
                    polarity:  u1, 
                
                    /// [2:31] 
                    res0:  u30, 
                
                }), @ptrFromInt(0x10014004));
                
            
                
                /// Chip Select ID Register
                pub const csid = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10014010));
                
            
                
                /// Chip Select Default Register
                pub const csdef = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10014014));
                
            
                
                /// Chip Select Mode Register
                pub const csmode = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10014018));
                
            
                
                /// Delay Control 0 Register
                pub const delay0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    cssck:  u8, 
                
                    /// [8:15] 
                    res0:  u8, 
                
                    /// [16:23] 
                    sckcs:  u8, 
                
                    /// [24:31] 
                    res1:  u8, 
                
                }), @ptrFromInt(0x10014028));
                
            
                
                /// Delay Control 1 Register
                pub const delay1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    intercs:  u8, 
                
                    /// [8:15] 
                    res0:  u8, 
                
                    /// [16:23] 
                    interxfr:  u8, 
                
                    /// [24:31] 
                    res1:  u8, 
                
                }), @ptrFromInt(0x1001402c));
                
            
                
                /// Frame Format Register
                pub const fmt = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:1] 
                    protocol:  enum(u2) {
                    
                        Single = 0,
                    
                        Dual = 1,
                    
                        Quad = 2,
                    
                    } ,  
                
                    /// [2:2] 
                    endian:  enum(u1) {
                    
                        Big = 0,
                    
                        Little = 1,
                    
                    } ,  
                
                    /// [3:3] 
                    direction:  enum(u1) {
                    
                        Rx = 0,
                    
                        Tx = 1,
                    
                    } ,  
                
                    /// [4:15] 
                    res0:  u12, 
                
                    /// [16:19] 
                    length:  u4, 
                
                    /// [20:31] 
                    res1:  u12, 
                
                }), @ptrFromInt(0x10014040));
                
            
                
                /// Transmit Data Register
                pub const txdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    data:  u8, 
                
                    /// [8:30] 
                    res0:  u23, 
                
                    /// [31:31] 
                    full:  u1, 
                
                }), @ptrFromInt(0x10014048));
                
            
                
                /// Receive Data Register
                pub const rxdata = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    data:  u8, 
                
                    /// [8:30] 
                    res0:  u23, 
                
                    /// [31:31] 
                    empty:  u1, 
                
                }), @ptrFromInt(0x1001404c));
                
            
                
                /// Transmit Watermark Register
                pub const txmark = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:2] 
                    value:  u3, 
                
                    /// [3:31] 
                    res0:  u29, 
                
                }), @ptrFromInt(0x10014050));
                
            
                
                /// Receive Watermark Register
                pub const rxmark = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:2] 
                    value:  u3, 
                
                    /// [3:31] 
                    res0:  u29, 
                
                }), @ptrFromInt(0x10014054));
                
            
                
                /// SPI Flash Interface Control Register
                pub const fctrl = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    enable:  u1, 
                
                    /// [1:31] 
                    res0:  u31, 
                
                }), @ptrFromInt(0x10014060));
                
            
                
                /// SPI Flash Instruction Format Register
                pub const ffmt = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] Number of dummy cycles
                    pad_cnt:  u1, 
                
                    /// [0:0] Enable sending of command
                    cmd_en:  u1, 
                
                    /// [1:3] Number of address bytes (0 to 4)
                    addr_len:  u3, 
                
                    /// [4:7] 
                    res0:  u4, 
                
                    /// [8:9] Protocol for transmitting command
                    cmd_proto:  enum(u2) {
                    
                        Single = 0,
                    
                        Dual = 1,
                    
                        Quad = 2,
                    
                    } ,  
                
                    /// [10:11] Protocol for transmitting address and padding
                    addr_proto:  enum(u2) {
                    
                        Single = 0,
                    
                        Dual = 1,
                    
                        Quad = 2,
                    
                    } ,  
                
                    /// [12:13] Protocol for receiving data bytes
                    data_proto:  enum(u2) {
                    
                        Single = 0,
                    
                        Dual = 1,
                    
                        Quad = 2,
                    
                    } ,  
                
                    /// [14:15] 
                    res1:  u2, 
                
                    /// [16:23] Value of command byte
                    cmd_code:  u8, 
                
                    /// [24:31] First 8 bits to transmit during dummy cycles
                    pad_code:  u8, 
                
                }), @ptrFromInt(0x10014064));
                
            
                
                /// SPI Interrupt Enable Register
                pub const ie = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    txwm:  u1, 
                
                    /// [1:1] 
                    rxwm:  u1, 
                
                    /// [2:31] 
                    res0:  u30, 
                
                }), @ptrFromInt(0x10014070));
                
            
                
                /// SPI Interrupt Pending Register
                pub const ip = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] 
                    txwm:  u1, 
                
                    /// [1:1] 
                    rxwm:  u1, 
                
                    /// [2:31] 
                    res0:  u30, 
                
                }), @ptrFromInt(0x10014074));
                
            
            };
        
            /// 8-bit timer with 4 cmp
            pub const PWM0 = struct {
            
                
                /// PWM Configuration Register
                pub const cfg = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:3] 
                    scale:  u4, 
                
                    /// [4:7] 
                    res0:  u4, 
                
                    /// [8:8] 
                    sticky:  u1, 
                
                    /// [9:9] 
                    zerocmp:  u1, 
                
                    /// [10:10] 
                    deglitch:  u1, 
                
                    /// [11:11] 
                    res1:  u1, 
                
                    /// [12:12] 
                    enalways:  u1, 
                
                    /// [13:13] 
                    enoneshot:  u1, 
                
                    /// [14:15] 
                    res2:  u2, 
                
                    /// [16:16] 
                    cmp0center:  u1, 
                
                    /// [17:17] 
                    cmp1center:  u1, 
                
                    /// [18:18] 
                    cmp2center:  u1, 
                
                    /// [19:19] 
                    cmp3center:  u1, 
                
                    /// [20:23] 
                    res3:  u4, 
                
                    /// [24:24] 
                    cmp0gang:  u1, 
                
                    /// [25:25] 
                    cmp1gang:  u1, 
                
                    /// [26:36] 
                    cmp2gang:  u11, 
                
                    /// [27:27] 
                    cmp3gang:  u1, 
                
                    /// [28:28] 
                    cmp0ip:  u1, 
                
                    /// [29:29] 
                    cmp1ip:  u1, 
                
                    /// [30:30] 
                    cmp2ip:  u1, 
                
                    /// [31:31] 
                    cmp3ip:  u1, 
                
                }), @ptrFromInt(0x10015000));
                
            
                
                /// Counter Register
                pub const count = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10015008));
                
            
                
                /// Scaled Halfword Counter Register
                pub const pwms = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10015010));
                
            
                
                /// Compare Register
                pub const cmp0 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:15] 
                    value:  u16, 
                
                    /// [16:31] 
                    res0:  u16, 
                
                }), @ptrFromInt(0x10015020));
                
            
                
                /// Compare Register
                pub const cmp1 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:15] 
                    value:  u16, 
                
                    /// [16:31] 
                    res0:  u16, 
                
                }), @ptrFromInt(0x10015024));
                
            
                
                /// Compare Register
                pub const cmp2 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:15] 
                    value:  u16, 
                
                    /// [16:31] 
                    res0:  u16, 
                
                }), @ptrFromInt(0x10015028));
                
            
                
                /// Compare Register
                pub const cmp3 = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:15] 
                    value:  u16, 
                
                    /// [16:31] 
                    res0:  u16, 
                
                }), @ptrFromInt(0x1001502c));
                
            
            };
        
            /// Inter-Integrated Circuit Master Interface (FE310-G002 only)
            pub const I2C0 = struct {
            
                
                /// Clock Prescale register lo-byte
                pub const prer_lo = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    value:  u8, 
                
                    /// [8:31] 
                    res0:  u24, 
                
                }), @ptrFromInt(0x10016000));
                
            
                
                /// Clock Prescale register hi-byte
                pub const prer_hi = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    value:  u8, 
                
                    /// [8:31] 
                    res0:  u24, 
                
                }), @ptrFromInt(0x10016004));
                
            
                
                /// Control register
                pub const ctr = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:5] 
                    res0:  u6, 
                
                    /// [6:6] I2C core interrupt enable bit
                    ien:  u1, 
                
                    /// [7:7] I2C core enable bit
                    en:  u1, 
                
                    /// [8:31] 
                    res1:  u24, 
                
                }), @ptrFromInt(0x10016008));
                
            
                
                /// Transmit register / Receive register
                pub const txr_rxr = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:7] 
                    data:  u8, 
                
                    /// [8:31] 
                    res0:  u24, 
                
                }), @ptrFromInt(0x1001600c));
                
            
                
                /// Command register / Status register
                pub const cr_sr = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:31] 
                    raw:  u32, 
                
                }), @ptrFromInt(0x10016010));
                
            
                
                /// Command register
                pub const cr = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] `
                    iack:  u1, 
                
                    /// [1:2] 
                    res0:  u2, 
                
                    /// [3:3] When a receiver, sent ACK (0) or NACK (1)
                    ack:  enum(u1) {
                    
                        ack = 0,
                    
                        nack = 1,
                    
                    } ,  
                
                    /// [4:4] Write to slave
                    wr:  u1, 
                
                    /// [5:5] Read from slave
                    rd:  u1, 
                
                    /// [6:6] Generate stop condition
                    sto:  u1, 
                
                    /// [7:7] Generate (repeated) start condition
                    sta:  u1, 
                
                    /// [8:31] 
                    res1:  u24, 
                
                }), @ptrFromInt(0x10016010));
                
            
                
                /// Status register
                pub const sr = @as(*volatile mmio.Mmio(packed struct(u32) {
                
                    /// [0:0] Interrupt Flag. This bit is set when an interrupt is pending, whichwill cause a processor interrupt request if the IEN bit is set.
                    @"if":  u1, 
                
                    /// [1:1] Transfer in progress
                    tip:  u1, 
                
                    /// [2:4] 
                    res0:  u3, 
                
                    /// [5:5] Arbitration lost
                    al:  u1, 
                
                    /// [6:6] I2C bus busy
                    busy:  u1, 
                
                    /// [7:7] Received acknowledge from slave.This flag represents acknowledge from the addressed slave.'1' = No acknowledge received'0' = Acknowledge received
                    rx_ack:  u1, 
                
                    /// [8:31] 
                    res1:  u24, 
                
                }), @ptrFromInt(0x10016010));
                
            
            };
        
            /// 
            pub const UART1 = struct {
            
            };
        
            /// 
            pub const QSPI1 = struct {
            
            };
        
            /// 
            pub const PWM1 = struct {
            
            };
        
            /// 
            pub const QSPI2 = struct {
            
            };
        
            /// 
            pub const PWM2 = struct {
            
            };
        
        };
    };
};