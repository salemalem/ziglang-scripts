const debugPrint = @import("std").debug.print;

pub fn print(number: f64) void {
  debugPrint(
    "{d:.3}", 
    .{number}
  );
}

// constant acceleration
pub fn calculate_velocity(displacement: f64, time: f64) f64 {
  const v: f64 = displacement / time;
  return v;
}

pub fn calculate_displacement(x0: f64, x1: f64) f64 {
  const d: f64 = x1 - x0;
  return d;
}

pub fn calculate_time(displacement: f64, velocity: f64) f64 {
  const t: f64 = displacement / velocity;
  return t;
}

pub fn calculate_final_position(x0: f64, velocity: f64, time: f64) f64 {
  const x1: f64 = x0 + velocity * time;
  return x1;
}

pub fn calculate_acceleration(v0: f64, v1: f64, time: f64) f64 {
  const a = (v1 - v0) / time;
  return a;
}

pub fn main() void {
  print(calculate_final_position(0, 10, 5));
}
