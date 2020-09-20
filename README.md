<h1 align="center">zGLFW</h1>
<p align="center">A thin, idiomatic wrapper for GLFW. Written in Zig, for Zig!</p>

# Why write a wrapper?
While Zig is PERFECTLY capable of simply `@cImport`ing glfw3.h and using it in your application, I think it lacks a lot of cleanliness and succinctness that can be expressed with Zig. I decided to write this wrapper to provide GLFW with a nicer interface, error handling options, and quality of life changes (for example `[]const u8` instead of `[*c]const u8`). It also uses enums over defines, and allows those enums to be used directly in most functions.

# Note 
zGLFW is NOT 100% tested. I am happy to fix any errors that may arise, and I will accept contributions! For zGLFW, I decided to make two versions with very slight differences. `glfw.zig` and `glfw3.zig` both feature the same type of syntax and wrappers, but `glfw.zig` will return error unions for most functions, whereas `glfw3.zig` will "handle" the errors and print them to `std.debug.warn`.

# Examples

Without error unions:
```zig
const glfw = @import("glfw3.zig");
const std = @import("std");

pub fn main() !void {
    var major : i32 = 0;
    var minor : i32 = 0;
    var rev : i32 = 0;

    glfw.getVersion(&major, &minor, &rev);
    std.debug.warn("GLFW {}.{}.{}\n",.{major, minor, rev}); 

    //Example of something that fails with GLFW_NOT_INITIALIZED - but will continue with execution
    //var monitor : ?*glfw.Monitor = glfw.getPrimaryMonitor();

    try glfw.init();
    defer glfw.terminate();
    std.debug.warn("GLFW Init Succeeded.\n", .{});
    
    var window : *glfw.Window = try glfw.createWindow(800, 640, "Hello World", null, null);

    while(!glfw.windowShouldClose(window)){
        if(glfw.getKey(window, glfw.Key.Escape) == glfw.KeyState.Press){
            glfw.setWindowShouldClose(window, true);
        }

        glfw.pollEvents();
    }
}
```

With error unions:
```zig
const glfw = @import("glfw.zig");
const std = @import("std");

pub fn main() !void {
    var major : i32 = 0;
    var minor : i32 = 0;
    var rev : i32 = 0;

    glfw.getVersion(&major, &minor, &rev);
    std.debug.warn("GLFW {}.{}.{}\n",.{major, minor, rev}); 

    //Example of something that fails with GLFW_NOT_INITIALIZED - but will crash out.
    //var monitor = try glfw.getPrimaryMonitor();

    try glfw.init();
    defer glfw.terminate() catch unreachable;
    std.debug.warn("GLFW Init Succeeded.\n", .{});

    var window : *glfw.Window = try glfw.createWindow(800, 640, "Hello World", null, null);

    while(!try glfw.windowShouldClose(window)){       
        if((try glfw.getKey(window, glfw.Key.Escape)) == glfw.KeyState.Press){
            try glfw.setWindowShouldClose(window, true);
        }

        try glfw.pollEvents();
    }
}
```
