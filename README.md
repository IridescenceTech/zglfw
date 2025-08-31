<h1 align="center">zGLFW</h1>
<p align="center">A thin, idiomatic wrapper for GLFW. Written in Zig, for Zig!</p>

# Why write a wrapper?
While Zig is PERFECTLY capable of simply `@cImport`ing glfw3.h and using it in your application, I think it lacks a lot of cleanliness and succinctness that can be expressed with Zig. I decided to write this wrapper to provide GLFW with a nicer interface, error handling options, and quality of life changes (for example `[]const u8` instead of `[*c]const u8`). It also uses nicely named constants in place of `#define`s.

zGLFW is NOT 100% tested. I am happy to fix any errors that may arise, and I will accept contributions! Errors that arise from GLFW will be printed to `stderr`.

# Examples

```zig
const std = @import("std");
const glfw = @import("glfw");

pub fn main() !void {
    var major: i32 = 0;
    var minor: i32 = 0;
    var rev: i32 = 0;

    glfw.getVersion(&major, &minor, &rev);
    std.debug.print("GLFW {}.{}.{}\n", .{ major, minor, rev });

    //Example of something that fails with GLFW_NOT_INITIALIZED - but will continue with execution
    //var monitor: ?*glfw.Monitor = glfw.getPrimaryMonitor();

    try glfw.init();
    defer glfw.terminate();
    std.debug.print("GLFW Init Succeeded.\n", .{});

    var window: *glfw.Window = try glfw.createWindow(800, 640, "Hello World", null, null);
    defer glfw.destroyWindow(window);

    while (!glfw.windowShouldClose(window)) {
        if (glfw.getKey(window, glfw.KeyEscape) == glfw.Press) {
            glfw.setWindowShouldClose(window, true);
        }

        glfw.pollEvents();
    }
}
```

# Note

This library does not compile or wrap GLFW the library into the zig build system. This wrapper can be used in tandem with other projects like [glfw.zig](https://github.com/tiawl/glfw.zig) which will compile the GLFW code directly in Zig.

# Documentation

I would suggest you look into the `glfw.zig` file themselves, as most of the changes are simple syntactically, but I have made some comments in cases where it may be different than you expect. Obviously [GLFW's Documentation](https://www.glfw.org/documentation.html) should cover most things that you want to know.
