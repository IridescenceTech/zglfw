const Builder = @import("std").build.Builder;

pub fn build(b: *Builder) void {
    const target = b.standardTargetOptions(.{});
    const mode = b.standardReleaseOptions();
    const lib = b.addStaticLibrary("zglfw", "src/main.zig");
    lib.setTarget(target);
    lib.setBuildMode(mode);

    // tested only on linux!!
    lib.linkSystemLibrary("glfw");
    lib.linkSystemLibrary("c");
    lib.install();

    const exe = b.addExecutable("sample", "src/sample.zig");
    exe.setTarget(target);
    exe.setBuildMode(mode);

    exe.linkLibrary(lib);
    exe.install();

    const run_cmd = exe.run();
    run_cmd.step.dependOn(b.getInstallStep());

    const run_step = b.step("run", "Run the app");
    run_step.dependOn(&run_cmd.step);
}
