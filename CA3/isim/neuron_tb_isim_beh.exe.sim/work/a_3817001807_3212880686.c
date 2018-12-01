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
static const char *ng0 = "//Mac/Home/Documents/UNI/CAD/CA3/CA3/select_input.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

int ieee_p_1242562249_sub_1657552908_1035706684(char *, char *, char *);
char *ieee_p_1242562249_sub_1919365254_1035706684(char *, char *, char *, char *, int );
unsigned char ieee_p_2592010699_sub_1744673427_503743352(char *, char *, unsigned int , unsigned int );


static void work_a_3817001807_3212880686_p_0(char *t0)
{
    char t39[16];
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
    int t19;
    int t20;
    unsigned char t21;
    unsigned char t22;
    int t23;
    int t24;
    char *t25;
    int t26;
    int t27;
    int t28;
    int t29;
    char *t30;
    int t31;
    int t32;
    int t33;
    unsigned char t34;
    char *t35;
    char *t36;
    char *t37;
    char *t38;

LAB0:    xsi_set_current_line(48, ng0);
    t1 = (t0 + 1512U);
    t2 = *((char **)t1);
    t3 = *((unsigned char *)t2);
    t4 = (t3 == (unsigned char)3);
    if (t4 != 0)
        goto LAB2;

LAB4:    t1 = (t0 + 1312U);
    t4 = ieee_p_2592010699_sub_1744673427_503743352(IEEE_P_2592010699, t1, 0U, 0U);
    if (t4 == 1)
        goto LAB16;

LAB17:    t3 = (unsigned char)0;

LAB18:    if (t3 != 0)
        goto LAB14;

LAB15:
LAB3:    t1 = (t0 + 4040);
    *((int *)t1) = 1;

LAB1:    return;
LAB2:    xsi_set_current_line(49, ng0);
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
    t14 = (t0 + 4136);
    t15 = (t14 + 56U);
    t16 = *((char **)t15);
    t17 = (t16 + 56U);
    t18 = *((char **)t17);
    memcpy(t18, t1, 16U);
    xsi_driver_first_trans_fast_port(t14);
    xsi_set_current_line(50, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    if (-1 == -1)
        goto LAB8;

LAB9:    t6 = 0;

LAB10:    t7 = (t6 - 15);
    t8 = (t7 * -1);
    t9 = (1U * t8);
    t5 = (t2 + t9);
    t11 = (0 - 15);
    t12 = (t11 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    memset(t5, (unsigned char)2, t13);
    t10 = (t0 + 4200);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 16U);
    xsi_driver_first_trans_fast_port(t10);
    xsi_set_current_line(51, ng0);
    t1 = xsi_get_transient_memory(16U);
    memset(t1, 0, 16U);
    t2 = t1;
    t7 = (16U - 1);
    if (-1 == -1)
        goto LAB11;

LAB12:    t6 = 0;

LAB13:    t11 = (t6 - 15);
    t8 = (t11 * -1);
    t9 = (1U * t8);
    t5 = (t2 + t9);
    t19 = (16U - 1);
    t20 = (0 - t19);
    t12 = (t20 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    memset(t5, (unsigned char)2, t13);
    t10 = (t0 + 4264);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t1, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB5:    t6 = 15;
    goto LAB7;

LAB8:    t6 = 15;
    goto LAB10;

LAB11:    t6 = t7;
    goto LAB13;

LAB14:    xsi_set_current_line(53, ng0);
    t2 = (t0 + 1032U);
    t10 = *((char **)t2);
    t2 = (t0 + 2312U);
    t14 = *((char **)t2);
    t2 = (t0 + 6468U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t14, t2);
    t11 = (1 + t7);
    t19 = (t11 * 16);
    t20 = (t19 - 1);
    t6 = (47 - t20);
    t15 = (t0 + 2312U);
    t16 = *((char **)t15);
    t15 = (t0 + 6468U);
    t23 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t16, t15);
    t24 = (t23 * 16);
    xsi_vhdl_check_range_of_slice(47, 0, -1, t20, t24, -1);
    t8 = (t6 * 1U);
    t9 = (0 + t8);
    t17 = (t10 + t9);
    t18 = (t0 + 2312U);
    t25 = *((char **)t18);
    t26 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t25, t2);
    t27 = (1 + t26);
    t28 = (t27 * 16);
    t29 = (t28 - 1);
    t18 = (t0 + 2312U);
    t30 = *((char **)t18);
    t31 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t30, t15);
    t32 = (t31 * 16);
    t33 = (t32 - t29);
    t12 = (t33 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    t34 = (16U != t13);
    if (t34 == 1)
        goto LAB19;

LAB20:    t18 = (t0 + 4136);
    t35 = (t18 + 56U);
    t36 = *((char **)t35);
    t37 = (t36 + 56U);
    t38 = *((char **)t37);
    memcpy(t38, t17, 16U);
    xsi_driver_first_trans_fast_port(t18);
    xsi_set_current_line(54, ng0);
    t1 = (t0 + 1192U);
    t2 = *((char **)t1);
    t1 = (t0 + 2312U);
    t5 = *((char **)t1);
    t1 = (t0 + 6468U);
    t7 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t5, t1);
    t11 = (1 + t7);
    t19 = (t11 * 16);
    t20 = (t19 - 1);
    t6 = (47 - t20);
    t10 = (t0 + 2312U);
    t14 = *((char **)t10);
    t10 = (t0 + 6468U);
    t23 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t14, t10);
    t24 = (t23 * 16);
    xsi_vhdl_check_range_of_slice(47, 0, -1, t20, t24, -1);
    t8 = (t6 * 1U);
    t9 = (0 + t8);
    t15 = (t2 + t9);
    t16 = (t0 + 2312U);
    t17 = *((char **)t16);
    t26 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t17, t1);
    t27 = (1 + t26);
    t28 = (t27 * 16);
    t29 = (t28 - 1);
    t16 = (t0 + 2312U);
    t18 = *((char **)t16);
    t31 = ieee_p_1242562249_sub_1657552908_1035706684(IEEE_P_1242562249, t18, t10);
    t32 = (t31 * 16);
    t33 = (t32 - t29);
    t12 = (t33 * -1);
    t12 = (t12 + 1);
    t13 = (1U * t12);
    t3 = (16U != t13);
    if (t3 == 1)
        goto LAB21;

