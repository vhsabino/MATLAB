0
//Exemplo PID
double ki, kp, kd;

kp = 7.76184;
ki = 617.981;
kd = 0.02437;


while(1)
{
	// Get the desired position
	desired_position = read_desired_position();
	
	// Get the current position
	current_position = read_current_position();
	
	// Calculate the error
	error = desired_position - current_position;
	
	// Calculate the integral
	
	integral = integral + error;
	
	// Calculate the derivative
	
	derivative = error - last_error;
	
	PID = (kp * error) + (ki * integral) + (kd * derivative);
	
	Duty_cycle = (PID / (973.7069 - 0.14235 * current_position));
	
	last_error = error;
	
}
	