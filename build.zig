const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();
    const lib = b.addStaticLibrary("zglfw", "src/main.zig");
    lib.setTarget(target);
    lib.setBuildMode(mode);

    // tested only on linux!!
    lib.linkSystemLibrary("glfw3");
    lib.linkSystemLibrary("c");
    lib.install();
}
