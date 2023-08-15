const std = @import("std");
const other = @import("./otherfile.zig");

pub fn main() void {
    const value = other.hello();
    std.debug.print("Hello, {s}!\n", .{"World"});
    std.debug.print("Hello, {s}!\n", .{value});
}

test "simple test" {
    var list = std.ArrayList(i32).init(std.testing.allocator);
    defer list.deinit(); // try commenting this out and see if zig detects the memory leak!
    try list.append(42);
    try std.testing.expectEqual(@as(i32, 42), list.pop());
}
