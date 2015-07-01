/******************************************************************************
*
* Copyright (C) 2007 - 2014 Xilinx, Inc.  All rights reserved.
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* Use of the Software is limited solely to applications:
* (a) running on a Xilinx device, or
* (b) that interact with a Xilinx device through a bus or interconnect.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* XILINX CONSORTIUM BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY,
* WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF
* OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*
* Except as contained in this notice, the name of the Xilinx shall not be used
* in advertising or otherwise to promote the sale, use or other dealings in
* this Software without prior written authorization from Xilinx.
*
******************************************************************************/

/* Critical section management. */
#define portIPL_SHIFT				( 10UL )
#define portALL_IPL_BITS			( 0x3fUL << portIPL_SHIFT )
#define portSW0_BIT					( 0x01 << 8 )

#include <lwip/sys.h>
#include <arch/sys_arch.h>

#include <p32xxxx.h>
/*
 * This optional function does a "fast" critical region protection and returns
 * the previous protection level. This function is only called during very short
 * critical regions. An embedded system which supports ISR-based drivers might
 * want to implement this function by disabling interrupts. Task-based systems
 * might want to implement this by using a mutex or disabling tasking. This
 * function should support recursive calls from the same task or interrupt. In
 * other words, sys_arch_protect() could be called while already protected. In
 * that case the return value indicates that it is already protected.
 * sys_arch_protect() is only required if your port is supporting an operating
 * system.
 */
sys_prot_t
sys_arch_protect()
{
    sys_prot_t cur;
    /* Mask interrupts at and below the kernel interrupt priority. */
    cur = _CP0_GET_STATUS();

    /* Is the current IPL below configMAX_SYSCALL_INTERRUPT_PRIORITY? */
    if( ( ( cur & portALL_IPL_BITS ) >> portIPL_SHIFT ) < 3 )
    {
            cur &= ~portALL_IPL_BITS;
            _CP0_SET_STATUS( ( cur | ( 3 << portIPL_SHIFT ) ) );
    }
    return cur & portALL_IPL_BITS;
}

/*
 * This optional function does a "fast" set of critical region protection to the
 * value specified by pval. See the documentation for sys_arch_protect() for
 * more information. This function is only required if your port is supporting
 * an operating system.
 */
void
sys_arch_unprotect(sys_prot_t lev)
{												
    uint32_t ulStatus;
    /* Get the CP0 status */
    ulStatus = _CP0_GET_STATUS();											
    /* Unmask all interrupts. */										
    ulStatus &= ~portALL_IPL_BITS;
    /* Mask interrupt to the last level */
    ulStatus |= lev;
    _CP0_SET_STATUS( ulStatus );
}

int InsideISR(void)
{
	return ((_CP0_GET_STATUS()&0xfc00)?1:0);
}
