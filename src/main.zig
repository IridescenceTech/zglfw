//Zglfw
//Mit License
//
//Copyright (C) 2020 Iridescence Technologies
//
//Permission Is Hereby Granted, Free Of Charge, To Any Person Obtaining A Copy
//Of This Software And Associated Documentation Files (The "Software"), To Deal
//In The Software Without Restriction, Including Without Limitation The Rights
//To Use, Copy, Modify, Merge, Publish, Distribute, Sublicense, And/Or Sell
//Copies Of The Software, And To Permit Persons To Whom The Software Is
//Furnished To Do So, Subject To The Following Conditions:
//
//The Above Copyright Notice And This Permission Notice Shall Be Included In All
//Copies Or Substantial Portions Of The Software.
//
//The Software Is Provided "As Is", Without Warranty Of Any Kind, Express Or
//Implied, Including But Not Limited To The Warranties Of Merchantability,
//Fitness For A Particular Purpose And Noninfringement. In No Event Shall The
//Authors Or Copyright Holders Be Liable For Any Claim, Damages Or Other
//Liability, Whether In An Action Of Contract, Tort Or Otherwise, Arising From,
//Out Of Or In Connection With The Software Or The Use Or Other Dealings In The
//Software.
//

//Glfw
//Copyright (C) 2002-2006 Marcus Geelnard
//
//Copyright (C) 2006-2019 Camilla Löwy
//
//This Software Is Provided 'As-Is', Without Any Express Or Implied
//Warranty. In No Event Will The Authors Be Held Liable For Any Damages
//Arising From The Use Of This Software.
//
//Permission Is Granted To Anyone To Use This Software For Any Purpose,
//Including Commercial Applications, And To Alter It And Redistribute It
//Freely, Subject To The Following Restrictions:
//
//1. The Origin Of This Software Must Not Be Misrepresented; You Must Not
//   Claim That You Wrote The Original Software. If You Use This Software
//   In A Product, An Acknowledgment In The Product Documentation Would
//   Be Appreciated But Is Not Required.
//
//2. Altered Source Versions Must Be Plainly Marked As Such, And Must Not
//   Be Misrepresented As Being The Original Software.
//
//3. This Notice May Not Be Removed Or Altered From Any Source
//   Distribution.

pub const VersionMajor = 3;
pub const VersionMinor = 3;
pub const VersionRevision = 2;

pub const KeyState = enum(c_int){
    Release = 0,
    Press = 1,
    Repeat = 2
};

pub const JoystickHat = enum(c_int){
    Centered   = 0,
    Up         = 1,
    Right      = 2,
    Down       = 4,
    Left       = 8,
    Rightup   = (2 | 1),
    Rightdown = (2 | 4),
    Leftup    = (8  | 1),
    Leftdown  = (8  | 4),
};

pub const Key = enum(c_int){
    Unknown           = -1,
    Space             = 32,
    Apostrophe        = 39,
    Comma             = 44,
    Minus             = 45,
    Period            = 46,
    Slash             = 47,
    Num0              = 48,
    Num1              = 49,
    Num2              = 50,
    Num3              = 51,
    Num4              = 52,
    Num5              = 53,
    Num6              = 54,
    Num7              = 55,
    Num8              = 56,
    Num9              = 57,
    Semicolon         = 59,
    Equal             = 61,
    A                 = 65,
    B                 = 66,
    C                 = 67,
    D                 = 68,
    E                 = 69,
    F                 = 70,
    G                 = 71,
    H                 = 72,
    I                 = 73,
    J                 = 74,
    K                 = 75,
    L                 = 76,
    M                 = 77,
    N                 = 78,
    O                 = 79,
    P                 = 80,
    Q                 = 81,
    R                 = 82,
    S                 = 83,
    T                 = 84,
    U                 = 85,
    V                 = 86,
    W                 = 87,
    X                 = 88,
    Y                 = 89,
    Z                 = 90,
    LeftBracket       = 91,
    Backslash         = 92,
    RightBracket      = 93,
    GraveAccent       = 96,
    World1            = 161,
    World2            = 162,
    Escape            = 256,
    Enter             = 257,
    Tab               = 258,
    Backspace         = 259,
    Insert            = 260,
    Delete            = 261,
    Right             = 262,
    Left              = 263,
    Down              = 264,
    Up                = 265,
    PageUp            = 266,
    PageDown          = 267,
    Home              = 268,
    End               = 269,
    CapsLock          = 280,
    ScrollLock        = 281,
    NumLock           = 282,
    PrintScreen       = 283,
    Pause             = 284,
    F1                = 290,
    F2                = 291,
    F3                = 292,
    F4                = 293,
    F5                = 294,
    F6                = 295,
    F7                = 296,
    F8                = 297,
    F9                = 298,
    F10               = 299,
    F11               = 300,
    F12               = 301,
    F13               = 302,
    F14               = 303,
    F15               = 304,
    F16               = 305,
    F17               = 306,
    F18               = 307,
    F19               = 308,
    F20               = 309,
    F21               = 310,
    F22               = 311,
    F23               = 312,
    F24               = 313,
    F25               = 314,
    Kp0               = 320,
    Kp1               = 321,
    Kp2               = 322,
    Kp3               = 323,
    Kp4               = 324,
    Kp5               = 325,
    Kp6               = 326,
    Kp7               = 327,
    Kp8               = 328,
    Kp9               = 329,
    KpDecimal         = 330,
    KpDivide          = 331,
    KpMultiply        = 332,
    KpSubtract        = 333,
    KpAdd             = 334,
    KpEnter           = 335,
    KpEqual           = 336,
    LeftShift         = 340,
    LeftControl       = 341,
    LeftAlt           = 342,
    LeftSuper         = 343,
    RightShift        = 344,
    RightControl      = 345,
    RightAlt          = 346,
    RightSuper        = 347,
    Menu              = 348,
    Last              = 348,
};

