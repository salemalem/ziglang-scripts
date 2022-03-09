const debugPrint = @import("std").debug.print;

pub fn print(number: f64) void {
  debugPrint(
    "{d:.3}", 
    .{number}
  );
}

pub fn calculate_velocity(displacement: f64, time: f64) f64 {
  return displacement / time;
}

pub fn calculate_displacement(x0: f64, x1: f64) f64 {
  return x1 - x0;
}

pub fn main() void {
  print(calculate_displacement(0, 5));
}