LAB22:    t16 = (t0 + 4200);
    t25 = (t16 + 56U);
    t30 = *((char **)t25);
    t35 = (t30 + 56U);
    t36 = *((char **)t35);
    memcpy(t36, t15, 16U);
    xsi_driver_first_trans_fast_port(t16);
    xsi_set_current_line(55, ng0);
    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 6468U);
    t5 = ieee_p_1242562249_sub_1919365254_1035706684(IEEE_P_1242562249, t39, t2, t1, 1);
    t10 = (t0 + 4264);
    t14 = (t10 + 56U);
    t15 = *((char **)t14);
    t16 = (t15 + 56U);
    t17 = *((char **)t16);
    memcpy(t17, t5, 16U);
    xsi_driver_first_trans_fast(t10);
    goto LAB3;

LAB16:    t2 = (t0 + 1672U);
    t5 = *((char **)t2);
    t21 = *((unsigned char *)t5);
    t22 = (t21 == (unsigned char)3);
    t3 = t22;
    goto LAB18;

LAB19:    xsi_size_not_matching(16U, t13, 0);
    goto LAB20;

LAB21:    xsi_size_not_matching(16U, t13, 0);
    goto LAB22;

}

static void work_a_3817001807_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;

LAB0:    xsi_set_current_line(58, ng0);

LAB3:    t1 = (t0 + 2312U);
    t2 = *((char **)t1);
    t1 = (t0 + 4328);
    t3 = (t1 + 56U);
    t4 = *((char **)t3);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);
    memcpy(t6, t2, 16U);
    xsi_driver_first_trans_fast_port(t1);

LAB2:    t7 = (t0 + 4056);
    *((int *)t7) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3817001807_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3817001807_3212880686_p_0,(void *)work_a_3817001807_3212880686_p_1};
	xsi_register_didat("work_a_3817001807_3212880686", "isim/neuron_tb_isim_beh.exe.sim/work/a_3817001807_3212880686.didat");
	xsi_register_executes(pe);
}
