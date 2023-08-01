import cv2
import numpy as np
import subprocess
import time

def run_adb_command(command):
    try:
        output = subprocess.check_output(command, shell=True)
        print(f"[+] COMMAND ==>{command}")
        print(output.decode('utf-8'))
    except Exception as e:
        print(e)


def banner():
    print("_________________________________________________________________________")
    print("|.                          .                                .           |")
    print("|		  _       ___     ______            .                    |")
    print("|		 | |     / \ \   / / ___| _   _ ___                    . |")
    print("|		/ __)   / _ \ \ / /\___ \| | | / __|                     |")
    print("|	.	\__ \  / ___ \ V /  ___) | |_| \__MONITORA               |")
    print("|        	(   / /_/   \_\_/  |____/ \__,_|___/                     |")
    print("|  		 |_|                                                     |")
    print("|.                               |            .                     o    |")
    print("|o                       .     --o--                      .              |")
    print("|                                |                                       |")
    print("|                                                                        | ")
    print("|.                        .                          o              .    |")
    print("|                                                                        |")
    print("|                                                                        |")
    print("|       .          +-+-+-+-+-+-+-+-+-+-+-+-+-+-++-+-        o            |")
    print("|          .       |S|E|U|R|I|T|Y| | |E|D|I|T|I|O|N|            .        |")
    print("|                  +-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+-+                     |")
    print("└________________________________________________________________________|")


def check_adb():
    try:
        output = subprocess.check_output('adb version', shell=True)
        print('ADB is installed')
        return True
    except:
        print('ADB is not installed')
        return False

def install_adb():
    url = 'https://dl.google.com/android/repository/platform-tools-latest-windows.zip'
    file_name = 'platform-tools-latest-windows.zip'
    urllib.request.urlretrieve(url, file_name)
    os.system(f'tar -xf {file_name}')
    os.environ['PATH'] += os.pathsep + os.getcwd() + '\\platform-tools'


if not check_adb():
    install_adb()

def usag():
    print("[+] CONNECT YOUR ANDROID DEVICE USING ADB")
    print("[+] COMMAND FOR KALI LINUX: adb connect {device ip}:{device port}")
    print("[+] REPLACE {device ip} with your device ip address and {port} with DEVICE OPEN PORT")
    print("[+] TO OPEN PORT ON DEVICE, CONNECTED DEVICE WITH YOUR KALI MACHINE AND OPEN TERMINAL TYPE adb tcpip 5555 TO OPEN 5555 PORT ON YOUR CONNECTED DEVICE AND THEN TRY TO USE adb connect {device ip}:{device port}")

def check_device_connected():
    clear = run_adb_command('clear')
    result = subprocess.check_output(['adb', 'devices'])
    result = result.decode('utf-8') # decode the result from bytes to string
    lines = result.strip().split('\n')
    if len(lines) > 1:
        return True
    return False

if not check_device_connected():
    print("[-] DEVICE IS NOT CONNECTED WITH ADB :-< ")
    ip = input('Enter device IP: ')
    port = input('Enter device open port: ')
    run_adb_command(f'adb connect {ip}:{port}')

def monitor_device_screen():
    print("<==========================================================================================================>")
    banner()
    print("<==========================================================================================================>")
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
        device_info = run_adb_command('adb shell dumpsys battery')
        device_name = run_adb_command('adb shell getprop ro.product.model')
        device_ip = run_adb_command('adb shell ip route')
        cpu_info = run_adb_command('adb shell getprop ro.product.model')
        device_processor_arc = run_adb_command('adb shell getprop ro.product.cpu.abi')
        device_ram = run_adb_command('adb shell cat /proc/meminfo')
        device_os = run_adb_command('adb shell getprop ro.build.version.release')
        device_os_version = run_adb_command('adb shell getprop ro.miui.ui.version.name')
        device_screen = run_adb_command('adb shell wm size')

        # Overlay device information on the captured screen
        cv2.putText(img, f"Battery: {device_info}", (10, 30), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
        cv2.putText(img, f"Device Name: {device_name}", (10, 70), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
        cv2.putText(img, f"Device IP: {device_ip}", (10, 110), cv2.FONT_HERSHEY_SIMPLEX, 1, (0, 255, 0), 2)
        print("======================================================================================>")
        print("[+] MADE BY AVS")
        print("[-] BETA VERSION")
        print("[+] DISCORD: https://www.youtube.com/channel/UCFL-IX_rxNY_AIFdYq4QtWw")
        print("[+] YOUTUBE: https://www.youtube.com/channel/UCFL-IX_rxNY_AIFdYq4QtWw")
        print(f"[+] DEVICE DETAILS:{device_info}")
        print(f"[+] DEVICE NAME: {device_name}")
        print(f"[+] DEVICE PRIVATE IP:{device_ip}")
        print(f"[+] PROCESSOR NAME: {cpu_info}")
        print(f"[+] Processor: {device_processor_arc}")
        print(f"[+] RAM: {device_ram}")
        print(f"[+] Operating System: {device_os}")
        print(f"[+] OS Version: {device_os_version}")
        print(f"[+] SCREEN RESOLUTION : {device_screen}")
        print("=======================================================================================>")

        cv2.imshow("$Aview_screen", img)
        if cv2.waitKey(1) == ord('q'):
            break

    cv2.destroyAllWindows()
check_device_connected()
usag()
print("<==========================================================================================================>")
monitor_device_screen()
print("<==========================================================================================================>")