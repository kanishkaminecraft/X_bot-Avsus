import subprocess
import re

command_output = subprocess.run(["netsh", "wlan", "show", "networks"], capture_output=True).stdout.decode()
networks = re.findall("SSID (.*) : (.*)\r", command_output)

for network in networks:
    ssid = network[1]
    print(f"SSID: {ssid}")