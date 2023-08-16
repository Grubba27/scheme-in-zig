const std = @import("std");

pub fn printFileContent(file_content: []const u8) void {
    std.debug.print("{s}\n", .{file_content});
}
