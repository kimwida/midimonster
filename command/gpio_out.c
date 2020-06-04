#include <mraa/gpio.h>
#include <signal.h>
#include <stdlib.h>
#include <unistd.h>

sig_atomic_t volatile run_flag = 1;

void do_when_interrupted(int sig)
{
	if (sig ==SIGINT)
		run_flag = 0;
}

int main()
{
	mraa_gpio_context led, button;
	led = mraa_gpio_init(5);

	mraa_gpio_dir(led, MRAA_GPIO_OUT);

	signal(SIGINT, do_when_interrupted);
	while(run_flag)
	{
		mraa_gpio_write(led, 1);
		sleep(1);
		mraa_gpio_write(led,0);
		sleep(1);
	}
	mraa_gpio_close(led);
	return 0;
}
