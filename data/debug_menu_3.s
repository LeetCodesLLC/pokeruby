.if DEBUG
#include "constants/decorations.h"
#include "constants/flags.h"
#include "constants/game_stat.h"
#include "constants/items.h"
#include "constants/map_objects.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/opponents.h"
#include "constants/songs.h"
#include "constants/species.h"
#include "constants/weather.h"
#include "constants/vars.h"
	.include "include/macros.inc"
	.include "constants/constants.inc"
	.include "include/macros/event.inc"

	.section .rodata

gUnknown_Debug_845DAE1::
	me_checkcompat gUnknown_Debug_845DAE1, 0x4, 0x4, 0x4, 0x80
	me_crc 0x0, _0845DAFF, gUnknown_Debug_845DDB2
_0845DAFF:
	me_initramscript MAP_PETALBURG_CITY_GYM, 0x1, _845DB56, _0845DD0D
	me_setrecordmixinggift 0x1, 0x5, ITEM_EON_TICKET
	me_runscript _0845DD0D
	me_end

_0845DB16:
	.string "Lauf und besuche deinen Vater in der\n"
	.string "ARENA von BLÜTENBURG CITY.$"

_845DB56:
	setvaddress _845DB56
	checkitem ITEM_EON_TICKET, 0x1
	compare_var_to_value RESULT, 0x1
	vgoto_if 0x1, _0845DBB4
	checkpcitem ITEM_EON_TICKET, 0x1
	compare RESULT, 0x1
	vgoto_if 0x1, _0845DBB4
	checkflag FLAG_ENCOUNTERED_LATIAS_OR_LATIOS
	vgoto_if 0x1, _0845DBB4
	lock
	faceplayer
	vmessage _0845DBBE
	waitmessage
	waitbuttonpress
	checkitemspace ITEM_EON_TICKET, 0x1
	compare RESULT, 0x0
	vgoto_if 0x1, _0845DBB5
	setorcopyvar VAR_SPECIAL_0, ITEM_EON_TICKET
	setorcopyvar VAR_SPECIAL_1, 0x1
	callstd 0x0
	setflag FLAG_SYS_HAS_EON_TICKET
	vmessage _0845DC00
	waitmessage
	waitbuttonpress
	release
_0845DBB4:
	killscript
_0845DBB5:
	vmessage _0845DC94
	waitmessage
	waitbuttonpress
	release
	end

_0845DBBE:
	.string "VATER: {PLAYER}! Schön, dich zu sehen!\n"
	.string "Hier ist ein Brief für dich, {PLAYER}.$"

_0845DC00:
	.string "VATER: Ich bin mir nicht sicher, es\n"
	.string "könnte ein TICKET für eine Fähre sein.\p"
	.string "Du solltest nach SEEGRASULB CITY gehen\n"
	.string "und dich dort genauer erkundigen.$"

_0845DC94:
	.string "VATER: {PLAYER}, die BASIS-TASCHE\n"
	.string "deines BEUTELS ist voll.\p"
	.string "Lagere einige deiner Basis-Items in\n"
	.string "deinem PC und komm dann wieder.$"

_0845DD0D:
	setvaddress _0845DD0D
	checkitem ITEM_EON_TICKET, 0x1
	compare RESULT, 0x1
	vgoto_if 0x1, _0845DD53
	checkpcitem ITEM_EON_TICKET, 0x1
	compare RESULT, 0x1
	vgoto_if 0x1, _0845DD53
	checkflag FLAG_ENCOUNTERED_LATIAS_OR_LATIOS
	vgoto_if 0x1, _0845DD53
	checkitemspace ITEM_EON_TICKET, 0x1
	compare RESULT, 0x0
	vgoto_if 0x1, _0845DD5B
	vloadptr _0845DB16
	setmysteryeventstatus 0x2
	end

_0845DD53:
	vloadptr _0845DD63
	setmysteryeventstatus 0x3
	end

_0845DD5B:
	vloadptr _0845DD95
	setmysteryeventstatus 0x3
	end

_0845DD63:
	.string "Dieses GESCHEHEN kann nur einmal\n"
	.string "gespielt werden.$"

_0845DD95:
    .string "Deine BASIS-TASCHE ist voll.$"

gUnknown_Debug_845DDB2::
	.byte 0x01, 0xb2, 0xdd, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0xd0, 0xdd, 0x45, 0x08, 0x06, 0xe3, 0x45, 0x08, 0x07, 0xd6
	.byte 0xdd, 0x45, 0x08, 0x02

gUnknown_Debug_845DDD6::
	.space 0x530

