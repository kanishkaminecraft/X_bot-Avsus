import cv2
import numpy as np
import subprocess
import time

def monitor_device_screen():
    cmd = "adb exec-out screencap -p"
    cv2.namedWindow("$Aview_screen", cv2.WINDOW_NORMAL)

    while True:
        try:
            output = subprocess.check_output(cmd.split())
        except subprocess.CalledProcessError:
            print("Failed to capture the device screen. Make sure the device is connected and adb is installed.")
            break
        time.sleep(1/30)
        img = cv2.imdecode(np.frombuffer(output, np.uint8), cv2.IMREAD_COLOR)

        # Get device information using adb
        device_info = subprocess.check_output("adb shell dumpsys battery", shell=True).decode("utf-8")
        device_name = subprocess.check_output("adb shell getprop ro.product.model", shell=True).decode("utf-8")
        device_ip = subprocess.check_output("adb shell ip route | awk '{print $9}'", shell=True).decode("utf-8").strip()
        cpu_info = subprocess.check_output("adb shell getprop ro.product.model", shell=True).decode("utf-8")
        device_processor_arc = subprocess.check_output("adb shell getprop ro.product.cpu.abi", shell=True).decode("utf-8").strip()
        device_ram = subprocess.check_output("adb shell cat /proc/meminfo | grep MemTotal", shell=True).decode("utf-8").strip()
        device_os = subprocess.check_output("adb shell getprop ro.build.version.release", shell=True).decode("utf-8").strip()
        device_os_version = subprocess.check_output("adb shell getprop ro.miui.ui.version.name", shell=True).decode("utf-8").strip()
        screen_info = subprocess.check_output("adb shell wm size", shell=True).decode("utf-8").strip()
        screen_width, screen_height = screen_info.split()[-1].split("x")

        # Overlay device information on the captured screen
        cv2.putText(img, f"Battery: {device_info}", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
        cv2.putText(img, f"Device Name: {device_name}", (10, 70), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
        cv2.putText(img, f"Device IP: {device_ip}", (10, 110), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
        print("======================================================================================>")
        print(f"[+] DEVICE DETAILS:{device_info}")
        print(f"[+] DEVICE NAME: {device_name}")
        print(f"[+] DEVICE PRIVATE IP:{device_ip}")
        print(f"[+] PROCESSOR NAME: {cpu_info}")
        print(f"[+] Processor: {device_processor_arc}")
        print(f"[+] RAM: {device_ram}")
        print(f"[+] Operating System: {device_os}")
        print(f"[+] OS Version: {device_os_version}")
        print(f"[+] Screen Resolution: {screen_width}x{screen_height}")
        print("=======================================================================================>")

        cv2.imshow("$Aview_screen", img)
        if cv2.waitKey(1) == ord('q'):
            break

    cv2.destroyAllWindows()
monitor_device_screen()