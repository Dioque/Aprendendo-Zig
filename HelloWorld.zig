const print = std.debug.print;
const assert = std.debug.assert;
const std = @import("std");

pub fn main() void {
    const retornaI32 = retornaInteiro32();
    const retornaF32 = retornaFloat32();
    const optionalVal = optional();

    const numeroRetorn = addNumero1(3);

    print("O numero retornado é {}\n", .{numeroRetorn});

    print("one_plus_one = {}\nseven_div_three = {}\n", .{ retornaI32, retornaF32 });
    print("optional_Value = {?s}\n", .{optionalVal});
}

pub fn retornaInteiro32() i32 {
    const one_plus_one: i32 = 1 + 999999;
    return one_plus_one;
}

pub fn retornaFloat32() f32 {
    const seven_div_three: f32 = 7.0 / 3.0;
    return seven_div_three;
}

pub fn optional() ?[]const u8 {
    var optional_Value: ?[]const u8 = null;
    assert(optional_Value == null);
    optional_Value = "Love you!";

    return optional_Value;
}

test "SeraQue Funciona" {
    try std.testing.expect(1 == 1);
}

var numeroOrigin: i32 = undefined;
pub fn addNumero1(numero: i32) i32 {
    numeroOrigin = numero + 1;

    return numeroOrigin;
}

