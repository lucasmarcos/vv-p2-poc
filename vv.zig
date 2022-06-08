// digraph {
//   1 -> 2
//   1 -> 3
//   1 -> 4
//   1 -> 5
//   1 -> 6
//
//   2 -> 7
//   3 -> 7
//   4 -> 7
//   5 -> 7
//   6 -> 7
//
//   7 -> 8
// }

fn desconto(salario: f64, aliquota: f64, deducao: f64) f64 {
    return (salario * aliquota / 100.0) - deducao; // 7
}

fn irpf(salario: f64) f64 {
    return switch (salario) { // 1
        0.0...1_903.98 => desconto(salario, 0, 0), // 2
        1_903.99...2_826.65 => desconto(salario, 7.5, 142.80), // 3
        2_826.66...3_751.05 => desconto(salario, 15.0, 354.80), // 4
        3_751.06...4_664.68 => desconto(salario, 22.5, 636.13), // 5
        else => desconto(salario, 27.5, 868.36), // 6
    };
}

const testing = @import("std").testing;

test "todos os nos" {
    try testing.expectEqual(@as(f64, 0.0), irpf(900.00));
    try testing.expectEqual(@as(f64, 80.50), irpf(2_902.00));
    try testing.expectEqual(@as(f64, 170.20), irpf(3_500.00));
    try testing.expectEqual(@as(f64, 479.14), irpf(4_900.00));
}

test "todos as arestas" {
    try testing.expectEqual(@as(f64, 0.0), irpf(900.00));
    try testing.expectEqual(@as(f64, 80.50), irpf(2_902.00));
    try testing.expectEqual(@as(f64, 170.20), irpf(3_500.00));
    try testing.expectEqual(@as(f64, 479.14), irpf(4_900.00));
}
