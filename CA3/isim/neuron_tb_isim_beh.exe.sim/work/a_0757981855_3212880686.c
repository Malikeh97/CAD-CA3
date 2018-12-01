/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0x7708f090 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "//Mac/Home/Documents/UNI/CAD/CA3/CA3/activation.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

unsigned char ieee_p_1242562249_sub_2720078402_1035706684(char *, char *, char *, char *, char *);
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_0757981855_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    unsigned char t3;
    unsigned char t4;
    char *t5;
    unsigned int t6;
    int t7;
    unsigned int t8;
    unsigned int t9;
    char *t10;
    int t11;
    unsigned int t12;
    unsigned int t13;
    char *t14;
    char *t15;
    char *t16;
    char *t17;
    char *t18;
    unsigned char t19;
    unsigned char t20;
    unsigned char t21;
    char *t22;
    char *t23;
    char *t24;

LAB0:    xsi_set_current_line(45, ng0);
    t1 = (t0 + 1672U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1472U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB10;

LAB11:    t3 = (unsigned char)0;

LAB12:    if (t3 != 0)
        goto LAB8;

LAB9:
LAB3:    t1 = (t0 + 3312);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(46, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t5 = t1;
    if (-1 == -1)
        goto LAB5;

LAB6:    t6 = 0;

LAB7:    t7 = (t6 - 15);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t10 = (t5 + t9);
    t11 = (0 - 15);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    memset(t10, (unsigned char)2, t13);
    t14 = (t0 + 3392);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 16U);
    xsi_driver_first_trans_fast_port(t14);
    goto LAB3;

LAB5:    t6 = 15;
    goto LAB7;

LAB8:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1032U);
    t10 = *((char **)t2);
    t2 = (t0 + 5192U);
    t14 = (t0 + 1832U);
    t15 = *((char **)t14);
    t14 = (t0 + 5224U);
    t21 = ieee_p_1242562249_sub_2720078402_1035706684(IEEE_P_1242562249, t10, t2, t15, t14);
    if (t21 != 0)
        goto LAB13;

LAB15:    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    if (-1 == -1)
        goto LAB16;

LAB17:    t6 = 0;

LAB18:    t7 = (t6 - 15);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t5 = (t2 + t9);
    t11 = (0 - 15);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    memset(t5, (unsigned char)2, t13);
    t10 = (t0 + 3392);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 16U);
    xsi_driver_first_trans_fast_port(t10);

LAB14:    goto LAB3;

LAB10:    t2 = (t0 + 1192U);
    t5 = *((char **)t2);
    t19 = *((unsigned char *)t5);
    t20 = (t19 == (unsigned char)3);
    t3 = t20;
    goto LAB12;

LAB13:    xsi_set_current_line(49, ng0);
    t16 = (t0 + 1032U);
    t17 = *((char **)t16);
    t16 = (t0 + 3392);
    t18 = (t16 + 56U);
    t22 = *((char **)t18);
    t23 = (t22 + 56U);
    t24 = *((char **)t23);
    memcpy(t24, t17, 16U);
    xsi_driver_first_trans_fast_port(t16);
    goto LAB14;

LAB16:    t6 = 15;
    goto LAB18;

}


extern void work_a_0757981855_3212880686_init()
{
	static char *pe[] = {(void *)work_a_0757981855_3212880686_p_0};
	xsi_register_didat("work_a_0757981855_3212880686", "isim/neuron_tb_isim_beh.exe.sim/work/a_0757981855_3212880686.didat");
	xsi_register_executes(pe);
}
