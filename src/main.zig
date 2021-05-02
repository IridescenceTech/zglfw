pub const glfw = @import("glfw.zig");
const std = @import("std");

pub fn main() !void {
    var major: i32 = 0;
    var minor: i32 = 0;
    var rev: i32 = 0;

    glfw.getVersion(&major, &minor, &rev);
    std.debug.warn("GLFW {}.{}.{}\n", .{ major, minor, rev });

    try glfw.init();
    defer glfw.terminate();
    std.debug.warn("GLFW Init Succeeded.\n", .{});

    var window: *glfw.Window = try glfw.createWindow(800, 640, "Hello World", null, null);

    while (!glfw.windowShouldClose(window)) {
        if ((glfw.getKey(window, glfw.Key.Escape)) == glfw.KeyState.Press) {
            glfw.setWindowShouldClose(window, true);
        }

        glfw.pollEvents();
    }
}
