const std = @import("std");
const debugPrint = std.debug.print;
const math = std.math;

pub fn print(number: f64) void {
  debugPrint(
    "{d:.3}", 
    .{number}
  );
}

// constant acceleration
pub fn calculate_velocity(displacement: f64, time: f64) f64 {
  const v = displacement / time;
  return v;
}

pub fn calculate_displacement(x0: f64, x1: f64) f64 {
  const d = x1 - x0;
  return d;
}

pub fn calculate_time(displacement: f64, velocity: f64) f64 {
  const t = displacement / velocity;
  return t;
}

pub fn calculate_final_position(x0: f64, velocity: f64, time: f64) f64 {
  const x1 = x0 + velocity * time;
  return x1;
}

pub fn calculate_acceleration(v0: f64, v1: f64, time: f64) f64 {
  const a = (v1 - v0) / time;
  return a;
}

pub fn calculate_final_velocity(v0: f64, acceleration: f64, time: f64) f64 {
  const v1 = v0 + acceleration * time;
  return v1;
}

// no time
pub fn calculate_final_velocity_square(v0: f64, acceleration: f64, displacement: f64) f64 {
  const v1 = math.pow(v0, 2) + 2 * acceleration * displacement;
  print(math.sqrt(v1));
  return v1;
}

pub fn main() void {
  print(math.pow(10, 10));
  // print(calculate_final_velocity_square(15, 10, 5));
}
