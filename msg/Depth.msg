#Depth.msg

std_msgs/Header header

# Depth in meters (positive is down)
float64 depth

# Pressure in Pascals (SI unit for ROS 2)
float64 pressure

# Temperature in Celsius from the depth sensor
float32 temperature

# Variance/Uncertainty (optional, useful for EKF/State Estimation)
float64 variance