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

pub const KeyState = extern enum(c_int){
    Release = 0,
    Press = 1,
    Repeat = 2
};

pub const JoystickHat = extern enum(c_int){
    Centered   = 0,
    Up         = 1,
    Right      = 2,
    Down       = 4,
    Left       = 8,
    Rightup   = (Right | Up),
    Rightdown = (Right | Down),
    Leftup    = (Left  | Up),
    Leftdown  = (Left  | Down),
};

pub const Key = extern enum(c_int){
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
    Last              = Menu,
};

pub const Modifiers = extern enum(c_int){
    Shift     = 0x0001,
    Control   = 0x0002,
    Alt       = 0x0004,
    Super     = 0x0008,
    CapsLock  = 0x0010,
    NumLock   = 0x0020,
};

pub const Mouse = extern enum(c_int){
    Button1         = 0,
    Button2         = 1,
    Button3         = 2,
    Button4         = 3,
    Button5         = 4,
    Button6         = 5,
    Button7         = 6,
    Button8         = 7,
    ButtonLast      = Button8,
    ButtonLeft      = Button1,
    ButtonRight     = Button2,
    ButtonMiddle    = Button3
};

pub const Joystick = extern enum(c_int){
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
    ButtonLast          = Button16,
};

pub const GamepadButton = extern enum(c_int){
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
    Last            = DpadLeft,
    Cross           = A,
    Circle          = B,
    Square          = X,
    Triangle        = Y,
};

pub const GamepadAxis = extern enum(c_int){
    LeftX        = 0,
    LeftY        = 1,
    RightX       = 2,
    RightY       = 3,
    LeftTrigger  = 4,
    RightTrigger = 5,
    Last          = RightTrigger
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
    NoWindowContext
};

pub const WindowHint = extern enum(c_int){
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

pub const WindowAttribute = extern enum(c_int){
    NoAPI                 =          0,
    OpenGLAPI             = 0x00030001,
    OpenGLESAPI          = 0x00030002,
    NoRobustness          =          0,
    NoResetNotification  = 0x00031001,
    LoseContextOnReset  = 0x00031002,
    OpenglAnyProfile     =          0,
    OpenglCoreProfile    = 0x00032001,
    OpenglCompatProfile  = 0x00032002,
    Cursor                 = 0x00033001,
    StickyKeys            = 0x00033002,
    StickyMouseButtons   = 0x00033003,
    LockKeyMods          = 0x00033004,
    RawMouseMotion       = 0x00033005,
    CursorNormal          = 0x00034001,
    CursorHidden          = 0x00034002,
    CursorDisabled        = 0x00034003,
    AnyReleaseBehavior   =          0,
    ReleaseBehaviorFlush = 0x00035001,
    ReleaseBehaviorNone  = 0x00035002,
    NativeContextAPI     = 0x00036001,
    EGLContextAPI        = 0x00036002,
    OSMesaContextAPI     = 0x00036003,
    DontCare             = -1,
};

pub const CursorStyle = extern enum(c_int){
    Arrow           = 0x00036001,
    IBeam           = 0x00036002,
    Crosshair       = 0x00036003,
    Hand            = 0x00036004,
    HResize         = 0x00036005,
    VResize         = 0x00036006,  
};

pub const Connection = extern enum(c_int){
    Connected              = 0x00040001,
    Disconnected           = 0x00040002,
};

pub const InitHints = extern enum(c_int){
    JoystickHatButtons   = 0x00050001,
    CocoaChdirResources  = 0x00051001,
    CocoaMenubar          = 0x00051002,
};

pub const GLproc = fn(void) void;
pub const VKproc = fn(void) void;

pub const Monitor = c_long;
pub const Window = c_long;
pub const Cursor = c_long;

pub const ErrorFun = fn(error_code: c_int, description: [*c]u8) void;

pub const WindowPosFun = fn(window: *Window, xpos: c_int, ypos: c_int) void;

pub const WindowSizeFun = fn(window: *Window, width: c_int, height: c_int) void;

pub const WindowCloseFun = fn(window: *Window) void;

pub const WindowRefreshFun = fn(window: *Window) void;

pub const WindowFocusFun = fn(window: *Window, focused: c_int) void;

pub const WindowIconifyFun = fn(window: *Window, iconified: c_int) void;

pub const WindowMaximizeFun = fn(window: *Window, iconified: c_int) void;

pub const FramebufferSizeFun = fn(window: *Window, width: c_int, height: c_int) void;

pub const WindowContentScaleFun = fn(window: *Window, xscale: f32, yscale: f32) void;

//Mods is bitfield of modifiers, button is enum of mouse buttons, and action is enum of keystates.
pub const MouseButtonFun = fn(window: *Window, button: c_int, action: c_int, mods: c_int) void;

pub const CursorPosFun = fn(window: *Window, xpos: f64, ypos: f64) void;

//Entered is true or false
pub const CursorEnterFun = fn(window: *Window, entered: c_int) void;

pub const ScrollFun = fn(window: *Window, xoffset: f64, yoffset: f64) void;

//Mods is bitfield of modifiers, keys is enum of keys, and action is enum of keystates.
pub const KeyFun = fn (window: *Window, key: c_int, scancode: c_int, action: c_int, mods: c_int) void;

pub const Charfun = fn (window: *Window,codepoint: c_uint) void;

//Mods refers to the bitfield of Modifiers
pub const CharmodsFun = fn (window: *Window,codepoint: c_uint, mods: c_int) void;

pub const DropFun = fn (window: *Window, path_count: c_int, paths: [*c]const u8) void;

//Event is one of two states defined by the enum 'Connection'
pub const Monitorfun = fn (monitor : *Monitor, event : c_int) void;

//Event is one of two states defined by the enum 'Connection'
pub const JoystickFun = fn(id: c_int, event: c_int) void;

pub const Vidmode = extern struct{
    width : i32,
    height : i32,
    redBits : i32,
    greenBits : i32,
    blueBits : i32,
    refreshRate : i32,
};

pub const Gammaramp = extern struct{
    red : [*c]u16,
    green : [*c]u16,
    blue : [*c]u16,
    size : u32
};

pub const Image = extern struct{
    width : i32,
    height : i32,
    pixels : [*c]u8
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

pub fn main() anyerror!void {
    try init();
}
