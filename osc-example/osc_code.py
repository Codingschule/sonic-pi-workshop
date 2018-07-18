from pythonosc import osc_message_builder
from pythonosc import udp_client
from time import sleep
sender = udp_client.SimpleUDPClient('127.0.0.1', 4559)

alphabet = dict(zip(list(" abcdefghjiklmnopqrstuvwxyz"),range(27)))
print(alphabet)

test_string = "lorem ipsum dolor sit amet aaaaa bbbbb"

for letter in test_string:
    sender.send_message('/trigger/example', [int(alphabet[letter]), 100, 1])
    
