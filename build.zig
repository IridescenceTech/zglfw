const std = @import("std");

pub fn build(b: *std.Build) void {
    const target = b.standardTargetOptions(.{});
    const optimize = b.standardOptimizeOption(.{});
    const lib = b.addStaticLibrary(.{
        .name = "zglfw",
        .root_source_file = .{ .path = "src/glfw.zig" },
        .target = target,
        .optimize = optimize,
    });
    lib.linkLibC();
    lib.linkSystemLibrary("glfw");
    b.installArtifact(lib);

    const exe = b.addExecutable(.{
        .name = "sample",
        .root_source_file = .{ .path = "src/sample.zig" },
        .target = target,
        .optimize = optimize,
    });
    exe.linkLibrary(lib);

    const glfw = b.addModule("glfw", .{ .source_file = .{ .path = "src/glfw.zig" } });
    exe.addModule("glfw", glfw);
    b.installArtifact(exe);

    const run_cmd = b.addRunArtifact(exe);
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