pub const Modifiers = enum(c_int){
    Shift     = 0x0001,
    Control   = 0x0002,
    Alt       = 0x0004,
    Super     = 0x0008,
    CapsLock  = 0x0010,
    NumLock   = 0x0020,
};

pub const Mouse = enum(c_int){
    Button1         = 0,
    Button2         = 1,
    Button3         = 2,
    Button4         = 3,
    Button5         = 4,
    Button6         = 5,
    Button7         = 6,
    Button8         = 7,
    ButtonLast      = 7,
    ButtonLeft      = 0,
    ButtonRight     = 1,
    ButtonMiddle    = 2
};

pub const Joystick = enum(c_int){
    Button1             = 0,
    Button2             = 1,
    Button3             = 2,
    Button4             = 3,
    Button5             = 4,
    Button6             = 5,
    Button7             = 6,
    Button8             = 7,
    Button9             = 8,
    Button10            = 9,
    Button11            = 10,
    Button12            = 11,
    Button13            = 12,
    Button14            = 13,
    Button15            = 14,
    Button16            = 15,
    ButtonLast          = 15,
};

pub const GamepadButton = enum(c_int){
    A               = 0,
    B               = 1,
    X               = 2,
    Y               = 3,
    LeftBumper      = 4,
    RightBumper     = 5,
    Back            = 6,
    Start           = 7,
    Guide           = 8,
    LeftThumb       = 9,
    RightThumb      = 10,
    DpadUp          = 11,
    DpadRight       = 12,
    DpadDown        = 13,
    DpadLeft        = 14,
    Last            = 14,
    Cross           = 0,
    Circle          = 1,
    Square          = 2,
    Triangle        = 3,
};

pub const GamepadAxis = enum(c_int){
    LeftX        = 0,
    LeftY        = 1,
    RightX       = 2,
    RightY       = 3,
    LeftTrigger  = 4,
    RightTrigger = 5,
    Last          = 5
};

pub const GLFWError = error{
    NotInitialized,
    NoCurrentContext,
    InvalidEnum,
    InvalidValue,
    OutOfMemory,
    APIUnavailable,
    VersionUnavailable,
    PlatformError,
    FormatUnavailable,
    NoWindowContext,
    NoError
};

pub const ErrorCode = enum(c_int){
    NotInitialized = 0x00010001,
    NoCurrentContext = 0x00010002,
    InvalidEnum = 0x00010003,
    InvalidValue = 0x00010004,
    OutOfMemory = 0x00010005,
    APIUnavailable = 0x00010006,
    VersionUnavailable = 0x00010007,
    PlatformError = 0x00010008,
    FormatUnavailable = 0x00010009,
    NoWindowContext = 0x0001000A,
    NoError = 0,
};

pub const WindowHint = enum(c_int){
    Focused                  = 0x00020001,
    Iconified                = 0x00020002,
    Resizable                = 0x00020003,
    Visible                  = 0x00020004,
    Decorated                = 0x00020005,
    AutoIconify             = 0x00020006,
    Floating                 = 0x00020007,
    Maximized                = 0x00020008,
    CenterCursor            = 0x00020009,
    TransparentFramebuffer  = 0x0002000a,
    Hovered                  = 0x0002000b,
    FocusOnShow            = 0x0002000c,
    RedBits                 = 0x00021001,
    GreenBits               = 0x00021002,
    BlueBits                = 0x00021003,
    AlphaBits               = 0x00021004,
    DepthBits               = 0x00021005,
    StencilBits             = 0x00021006,
    AccumRedBits           = 0x00021007,
    AccumGreenBits         = 0x00021008,
    AccumBlueBits          = 0x00021009,
    AccumAlphaBits         = 0x0002100a,
    AUXBuffers              = 0x0002100b,
    Stereo                   = 0x0002100c,
    Samples                  = 0x0002100d,
    SRGBCapable             = 0x0002100e,
    RefreshRate             = 0x0002100f,
    Doublebuffer             = 0x00021010,
    ClientAPI               = 0x00022001,
    ContextVersionMajor    = 0x00022002,
    ContextVersionMinor    = 0x00022003,
    ContextRevision         = 0x00022004,
    ContextRobustness       = 0x00022005,
    OpenGLForwardCompat    = 0x00022006,
    OpenGLDebugContext     = 0x00022007,
    OpenGLProfile           = 0x00022008,
    ContextReleaseBehavior = 0x00022009,
    ContextNoError         = 0x0002200a,
    ContextCreationAPI     = 0x0002200b,
    ScaleToMonitor         = 0x0002200c,
    CocoaRetinaFramebuffer = 0x00023001,
    CocoaFrameName         = 0x00023002,
    CocoaGraphicsSwitching = 0x00023003,
    X11ClassName           = 0x00024001,
    X11InstanceName        = 0x00024002,
};

pub const APIAttribute = enum(c_int){
    NoAPI                 =          0,
    OpenGLAPI             = 0x00030001,
    OpenGLESAPI          = 0x00030002,
};

pub const RobustnessAttribute = enum(c_int){
    NoRobustness          =          0,
    NoResetNotification  = 0x00031001,
    LoseContextOnReset  = 0x00031002,
};

pub const GLProfileAttribute = enum(c_int){
    OpenglAnyProfile     =          0,
    OpenglCoreProfile    = 0x00032001,
    OpenglCompatProfile  = 0x00032002,
};

pub const InputMode = enum(c_int){
    Cursor                 = 0x00033001,
    StickyKeys            = 0x00033002,
    StickyMouseButtons   = 0x00033003,
    LockKeyMods          = 0x00033004,
    RawMouseMotion       = 0x00033005,
};

