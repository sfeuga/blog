---
layout: post

title: "Change \"Caps Lock\" Mapping on M$ Windows®"
---

According to [Keyboard and mouse class drivers](https://msdn.microsoft.com/en-us/library/windows/hardware/jj128267%28v=vs.85%29.aspx), we can easily change all keymaps with a simple tweak in the registry database.

The `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout` need to be change. This key contain a This value is of type `REG_BINARY` for the Scancode Map value.

The data format specified in the following table.

| Start offset (in bytes) |	Size (in bytes)	| Data |
| --- | --- | --- | 
| 0	| 4	| Header: Version Information |
| 4	| 4	| Header: Flags |
| 8	| 4	| Header: Number of Mappings |
| 12 | 4 | Individual Mapping |
| ... | ... | ... |
| Last 4 bytes | 4 | Null Terminator (0x00000000) |

Here’s the format of the binary data in the Scancode Map key :
`00000000 00000000 02000000 00003A00 00000000`

Here’s how it works:
- The first 16 zeros are just there to waste space.
- The "02" represents how many keys you are going to re-map plus 1.
- The next "0000" (just before "3A00") is the key we actually want Windows to map TO, which in this case is nothing, or 0.
- The "3A00" is the key we are mapping from, in this case the caps lock key.
- The next 8 zeros are there to waste space as the null terminator.

As you understand, with this code, you disable the caps lock key.

You can map between multiple keys by incrementing the "02" and then adding another blocks in the middle. The "3A00" in the mix is the scan code. For example, if you wanted to disable the caps lock key and then change scroll lock into a caps lock key:
`00000000 00000000 03000000 00003A00 3A004600 00000000`

Feel free to make your own mapping or just download [this key to disable caps lock](https://raw.githubusercontent.com/sfeuga/sfeuga.github.io/master/attachment/disableCapsLock.reg) or [this key to change caps lock to shift](https://raw.githubusercontent.com/sfeuga/sfeuga.github.io/master/attachment/caps2shift.reg) or [this key to change caps lock to control](https://raw.githubusercontent.com/sfeuga/sfeuga.github.io/master/attachment/caps2control.reg) or [this key to disable keyboard remap](https://raw.githubusercontent.com/sfeuga/sfeuga.github.io/master/attachment/disableKeyRemap.reg) and rename to `.reg`. Open it, confirm installation, reboot and enjoy !