gUnknown_Debug_845E306::
	.byte 0x01, 0x06, 0xe3, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x05, 0x29, 0xe3, 0x45, 0x08, 0x03, 0x02, 0x4f, 0xe3, 0x45, 0x08, 0x03, 0x03, 0x87, 0xe3
	.byte 0x45, 0x08, 0x02, 0xb8, 0x29, 0xe3, 0x45, 0x08, 0x43, 0x21, 0x0d, 0x80, 0x06, 0x00, 0xbb, 0x01, 0x4c, 0xe3, 0x45, 0x08, 0x79, 0x45, 0x01, 0x0f, 0x2c, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x0e, 0x02, 0x02, 0x0e, 0x03, 0x02, 0xbf, 0xdd, 0xe2, 0x00, 0xca, 0xc9, 0xc5, 0x1b, 0xc7, 0xc9, 0xc8, 0x00, 0xeb, 0xe9, 0xe6, 0xd8, 0xd9, 0x00, 0xdd, 0xe2, 0x00, 0xd8, 0xd5
	.byte 0xe7, 0x00, 0xce, 0xd9, 0xd5, 0xe1, 0x00, 0xd8, 0xd9, 0xe7, 0xfe, 0xcd, 0xe4, 0xdd, 0xd9, 0xe0, 0xd9, 0xe6, 0xe7, 0x00, 0xd5, 0xe9, 0xda, 0xdb, 0xd9, 0xe2, 0xe3, 0xe1, 0xe1, 0xd9, 0xe2, 0xad
	.byte 0xff, 0xbe, 0xd5, 0xe7, 0x00, 0xce, 0xd9, 0xd5, 0xe1, 0x00, 0xd8, 0xd9, 0xe7, 0x00, 0xcd, 0xe4, 0xdd, 0xd9, 0xe0, 0xd9, 0xe6, 0xe7, 0x00, 0xdd, 0xe7, 0xe8, 0x00, 0xea, 0xe3, 0xe0, 0xe0, 0xe7
	.byte 0xe8, 0xf4, 0xe2, 0xd8, 0xdd, 0xdb, 0xad, 0xfe, 0xbf, 0xe7, 0x00, 0xdf, 0xd5, 0xe2, 0xe2, 0x00, 0xdf, 0xd9, 0xdd, 0xe2, 0x00, 0xeb, 0xd9, 0xdd, 0xe8, 0xd9, 0xe6, 0xd9, 0xe7, 0x00, 0xca, 0xc9
	.byte 0xc5, 0x1b, 0xc7, 0xc9, 0xc8, 0xfa, 0xd5, 0xe9, 0xda, 0xdb, 0xd9, 0xe2, 0xe3, 0xe1, 0xe1, 0xd9, 0xe2, 0x00, 0xeb, 0xd9, 0xe6, 0xd8, 0xd9, 0xe2, 0xad, 0xff

gUnknown_Debug_845E3E0::
	.byte 0x01, 0xe0, 0xe3, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xfe, 0xe3, 0x45, 0x08, 0x02, 0xe4, 0x45, 0x08, 0x08, 0x00
	.byte 0x01, 0x02

gUnknown_Debug_845E402::
	.byte 0x01, 0x02, 0xe4, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x20, 0xe4, 0x45, 0x08, 0x22, 0xe4, 0x45, 0x08, 0x09, 0x02

gUnknown_Debug_845E422::
	.byte 0x01, 0x22, 0xe4, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x40, 0xe4, 0x45, 0x08, 0x43, 0xe4, 0x45, 0x08, 0x0a, 0x01
	.byte 0x02

gUnknown_Debug_845E443::
	.byte 0x01, 0x43, 0xe4, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x61, 0xe4, 0x45, 0x08, 0xef, 0xe4, 0x45, 0x08, 0x0c, 0x67
	.byte 0xe4, 0x45, 0x08, 0x02

gUnknown_Debug_845E467::
	.space 100

gUnknown_Debug_845E4CB::
	.space 36

gUnknown_Debug_845E4EF::
	.byte 0x01, 0xef, 0xe4, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x0d, 0x06, 0xe5, 0x45, 0x08, 0x02

gUnknown_Debug_845E506::
	.space 256

gUnknown_Debug_845E606::
	.byte 0x01, 0x06, 0xe6, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x0e, 0x02