pub const CursorVisibilityAttribute = enum(c_int){
    CursorNormal          = 0x00034001,
    CursorHidden          = 0x00034002,
    CursorDisabled        = 0x00034003,
};

pub const ReleaseBehaviorAttribute = enum(c_int){
    AnyReleaseBehavior   =          0,
    ReleaseBehaviorFlush = 0x00035001,
    ReleaseBehaviorNone  = 0x00035002,
};

pub const ContextAPIAttribute = enum(c_int){      
    NativeContextAPI     = 0x00036001,
    EGLContextAPI        = 0x00036002,
    OSMesaContextAPI     = 0x00036003,
};

pub const DontCare : c_int = -1;

pub const CursorShape = enum(c_int){
    Arrow           = 0x00036001,
    IBeam           = 0x00036002,
    Crosshair       = 0x00036003,
    Hand            = 0x00036004,
    HResize         = 0x00036005,
    VResize         = 0x00036006,  
};

pub const Connection = enum(c_int){
    Connected              = 0x00040001,
    Disconnected           = 0x00040002,
};

pub const InitHint = enum(c_int){
    JoystickHatButtons   = 0x00050001,
    CocoaChdirResources  = 0x00051001,
    CocoaMenubar          = 0x00051002,
};

pub const GLproc = fn () callconv(.C) void;
pub const VKproc = fn () callconv(.C) void;

pub const Monitor = c_long;
pub const Window = c_long;
pub const Cursor = c_long;

pub const ErrorFun = fn(error_code: c_int, description: [*:0]u8) callconv(.C) void;
pub const WindowPosFun = fn(window: *Window, xpos: c_int, ypos: c_int) callconv(.C) void;
pub const WindowSizeFun = fn(window: *Window, width: c_int, height: c_int) callconv(.C) void;
pub const WindowCloseFun = fn(window: *Window) callconv(.C) void;
pub const WindowRefreshFun = fn(window: *Window) callconv(.C) void;
pub const WindowFocusFun = fn(window: *Window, focused: c_int) callconv(.C) void;
pub const WindowIconifyFun = fn(window: *Window, iconified: c_int) callconv(.C) void;
pub const WindowMaximizeFun = fn(window: *Window, iconified: c_int) callconv(.C) void;
pub const FramebufferSizeFun = fn(window: *Window, width: c_int, height: c_int) callconv(.C) void;
pub const WindowContentScaleFun = fn(window: *Window, xscale: f32, yscale: f32) callconv(.C) void;

//Mods is bitfield of modifiers, button is enum of mouse buttons, and action is enum of keystates.
pub const MouseButtonFun = fn(window: *Window, button: c_int, action: c_int, mods: c_int) callconv(.C) void;
pub const CursorPosFun = fn(window: *Window, xpos: f64, ypos: f64) callconv(.C) void;

//Entered is true or false
pub const CursorEnterFun = fn(window: *Window, entered: c_int) callconv(.C) void;
pub const ScrollFun = fn(window: *Window, xoffset: f64, yoffset: f64) callconv(.C) void;

//Mods is bitfield of modifiers, keys is enum of keys, and action is enum of keystates.
pub const KeyFun = fn (window: *Window, key: c_int, scancode: c_int, action: c_int, mods: c_int) callconv(.C) void;
pub const CharFun = fn (window: *Window,codepoint: c_uint) callconv(.C) void;

//Mods refers to the bitfield of Modifiers
pub const CharmodsFun = fn (window: *Window,codepoint: c_uint, mods: c_int) callconv(.C) void;
pub const DropFun = fn (window: *Window, path_count: c_int, paths: [*:0]const u8) callconv(.C) void;

//Event is one of two states defined by the enum 'Connection'
pub const MonitorFun = fn (monitor : *Monitor, event : c_int) callconv(.C) void;

//Event is one of two states defined by the enum 'Connection'
pub const JoystickFun = fn(id: c_int, event: c_int) callconv(.C) void;

pub const Vidmode = extern struct{
    width : i32,
    height : i32,
    redBits : i32,
    greenBits : i32,
    blueBits : i32,
    refreshRate : i32,
};

pub const Gammaramp = extern struct{
    red : ?[*]u16,
    green : ?[*]u16,
    blue : ?[*]u16,
    size : u32
};

pub const Image = extern struct{
    width : i32,
    height : i32,
    pixels : ?[*]u8
};

pub const GamepadState = extern struct{
    buttons : [15]u8,
    axes : [6]f32
};

extern fn glfwInit() c_int;

pub fn init() !void{
    if(glfwInit() != 1){
        return GLFWError.PlatformError;
    }
}

extern fn glfwTerminate() void;
extern fn glfwGetError(description: ?[*:0]const u8) c_int;

fn errorCheck() !void{
    var code : c_int = glfwGetError(null);
    var err = switch(@intToEnum(ErrorCode, code)){
        .NotInitialized => GLFWError.NotInitialized,
        .NoCurrentContext => GLFWError.NoCurrentContext,
        .InvalidEnum => GLFWError.InvalidEnum,
        .InvalidValue => GLFWError.InvalidValue,
        .OutOfMemory => GLFWError.OutOfMemory,
        .APIUnavailable => GLFWError.APIUnavailable,
        .VersionUnavailable => GLFWError.VersionUnavailable,
        .PlatformError => GLFWError.PlatformError,
        .FormatUnavailable => GLFWError.FormatUnavailable,
        .NoWindowContext => GLFWError.NoWindowContext,
        .NoError => GLFWError.NoError
    };
    return err;
}

fn errorCheck2() void{
    errorCheck() catch |err|{
        if(err != GLFWError.NoError){
            std.debug.warn("error: {s}\n", .{@errorName(err)});
        }
    };
}

