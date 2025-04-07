/// 文档注释在表达式的中间，或者在非文档注释之前，则会出现编译错误
//! 顶级注释
const std = @import("std");

/// 文档注释
const Timestamp = struct {
    /// 文档注释
    seconds: i64,
    /// 文档注释
    nanos: u32,

    /// 文档注释
    pub fn unixEpoch() Timestamp {
        return Timestamp{
            .seconds = 0,
            .nanos = 0
        };
    }
};

pub fn main() !void {
    // 普通的注释
    std.debug.print("All your {s} are belong to us.\n", .{"codebase"});
}
