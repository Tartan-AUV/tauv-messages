# ServoTelemetry.msg
# Debug telemetry from one Hitec MDB961WP-CAN servo.

std_msgs/Header header

uint8 servo_id             # CAN ID of the servo
float32 position_deg       # Absolute position in degrees, 0-360 (180 = center)
float32 position_relative  # Offset from center in degrees, -180 to +180
float32 velocity           # Signed; negative means moving toward lower position
float32 torque_percent     # Motor PWM duty, 0-100 %
float32 voltage            # Supply voltage in volts
int16 temperature_c        # MCU temperature in Celsius (signed)
int32 current_ma           # Current draw in mA (signed; reads slightly negative at idle)
string[] errors            # Active error flags, e.g. ["VOLT_UNDER", "TEMP_OVER"]. Empty = healthy