pub fn terminate() void{
    glfwTerminate();
    errorCheck2();
}

extern fn glfwInitHint(hint: c_int, value: c_int) void;
pub fn initHint(hint: InitHint, value: bool) void{
    glfwInitHint(@enumToInt(hint), @boolToInt(value));
    errorCheck2();
}

extern fn glfwGetVersion(major: *c_int, minor: *c_int, rev: *c_int) void;
extern fn glfwGetVersionString() [*:0]const u8;
pub const getVersion = glfwGetVersion;
pub const getVersionString = glfwGetVersionString;

extern fn glfwSetErrorCallback(callback: ErrorFun) ErrorFun;
pub const setErrorCallback = glfwSetErrorCallback;

extern fn glfwGetMonitors(count: *c_int) ?[*]*Monitor;
pub fn getMonitors(count: *c_int) ?[*]*Monitor{
    var res = glfwGetMonitors(count);
    errorCheck2();
    return res;
}

extern fn glfwGetPrimaryMonitor() *Monitor;
pub fn getPrimaryMonitor() *Monitor{
    var res = glfwGetPrimaryMonitor();
    errorCheck2();
    return res;
}

extern fn glfwGetMonitorPos(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int) void;
pub fn getMonitorPos(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int) void{
    glfwGetMonitorPos(monitor, xpos, ypos);
    errorCheck2();
}

extern fn glfwGetMonitorWorkarea(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int, width: ?*c_int, height: ?*c_int) void;
pub fn getMonitorWorkarea(monitor: ?*Monitor, xpos: ?*c_int, ypos: ?*c_int, width: ?*c_int, height: ?*c_int) void{
    glfwGetMonitorWorkarea(monitor, xpos, ypos, width, height);
    errorCheck2();
}

extern fn glfwGetMonitorPhysicalSize(monitor: ?*Monitor, widthMM: ?*c_int, heightMM: ?*c_int) void;
pub fn getMonitorPhysicalSize(monitor: ?*Monitor, widthMM: ?*c_int, heightMM: ?*c_int) void{
    glfwGetMonitorPhysicalSize(monitor, widthMM, heightMM);
    errorCheck2();
}

extern fn glfwGetMonitorContentScale(monitor: ?*Monitor, xscale: ?*f32, yscale: ?*f32) void;
pub fn getMonitorContentScale(monitor: ?*Monitor, xscale: ?*f32, yscale: ?*f32) void{
    glfwGetMonitorContentScale(monitor, xscale, yscale);
    errorCheck2();
}

