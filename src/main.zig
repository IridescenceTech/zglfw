pub const glfw = @import("glfw.zig");
pub const glfw3 = @import("glfw3.zig");
const std = @import("std");

pub fn main() !void {
    var major : i32 = 0;
    var minor : i32 = 0;
    var rev : i32 = 0;

    glfw.getVersion(&major, &minor, &rev);
    std.debug.warn("GLFW {}.{}.{}\n",.{major, minor, rev}); 

    //Example of something that fails with GLFW_NOT_INITIALIZED - but will continue with execution
    var monitor : ?*glfw.Monitor = try glfw.getPrimaryMonitor();

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
