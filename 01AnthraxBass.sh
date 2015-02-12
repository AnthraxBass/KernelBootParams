#!/system/bin/sh

# disable slide2wake Gustavo_s feature
echo 0 > /sys/devices/virtual/sec/sec_touchscreen/tsp_slide2wake

# Battery Optimization :
echo 1 > /sys/devices/system/cpu/sched_mc_power_savings
echo 3 > /sys/module/cpuidle_exynos4/parameters/enable_mask

# CPU Governor :
echo NeoX > /sys/devices/system/cpu/cpu0/cpufreq/scaling_governor

# CPU Minimum Frequency :
echo 200000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_min_freq

# CPU Maximum Frequency :
echo 1200000 > /sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq

# 2nd Core :
echo on > /sys/devices/virtual/misc/second_core/hotplug_on
echo on > /sys/devices/virtual/misc/second_core/second_core_on

# GPU Control:
echo "160 200 267 400" > /sys/class/misc/gpu_clock_control/gpu_control
echo "900000 950000 1000000 1100000" > /sys/class/misc/gpu_voltage_control/gpu_control

# I/O Scheduler :
echo row > /sys/block/mmcblk0/queue/scheduler
echo row > /sys/block/mmcblk1/queue/scheduler

# Backlight Notification :
echo 1 > /sys/class/misc/backlightnotification/blink_control
echo 1 > /sys/class/misc/backlightnotification/enabled

# SD-card SpeedFix :
echo 2048 > /sys/devices/virtual/bdi/179:0/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/179:8/read_ahead_kb
echo 2048 > /sys/devices/virtual/bdi/default/read_ahead_kb

# Kernel Performance :
echo 0 > /proc/sys/kernel/kptr_restrict
