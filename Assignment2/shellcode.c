char shellcode[] = "\xeb\x19\x31\xc0\xb0\x04\x31\xdb\xb3\x01\x59\x31\xd2"
				   "\xb2\x19\xcd\x80\x31\xc0\xb0\x01\x31\xdb\xb3\x01\xcd"
				   "\x80\xe8\xe2\xff\xff\xff\x4e\x6f\x77\x20\x49\x20\x70"
				   "\x77\x6e\x20\x79\x6f\x75\x72\x20\x63\x6f\x6d\x70\x75\x74\x65\x72\x0d\x0a";

void main() {
   (*(void(*)()) shellcode)();
}