gUnknown_Debug_845E619::
	.byte 0x01, 0x19, 0xe6, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x0f, 0x00, 0x00, 0x00, 0x00, 0x37, 0xe6, 0x45, 0x08, 0x12, 0xe7, 0x45, 0x08, 0x06, 0x08
	.byte 0x01, 0x01, 0x83, 0xe6, 0x45, 0x08, 0x12, 0xe7, 0x45, 0x08, 0x03, 0xff, 0x4c, 0xe6, 0x45, 0x08, 0x04, 0x02, 0x02, 0xbc, 0xd9, 0xe7, 0xe9, 0xd7, 0xdc, 0xd9, 0x00, 0xd8, 0xd9, 0xdd, 0xe2, 0xd9
	.byte 0xe2, 0x00, 0xd0, 0xd5, 0xe8, 0xd9, 0xe6, 0x00, 0xdd, 0xe2, 0x00, 0xd8, 0xd9, 0xe6, 0x00, 0xbb, 0xcc, 0xbf, 0xc8, 0xbb, 0xfe, 0xea, 0xe3, 0xe2, 0x00, 0xbc, 0xc6, 0xf3, 0xce, 0xbf, 0xc8, 0xbc
	.byte 0xcf, 0xcc, 0xc1, 0x00, 0xbd, 0xc3, 0xce, 0xd3, 0xad, 0xff, 0xb8, 0x83, 0xe6, 0x45, 0x08, 0x47, 0xa9, 0x00, 0x01, 0x00, 0x21, 0x0d, 0x80, 0x01, 0x00, 0xbb, 0x01, 0xbf, 0xe6, 0x45, 0x08, 0x4a
	.byte 0xa9, 0x00, 0x01, 0x00, 0x21, 0x0d, 0x80, 0x01, 0x00, 0xbb, 0x01, 0xbf, 0xe6, 0x45, 0x08, 0x6a, 0x5a, 0xbd, 0xc0, 0xe6, 0x45, 0x08, 0x66, 0x6d, 0x1a, 0x00, 0x80, 0xa9, 0x00, 0x1a, 0x01, 0x80
	.byte 0x01, 0x00, 0x09, 0x00, 0x6c, 0x0d, 0x0c, 0xd0, 0xbb, 0xce, 0xbf, 0xcc, 0xf0, 0x00, 0xc2, 0xdd, 0xb8, 0x00, 0xfd, 0x01, 0xab, 0xfb, 0xc3, 0xd7, 0xdc, 0x00, 0xdc, 0xd5, 0xd6, 0xd9, 0x00, 0xdb
	.byte 0xd9, 0xe6, 0xd5, 0xd8, 0xd9, 0x00, 0xd8, 0xdd, 0xd9, 0xe7, 0xd9, 0x00, 0xe7, 0xd9, 0xe0, 0xe8, 0xd9, 0xe2, 0xd9, 0x00, 0xbc, 0xbf, 0xbf, 0xcc, 0xbf, 0xfe, 0xd9, 0xe6, 0xdc, 0xd5, 0xe0, 0xe8
	.byte 0xd9, 0xe2, 0xad, 0x00, 0xc3, 0xd7, 0xdc, 0x00, 0xe7, 0xd7, 0xdc, 0xd9, 0xe2, 0xdf, 0xd9, 0x00, 0xe7, 0xdd, 0xd9, 0x00, 0xd8, 0xdd, 0xe6, 0xab, 0xff

gUnknown_Debug_845E712::
	.byte 0x01, 0x12, 0xe7, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0x30, 0xe7, 0x45, 0x08, 0x97, 0xe7, 0x45, 0x08, 0x05, 0x36
	.byte 0xe7, 0x45, 0x08, 0x02, 0xb8, 0x36, 0xe7, 0x45, 0x08, 0x81, 0x00, 0x78, 0x00, 0x4b, 0x78, 0x00, 0x21, 0x0d, 0x80, 0x00, 0x00, 0xbb, 0x01, 0x55, 0xe7, 0x45, 0x08, 0xbe, 0x5d, 0xe7, 0x45, 0x08
	.byte 0x0e, 0x02, 0x02, 0xbe, 0x71, 0xe7, 0x45, 0x08, 0x0e, 0x03, 0x02, 0xfd, 0x02, 0x00, 0xeb, 0xe9, 0xe6, 0xd8, 0xd9, 0x00, 0xf6, 0xd6, 0xd9, 0xe6, 0xdb, 0xd9, 0xd6, 0xd9, 0xe2, 0xad, 0xff, 0xbf
	.byte 0xe7, 0x00, 0xdd, 0xe7, 0xe8, 0x00, 0xdf, 0xd9, 0xdd, 0xe2, 0x00, 0xca, 0xe0, 0xd5, 0xe8, 0xee, 0x00, 0xda, 0xf6, 0xe6, 0x00, 0xfd, 0x02, 0xfe, 0xea, 0xe3, 0xe6, 0xdc, 0xd5, 0xe2, 0xd8, 0xd9
	.byte 0xe2, 0xad, 0xad, 0xad, 0xff

gUnknown_Debug_845E797::
	.byte 0x01, 0x97, 0xe7, 0x45, 0x08, 0x04, 0x00, 0x04, 0x00, 0x00, 0x00, 0x04, 0x00, 0x80, 0x00, 0x00, 0x00, 0x10, 0x00, 0x00, 0x00, 0x00, 0xb5, 0xe7, 0x45, 0x08, 0xbb, 0xe7, 0x45, 0x08

gUnknown_Debug_845E7B5::
	.byte 0x0b, 0x01, 0x03, 0x0d, 0x00, 0x02

gUnknown_Debug_845E7BB::
	.byte 0x00

.endif


