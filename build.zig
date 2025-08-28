const std = @import("std");
const builtin = @import("builtin");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});

    const glfw_mod = b.addModule("glfw", .{
        .root_source_file = b.path("src/glfw.zig"),
        .target = target,
        .optimize = optimize,
        .link_libc = true,
    });
    if (builtin.os.tag == .windows) {
        glfw_mod.linkSystemLibrary("glfw3", .{});
    } else {
        glfw_mod.linkSystemLibrary("glfw", .{});
    }

    const exe = b.addExecutable(.{
        .name = "sample",
        .root_module = b.createModule(.{
            .root_source_file = b.path("src/sample.zig"),
            .target = target,
            .optimize = optimize,
        }),
    });
    exe.root_module.addImport("glfw", glfw_mod);

    const install_exe = b.addInstallArtifact(exe, .{});

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(&install_exe.step);

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
