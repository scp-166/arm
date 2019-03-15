/*
点亮n_led1
*/
/* 表示为代码段 */
.text 
.global _start

_start:
/*
配置GPF4引脚
GPFCON配置类型
写入0x100(GPFCON[9:8]为01，表示输出)到GPFCON的地址(0x56000050)上
*/
	ldr r1, =0x56000050 /* 伪指令 */
	mov r0, #0x100
	str r0, [r1]
	

/*
配置GPF4引脚
GPFDAT配置引脚状态
写入0x10(GPFDAT[4]为1)到GPFCON的地址(0x56000054)上时，为1，led灭(n_led1种的n表示低电平有效)
写入0x00(GPFDAT[4]为0)到GPFCON的地址(0x56000054)上时，为0，led亮
*/

	ldr r1, =0x56000054 /* 伪指令 */
	mov r0, #0
	str r0, [r1]


/* 死循环，避免读到后续字节 */
halt:
	b halt