extern fn glfwGetMonitorName(monitor: ?*Monitor) ?[*:0]const u8;
pub fn getMonitorName(monitor: ?*Monitor) ?[*:0]const u8{
    var res = glfwGetMonitorName(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetMonitorUserPointer(monitor: ?*Monitor, pointer: ?*anyopaque) void;
pub fn setMonitorUserPointer(monitor: ?*Monitor, pointer: ?*anyopaque) void{
    glfwSetMonitorUserPointer(monitor, pointer);
    errorCheck2();
}

extern fn glfwGetMonitorUserPointer(monitor: ?*Monitor) ?*anyopaque;
pub fn getMonitorUserPointer(monitor: ?*Monitor) ?*anyopaque{
    var res = glfwGetMonitorUserPointer(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetMonitorCallback(callback: MonitorFun) MonitorFun;
pub fn setMonitorCallback(callback: MonitorFun) MonitorFun{
    var res = glfwSetMonitorCallback(callback);
    errorCheck2();
    return res;
}

extern fn glfwGetVideoModes(monitor: ?*Monitor, count: *c_int) ?[*]Vidmode;
pub fn getVideoModes(monitor: ?*Monitor, count: *c_int) ?[*]Vidmode{
    var res = glfwGetVideoModes(monitor, count);
    errorCheck2();
    return res;
}

extern fn glfwGetVideoMode(monitor: ?*Monitor) ?*Vidmode;
pub fn getVideoMode(monitor: ?*Monitor) ?*Vidmode{
    var res = getVideoMode(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetGamma(monitor: ?*Monitor, gamma: f32) void;
pub fn setGamma(monitor: ?*Monitor, gamma: f32) void{
    glfwSetGamma(monitor, gamma);
    errorCheck2();
}

extern fn glfwGetGammaRamp(monitor: ?*Monitor) ?*Gammaramp;
pub fn getGammaRamp(monitor: ?*Monitor) ?*Gammaramp{
    var res = glfwGetGammaRamp(monitor);
    errorCheck2();
    return res;
}

extern fn glfwSetGammaRamp(monitor: ?*Monitor, ramp: ?*Gammaramp) void;
pub fn setGammaRamp(monitor: ?*Monitor, ramp: ?*Gammaramp) void{
    glfwSetGammaRamp(monitor, ramp);
    errorCheck2();
}

extern fn glfwDefaultWindowHints() void;
pub fn defaultWindowHints() void{
    glfwDefaultWindowHints();
    errorCheck2();
}

extern fn glfwWindowHint(hint: c_int, value: c_int) void;
pub fn windowHint(hint: WindowHint, value: c_int) void{
    glfwWindowHint(@enumToInt(hint), value);
    errorCheck2();
}

extern fn glfwWindowHintString(hint: c_int, value: [*:0]const u8) void;
pub fn windowHintString(hint: WindowHint, value: [*:0]const u8) void{
    glfwWindowHintString(@enumToInt(hint), value);
    errorCheck2();
}

extern fn glfwCreateWindow(width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: ?*Window) ?*Window;
pub fn createWindow(width: c_int, height: c_int, title: [*:0]const u8, monitor: ?*Monitor, share: ?*Window) !*Window{
    var res = glfwCreateWindow(width, height, title, monitor, share);
    errorCheck2();
    if(res == null){
        return GLFWError.PlatformError;
    }
    return res.?;
}

extern fn glfwDestroyWindow(window: ?*Window) void;
pub fn destroyWindow(window: ?*Window) void{
    glfwDestroyWindow(window);
    errorCheck2();
}

extern fn glfwWindowShouldClose(window: ?*Window) c_int;
pub fn windowShouldClose(window: ?*Window) bool{
    var res = glfwWindowShouldClose(window);
    errorCheck2();
    return res != 0;
}

extern fn glfwSetWindowShouldClose(window: ?*Window, value: c_int) void;
pub fn setWindowShouldClose(window: ?*Window, value: bool) void{
    glfwSetWindowShouldClose(window, @boolToInt(value));
    errorCheck2();
}

extern fn glfwSetWindowTitle(window: ?*Window, title: [*:0]const u8) void;
pub fn setWindowTitle(window: ?*Window, title: [*:0]const u8) void{
    glfwSetWindowTitle(window, title);
    errorCheck2();
}

extern fn glfwSetWindowIcon(window: ?*Window, count: c_int, images: ?[*]Image) void;
pub fn setWindowIcon(window: ?*Window, count: c_int, images: ?[*]Image) void{
    glfwSetWindowIcon(window, count, images);
    errorCheck2();
}

extern fn glfwGetWindowPos(window: ?*Window, xpos: *c_int, ypos: *c_int) void;
pub fn getWindowPos(window: ?*Window, xpos: *c_int, ypos: *c_int) void{
    glfwGetWindowPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwSetWindowPos(window: ?*Window, xpos: c_int, ypos: c_int) void;
pub fn setWindowPos(window: ?*Window, xpos: c_int, ypos: c_int) void{
    glfwSetWindowPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwGetWindowSize(window: ?*Window, width: *c_int, height: *c_int) void;
pub fn getWindowSize(window: ?*Window, width: *c_int, height: *c_int) void{
    glfwGetWindowSize(window, width, height);
    errorCheck2();
}

extern fn glfwSetWindowSizeLimits(window: ?*Window, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void;
pub fn setWindowSizeLimits(window: ?*Window, minwidth: c_int, minheight: c_int, maxwidth: c_int, maxheight: c_int) void{
    glfwSetWindowSizeLimits(window, minwidth, minheight, maxwidth, maxheight);
    errorCheck2();
}

extern fn glfwSetWindowAspectRatio(window: ?*Window, numer: c_int, denom: c_int) void;
pub fn setWindowAspectRatio(window: ?*Window, numer: c_int, denom: c_int) void{
    glfwSetWindowAspectRatio(window, numer, denom);
    errorCheck2();
}

extern fn glfwSetWindowSize(window: ?*Window, width: c_int, height: c_int) void;
pub fn setWindowSize(window: ?*Window, width: c_int, height: c_int) void{
    glfwSetWindowSize(window, width, height);
    errorCheck2();
}

extern fn glfwGetFramebufferSize(window: ?*Window, width: *c_int, height: *c_int) void;
pub fn getFramebufferSize(window: ?*Window, width: *c_int, height: *c_int) void{
    glfwGetFramebufferSize(window, width, height);
    errorCheck2();
}

extern fn glfwGetWindowFrameSize(window: ?*Window, left: *c_int, top: *c_int, right: *c_int, bottom: *c_int) void;
pub fn getWindowFrameSize(window: ?*Window, left: *c_int, top: *c_int, right: *c_int, bottom: *c_int) void{
    glfwGetWindowFrameSize(window, left, top, right, bottom);
    errorCheck2();
}

extern fn glfwGetWindowContentScale(window: ?*Window, xscale: *f32, yscale: *f32) void;
pub fn getWindowContentScale(window: ?*Window, xscale: *f32, yscale: *f32) void{
    glfwGetWindowContentScale(window, xscale, yscale);
    errorCheck2();
}

extern fn glfwGetWindowOpacity(window: ?*Window) f32;
pub fn getWindowOpacity(window: ?*Window) f32{
    var res = glfwGetWindowOpacity(window);
    errorCheck2();
    return res;
}

extern fn glfwSetWindowOpacity(window: ?*Window, opacity: f32) void;
pub fn setWindowOpacity(window: ?*Window, opacity: f32) void{
    glfwSetWindowOpacity(window, opacity);
    errorCheck2();
}

extern fn glfwIconifyWindow(window: ?*Window) void;
pub fn iconifyWindow(window: ?*Window) void{
    glfwIconifyWindow(window);
    errorCheck2();
}

extern fn glfwRestoreWindow(window: ?*Window) void;
pub fn restoreWindow(window: ?*Window) void{
    glfwRestoreWindow(window);
    errorCheck2();
}

extern fn glfwMaximizeWindow(window: ?*Window) void;
pub fn maximizeWindow(window: ?*Window) void{
    glfwMaximizeWindow(window);
    errorCheck2();
}

extern fn glfwShowWindow(window: ?*Window) void;
pub fn showWindow(window: ?*Window) void{
    glfwShowWindow(window);
    errorCheck2();
}

extern fn glfwHideWindow(window: ?*Window) void;
pub fn hideWindow(window: ?*Window) void{
    glfwHideWindow(window);
    errorCheck2();
}

extern fn glfwFocusWindow(window: ?*Window) void;
pub fn focusWindow(window: ?*Window) void{
    glfwFocusWindow(window);
    errorCheck2();
}

extern fn glfwRequestWindowAttention(window: ?*Window) void;
pub fn requestWindowAttention(window: ?*Window) void{
    glfwRequestWindowAttention(window);
    errorCheck2();
}

extern fn glfwGetWindowMonitor(window: ?*Window) ?*Monitor;
pub fn getWindowMonitor(window: ?*Window) ?*Monitor{
    var res = glfwGetWindowMonitor(window);
    errorCheck2();
    return res;
}

extern fn glfwSetWindowMonitor(window: ?*Window, monitor: ?*Monitor, xpos: c_int, ypos: c_int, width: c_int, height: c_int, refreshRate: c_int) void;
pub fn setWindowMonitor(window: ?*Window, monitor: ?*Monitor, xpos: c_int, ypos: c_int, width: c_int, height: c_int, refreshRate: c_int) void{
    glfwSetWindowMonitor(window, monitor, xpos, ypos, width, height, refreshRate);
    errorCheck2();
}

extern fn glfwGetWindowAttrib(window: ?*Window, attrib: c_int) c_int;
pub fn getWindowAttrib(window: ?*Window, attrib: WindowHint) c_int{
    var res = glfwGetWindowAttrib(window, @enumToInt(attrib));
    errorCheck2();
    return res;
}

extern fn glfwSetWindowAttrib(window: ?*Window, attrib: c_int, value: c_int) void;
pub fn setWindowAttrib(window: ?*Window, attrib: WindowHint, value: c_int) void{
    glfwSetWindowAttrib(window, @enumToInt(attrib), value);
    errorCheck2();
}

extern fn glfwSetWindowUserPointer(window: ?*Window, pointer: *anyopaque) void;
pub fn setWindowUserPointer(window: ?*Window, pointer: *anyopaque) void{
    glfwSetWindowUserPointer(window, pointer);
    errorCheck2();
}

extern fn glfwGetWindowUserPointer(window: ?*Window) ?*anyopaque;
pub fn getWindowUserPointer(window: ?*Window) ?*anyopaque{
    var res = glfwGetWindowUserPointer(window);
    errorCheck2();
    return res;
}

extern fn glfwSetWindowPosCallback(window: ?*Window, callback: WindowPosFun) WindowPosFun;
extern fn glfwSetWindowSizeCallback(window: ?*Window, callback: WindowSizeFun) WindowSizeFun;
extern fn glfwSetWindowCloseCallback(window: ?*Window, callback: WindowCloseFun) WindowCloseFun;
extern fn glfwSetWindowRefreshCallback(window: ?*Window, callback: WindowRefreshFun) WindowRefreshFun;
extern fn glfwSetWindowFocusCallback(window: ?*Window, callback: WindowFocusFun) WindowFocusFun;
extern fn glfwSetWindowIconifyCallback(window: ?*Window, callback: WindowIconifyFun) WindowIconifyFun;
extern fn glfwSetWindowMaximizeCallback(window: ?*Window, callback: WindowMaximizeFun) WindowMaximizeFun;
extern fn glfwSetFramebufferSizeCallback(window: ?*Window, callback: FramebufferSizeFun) FramebufferSizeFun;
extern fn glfwSetWindowContentScaleCallback(window: ?*Window, callback: WindowContentScaleFun) WindowContentScaleFun;


pub fn setWindowPosCallback(window: ?*Window, callback: WindowPosFun) WindowPosFun{
    var res = glfwSetWindowPosCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowSizeCallback(window: ?*Window, callback: WindowSizeFun) WindowSizeFun{
    var res = glfwSetWindowSizeCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowCloseCallback(window: ?*Window, callback: WindowCloseFun) WindowCloseFun{
    var res = glfwSetWindowCloseCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowRefreshCallback(window: ?*Window, callback: WindowRefreshFun) WindowRefreshFun{
    var res = glfwSetWindowRefreshCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowFocusCallback(window: ?*Window, callback: WindowFocusFun) WindowFocusFun{
    var res = glfwSetWindowFocusCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowIconifyCallback(window: ?*Window, callback: WindowIconifyFun) WindowIconifyFun{
    var res = glfwSetWindowIconifyCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowMaximizeCallback(window: ?*Window, callback: WindowMaximizeFun) WindowMaximizeFun{
    var res = glfwSetWindowMaximizeCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setFramebufferSizeCallback(window: ?*Window, callback: FramebufferSizeFun) FramebufferSizeFun{
    var res = glfwSetFramebufferSizeCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setWindowContentScaleCallback(window: ?*Window, callback: WindowContentScaleFun) WindowContentScaleFun{
    var res = glfwSetWindowContentScaleCallback(window, callback);
    errorCheck2();
    return res;
}

extern fn glfwPollEvents() void;
pub fn pollEvents() void{
    glfwPollEvents();
    errorCheck2();
}

extern fn glfwWaitEvents() void;
pub fn waitEvents() void{
    glfwWaitEvents();
    errorCheck2();
}

extern fn glfwWaitEventsTimeout(timeout: f64) void;
pub fn waitEventsTimeout(timeout: f64) void{
    glfwWaitEventsTimeout(timeout);
    errorCheck2();
}

extern fn glfwPostEmptyEvent() void;
pub fn postEmptyEvent() void{
    glfwPostEmptyEvent();
    errorCheck2();
}


extern fn glfwGetInputMode(window: ?*Window, mode: c_int) c_int;

//Depending on what your input mode is, you can change to true/false or one of the attribute enums
pub fn getInputMode(window: ?*Window, mode: InputMode) c_int{
    var res = glfwGetInputMode(window, @enumToInt(mode));
    errorCheck2();
    return res;
}

extern fn glfwSetInputMode(window: ?*Window, mode: InputMode, value: c_int) void;
pub fn setInputMode(window: ?*Window, mode: InputMode, value: c_int) void{
    glfwSetInputMode(window, @enumToInt(mode), value);
    errorCheck2();
}

extern fn glfwRawMouseMotionSupported() c_int;
pub fn rawMouseMotionSupported() bool{
    var res = glfwRawMouseMotionSupported();
    errorCheck2();
    return res != 0;
}

const std = @import("std");
extern fn glfwGetKeyName(key: c_int, scancode: c_int) ?[*:0]const u8;
pub fn getKeyName(key: Key, scancode: c_int) ?[:0]const u8{
    var res = glfwGetKeyName(@enumToInt(key), scancode);
    errorCheck2();
    return std.mem.spanZ(res);
}

extern fn glfwGetKeyScancode(key: c_int) c_int;
pub fn getKeyScancode(key: Key) c_int{
    var res = glfwGetKeyScancode(@enumToInt(key));
    errorCheck2();
    return res;
}

extern fn glfwGetKey(window: ?*Window, key: c_int) c_int;
pub fn getKey(window: ?*Window, key: Key) KeyState{
    var res = glfwGetKey(window, @enumToInt(key));
    errorCheck2();
    return @intToEnum(KeyState, res);
}

extern fn glfwGetMouseButton(window: ?*Window, button: c_int) c_int;
pub fn getMouseButton(window: ?*Window, button: Mouse) KeyState{
    var res = glfwGetMouseButton(window, @enumToInt(button));
    errorCheck2();
    return @intToEnum(KeyState, res);
}

extern fn glfwGetCursorPos(window: ?*Window, xpos: *f64, ypos: *f64) void;
pub fn getCursorPos(window: ?*Window, xpos: *f64, ypos: *f64) void{
    glfwGetCursorPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwSetCursorPos(window: ?*Window, xpos: f64, ypos: f64) void;
pub fn setCursorPos(window: ?*Window, xpos: f64, ypos: f64) void{
    glfwSetCursorPos(window, xpos, ypos);
    errorCheck2();
}

extern fn glfwCreateCursor(image: ?*Image, xhot: c_int, yhot: c_int) ?*Cursor;
pub fn createCursor(image: ?*Image, xhot: c_int, yhot: c_int) ?*Cursor{
    var res = glfwCreateCursor(image, xhot, yhot);
    errorCheck2();
    return res;
}

extern fn glfwCreateStandardCursor(shape: c_int) ?*Cursor;
pub fn createStandardCursor(shape: CursorShape) ?*Cursor{
    var res = glfwCreateStandardCursor(@enumToInt(shape));
    errorCheck2();
    return res;
}

extern fn glfwDestroyCursor(cursor: ?*Cursor) void;
pub fn destroyCursor(cursor: ?*Cursor) void{
    glfwDestroyCursor(cursor);
    errorCheck2();
}

extern fn glfwSetCursor(window: ?*Window, cursor: ?*Cursor) void;
pub fn setCursor(window: ?*Window, cursor: ?*Cursor) void{
    glfwSetCursor(window, cursor);
    errorCheck2();
}

extern fn glfwSetKeyCallback(window: ?*Window, callback: KeyFun) KeyFun;
extern fn glfwSetCharCallback(window: ?*Window, callback: CharFun) CharFun;
extern fn glfwSetCharModsCallback(window: ?*Window, callback: CharmodsFun) CharmodsFun;
extern fn glfwSetMouseButtonCallback(window: ?*Window, callback: MouseButtonFun) MouseButtonFun;
extern fn glfwSetCursorPosCallback(window: ?*Window, callback: CursorPosFun) CursorPosFun;
extern fn glfwSetCursorEnterCallback(window: ?*Window, callback: CursorEnterFun) CursorEnterFun;
extern fn glfwSetScrollCallback(window: ?*Window, callback: ScrollFun) ScrollFun;
extern fn glfwSetDropCallback(window: ?*Window, callback: DropFun) DropFun;

pub fn setKeyCallback(window: ?*Window, callback: KeyFun) KeyFun{
    var res = glfwSetKeyCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCharCallback(window: ?*Window, callback: CharFun) CharFun{
    var res = glfwSetCharCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCharModsCallback(window: ?*Window, callback: CharmodsFun) CharmodsFun{
    var res = glfwSetCharModsCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setMouseButtonCallback(window: ?*Window, callback: MouseButtonFun) MouseButtonFun{
    var res = glfwSetMouseButtonCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCursorPosCallback(window: ?*Window, callback: CursorPosFun) CursorPosFun{
    var res = glfwSetCursorPosCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setCursorEnterCallback(window: ?*Window, callback: CursorEnterFun) CursorEnterFun{
    var res = glfwSetCursorEnterCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setScrollCallback(window: ?*Window, callback: ScrollFun) ScrollFun{
    var res = glfwSetScrollCallback(window, callback);
    errorCheck2();
    return res;
}
pub fn setDropCallback(window: ?*Window, callback: DropFun) DropFun{
    var res = glfwSetDropCallback(window, callback);
    errorCheck2();
    return res;
}

extern fn glfwJoystickPresent(jid: c_int) c_int;
pub fn joystickPresent(jid: c_int) bool{
    var res = glfwJoystickPresent(jid);
    errorCheck2();
    return res != 0;
}

extern fn glfwGetJoystickAxes(jid: c_int, count: *c_int) ?[*]const f32;
pub fn getJoystickAxes(jid: c_int, count: *c_int) ?[*]const f32{
    var res = glfwGetJoystickAxes(jid, count);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickButtons(jid: c_int, count: *c_int) ?[*]const u8;
pub fn getJoystickButtons(jid: c_int, count: *c_int) ?[*]const u8{
    var res = glfwGetJoystickButtons(jid, count);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickHats(jid: c_int, count: *c_int)  ?[*]const u8;
pub fn getJoystickHats(jid: c_int, count: *c_int) ?[*]const u8{
    var res = glfwGetJoystickHats(jid, count);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickName(jid: c_int) ?[*:0]const u8;
pub fn getJoystickName(jid: c_int) ?[*:0]const u8{
    var res = glfwGetJoystickName(jid);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickGUID(jid: c_int) ?[*:0]const u8;
pub fn getJoystickGUID(jid: c_int) ?[*:0]const u8{
    var res = glfwGetJoystickGUID(jid);
    errorCheck2();
    return res;
}

extern fn glfwSetJoystickUserPointer(jid: c_int, pointer: *anyopaque) void;
pub fn setJoystickUserPointer(jid: c_int, pointer: *anyopaque) void{
    var res = glfwSetJoystickUserPointer(jid, pointer);
    errorCheck2();
    return res;
}

extern fn glfwGetJoystickUserPointer(jid: c_int) *anyopaque;
pub fn getJoystickUserPointer(jid: c_int) *anyopaque{
    var res = getJoystickUserPointer(jid);
    errorCheck2();
    return res;
}

extern fn glfwJoystickIsGamepad(jid: c_int) c_int;
pub fn joystickIsGamepad(jid: c_int) c_int{
    var res = glfwJoystickIsGamepad(jid);
    errorCheck2();
    return res;
}

extern fn glfwSetJoystickCallback(callback: JoystickFun) JoystickFun;
pub fn setJoystickCallback(callback: JoystickFun) JoystickFun{
    var res = glfwSetJoystickCallback(callback);
    errorCheck2();
    return res;
}

extern fn glfwUpdateGamepadMappings(string: [*:0]const u8) c_int;
pub fn updateGamepadMappings(string: [*:0]const u8) c_int{
    var res = glfwUpdateGamepadMappings(string);
    errorCheck2();
    return res;
}

extern fn glfwGetGamepadName(jid: c_int) ?[*:0]const u8;
pub fn getGamepadName(jid: c_int) ?[*:0]const u8{
    var res = glfwGetGamepadName(jid);
    errorCheck2();
    return res;
}

extern fn glfwGetGamepadState(jid: c_int, state: ?*GamepadState) c_int;
pub fn getGamepadState(jid: c_int, state: ?*GamepadState) c_int{
    var res = glfwGetGamepadState(jid, state);
    errorCheck2();
    return res;
}

extern fn glfwSetClipboardString(window: ?*Window, string: [*:0]const u8) void;
pub fn setClipboardString(window: ?*Window, string: [*:0]const u8) void{
    glfwSetClipboardString(window, string);
    errorCheck2();
}

extern fn glfwGetClipboardString(window: ?*Window) ?[*:0]const u8;
pub fn getClipboardString(window: ?*Window) ?[:0]const u8{
    var res = glfwGetClipboardString(window);
    errorCheck2();
    return std.mem.spanZ(res);
}

extern fn glfwGetTime() f64;
pub fn getTime() f64 {
    var res = glfwGetTime();
    errorCheck2();
    return res;
}

extern fn glfwSetTime(time: f64) void;
pub fn setTime(time: f64) void{
    glfwSetTime(time);
    errorCheck2();
}

extern fn glfwGetTimerValue() u64;
pub fn getTimerValue() u64{
    var res = glfwGetTimerValue();
    errorCheck2();
    return res;
}

extern fn glfwGetTimerFrequency() u64;
pub fn getTimerFrequency() u64{
    var res = glfwGetTimerFrequency();
    errorCheck2();
    return res();
}

//Context
extern fn glfwMakeContextCurrent(window: ?*Window) void;
pub fn makeContextCurrent(window: ?*Window) void{
    glfwMakeContextCurrent(window);
    errorCheck2();
}

extern fn glfwGetCurrentContext() ?*Window;
pub fn getCurrentContext(window: ?*Window) ?*Window{
    var res = glfwGetCurrentContext(window);
    errorCheck2();
    return res;
}

extern fn glfwSwapBuffers(window: ?*Window) void;
pub fn swapBuffers(window: ?*Window) void{
    glfwSwapBuffers(window);
    errorCheck2();
}

extern fn glfwSwapInterval(interval: c_int) void;
pub fn swapInterval(interval: c_int) void{
    glfwSwapInterval(interval);
    errorCheck2();
}

//GL Stuff
extern fn glfwExtensionSupported(extension: [*:0]const u8) c_int;
pub fn extensionSupported(extension: [*:0]const u8) c_int{
    var res = glfwExtensionSupported(extension);
    errorCheck2();
    return res;
}

extern fn glfwGetProcAddress(procname: [*:0]const u8) ?GLproc;
pub fn getProcAddress(procname: [*:0]const u8) ?GLproc{
    var res = glfwGetProcAddress(procname);
    errorCheck2();
    return res;
}

//Vulkan stuff
//extern fn GLFWvkproc glfwGetInstanceProcAddress(VkInstance instance, const char* procname);
//extern fn int glfwGetPhysicalDevicePresentationSupport(VkInstance instance, VkPhysicalDevice device, uint32_t queuefamily);
//extern fn VkResult glfwCreateWindowSurface(VkInstance instance, GLFWwindow* window, const VkAllocationCallbacks* allocator, VkSurfaceKHR* surface);
extern fn glfwVulkanSupported() c_int;
pub fn vulkanSupported() bool{
    var res = glfwVulkanSupported();
    errorCheck2();
    return res != 0;
}

extern fn glfwGetRequiredInstanceExtensions(count: *u32) ?[*][*:0]const u8;
pub fn getRequiredInstanceExtensions(count: *u32) ?[*][*:0]const u8{
    var res = glfwGetRequiredInstanceExtensions(count);
    errorCheck2();
    return res;
}
