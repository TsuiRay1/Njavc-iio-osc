	.file	"generic_dac.c"
	.text
Ltext0:
	.p2align 4
	.def	_save_widget_value;	.scl	3;	.type	32;	.endef
_save_widget_value:
LVL0:
LFB1137:
	.file 1 "plugins/generic_dac.c"
	.loc 1 55 1 view -0
	.cfi_startproc
	.loc 1 56 2 view LVU1
	.loc 1 55 1 is_stmt 0 view LVU2
	movl	8(%esp), %eax
	.loc 1 56 2 view LVU3
	movl	%eax, 4(%esp)
LVL1:
	.loc 1 56 2 view LVU4
	jmp	*32(%eax)
LVL2:
	.cfi_endproc
LFE1137:
	.p2align 4
	.def	_generic_identify;	.scl	3;	.type	32;	.endef
_generic_identify:
LVL3:
LFB1139:
	.loc 1 88 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 89 2 view LVU6
	.loc 1 90 1 is_stmt 0 view LVU7
	movl	$1, %eax
	ret
	.cfi_endproc
LFE1139:
	.p2align 4
	.def	_context_destroy;	.scl	3;	.type	32;	.endef
_context_destroy:
LVL4:
LFB1144:
	.loc 1 205 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 206 2 view LVU9
	.loc 1 208 2 view LVU10
	.loc 1 205 1 is_stmt 0 view LVU11
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	.loc 1 208 12 view LVU12
	movl	_dac_tx_manager_list, %ebx
LVL5:
	.loc 1 208 35 is_stmt 1 view LVU13
	.loc 1 208 2 is_stmt 0 view LVU14
	testl	%ebx, %ebx
	je	L5
	.p2align 4,,10
	.p2align 3
L6:
	.loc 1 209 3 is_stmt 1 discriminator 7 view LVU15
	.loc 1 209 24 is_stmt 0 discriminator 7 view LVU16
	movl	(%ebx), %eax
	.loc 1 210 3 discriminator 7 view LVU17
	movl	%eax, (%esp)
	.loc 1 209 18 discriminator 7 view LVU18
	movl	%eax, _dac_tx_manager
	.loc 1 210 3 is_stmt 1 discriminator 7 view LVU19
	call	_dac_data_manager_free
LVL6:
	.loc 1 211 3 discriminator 7 view LVU20
	.loc 1 208 48 is_stmt 0 discriminator 7 view LVU21
	movl	4(%ebx), %ebx
LVL7:
	.loc 1 211 18 discriminator 7 view LVU22
	movl	$0, _dac_tx_manager
	.loc 1 208 41 is_stmt 1 discriminator 7 view LVU23
LVL8:
	.loc 1 208 35 discriminator 7 view LVU24
	.loc 1 208 2 is_stmt 0 discriminator 7 view LVU25
	testl	%ebx, %ebx
	jne	L6
	.loc 1 213 2 view LVU26
	movl	_dac_tx_manager_list, %ebx
LVL9:
L5:
	.loc 1 213 2 is_stmt 1 view LVU27
	movl	%ebx, (%esp)
	call	_g_slist_free
LVL10:
	.loc 1 214 2 view LVU28
	.loc 1 216 2 is_stmt 0 view LVU29
	movl	_ctx, %eax
	.loc 1 214 22 view LVU30
	movl	$0, _dac_tx_manager_list
	.loc 1 216 2 is_stmt 1 view LVU31
	movl	%eax, 32(%esp)
LVL11:
	.loc 1 217 1 is_stmt 0 view LVU32
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	.loc 1 216 2 view LVU33
	jmp	_osc_destroy_context
LVL12:
	.cfi_endproc
LFE1144:
	.p2align 4
	.def	_compare_func;	.scl	3;	.type	32;	.endef
_compare_func:
LVL13:
LFB1141:
	.loc 1 108 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 109 2 view LVU35
	.loc 1 111 2 view LVU36
	.loc 1 111 9 is_stmt 0 view LVU37
	jmp	_strcmp
LVL14:
	.cfi_endproc
LFE1141:
	.section .rdata,"dr"
LC0:
	.ascii "%s\0"
	.text
	.p2align 4
	.def	_sprintf.constprop.0;	.scl	3;	.type	32;	.endef
_sprintf.constprop.0:
LVL15:
LFB1146:
	.file 2 "D:/msys64/mingw32/i686-w64-mingw32/include/stdio.h"
	.loc 2 382 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 2 384 3 view LVU39
	.loc 2 385 3 view LVU40
	.loc 2 385 35 view LVU41
	.loc 2 382 5 is_stmt 0 view LVU42
	subl	$28, %esp
	.cfi_def_cfa_offset 32
	.loc 2 385 35 view LVU43
	leal	40(%esp), %eax
LVL16:
	.loc 2 386 3 is_stmt 1 view LVU44
	.loc 2 386 14 is_stmt 0 view LVU45
	movl	$LC0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	32(%esp), %eax
	movl	%eax, (%esp)
	call	___mingw_vsprintf
LVL17:
	.loc 2 387 3 is_stmt 1 view LVU46
	.loc 2 388 3 view LVU47
	.loc 2 389 1 is_stmt 0 view LVU48
	addl	$28, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1146:
	.section .rdata,"dr"
	.align 4
LC1:
	.ascii "unhandled widget type, attribute: %s\12\0"
	.text
	.p2align 4
	.def	_printf.constprop.0;	.scl	3;	.type	32;	.endef
_printf.constprop.0:
LVL18:
LFB1145:
	.loc 2 354 5 is_stmt 1 view -0
	.cfi_startproc
	.loc 2 356 3 view LVU50
	.loc 2 357 3 view LVU51
	.loc 2 357 35 view LVU52
	.loc 2 354 5 is_stmt 0 view LVU53
	pushl	%ebx
	.cfi_def_cfa_offset 8
	.cfi_offset 3, -8
	subl	$24, %esp
	.cfi_def_cfa_offset 32
	.loc 2 357 35 view LVU54
	leal	36(%esp), %ebx
LVL19:
	.loc 2 358 3 is_stmt 1 view LVU55
	.loc 2 358 14 is_stmt 0 view LVU56
	movl	$1, (%esp)
	call	*__imp____acrt_iob_func
LVL20:
	movl	%ebx, 8(%esp)
	movl	$LC1, 4(%esp)
	movl	%eax, (%esp)
	call	___mingw_vfprintf
LVL21:
	.loc 2 359 3 is_stmt 1 view LVU57
	.loc 2 360 3 view LVU58
	.loc 2 361 1 is_stmt 0 view LVU59
	addl	$24, %esp
	.cfi_def_cfa_offset 8
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
LFE1145:
	.section .rdata,"dr"
LC2:
	.ascii "generic_dac\0"
LC3:
	.ascii "generic_panel\0"
LC4:
	.ascii "dds_vbox\0"
LC5:
	.ascii "DDS\0"
	.align 4
LC7:
	.ascii "D:/msys64/usr/local/lib/osc/waveforms\0"
	.text
	.p2align 4
	.def	_generic_init;	.scl	3;	.type	32;	.endef
_generic_init:
LVL22:
LFB1143:
	.loc 1 130 1 is_stmt 1 view -0
	.cfi_startproc
	.loc 1 131 2 view LVU61
	.loc 1 132 2 view LVU62
	.loc 1 133 2 view LVU63
	.loc 1 134 2 view LVU64
	.loc 1 135 2 view LVU65
	.loc 1 136 2 view LVU66
	.loc 1 137 2 view LVU67
	.loc 1 138 2 view LVU68
	.loc 1 140 2 view LVU69
	.loc 1 130 1 is_stmt 0 view LVU70
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$60, %esp
	.cfi_def_cfa_offset 80
	.loc 1 140 8 view LVU71
	call	_osc_create_context
LVL23:
	.loc 1 140 6 view LVU72
	movl	%eax, _ctx
	.loc 1 141 2 is_stmt 1 view LVU73
	.loc 1 141 5 is_stmt 0 view LVU74
	testl	%eax, %eax
	je	L50
	.loc 1 144 2 is_stmt 1 view LVU75
	.loc 1 144 12 is_stmt 0 view LVU76
	call	_gtk_builder_new
LVL24:
	.loc 1 145 6 view LVU77
	movl	$LC2, 4(%esp)
	movl	%eax, (%esp)
	.loc 1 144 12 view LVU78
	movl	%eax, %ebx
LVL25:
	.loc 1 145 2 is_stmt 1 view LVU79
	.loc 1 145 6 is_stmt 0 view LVU80
	call	_osc_load_glade_file
LVL26:
	.loc 1 145 5 view LVU81
	testl	%eax, %eax
	js	L50
	.loc 1 148 2 is_stmt 1 view LVU82
	.loc 1 148 18 is_stmt 0 view LVU83
	call	_gtk_widget_get_type
LVL27:
	movl	%ebx, (%esp)
	movl	$LC3, 4(%esp)
	movl	%eax, %esi
	call	_gtk_builder_get_object
LVL28:
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_g_type_check_instance_cast
LVL29:
	.loc 1 149 13 view LVU84
	movl	%ebx, (%esp)
	movl	$LC4, 4(%esp)
	.loc 1 148 18 view LVU85
	movl	%eax, 36(%esp)
LVL30:
	.loc 1 149 2 is_stmt 1 view LVU86
	.loc 1 149 13 is_stmt 0 view LVU87
	call	_gtk_builder_get_object
LVL31:
	.loc 1 149 13 view LVU88
	movl	%esi, 4(%esp)
	movl	%eax, (%esp)
	call	_g_type_check_instance_cast
LVL32:
LBB22:
LBB23:
	.loc 1 98 12 view LVU89
	movl	_plugin_list, %ebx
LVL33:
	.loc 1 98 12 view LVU90
LBE23:
LBE22:
	.loc 1 149 13 view LVU91
	movl	%eax, 44(%esp)
LVL34:
	.loc 1 150 2 is_stmt 1 view LVU92
LBB26:
LBI22:
	.loc 1 92 17 view LVU93
LBB24:
	.loc 1 94 2 view LVU94
	.loc 1 95 2 view LVU95
	.loc 1 96 2 view LVU96
	.loc 1 98 2 view LVU97
	.loc 1 98 27 view LVU98
	.loc 1 98 2 is_stmt 0 view LVU99
	testl	%ebx, %ebx
	je	L34
	.loc 1 95 10 view LVU100
	xorl	%esi, %esi
LVL35:
	.p2align 4,,10
	.p2align 3
L23:
	.loc 1 99 3 is_stmt 1 view LVU101
	.loc 1 99 10 is_stmt 0 view LVU102
	movl	(%ebx), %edx
LVL36:
	.loc 1 100 3 is_stmt 1 view LVU103
	.loc 1 100 13 is_stmt 0 view LVU104
	movl	56(%edx), %eax
	.loc 1 100 6 view LVU105
	testl	%eax, %eax
	je	L22
	.loc 1 101 4 is_stmt 1 view LVU106
	.loc 1 101 20 is_stmt 0 view LVU107
	movl	%edx, (%esp)
	call	*%eax
LVL37:
	.loc 1 101 20 view LVU108
	movl	%esi, (%esp)
	movl	%eax, 4(%esp)
	call	_g_slist_concat
LVL38:
	movl	%eax, %esi
LVL39:
L22:
	.loc 1 98 33 is_stmt 1 view LVU109
	.loc 1 98 40 is_stmt 0 view LVU110
	movl	4(%ebx), %ebx
LVL40:
	.loc 1 98 27 is_stmt 1 view LVU111
	.loc 1 98 2 is_stmt 0 view LVU112
	testl	%ebx, %ebx
	jne	L23
	.loc 1 98 2 view LVU113
	movl	%esi, 32(%esp)
LVL41:
L21:
	.loc 1 104 2 is_stmt 1 view LVU114
	.loc 1 104 2 is_stmt 0 view LVU115
LBE24:
LBE26:
	.loc 1 151 2 is_stmt 1 view LVU116
	.loc 1 151 14 is_stmt 0 view LVU117
	movl	_ctx, %ebx
	movl	%ebx, (%esp)
	call	*__imp__iio_context_get_devices_count
LVL42:
	movl	%eax, 28(%esp)
LVL43:
	.loc 1 153 2 is_stmt 1 view LVU118
	.loc 1 153 14 view LVU119
	.loc 1 153 2 is_stmt 0 view LVU120
	testl	%eax, %eax
	jle	L24
	.loc 1 153 9 view LVU121
	movl	$0, 24(%esp)
LBB27:
LBB28:
	.loc 1 120 8 view LVU122
	movl	__imp__iio_device_get_channel, %ebp
LBE28:
LBE27:
	.loc 1 135 7 view LVU123
	movb	$0, 43(%esp)
LVL44:
	.p2align 4,,10
	.p2align 3
L31:
	.loc 1 154 3 is_stmt 1 view LVU124
	.loc 1 154 9 is_stmt 0 view LVU125
	movl	24(%esp), %eax
	movl	%ebx, (%esp)
LBB32:
LBB29:
	.loc 1 119 9 view LVU126
	xorl	%edi, %edi
LBE29:
LBE32:
	.loc 1 154 9 view LVU127
	movl	%eax, 4(%esp)
	call	*__imp__iio_context_get_device
LVL45:
	.loc 1 154 7 view LVU128
	movl	%eax, _dac
	.loc 1 155 3 is_stmt 1 view LVU129
LVL46:
LBB33:
LBI27:
	.loc 1 114 13 view LVU130
LBB30:
	.loc 1 116 2 view LVU131
	.loc 1 117 2 view LVU132
	.loc 1 119 2 view LVU133
	.loc 1 119 2 is_stmt 0 view LVU134
LBE30:
LBE33:
	.loc 1 154 9 view LVU135
	movl	%eax, %ebx
LBB34:
LBB31:
	.loc 1 119 18 view LVU136
	movl	%eax, (%esp)
	call	*__imp__iio_device_get_channels_count
LVL47:
	.loc 1 119 18 view LVU137
	movl	%eax, 20(%esp)
	.loc 1 119 2 view LVU138
	jmp	L25
LVL48:
	.p2align 4,,10
	.p2align 3
L28:
	.loc 1 120 3 is_stmt 1 view LVU139
	.loc 1 120 8 is_stmt 0 view LVU140
	movl	%edi, 4(%esp)
	movl	%ebx, (%esp)
	call	*%ebp
LVL49:
	.loc 1 121 7 view LVU141
	movl	%eax, (%esp)
	.loc 1 120 8 view LVU142
	movl	%eax, %esi
LVL50:
	.loc 1 121 3 is_stmt 1 view LVU143
	.loc 1 121 7 is_stmt 0 view LVU144
	call	*__imp__iio_channel_is_scan_element
LVL51:
	.loc 1 121 6 view LVU145
	testb	%al, %al
	je	L26
	.loc 1 121 42 view LVU146
	movl	%esi, (%esp)
	call	*__imp__iio_channel_is_output
LVL52:
	.loc 1 121 39 view LVU147
	testb	%al, %al
	jne	L27
L26:
	.loc 1 119 54 is_stmt 1 view LVU148
	.loc 1 119 55 is_stmt 0 view LVU149
	addl	$1, %edi
LVL53:
L25:
	.loc 1 119 14 is_stmt 1 view LVU150
	.loc 1 119 2 is_stmt 0 view LVU151
	cmpl	20(%esp), %edi
	jne	L28
LVL54:
L29:
	.loc 1 119 2 view LVU152
LBE31:
LBE34:
	.loc 1 153 29 is_stmt 1 discriminator 2 view LVU153
	.loc 1 153 30 is_stmt 0 discriminator 2 view LVU154
	addl	$1, 24(%esp)
LVL55:
	.loc 1 153 30 discriminator 2 view LVU155
	movl	24(%esp), %eax
LVL56:
	.loc 1 153 14 is_stmt 1 discriminator 2 view LVU156
	.loc 1 153 2 is_stmt 0 discriminator 2 view LVU157
	cmpl	%eax, 28(%esp)
	je	L30
L51:
	.loc 1 154 9 view LVU158
	movl	_ctx, %ebx
	jmp	L31
LVL57:
	.p2align 4,,10
	.p2align 3
L27:
	.loc 1 158 18 view LVU159
	movb	%al, 20(%esp)
LVL58:
	.loc 1 158 3 is_stmt 1 view LVU160
	.loc 1 158 18 is_stmt 0 view LVU161
	movl	%ebx, (%esp)
	call	*__imp__iio_device_get_name
LVL59:
	.loc 1 159 3 is_stmt 1 view LVU162
	.loc 1 159 6 is_stmt 0 view LVU163
	movzbl	20(%esp), %edx
	testl	%eax, %eax
	je	L29
	.loc 1 162 7 view LVU164
	movl	%eax, 4(%esp)
	movl	32(%esp), %eax
LVL60:
	.loc 1 162 7 view LVU165
	movl	$_compare_func, 8(%esp)
	movl	%eax, (%esp)
	movb	%dl, 20(%esp)
	.loc 1 162 3 is_stmt 1 view LVU166
	.loc 1 162 7 is_stmt 0 view LVU167
	call	_g_slist_find_custom
LVL61:
	.loc 1 162 6 view LVU168
	testl	%eax, %eax
	jne	L29
	.loc 1 165 3 is_stmt 1 view LVU169
	.loc 1 165 20 is_stmt 0 view LVU170
	movl	_ctx, %eax
	movl	$0, 4(%esp)
	movl	%eax, 8(%esp)
	movl	_dac, %eax
	movl	%eax, (%esp)
	call	_dac_data_manager_new
LVL62:
	.loc 1 165 18 view LVU171
	movl	%eax, _dac_tx_manager
	.loc 1 166 3 is_stmt 1 view LVU172
	.loc 1 166 6 is_stmt 0 view LVU173
	testl	%eax, %eax
	je	L29
	.loc 1 169 3 is_stmt 1 view LVU174
LVL63:
	.loc 1 171 3 view LVU175
	.loc 1 171 19 is_stmt 0 view LVU176
	movl	$LC5, (%esp)
	call	_gtk_frame_new
LVL64:
	movl	%eax, %ebx
LVL65:
	.loc 1 172 3 is_stmt 1 view LVU177
	.loc 1 172 21 is_stmt 0 view LVU178
	call	_gtk_container_get_type
LVL66:
	.loc 1 172 21 view LVU179
	movl	%eax, 4(%esp)
	movl	%eax, %esi
	movl	44(%esp), %eax
	movl	%eax, (%esp)
	call	_g_type_check_instance_cast
LVL67:
	.loc 1 172 3 view LVU180
	movl	%ebx, 4(%esp)
	movl	%eax, (%esp)
	call	_gtk_container_add
LVL68:
	.loc 1 173 3 is_stmt 1 view LVU181
	movl	_dac_tx_manager, %eax
	movl	%eax, (%esp)
	call	_dac_data_manager_get_gui_container
LVL69:
	.loc 1 173 21 is_stmt 0 view LVU182
	movl	%esi, 4(%esp)
	movl	%ebx, (%esp)
	.loc 1 173 3 view LVU183
	movl	%eax, %edi
	.loc 1 173 21 view LVU184
	call	_g_type_check_instance_cast
LVL70:
	.loc 1 173 3 view LVU185
	movl	%edi, 4(%esp)
	movl	%eax, (%esp)
	call	_gtk_container_add
LVL71:
	.loc 1 175 3 is_stmt 1 view LVU186
	movl	%ebx, (%esp)
	call	_gtk_widget_show_all
LVL72:
	.loc 1 177 3 view LVU187
	movl	_dac_tx_manager, %eax
	movl	$-4194304, 4(%esp)
	movl	$1104150527, 8(%esp)
	movl	%eax, (%esp)
	call	_dac_data_manager_freq_widgets_range_update
LVL73:
	.loc 1 178 3 view LVU188
	movl	_dac_tx_manager, %eax
	movl	%eax, (%esp)
	call	_dac_data_manager_update_iio_widgets
LVL74:
	.loc 1 180 3 view LVU189
	.loc 1 65 14 view LVU190
	.loc 1 182 3 view LVU191
LBB35:
LBI35:
	.loc 1 49 13 view LVU192
LBB36:
	.loc 1 51 2 view LVU193
	movl	$0, 4(%esp)
	movl	$_tx_widgets, (%esp)
	call	_iio_update_widgets
LVL75:
LBE36:
LBE35:
	.loc 1 183 3 view LVU194
	movl	_dac_tx_manager, %eax
	movl	%eax, (%esp)
	call	_dac_data_manager_update_iio_widgets
LVL76:
	.loc 1 185 3 view LVU195
	movl	_dac_tx_manager, %eax
	movl	$16, 4(%esp)
	movl	%eax, (%esp)
	call	_dac_data_manager_set_buffer_size_alignment
LVL77:
	.loc 1 186 3 view LVU196
	movl	_dac_tx_manager, %eax
	movl	$LC7, 4(%esp)
	movl	%eax, (%esp)
	call	_dac_data_manager_set_buffer_chooser_current_folder
LVL78:
	.loc 1 189 3 view LVU197
	.loc 1 189 25 is_stmt 0 view LVU198
	movl	_dac_tx_manager, %eax
	movl	%eax, 4(%esp)
	movl	_dac_tx_manager_list, %eax
	movl	%eax, (%esp)
	call	_g_slist_append
LVL79:
	.loc 1 169 14 view LVU199
	movzbl	20(%esp), %edx
	.loc 1 153 30 view LVU200
	addl	$1, 24(%esp)
LVL80:
	.loc 1 189 23 view LVU201
	movl	%eax, _dac_tx_manager_list
	.loc 1 191 3 is_stmt 1 view LVU202
	.loc 1 153 30 is_stmt 0 view LVU203
	movl	24(%esp), %eax
	.loc 1 169 14 view LVU204
	movb	%dl, 43(%esp)
LVL81:
	.loc 1 153 29 is_stmt 1 view LVU205
	.loc 1 153 14 view LVU206
	.loc 1 153 2 is_stmt 0 view LVU207
	cmpl	%eax, 28(%esp)
	jne	L51
LVL82:
L30:
	.loc 1 194 2 is_stmt 1 view LVU208
	movl	32(%esp), %eax
LVL83:
	.loc 1 194 2 is_stmt 0 view LVU209
	movl	%eax, (%esp)
	call	_g_slist_free
LVL84:
	.loc 1 196 2 is_stmt 1 view LVU210
	.loc 1 196 5 is_stmt 0 view LVU211
	cmpb	$0, 43(%esp)
	je	L32
	.loc 1 202 1 view LVU212
	movl	36(%esp), %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL85:
L24:
	.cfi_restore_state
	.loc 1 194 2 is_stmt 1 view LVU213
	movl	32(%esp), %eax
LVL86:
	.loc 1 194 2 is_stmt 0 view LVU214
	movl	%eax, (%esp)
	call	_g_slist_free
LVL87:
	.loc 1 196 2 is_stmt 1 view LVU215
L32:
	.loc 1 197 3 view LVU216
	movl	_ctx, %eax
	movl	%eax, (%esp)
	call	_osc_destroy_context
LVL88:
L50:
	.loc 1 198 3 view LVU217
	.loc 1 198 10 is_stmt 0 view LVU218
	movl	$0, 36(%esp)
	.loc 1 202 1 view LVU219
	movl	36(%esp), %eax
	addl	$60, %esp
	.cfi_remember_state
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
LVL89:
L34:
	.cfi_restore_state
LBB37:
LBB25:
	.loc 1 95 10 view LVU220
	movl	$0, 32(%esp)
	jmp	L21
LBE25:
LBE37:
	.cfi_endproc
LFE1143:
	.globl	_plugin
	.section .rdata,"dr"
LC8:
	.ascii "DAC Data Manager\0"
	.data
	.align 32
_plugin:
	.space 4
	.long	LC8
	.space 8
	.long	_generic_identify
	.long	_generic_init
	.space 20
	.long	_context_destroy
	.space 16
.lcomm _tx_widgets,4400,32
.lcomm _dac,4,4
.lcomm _ctx,4,4
.lcomm _dac_tx_manager_list,4,4
.lcomm _dac_tx_manager,4,4
	.text
Letext0:
	.file 3 "D:/msys64/mingw32/i686-w64-mingw32/include/corecrt.h"
	.file 4 "D:/msys64/mingw32/lib/glib-2.0/include/glibconfig.h"
	.file 5 "D:/msys64/mingw32/include/glib-2.0/glib/gtypes.h"
	.file 6 "D:/msys64/mingw32/include/glib-2.0/glib/garray.h"
	.file 7 "D:/msys64/mingw32/include/glib-2.0/glib/gthread.h"
	.file 8 "D:/msys64/mingw32/include/glib-2.0/glib/deprecated/gthread.h"
	.file 9 "D:/msys64/mingw32/include/glib-2.0/glib/gdataset.h"
	.file 10 "D:/msys64/mingw32/include/glib-2.0/glib/glist.h"
	.file 11 "D:/msys64/mingw32/include/glib-2.0/glib/gslist.h"
	.file 12 "D:/msys64/mingw32/include/glib-2.0/glib/gscanner.h"
	.file 13 "D:/msys64/mingw32/include/glib-2.0/gobject/gtype.h"
	.file 14 "D:/msys64/mingw32/include/glib-2.0/gobject/gclosure.h"
	.file 15 "D:/msys64/mingw32/include/glib-2.0/gobject/gsignal.h"
	.file 16 "D:/msys64/mingw32/include/glib-2.0/gobject/gobject.h"
	.file 17 "D:/msys64/mingw32/include/glib-2.0/gio/gioenums.h"
	.file 18 "D:/msys64/mingw32/i686-w64-mingw32/include/stdint.h"
	.file 19 "D:/msys64/mingw32/include/harfbuzz/hb-common.h"
	.file 20 "D:/msys64/mingw32/include/pango-1.0/pango/pango-font.h"
	.file 21 "D:/msys64/mingw32/include/gtk-2.0/gdk/gdktypes.h"
	.file 22 "D:/msys64/mingw32/include/gtk-2.0/gdk/gdkcolor.h"
	.file 23 "D:/msys64/mingw32/include/gtk-2.0/gdk/gdkfont.h"
	.file 24 "D:/msys64/mingw32/include/gtk-2.0/gdk/gdkgc.h"
	.file 25 "D:/msys64/mingw32/include/gtk-2.0/gdk/gdkvisual.h"
	.file 26 "D:/msys64/mingw32/include/gtk-2.0/gdk/gdkdrawable.h"
	.file 27 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtktypeutils.h"
	.file 28 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtkobject.h"
	.file 29 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtkstyle.h"
	.file 30 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtkrc.h"
	.file 31 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtkwidget.h"
	.file 32 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtkcontainer.h"
	.file 33 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtkbuilder.h"
	.file 34 "plugins/../osc_preferences.h"
	.file 35 "plugins/../iio_widget.h"
	.file 36 "plugins/../osc_plugin.h"
	.file 37 "plugins/dac_data_manager.h"
	.file 38 "plugins/../osc.h"
	.file 39 "D:/msys64/usr/include/iio.h"
	.file 40 "D:/msys64/mingw32/include/gtk-2.0/gtk/gtkframe.h"
	.file 41 "D:/msys64/mingw32/i686-w64-mingw32/include/string.h"
	.section	.debug_info,"dr"
Ldebug_info0:
	.long	0x2a5d
	.word	0x4
	.secrel32	Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii "GNU C89 10.2.0 -mms-bitfields -mwindows -mtune=generic -march=i686 -g -O2 -std=gnu90 -funwind-tables\0"
	.byte	0x1
	.ascii "plugins/generic_dac.c\0"
	.ascii "D:\\msys64\\home\\25239\\iio-oscilloscope-master\0"
	.long	Ltext0
	.long	Letext0-Ltext0
	.secrel32	Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.ascii "__builtin_va_list\0"
	.long	0xd9
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "char\0"
	.uleb128 0x4
	.long	0xd9
	.uleb128 0x5
	.ascii "size_t\0"
	.byte	0x3
	.byte	0x2a
	.byte	0x16
	.long	0xf5
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "int\0"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.ascii "short unsigned int\0"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.ascii "long int\0"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.ascii "long long int\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xd9
	.uleb128 0x6
	.byte	0x4
	.long	0x105
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.ascii "long unsigned int\0"
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.ascii "unsigned char\0"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.ascii "signed char\0"
	.uleb128 0x5
	.ascii "guint8\0"
	.byte	0x4
	.byte	0x29
	.byte	0x17
	.long	0x160
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.ascii "short int\0"
	.uleb128 0x5
	.ascii "guint16\0"
	.byte	0x4
	.byte	0x2c
	.byte	0x18
	.long	0x10c
	.uleb128 0x5
	.ascii "guint32\0"
	.byte	0x4
	.byte	0x34
	.byte	0x16
	.long	0xf5
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.ascii "long long unsigned int\0"
	.uleb128 0x5
	.ascii "gsize\0"
	.byte	0x4
	.byte	0x4e
	.byte	0x16
	.long	0xf5
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x5
	.ascii "gchar\0"
	.byte	0x5
	.byte	0x2e
	.byte	0x10
	.long	0xd9
	.uleb128 0x5
	.ascii "gint\0"
	.byte	0x5
	.byte	0x31
	.byte	0x10
	.long	0x105
	.uleb128 0x5
	.ascii "gboolean\0"
	.byte	0x5
	.byte	0x32
	.byte	0x10
	.long	0x1f4
	.uleb128 0x5
	.ascii "guint\0"
	.byte	0x5
	.byte	0x37
	.byte	0x19
	.long	0xf5
	.uleb128 0x8
	.long	0x212
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.ascii "float\0"
	.uleb128 0x3
	.byte	0x8
	.byte	0x4
	.ascii "double\0"
	.uleb128 0x5
	.ascii "gpointer\0"
	.byte	0x5
	.byte	0x67
	.byte	0xf
	.long	0x1e4
	.uleb128 0x5
	.ascii "gconstpointer\0"
	.byte	0x5
	.byte	0x68
	.byte	0x15
	.long	0x25f
	.uleb128 0x6
	.byte	0x4
	.long	0x265
	.uleb128 0x9
	.uleb128 0x5
	.ascii "GArray\0"
	.byte	0x6
	.byte	0x25
	.byte	0x19
	.long	0x275
	.uleb128 0xa
	.ascii "_GArray\0"
	.byte	0x8
	.byte	0x6
	.byte	0x29
	.byte	0x8
	.long	0x2a2
	.uleb128 0xb
	.ascii "data\0"
	.byte	0x6
	.byte	0x2b
	.byte	0xa
	.long	0x2a2
	.byte	0
	.uleb128 0xb
	.ascii "len\0"
	.byte	0x6
	.byte	0x2c
	.byte	0x9
	.long	0x212
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1e6
	.uleb128 0x6
	.byte	0x4
	.long	0x2ae
	.uleb128 0xc
	.uleb128 0x5
	.ascii "GThreadFunc\0"
	.byte	0x7
	.byte	0x2f
	.byte	0x14
	.long	0x2c3
	.uleb128 0x6
	.byte	0x4
	.long	0x2c9
	.uleb128 0xd
	.long	0x238
	.long	0x2d8
	.uleb128 0xe
	.long	0x238
	.byte	0
	.uleb128 0x5
	.ascii "GThread\0"
	.byte	0x7
	.byte	0x31
	.byte	0x21
	.long	0x2e8
	.uleb128 0xa
	.ascii "_GThread\0"
	.byte	0x10
	.byte	0x8
	.byte	0x2e
	.byte	0x9
	.long	0x33b
	.uleb128 0xb
	.ascii "func\0"
	.byte	0x8
	.byte	0x31
	.byte	0xf
	.long	0x2af
	.byte	0
	.uleb128 0xb
	.ascii "data\0"
	.byte	0x8
	.byte	0x32
	.byte	0xc
	.long	0x238
	.byte	0x4
	.uleb128 0xb
	.ascii "joinable\0"
	.byte	0x8
	.byte	0x33
	.byte	0xc
	.long	0x201
	.byte	0x8
	.uleb128 0xb
	.ascii "priority\0"
	.byte	0x8
	.byte	0x34
	.byte	0x13
	.long	0x64c
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.ascii "GData\0"
	.byte	0x9
	.byte	0x24
	.byte	0x21
	.long	0x349
	.uleb128 0xf
	.ascii "_GData\0"
	.uleb128 0x5
	.ascii "GList\0"
	.byte	0xa
	.byte	0x25
	.byte	0x17
	.long	0x35f
	.uleb128 0xa
	.ascii "_GList\0"
	.byte	0xc
	.byte	0xa
	.byte	0x27
	.byte	0x8
	.long	0x39a
	.uleb128 0xb
	.ascii "data\0"
	.byte	0xa
	.byte	0x29
	.byte	0xc
	.long	0x238
	.byte	0
	.uleb128 0xb
	.ascii "next\0"
	.byte	0xa
	.byte	0x2a
	.byte	0xa
	.long	0x39a
	.byte	0x4
	.uleb128 0xb
	.ascii "prev\0"
	.byte	0xa
	.byte	0x2b
	.byte	0xa
	.long	0x39a
	.byte	0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x351
	.uleb128 0x5
	.ascii "GSList\0"
	.byte	0xb
	.byte	0x25
	.byte	0x18
	.long	0x3af
	.uleb128 0xa
	.ascii "_GSList\0"
	.byte	0x8
	.byte	0xb
	.byte	0x27
	.byte	0x8
	.long	0x3dd
	.uleb128 0xb
	.ascii "data\0"
	.byte	0xb
	.byte	0x29
	.byte	0xc
	.long	0x238
	.byte	0
	.uleb128 0xb
	.ascii "next\0"
	.byte	0xb
	.byte	0x2a
	.byte	0xb
	.long	0x3dd
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x3a0
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0xc
	.byte	0x4c
	.byte	0x1
	.long	0x5c1
	.uleb128 0x11
	.ascii "G_TOKEN_EOF\0"
	.byte	0
	.uleb128 0x11
	.ascii "G_TOKEN_LEFT_PAREN\0"
	.byte	0x28
	.uleb128 0x11
	.ascii "G_TOKEN_RIGHT_PAREN\0"
	.byte	0x29
	.uleb128 0x11
	.ascii "G_TOKEN_LEFT_CURLY\0"
	.byte	0x7b
	.uleb128 0x11
	.ascii "G_TOKEN_RIGHT_CURLY\0"
	.byte	0x7d
	.uleb128 0x11
	.ascii "G_TOKEN_LEFT_BRACE\0"
	.byte	0x5b
	.uleb128 0x11
	.ascii "G_TOKEN_RIGHT_BRACE\0"
	.byte	0x5d
	.uleb128 0x11
	.ascii "G_TOKEN_EQUAL_SIGN\0"
	.byte	0x3d
	.uleb128 0x11
	.ascii "G_TOKEN_COMMA\0"
	.byte	0x2c
	.uleb128 0x12
	.ascii "G_TOKEN_NONE\0"
	.word	0x100
	.uleb128 0x12
	.ascii "G_TOKEN_ERROR\0"
	.word	0x101
	.uleb128 0x12
	.ascii "G_TOKEN_CHAR\0"
	.word	0x102
	.uleb128 0x12
	.ascii "G_TOKEN_BINARY\0"
	.word	0x103
	.uleb128 0x12
	.ascii "G_TOKEN_OCTAL\0"
	.word	0x104
	.uleb128 0x12
	.ascii "G_TOKEN_INT\0"
	.word	0x105
	.uleb128 0x12
	.ascii "G_TOKEN_HEX\0"
	.word	0x106
	.uleb128 0x12
	.ascii "G_TOKEN_FLOAT\0"
	.word	0x107
	.uleb128 0x12
	.ascii "G_TOKEN_STRING\0"
	.word	0x108
	.uleb128 0x12
	.ascii "G_TOKEN_SYMBOL\0"
	.word	0x109
	.uleb128 0x12
	.ascii "G_TOKEN_IDENTIFIER\0"
	.word	0x10a
	.uleb128 0x12
	.ascii "G_TOKEN_IDENTIFIER_NULL\0"
	.word	0x10b
	.uleb128 0x12
	.ascii "G_TOKEN_COMMENT_SINGLE\0"
	.word	0x10c
	.uleb128 0x12
	.ascii "G_TOKEN_COMMENT_MULTI\0"
	.word	0x10d
	.uleb128 0x12
	.ascii "G_TOKEN_LAST\0"
	.word	0x10e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x33b
	.uleb128 0x3
	.byte	0xc
	.byte	0x4
	.ascii "long double\0"
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x8
	.byte	0x27
	.byte	0x1
	.long	0x64c
	.uleb128 0x11
	.ascii "G_THREAD_PRIORITY_LOW\0"
	.byte	0
	.uleb128 0x11
	.ascii "G_THREAD_PRIORITY_NORMAL\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "G_THREAD_PRIORITY_HIGH\0"
	.byte	0x2
	.uleb128 0x11
	.ascii "G_THREAD_PRIORITY_URGENT\0"
	.byte	0x3
	.byte	0
	.uleb128 0x5
	.ascii "GThreadPriority\0"
	.byte	0x8
	.byte	0x2c
	.byte	0x3
	.long	0x5d6
	.uleb128 0x6
	.byte	0x4
	.long	0x266
	.uleb128 0x6
	.byte	0x4
	.long	0x2d8
	.uleb128 0x13
	.ascii "GType\0"
	.byte	0xd
	.word	0x180
	.byte	0x29
	.long	0x1d6
	.uleb128 0x13
	.ascii "GTypeClass\0"
	.byte	0xd
	.word	0x187
	.byte	0x29
	.long	0x693
	.uleb128 0x14
	.ascii "_GTypeClass\0"
	.byte	0x4
	.byte	0xd
	.word	0x198
	.byte	0x8
	.long	0x6bb
	.uleb128 0x15
	.ascii "g_type\0"
	.byte	0xd
	.word	0x19b
	.byte	0x9
	.long	0x670
	.byte	0
	.byte	0
	.uleb128 0x13
	.ascii "GTypeInstance\0"
	.byte	0xd
	.word	0x189
	.byte	0x29
	.long	0x6d2
	.uleb128 0x14
	.ascii "_GTypeInstance\0"
	.byte	0x4
	.byte	0xd
	.word	0x1a2
	.byte	0x8
	.long	0x6fe
	.uleb128 0x15
	.ascii "g_class\0"
	.byte	0xd
	.word	0x1a5
	.byte	0xf
	.long	0x6fe
	.byte	0
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x67f
	.uleb128 0x6
	.byte	0x4
	.long	0x6bb
	.uleb128 0x5
	.ascii "GCallback\0"
	.byte	0xe
	.byte	0x56
	.byte	0x11
	.long	0x2a8
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0xf
	.byte	0x9c
	.byte	0x1
	.long	0x751
	.uleb128 0x11
	.ascii "G_CONNECT_AFTER\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "G_CONNECT_SWAPPED\0"
	.byte	0x2
	.byte	0
	.uleb128 0x5
	.ascii "GConnectFlags\0"
	.byte	0xf
	.byte	0x9f
	.byte	0x3
	.long	0x71c
	.uleb128 0x5
	.ascii "GObject\0"
	.byte	0x10
	.byte	0xbb
	.byte	0x2a
	.long	0x777
	.uleb128 0xa
	.ascii "_GObject\0"
	.byte	0xc
	.byte	0x10
	.byte	0xf5
	.byte	0x9
	.long	0x7c5
	.uleb128 0xb
	.ascii "g_type_instance\0"
	.byte	0x10
	.byte	0xf7
	.byte	0x12
	.long	0x6bb
	.byte	0
	.uleb128 0xb
	.ascii "ref_count\0"
	.byte	0x10
	.byte	0xfa
	.byte	0x12
	.long	0x220
	.byte	0x4
	.uleb128 0xb
	.ascii "qdata\0"
	.byte	0x10
	.byte	0xfb
	.byte	0x12
	.long	0x5c1
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "GInitiallyUnowned\0"
	.byte	0x10
	.byte	0xbd
	.byte	0x2a
	.long	0x777
	.uleb128 0x16
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x11
	.word	0x210
	.byte	0xe
	.long	0xcfe
	.uleb128 0x11
	.ascii "G_IO_ERROR_FAILED\0"
	.byte	0
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_FOUND\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "G_IO_ERROR_EXISTS\0"
	.byte	0x2
	.uleb128 0x11
	.ascii "G_IO_ERROR_IS_DIRECTORY\0"
	.byte	0x3
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_DIRECTORY\0"
	.byte	0x4
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_EMPTY\0"
	.byte	0x5
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_REGULAR_FILE\0"
	.byte	0x6
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_SYMBOLIC_LINK\0"
	.byte	0x7
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_MOUNTABLE_FILE\0"
	.byte	0x8
	.uleb128 0x11
	.ascii "G_IO_ERROR_FILENAME_TOO_LONG\0"
	.byte	0x9
	.uleb128 0x11
	.ascii "G_IO_ERROR_INVALID_FILENAME\0"
	.byte	0xa
	.uleb128 0x11
	.ascii "G_IO_ERROR_TOO_MANY_LINKS\0"
	.byte	0xb
	.uleb128 0x11
	.ascii "G_IO_ERROR_NO_SPACE\0"
	.byte	0xc
	.uleb128 0x11
	.ascii "G_IO_ERROR_INVALID_ARGUMENT\0"
	.byte	0xd
	.uleb128 0x11
	.ascii "G_IO_ERROR_PERMISSION_DENIED\0"
	.byte	0xe
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_SUPPORTED\0"
	.byte	0xf
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_MOUNTED\0"
	.byte	0x10
	.uleb128 0x11
	.ascii "G_IO_ERROR_ALREADY_MOUNTED\0"
	.byte	0x11
	.uleb128 0x11
	.ascii "G_IO_ERROR_CLOSED\0"
	.byte	0x12
	.uleb128 0x11
	.ascii "G_IO_ERROR_CANCELLED\0"
	.byte	0x13
	.uleb128 0x11
	.ascii "G_IO_ERROR_PENDING\0"
	.byte	0x14
	.uleb128 0x11
	.ascii "G_IO_ERROR_READ_ONLY\0"
	.byte	0x15
	.uleb128 0x11
	.ascii "G_IO_ERROR_CANT_CREATE_BACKUP\0"
	.byte	0x16
	.uleb128 0x11
	.ascii "G_IO_ERROR_WRONG_ETAG\0"
	.byte	0x17
	.uleb128 0x11
	.ascii "G_IO_ERROR_TIMED_OUT\0"
	.byte	0x18
	.uleb128 0x11
	.ascii "G_IO_ERROR_WOULD_RECURSE\0"
	.byte	0x19
	.uleb128 0x11
	.ascii "G_IO_ERROR_BUSY\0"
	.byte	0x1a
	.uleb128 0x11
	.ascii "G_IO_ERROR_WOULD_BLOCK\0"
	.byte	0x1b
	.uleb128 0x11
	.ascii "G_IO_ERROR_HOST_NOT_FOUND\0"
	.byte	0x1c
	.uleb128 0x11
	.ascii "G_IO_ERROR_WOULD_MERGE\0"
	.byte	0x1d
	.uleb128 0x11
	.ascii "G_IO_ERROR_FAILED_HANDLED\0"
	.byte	0x1e
	.uleb128 0x11
	.ascii "G_IO_ERROR_TOO_MANY_OPEN_FILES\0"
	.byte	0x1f
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_INITIALIZED\0"
	.byte	0x20
	.uleb128 0x11
	.ascii "G_IO_ERROR_ADDRESS_IN_USE\0"
	.byte	0x21
	.uleb128 0x11
	.ascii "G_IO_ERROR_PARTIAL_INPUT\0"
	.byte	0x22
	.uleb128 0x11
	.ascii "G_IO_ERROR_INVALID_DATA\0"
	.byte	0x23
	.uleb128 0x11
	.ascii "G_IO_ERROR_DBUS_ERROR\0"
	.byte	0x24
	.uleb128 0x11
	.ascii "G_IO_ERROR_HOST_UNREACHABLE\0"
	.byte	0x25
	.uleb128 0x11
	.ascii "G_IO_ERROR_NETWORK_UNREACHABLE\0"
	.byte	0x26
	.uleb128 0x11
	.ascii "G_IO_ERROR_CONNECTION_REFUSED\0"
	.byte	0x27
	.uleb128 0x11
	.ascii "G_IO_ERROR_PROXY_FAILED\0"
	.byte	0x28
	.uleb128 0x11
	.ascii "G_IO_ERROR_PROXY_AUTH_FAILED\0"
	.byte	0x29
	.uleb128 0x11
	.ascii "G_IO_ERROR_PROXY_NEED_AUTH\0"
	.byte	0x2a
	.uleb128 0x11
	.ascii "G_IO_ERROR_PROXY_NOT_ALLOWED\0"
	.byte	0x2b
	.uleb128 0x11
	.ascii "G_IO_ERROR_BROKEN_PIPE\0"
	.byte	0x2c
	.uleb128 0x11
	.ascii "G_IO_ERROR_CONNECTION_CLOSED\0"
	.byte	0x2c
	.uleb128 0x11
	.ascii "G_IO_ERROR_NOT_CONNECTED\0"
	.byte	0x2d
	.uleb128 0x11
	.ascii "G_IO_ERROR_MESSAGE_TOO_LARGE\0"
	.byte	0x2e
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0xe1
	.uleb128 0x5
	.ascii "uint32_t\0"
	.byte	0x12
	.byte	0x28
	.byte	0x14
	.long	0xf5
	.uleb128 0x5
	.ascii "hb_tag_t\0"
	.byte	0x13
	.byte	0x93
	.byte	0x12
	.long	0xd04
	.uleb128 0x5
	.ascii "PangoFontDescription\0"
	.byte	0x14
	.byte	0x29
	.byte	0x26
	.long	0xd43
	.uleb128 0xf
	.ascii "_PangoFontDescription\0"
	.uleb128 0x6
	.byte	0x4
	.long	0xd26
	.uleb128 0x5
	.ascii "GdkRectangle\0"
	.byte	0x15
	.byte	0x45
	.byte	0x24
	.long	0xd75
	.uleb128 0xa
	.ascii "_GdkRectangle\0"
	.byte	0x10
	.byte	0x15
	.byte	0xc8
	.byte	0x8
	.long	0xdc2
	.uleb128 0xb
	.ascii "x\0"
	.byte	0x15
	.byte	0xca
	.byte	0x8
	.long	0x1f4
	.byte	0
	.uleb128 0xb
	.ascii "y\0"
	.byte	0x15
	.byte	0xcb
	.byte	0x8
	.long	0x1f4
	.byte	0x4
	.uleb128 0xb
	.ascii "width\0"
	.byte	0x15
	.byte	0xcc
	.byte	0x8
	.long	0x1f4
	.byte	0x8
	.uleb128 0xb
	.ascii "height\0"
	.byte	0x15
	.byte	0xcd
	.byte	0x8
	.long	0x1f4
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.ascii "GdkColor\0"
	.byte	0x15
	.byte	0x66
	.byte	0x20
	.long	0xdd3
	.uleb128 0xa
	.ascii "_GdkColor\0"
	.byte	0xc
	.byte	0x16
	.byte	0x2e
	.byte	0x8
	.long	0xe20
	.uleb128 0xb
	.ascii "pixel\0"
	.byte	0x16
	.byte	0x30
	.byte	0xb
	.long	0x1ac
	.byte	0
	.uleb128 0xb
	.ascii "red\0"
	.byte	0x16
	.byte	0x31
	.byte	0xb
	.long	0x19c
	.byte	0x4
	.uleb128 0xb
	.ascii "green\0"
	.byte	0x16
	.byte	0x32
	.byte	0xb
	.long	0x19c
	.byte	0x6
	.uleb128 0xb
	.ascii "blue\0"
	.byte	0x16
	.byte	0x33
	.byte	0xb
	.long	0x19c
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "GdkColormap\0"
	.byte	0x15
	.byte	0x67
	.byte	0x23
	.long	0xe34
	.uleb128 0xa
	.ascii "_GdkColormap\0"
	.byte	0x1c
	.byte	0x16
	.byte	0x44
	.byte	0x8
	.long	0xe9e
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x16
	.byte	0x47
	.byte	0xb
	.long	0x767
	.byte	0
	.uleb128 0xb
	.ascii "size\0"
	.byte	0x16
	.byte	0x4a
	.byte	0xd
	.long	0x1f4
	.byte	0xc
	.uleb128 0xb
	.ascii "colors\0"
	.byte	0x16
	.byte	0x4b
	.byte	0xd
	.long	0x114d
	.byte	0x10
	.uleb128 0xb
	.ascii "visual\0"
	.byte	0x16
	.byte	0x4e
	.byte	0xe
	.long	0x1153
	.byte	0x14
	.uleb128 0xb
	.ascii "windowing_data\0"
	.byte	0x16
	.byte	0x50
	.byte	0xc
	.long	0x238
	.byte	0x18
	.byte	0
	.uleb128 0x5
	.ascii "GdkFont\0"
	.byte	0x15
	.byte	0x69
	.byte	0x20
	.long	0xeae
	.uleb128 0xa
	.ascii "_GdkFont\0"
	.byte	0xc
	.byte	0x17
	.byte	0x31
	.byte	0x8
	.long	0xef0
	.uleb128 0xb
	.ascii "type\0"
	.byte	0x17
	.byte	0x33
	.byte	0xf
	.long	0x11a9
	.byte	0
	.uleb128 0xb
	.ascii "ascent\0"
	.byte	0x17
	.byte	0x34
	.byte	0x8
	.long	0x1f4
	.byte	0x4
	.uleb128 0xb
	.ascii "descent\0"
	.byte	0x17
	.byte	0x35
	.byte	0x8
	.long	0x1f4
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "GdkGC\0"
	.byte	0x15
	.byte	0x6a
	.byte	0x27
	.long	0xefe
	.uleb128 0xa
	.ascii "_GdkGC\0"
	.byte	0x20
	.byte	0x18
	.byte	0xbd
	.byte	0x8
	.long	0xf81
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x18
	.byte	0xbf
	.byte	0xb
	.long	0x767
	.byte	0
	.uleb128 0xb
	.ascii "clip_x_origin\0"
	.byte	0x18
	.byte	0xc1
	.byte	0x8
	.long	0x1f4
	.byte	0xc
	.uleb128 0xb
	.ascii "clip_y_origin\0"
	.byte	0x18
	.byte	0xc2
	.byte	0x8
	.long	0x1f4
	.byte	0x10
	.uleb128 0xb
	.ascii "ts_x_origin\0"
	.byte	0x18
	.byte	0xc3
	.byte	0x8
	.long	0x1f4
	.byte	0x14
	.uleb128 0xb
	.ascii "ts_y_origin\0"
	.byte	0x18
	.byte	0xc4
	.byte	0x8
	.long	0x1f4
	.byte	0x18
	.uleb128 0x17
	.secrel32	LASF1
	.byte	0x18
	.byte	0xc6
	.byte	0x10
	.long	0x1171
	.byte	0x1c
	.byte	0
	.uleb128 0x5
	.ascii "GdkVisual\0"
	.byte	0x15
	.byte	0x6d
	.byte	0x27
	.long	0xf93
	.uleb128 0xa
	.ascii "_GdkVisual\0"
	.byte	0x44
	.byte	0x19
	.byte	0x4d
	.byte	0x8
	.long	0x10c1
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x19
	.byte	0x4f
	.byte	0xb
	.long	0x767
	.byte	0
	.uleb128 0xb
	.ascii "type\0"
	.byte	0x19
	.byte	0x51
	.byte	0x11
	.long	0x1262
	.byte	0xc
	.uleb128 0xb
	.ascii "depth\0"
	.byte	0x19
	.byte	0x52
	.byte	0x8
	.long	0x1f4
	.byte	0x10
	.uleb128 0xb
	.ascii "byte_order\0"
	.byte	0x19
	.byte	0x53
	.byte	0x10
	.long	0x1138
	.byte	0x14
	.uleb128 0xb
	.ascii "colormap_size\0"
	.byte	0x19
	.byte	0x54
	.byte	0x8
	.long	0x1f4
	.byte	0x18
	.uleb128 0xb
	.ascii "bits_per_rgb\0"
	.byte	0x19
	.byte	0x55
	.byte	0x8
	.long	0x1f4
	.byte	0x1c
	.uleb128 0xb
	.ascii "red_mask\0"
	.byte	0x19
	.byte	0x57
	.byte	0xb
	.long	0x1ac
	.byte	0x20
	.uleb128 0xb
	.ascii "red_shift\0"
	.byte	0x19
	.byte	0x58
	.byte	0x8
	.long	0x1f4
	.byte	0x24
	.uleb128 0xb
	.ascii "red_prec\0"
	.byte	0x19
	.byte	0x59
	.byte	0x8
	.long	0x1f4
	.byte	0x28
	.uleb128 0xb
	.ascii "green_mask\0"
	.byte	0x19
	.byte	0x5b
	.byte	0xb
	.long	0x1ac
	.byte	0x2c
	.uleb128 0xb
	.ascii "green_shift\0"
	.byte	0x19
	.byte	0x5c
	.byte	0x8
	.long	0x1f4
	.byte	0x30
	.uleb128 0xb
	.ascii "green_prec\0"
	.byte	0x19
	.byte	0x5d
	.byte	0x8
	.long	0x1f4
	.byte	0x34
	.uleb128 0xb
	.ascii "blue_mask\0"
	.byte	0x19
	.byte	0x5f
	.byte	0xb
	.long	0x1ac
	.byte	0x38
	.uleb128 0xb
	.ascii "blue_shift\0"
	.byte	0x19
	.byte	0x60
	.byte	0x8
	.long	0x1f4
	.byte	0x3c
	.uleb128 0xb
	.ascii "blue_prec\0"
	.byte	0x19
	.byte	0x61
	.byte	0x8
	.long	0x1f4
	.byte	0x40
	.byte	0
	.uleb128 0xa
	.ascii "_GdkDrawable\0"
	.byte	0xc
	.byte	0x1a
	.byte	0x35
	.byte	0x8
	.long	0x10e5
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1a
	.byte	0x37
	.byte	0xb
	.long	0x767
	.byte	0
	.byte	0
	.uleb128 0x5
	.ascii "GdkPixmap\0"
	.byte	0x15
	.byte	0x71
	.byte	0x27
	.long	0x10c1
	.uleb128 0x5
	.ascii "GdkWindow\0"
	.byte	0x15
	.byte	0x72
	.byte	0x27
	.long	0x10c1
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x15
	.byte	0x77
	.byte	0x1
	.long	0x1138
	.uleb128 0x11
	.ascii "GDK_LSB_FIRST\0"
	.byte	0
	.uleb128 0x11
	.ascii "GDK_MSB_FIRST\0"
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.ascii "GdkByteOrder\0"
	.byte	0x15
	.byte	0x7a
	.byte	0x3
	.long	0x1109
	.uleb128 0x6
	.byte	0x4
	.long	0xdc2
	.uleb128 0x6
	.byte	0x4
	.long	0xf81
	.uleb128 0x6
	.byte	0x4
	.long	0x10f7
	.uleb128 0x6
	.byte	0x4
	.long	0xef0
	.uleb128 0x6
	.byte	0x4
	.long	0xe9e
	.uleb128 0x6
	.byte	0x4
	.long	0x10e5
	.uleb128 0x6
	.byte	0x4
	.long	0xe20
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x17
	.byte	0x2c
	.byte	0x1
	.long	0x11a9
	.uleb128 0x11
	.ascii "GDK_FONT_FONT\0"
	.byte	0
	.uleb128 0x11
	.ascii "GDK_FONT_FONTSET\0"
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.ascii "GdkFontType\0"
	.byte	0x17
	.byte	0x2f
	.byte	0x3
	.long	0x1177
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x19
	.byte	0x38
	.byte	0x1
	.long	0x1262
	.uleb128 0x11
	.ascii "GDK_VISUAL_STATIC_GRAY\0"
	.byte	0
	.uleb128 0x11
	.ascii "GDK_VISUAL_GRAYSCALE\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "GDK_VISUAL_STATIC_COLOR\0"
	.byte	0x2
	.uleb128 0x11
	.ascii "GDK_VISUAL_PSEUDO_COLOR\0"
	.byte	0x3
	.uleb128 0x11
	.ascii "GDK_VISUAL_TRUE_COLOR\0"
	.byte	0x4
	.uleb128 0x11
	.ascii "GDK_VISUAL_DIRECT_COLOR\0"
	.byte	0x5
	.byte	0
	.uleb128 0x5
	.ascii "GdkVisualType\0"
	.byte	0x19
	.byte	0x3f
	.byte	0x3
	.long	0x11bd
	.uleb128 0x5
	.ascii "GtkObject\0"
	.byte	0x1b
	.byte	0x31
	.byte	0x23
	.long	0x128a
	.uleb128 0xa
	.ascii "_GtkObject\0"
	.byte	0x10
	.byte	0x1c
	.byte	0x6b
	.byte	0x8
	.long	0x12bb
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1c
	.byte	0x6d
	.byte	0x15
	.long	0x7c5
	.byte	0
	.uleb128 0xb
	.ascii "flags\0"
	.byte	0x1c
	.byte	0x74
	.byte	0xb
	.long	0x1ac
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.ascii "GtkStyle\0"
	.byte	0x1d
	.byte	0x36
	.byte	0x20
	.long	0x12cc
	.uleb128 0x18
	.ascii "_GtkStyle\0"
	.word	0x2f0
	.byte	0x1d
	.byte	0x49
	.byte	0x8
	.long	0x1526
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1d
	.byte	0x4b
	.byte	0xb
	.long	0x767
	.byte	0
	.uleb128 0xb
	.ascii "fg\0"
	.byte	0x1d
	.byte	0x4f
	.byte	0xc
	.long	0x1735
	.byte	0xc
	.uleb128 0xb
	.ascii "bg\0"
	.byte	0x1d
	.byte	0x50
	.byte	0xc
	.long	0x1735
	.byte	0x48
	.uleb128 0xb
	.ascii "light\0"
	.byte	0x1d
	.byte	0x51
	.byte	0xc
	.long	0x1735
	.byte	0x84
	.uleb128 0xb
	.ascii "dark\0"
	.byte	0x1d
	.byte	0x52
	.byte	0xc
	.long	0x1735
	.byte	0xc0
	.uleb128 0xb
	.ascii "mid\0"
	.byte	0x1d
	.byte	0x53
	.byte	0xc
	.long	0x1735
	.byte	0xfc
	.uleb128 0x19
	.ascii "text\0"
	.byte	0x1d
	.byte	0x54
	.byte	0xc
	.long	0x1735
	.word	0x138
	.uleb128 0x19
	.ascii "base\0"
	.byte	0x1d
	.byte	0x55
	.byte	0xc
	.long	0x1735
	.word	0x174
	.uleb128 0x19
	.ascii "text_aa\0"
	.byte	0x1d
	.byte	0x56
	.byte	0xc
	.long	0x1735
	.word	0x1b0
	.uleb128 0x19
	.ascii "black\0"
	.byte	0x1d
	.byte	0x58
	.byte	0xc
	.long	0xdc2
	.word	0x1ec
	.uleb128 0x19
	.ascii "white\0"
	.byte	0x1d
	.byte	0x59
	.byte	0xc
	.long	0xdc2
	.word	0x1f8
	.uleb128 0x1a
	.secrel32	LASF2
	.byte	0x1d
	.byte	0x5a
	.byte	0x19
	.long	0xd5a
	.word	0x204
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1d
	.byte	0x5c
	.byte	0x8
	.long	0x1f4
	.word	0x208
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1d
	.byte	0x5d
	.byte	0x8
	.long	0x1f4
	.word	0x20c
	.uleb128 0x19
	.ascii "fg_gc\0"
	.byte	0x1d
	.byte	0x5f
	.byte	0xa
	.long	0x1745
	.word	0x210
	.uleb128 0x19
	.ascii "bg_gc\0"
	.byte	0x1d
	.byte	0x60
	.byte	0xa
	.long	0x1745
	.word	0x224
	.uleb128 0x19
	.ascii "light_gc\0"
	.byte	0x1d
	.byte	0x61
	.byte	0xa
	.long	0x1745
	.word	0x238
	.uleb128 0x19
	.ascii "dark_gc\0"
	.byte	0x1d
	.byte	0x62
	.byte	0xa
	.long	0x1745
	.word	0x24c
	.uleb128 0x19
	.ascii "mid_gc\0"
	.byte	0x1d
	.byte	0x63
	.byte	0xa
	.long	0x1745
	.word	0x260
	.uleb128 0x19
	.ascii "text_gc\0"
	.byte	0x1d
	.byte	0x64
	.byte	0xa
	.long	0x1745
	.word	0x274
	.uleb128 0x19
	.ascii "base_gc\0"
	.byte	0x1d
	.byte	0x65
	.byte	0xa
	.long	0x1745
	.word	0x288
	.uleb128 0x19
	.ascii "text_aa_gc\0"
	.byte	0x1d
	.byte	0x66
	.byte	0xa
	.long	0x1745
	.word	0x29c
	.uleb128 0x19
	.ascii "black_gc\0"
	.byte	0x1d
	.byte	0x67
	.byte	0xa
	.long	0x115f
	.word	0x2b0
	.uleb128 0x19
	.ascii "white_gc\0"
	.byte	0x1d
	.byte	0x68
	.byte	0xa
	.long	0x115f
	.word	0x2b4
	.uleb128 0x19
	.ascii "bg_pixmap\0"
	.byte	0x1d
	.byte	0x6a
	.byte	0xe
	.long	0x1755
	.word	0x2b8
	.uleb128 0x19
	.ascii "attach_count\0"
	.byte	0x1d
	.byte	0x6e
	.byte	0x8
	.long	0x1f4
	.word	0x2cc
	.uleb128 0x19
	.ascii "depth\0"
	.byte	0x1d
	.byte	0x70
	.byte	0x8
	.long	0x1f4
	.word	0x2d0
	.uleb128 0x1a
	.secrel32	LASF1
	.byte	0x1d
	.byte	0x71
	.byte	0x10
	.long	0x1171
	.word	0x2d4
	.uleb128 0x19
	.ascii "private_font\0"
	.byte	0x1d
	.byte	0x72
	.byte	0xc
	.long	0x1165
	.word	0x2d8
	.uleb128 0x19
	.ascii "private_font_desc\0"
	.byte	0x1d
	.byte	0x73
	.byte	0x19
	.long	0xd5a
	.word	0x2dc
	.uleb128 0x19
	.ascii "rc_style\0"
	.byte	0x1d
	.byte	0x76
	.byte	0x10
	.long	0x1765
	.word	0x2e0
	.uleb128 0x19
	.ascii "styles\0"
	.byte	0x1d
	.byte	0x78
	.byte	0xc
	.long	0x3dd
	.word	0x2e4
	.uleb128 0x19
	.ascii "property_cache\0"
	.byte	0x1d
	.byte	0x79
	.byte	0xc
	.long	0x664
	.word	0x2e8
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1d
	.byte	0x7a
	.byte	0x13
	.long	0x3dd
	.word	0x2ec
	.byte	0
	.uleb128 0x5
	.ascii "GtkRcStyle\0"
	.byte	0x1d
	.byte	0x39
	.byte	0x20
	.long	0x1539
	.uleb128 0x18
	.ascii "_GtkRcStyle\0"
	.word	0x144
	.byte	0x1e
	.byte	0x3c
	.byte	0x8
	.long	0x1652
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x1e
	.byte	0x3e
	.byte	0xb
	.long	0x767
	.byte	0
	.uleb128 0xb
	.ascii "name\0"
	.byte	0x1e
	.byte	0x42
	.byte	0xa
	.long	0x2a2
	.byte	0xc
	.uleb128 0xb
	.ascii "bg_pixmap_name\0"
	.byte	0x1e
	.byte	0x43
	.byte	0xa
	.long	0x17cd
	.byte	0x10
	.uleb128 0x17
	.secrel32	LASF2
	.byte	0x1e
	.byte	0x44
	.byte	0x19
	.long	0xd5a
	.byte	0x24
	.uleb128 0xb
	.ascii "color_flags\0"
	.byte	0x1e
	.byte	0x46
	.byte	0xe
	.long	0x17dd
	.byte	0x28
	.uleb128 0xb
	.ascii "fg\0"
	.byte	0x1e
	.byte	0x47
	.byte	0xe
	.long	0x1735
	.byte	0x3c
	.uleb128 0xb
	.ascii "bg\0"
	.byte	0x1e
	.byte	0x48
	.byte	0xe
	.long	0x1735
	.byte	0x78
	.uleb128 0xb
	.ascii "text\0"
	.byte	0x1e
	.byte	0x49
	.byte	0xe
	.long	0x1735
	.byte	0xb4
	.uleb128 0xb
	.ascii "base\0"
	.byte	0x1e
	.byte	0x4a
	.byte	0xe
	.long	0x1735
	.byte	0xf0
	.uleb128 0x1a
	.secrel32	LASF3
	.byte	0x1e
	.byte	0x4c
	.byte	0x8
	.long	0x1f4
	.word	0x12c
	.uleb128 0x1a
	.secrel32	LASF4
	.byte	0x1e
	.byte	0x4d
	.byte	0x8
	.long	0x1f4
	.word	0x130
	.uleb128 0x19
	.ascii "rc_properties\0"
	.byte	0x1e
	.byte	0x50
	.byte	0xb
	.long	0x664
	.word	0x134
	.uleb128 0x19
	.ascii "rc_style_lists\0"
	.byte	0x1e
	.byte	0x53
	.byte	0xb
	.long	0x3dd
	.word	0x138
	.uleb128 0x1a
	.secrel32	LASF5
	.byte	0x1e
	.byte	0x55
	.byte	0xb
	.long	0x3dd
	.word	0x13c
	.uleb128 0x1b
	.ascii "engine_specified\0"
	.byte	0x1e
	.byte	0x57
	.byte	0x9
	.long	0x212
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.word	0x140
	.byte	0
	.uleb128 0x5
	.ascii "GtkWidget\0"
	.byte	0x1d
	.byte	0x45
	.byte	0x20
	.long	0x1664
	.uleb128 0x14
	.ascii "_GtkWidget\0"
	.byte	0x3c
	.byte	0x1f
	.word	0x212
	.byte	0x8
	.long	0x1735
	.uleb128 0x15
	.ascii "object\0"
	.byte	0x1f
	.word	0x21a
	.byte	0xd
	.long	0x1278
	.byte	0
	.uleb128 0x15
	.ascii "private_flags\0"
	.byte	0x1f
	.word	0x221
	.byte	0xb
	.long	0x19c
	.byte	0x10
	.uleb128 0x15
	.ascii "state\0"
	.byte	0x1f
	.word	0x226
	.byte	0xa
	.long	0x180
	.byte	0x12
	.uleb128 0x15
	.ascii "saved_state\0"
	.byte	0x1f
	.word	0x22e
	.byte	0xa
	.long	0x180
	.byte	0x13
	.uleb128 0x15
	.ascii "name\0"
	.byte	0x1f
	.word	0x236
	.byte	0xa
	.long	0x2a2
	.byte	0x14
	.uleb128 0x15
	.ascii "style\0"
	.byte	0x1f
	.word	0x23f
	.byte	0xd
	.long	0x176b
	.byte	0x18
	.uleb128 0x15
	.ascii "requisition\0"
	.byte	0x1f
	.word	0x243
	.byte	0x12
	.long	0x17ed
	.byte	0x1c
	.uleb128 0x15
	.ascii "allocation\0"
	.byte	0x1f
	.word	0x247
	.byte	0x11
	.long	0x1841
	.byte	0x24
	.uleb128 0x15
	.ascii "window\0"
	.byte	0x1f
	.word	0x24d
	.byte	0xe
	.long	0x1159
	.byte	0x34
	.uleb128 0x15
	.ascii "parent\0"
	.byte	0x1f
	.word	0x251
	.byte	0xe
	.long	0x1771
	.byte	0x38
	.byte	0
	.uleb128 0x1c
	.long	0xdc2
	.long	0x1745
	.uleb128 0x1d
	.long	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.long	0x115f
	.long	0x1755
	.uleb128 0x1d
	.long	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.long	0x116b
	.long	0x1765
	.uleb128 0x1d
	.long	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1526
	.uleb128 0x6
	.byte	0x4
	.long	0x12bb
	.uleb128 0x6
	.byte	0x4
	.long	0x1652
	.uleb128 0x10
	.byte	0x7
	.byte	0x4
	.long	0xf5
	.byte	0x1e
	.byte	0x35
	.byte	0x1
	.long	0x17ba
	.uleb128 0x11
	.ascii "GTK_RC_FG\0"
	.byte	0x1
	.uleb128 0x11
	.ascii "GTK_RC_BG\0"
	.byte	0x2
	.uleb128 0x11
	.ascii "GTK_RC_TEXT\0"
	.byte	0x4
	.uleb128 0x11
	.ascii "GTK_RC_BASE\0"
	.byte	0x8
	.byte	0
	.uleb128 0x5
	.ascii "GtkRcFlags\0"
	.byte	0x1e
	.byte	0x3a
	.byte	0x3
	.long	0x1777
	.uleb128 0x1c
	.long	0x2a2
	.long	0x17dd
	.uleb128 0x1d
	.long	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x1c
	.long	0x17ba
	.long	0x17ed
	.uleb128 0x1d
	.long	0xf5
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.ascii "GtkRequisition\0"
	.byte	0x1f
	.word	0x1de
	.byte	0x23
	.long	0x1805
	.uleb128 0x14
	.ascii "_GtkRequisition\0"
	.byte	0x8
	.byte	0x1f
	.word	0x207
	.byte	0x8
	.long	0x1841
	.uleb128 0x15
	.ascii "width\0"
	.byte	0x1f
	.word	0x209
	.byte	0x8
	.long	0x1f4
	.byte	0
	.uleb128 0x15
	.ascii "height\0"
	.byte	0x1f
	.word	0x20a
	.byte	0x8
	.long	0x1f4
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.ascii "GtkAllocation\0"
	.byte	0x1f
	.word	0x1f2
	.byte	0x1a
	.long	0xd60
	.uleb128 0x5
	.ascii "GtkContainer\0"
	.byte	0x20
	.byte	0x33
	.byte	0x21
	.long	0x186d
	.uleb128 0xa
	.ascii "_GtkContainer\0"
	.byte	0x44
	.byte	0x20
	.byte	0x36
	.byte	0x8
	.long	0x192b
	.uleb128 0x17
	.secrel32	LASF6
	.byte	0x20
	.byte	0x38
	.byte	0xd
	.long	0x1652
	.byte	0
	.uleb128 0xb
	.ascii "focus_child\0"
	.byte	0x20
	.byte	0x3a
	.byte	0xe
	.long	0x1771
	.byte	0x3c
	.uleb128 0x1e
	.ascii "border_width\0"
	.byte	0x20
	.byte	0x3c
	.byte	0x9
	.long	0x212
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x40
	.uleb128 0x1e
	.ascii "need_resize\0"
	.byte	0x20
	.byte	0x3f
	.byte	0x9
	.long	0x212
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x40
	.uleb128 0x1e
	.ascii "resize_mode\0"
	.byte	0x20
	.byte	0x40
	.byte	0x9
	.long	0x212
	.byte	0x4
	.byte	0x2
	.byte	0xd
	.byte	0x40
	.uleb128 0x1e
	.ascii "reallocate_redraws\0"
	.byte	0x20
	.byte	0x41
	.byte	0x9
	.long	0x212
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x40
	.uleb128 0x1e
	.ascii "has_focus_chain\0"
	.byte	0x20
	.byte	0x42
	.byte	0x9
	.long	0x212
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x40
	.byte	0
	.uleb128 0x5
	.ascii "GtkBuilder\0"
	.byte	0x21
	.byte	0x2a
	.byte	0x23
	.long	0x193e
	.uleb128 0xa
	.ascii "_GtkBuilder\0"
	.byte	0x10
	.byte	0x21
	.byte	0x3d
	.byte	0x8
	.long	0x196f
	.uleb128 0x17
	.secrel32	LASF0
	.byte	0x21
	.byte	0x3f
	.byte	0xb
	.long	0x767
	.byte	0
	.uleb128 0xb
	.ascii "priv\0"
	.byte	0x21
	.byte	0x41
	.byte	0x16
	.long	0x199d
	.byte	0xc
	.byte	0
	.uleb128 0x5
	.ascii "GtkBuilderPrivate\0"
	.byte	0x21
	.byte	0x2c
	.byte	0x23
	.long	0x1989
	.uleb128 0xf
	.ascii "_GtkBuilderPrivate\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x196f
	.uleb128 0x6
	.byte	0x4
	.long	0x192b
	.uleb128 0x6
	.byte	0x4
	.long	0xf5
	.uleb128 0x3
	.byte	0x1
	.byte	0x2
	.ascii "_Bool\0"
	.uleb128 0x5
	.ascii "OscPreferences\0"
	.byte	0x22
	.byte	0x6
	.byte	0x20
	.long	0x19cf
	.uleb128 0xa
	.ascii "osc_preferences\0"
	.byte	0x4
	.byte	0x22
	.byte	0x1b
	.byte	0x8
	.long	0x1a03
	.uleb128 0xb
	.ascii "plot_preferences\0"
	.byte	0x22
	.byte	0x1c
	.byte	0x25
	.long	0x1a52
	.byte	0
	.byte	0
	.uleb128 0xa
	.ascii "oscplot_preferences\0"
	.byte	0x8
	.byte	0x22
	.byte	0xb
	.byte	0x8
	.long	0x1a52
	.uleb128 0xb
	.ascii "sample_count\0"
	.byte	0x22
	.byte	0xc
	.byte	0x17
	.long	0x19a9
	.byte	0
	.uleb128 0xb
	.ascii "devices_pref_list\0"
	.byte	0x22
	.byte	0xd
	.byte	0x10
	.long	0x39a
	.byte	0x4
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1a03
	.uleb128 0x3
	.byte	0x8
	.byte	0x3
	.ascii "complex float\0"
	.uleb128 0xa
	.ascii "iio_widget\0"
	.byte	0x2c
	.byte	0x23
	.byte	0xe
	.byte	0x8
	.long	0x1b49
	.uleb128 0xb
	.ascii "dev\0"
	.byte	0x23
	.byte	0xf
	.byte	0x15
	.long	0x1b55
	.byte	0
	.uleb128 0xb
	.ascii "chn\0"
	.byte	0x23
	.byte	0x10
	.byte	0x16
	.long	0x1b68
	.byte	0x4
	.uleb128 0xb
	.ascii "attr_name\0"
	.byte	0x23
	.byte	0x11
	.byte	0xe
	.long	0xcfe
	.byte	0x8
	.uleb128 0xb
	.ascii "attr_name_avail\0"
	.byte	0x23
	.byte	0x12
	.byte	0xe
	.long	0xcfe
	.byte	0xc
	.uleb128 0x17
	.secrel32	LASF6
	.byte	0x23
	.byte	0x13
	.byte	0xd
	.long	0x1771
	.byte	0x10
	.uleb128 0xb
	.ascii "priv\0"
	.byte	0x23
	.byte	0x14
	.byte	0x8
	.long	0x1e4
	.byte	0x14
	.uleb128 0xb
	.ascii "priv_progress\0"
	.byte	0x23
	.byte	0x15
	.byte	0x8
	.long	0x1e4
	.byte	0x18
	.uleb128 0xb
	.ascii "priv_convert_function\0"
	.byte	0x23
	.byte	0x16
	.byte	0x8
	.long	0x1e4
	.byte	0x1c
	.uleb128 0xb
	.ascii "save\0"
	.byte	0x23
	.byte	0x18
	.byte	0x9
	.long	0x1b7f
	.byte	0x20
	.uleb128 0xb
	.ascii "update\0"
	.byte	0x23
	.byte	0x19
	.byte	0x9
	.long	0x1b7f
	.byte	0x24
	.uleb128 0xb
	.ascii "update_value\0"
	.byte	0x23
	.byte	0x1a
	.byte	0x9
	.long	0x1b9a
	.byte	0x28
	.byte	0
	.uleb128 0xf
	.ascii "iio_device\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x1b49
	.uleb128 0xf
	.ascii "iio_channel\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x1b5b
	.uleb128 0x1f
	.long	0x1b79
	.uleb128 0xe
	.long	0x1b79
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1a69
	.uleb128 0x6
	.byte	0x4
	.long	0x1b6e
	.uleb128 0x1f
	.long	0x1b9a
	.uleb128 0xe
	.long	0x1b79
	.uleb128 0xe
	.long	0xcfe
	.uleb128 0xe
	.long	0xe6
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1b85
	.uleb128 0xa
	.ascii "osc_plugin\0"
	.byte	0x40
	.byte	0x24
	.byte	0x16
	.byte	0x8
	.long	0x1d04
	.uleb128 0xb
	.ascii "handle\0"
	.byte	0x24
	.byte	0x17
	.byte	0x8
	.long	0x1e4
	.byte	0
	.uleb128 0xb
	.ascii "name\0"
	.byte	0x24
	.byte	0x18
	.byte	0xe
	.long	0xcfe
	.byte	0x4
	.uleb128 0xb
	.ascii "thd\0"
	.byte	0x24
	.byte	0x19
	.byte	0xb
	.long	0x66a
	.byte	0x8
	.uleb128 0xb
	.ascii "dynamically_created\0"
	.byte	0x24
	.byte	0x1a
	.byte	0x7
	.long	0x19af
	.byte	0xc
	.uleb128 0xb
	.ascii "identify\0"
	.byte	0x24
	.byte	0x1c
	.byte	0x9
	.long	0x1d1e
	.byte	0x10
	.uleb128 0xb
	.ascii "init\0"
	.byte	0x24
	.byte	0x1d
	.byte	0x10
	.long	0x1d43
	.byte	0x14
	.uleb128 0xb
	.ascii "handle_item\0"
	.byte	0x24
	.byte	0x1e
	.byte	0x8
	.long	0x1d67
	.byte	0x18
	.uleb128 0xb
	.ascii "handle_external_request\0"
	.byte	0x24
	.byte	0x1f
	.byte	0x8
	.long	0x1d81
	.byte	0x1c
	.uleb128 0xb
	.ascii "update_active_page\0"
	.byte	0x24
	.byte	0x20
	.byte	0x9
	.long	0x1d9c
	.byte	0x20
	.uleb128 0xb
	.ascii "get_preferred_size\0"
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.long	0x1db7
	.byte	0x24
	.uleb128 0xb
	.ascii "get_preferences_for_osc\0"
	.byte	0x24
	.byte	0x22
	.byte	0x14
	.long	0x1dd2
	.byte	0x28
	.uleb128 0xb
	.ascii "destroy\0"
	.byte	0x24
	.byte	0x23
	.byte	0x9
	.long	0x1de8
	.byte	0x2c
	.uleb128 0xb
	.ascii "save_profile\0"
	.byte	0x24
	.byte	0x25
	.byte	0x9
	.long	0x1dfe
	.byte	0x30
	.uleb128 0xb
	.ascii "load_profile\0"
	.byte	0x24
	.byte	0x26
	.byte	0x9
	.long	0x1de8
	.byte	0x34
	.uleb128 0x17
	.secrel32	LASF7
	.byte	0x24
	.byte	0x27
	.byte	0xc
	.long	0x1e13
	.byte	0x38
	.uleb128 0xb
	.ascii "priv\0"
	.byte	0x24
	.byte	0x28
	.byte	0x19
	.long	0x1e29
	.byte	0x3c
	.byte	0
	.uleb128 0x4
	.long	0x1ba0
	.uleb128 0xd
	.long	0x19af
	.long	0x1d18
	.uleb128 0xe
	.long	0x1d18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1d04
	.uleb128 0x6
	.byte	0x4
	.long	0x1d09
	.uleb128 0xd
	.long	0x1771
	.long	0x1d3d
	.uleb128 0xe
	.long	0x1d3d
	.uleb128 0xe
	.long	0x1771
	.uleb128 0xe
	.long	0xcfe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1ba0
	.uleb128 0x6
	.byte	0x4
	.long	0x1d24
	.uleb128 0xd
	.long	0x105
	.long	0x1d67
	.uleb128 0xe
	.long	0x1d3d
	.uleb128 0xe
	.long	0x105
	.uleb128 0xe
	.long	0xcfe
	.uleb128 0xe
	.long	0xcfe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1d49
	.uleb128 0xd
	.long	0x105
	.long	0x1d81
	.uleb128 0xe
	.long	0x1d3d
	.uleb128 0xe
	.long	0xcfe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1d6d
	.uleb128 0x1f
	.long	0x1d9c
	.uleb128 0xe
	.long	0x1d3d
	.uleb128 0xe
	.long	0x1f4
	.uleb128 0xe
	.long	0x201
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1d87
	.uleb128 0x1f
	.long	0x1db7
	.uleb128 0xe
	.long	0x1d18
	.uleb128 0xe
	.long	0x145
	.uleb128 0xe
	.long	0x145
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1da2
	.uleb128 0xd
	.long	0x1dcc
	.long	0x1dcc
	.uleb128 0xe
	.long	0x1d18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x19b8
	.uleb128 0x6
	.byte	0x4
	.long	0x1dbd
	.uleb128 0x1f
	.long	0x1de8
	.uleb128 0xe
	.long	0x1d3d
	.uleb128 0xe
	.long	0xcfe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1dd8
	.uleb128 0x1f
	.long	0x1dfe
	.uleb128 0xe
	.long	0x1d18
	.uleb128 0xe
	.long	0xcfe
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1dee
	.uleb128 0xd
	.long	0x3dd
	.long	0x1e13
	.uleb128 0xe
	.long	0x1d18
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.long	0x1e04
	.uleb128 0xf
	.ascii "plugin_private\0"
	.uleb128 0x6
	.byte	0x4
	.long	0x1e19
	.uleb128 0x20
	.ascii "plugin_list\0"
	.byte	0x24
	.byte	0x2f
	.byte	0x10
	.long	0x3dd
	.uleb128 0xf
	.ascii "dac_data_manager\0"
	.uleb128 0x21
	.ascii "dac_tx_manager\0"
	.byte	0x1
	.byte	0x26
	.byte	0x21
	.long	0x1e72
	.uleb128 0x5
	.byte	0x3
	.long	_dac_tx_manager
	.uleb128 0x6
	.byte	0x4
	.long	0x1e43
	.uleb128 0x21
	.ascii "dac_tx_manager_list\0"
	.byte	0x1
	.byte	0x27
	.byte	0x10
	.long	0x3dd
	.uleb128 0x5
	.byte	0x3
	.long	_dac_tx_manager_list
	.uleb128 0xf
	.ascii "iio_context\0"
	.uleb128 0x21
	.ascii "ctx\0"
	.byte	0x1
	.byte	0x29
	.byte	0x1c
	.long	0x1eb9
	.uleb128 0x5
	.byte	0x3
	.long	_ctx
	.uleb128 0x6
	.byte	0x4
	.long	0x1e9a
	.uleb128 0x21
	.ascii "dac\0"
	.byte	0x1
	.byte	0x2a
	.byte	0x1b
	.long	0x1b55
	.uleb128 0x5
	.byte	0x3
	.long	_dac
	.uleb128 0x1c
	.long	0x1a69
	.long	0x1ee1
	.uleb128 0x1d
	.long	0xf5
	.byte	0x63
	.byte	0
	.uleb128 0x21
	.ascii "tx_widgets\0"
	.byte	0x1
	.byte	0x2c
	.byte	0x1a
	.long	0x1ed1
	.uleb128 0x5
	.byte	0x3
	.long	_tx_widgets
	.uleb128 0x22
	.ascii "num_tx\0"
	.byte	0x1
	.byte	0x2d
	.byte	0x15
	.long	0xf5
	.uleb128 0x22
	.ascii "can_update_widgets\0"
	.byte	0x1
	.byte	0x2f
	.byte	0xd
	.long	0x19af
	.uleb128 0x23
	.secrel32	LASF8
	.byte	0x1
	.byte	0xdb
	.byte	0x13
	.long	0x1ba0
	.uleb128 0x5
	.byte	0x3
	.long	_plugin
	.uleb128 0x24
	.ascii "context_destroy\0"
	.byte	0x1
	.byte	0xcc
	.byte	0xd
	.long	LFB1144
	.long	LFE1144-LFB1144
	.uleb128 0x1
	.byte	0x9c
	.long	0x1fbb
	.uleb128 0x25
	.secrel32	LASF8
	.byte	0x1
	.byte	0xcc
	.byte	0x30
	.long	0x1d3d
	.secrel32	LLST1
	.secrel32	LVUS1
	.uleb128 0x26
	.ascii "ini_fn\0"
	.byte	0x1
	.byte	0xcc
	.byte	0x44
	.long	0xcfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "node\0"
	.byte	0x1
	.byte	0xce
	.byte	0xa
	.long	0x3dd
	.secrel32	LLST2
	.secrel32	LVUS2
	.uleb128 0x28
	.long	LVL6
	.long	0x28b8
	.uleb128 0x29
	.long	LVL10
	.long	0x28c4
	.long	0x1fb1
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x2b
	.long	LVL12
	.long	0x28d0
	.byte	0
	.uleb128 0x2c
	.ascii "generic_init\0"
	.byte	0x1
	.byte	0x80
	.byte	0x14
	.long	0x1771
	.long	LFB1143
	.long	LFE1143-LFB1143
	.uleb128 0x1
	.byte	0x9c
	.long	0x245f
	.uleb128 0x2d
	.secrel32	LASF8
	.byte	0x1
	.byte	0x80
	.byte	0x34
	.long	0x1d3d
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "notebook\0"
	.byte	0x1
	.byte	0x80
	.byte	0x47
	.long	0x1771
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x26
	.ascii "ini_fn\0"
	.byte	0x1
	.byte	0x81
	.byte	0x11
	.long	0xcfe
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.uleb128 0x27
	.ascii "builder\0"
	.byte	0x1
	.byte	0x83
	.byte	0xe
	.long	0x19a3
	.secrel32	LLST9
	.secrel32	LVUS9
	.uleb128 0x27
	.ascii "generic_panel\0"
	.byte	0x1
	.byte	0x84
	.byte	0xd
	.long	0x1771
	.secrel32	LLST10
	.secrel32	LVUS10
	.uleb128 0x27
	.ascii "dds_container\0"
	.byte	0x1
	.byte	0x85
	.byte	0xd
	.long	0x1771
	.secrel32	LLST11
	.secrel32	LVUS11
	.uleb128 0x27
	.ascii "dds_vbox\0"
	.byte	0x1
	.byte	0x86
	.byte	0xd
	.long	0x1771
	.secrel32	LLST12
	.secrel32	LVUS12
	.uleb128 0x27
	.ascii "generic_en\0"
	.byte	0x1
	.byte	0x87
	.byte	0x7
	.long	0x19af
	.secrel32	LLST13
	.secrel32	LVUS13
	.uleb128 0x27
	.ascii "i\0"
	.byte	0x1
	.byte	0x88
	.byte	0x6
	.long	0x105
	.secrel32	LLST14
	.secrel32	LVUS14
	.uleb128 0x27
	.ascii "dev_count\0"
	.byte	0x1
	.byte	0x88
	.byte	0x9
	.long	0x105
	.secrel32	LLST15
	.secrel32	LVUS15
	.uleb128 0x2e
	.secrel32	LASF9
	.byte	0x1
	.byte	0x89
	.byte	0xb
	.long	0x3dd
	.secrel32	LLST16
	.secrel32	LVUS16
	.uleb128 0x27
	.ascii "crt_dev_name\0"
	.byte	0x1
	.byte	0x8a
	.byte	0xe
	.long	0xcfe
	.secrel32	LLST17
	.secrel32	LVUS17
	.uleb128 0x2f
	.long	0x2525
	.long	LBI22
	.byte	LVU93
	.secrel32	Ldebug_ranges0+0
	.byte	0x1
	.byte	0x96
	.byte	0x12
	.long	0x214c
	.uleb128 0x30
	.secrel32	Ldebug_ranges0+0
	.uleb128 0x31
	.long	0x2536
	.secrel32	LLST18
	.secrel32	LVUS18
	.uleb128 0x31
	.long	0x2543
	.secrel32	LLST19
	.secrel32	LVUS19
	.uleb128 0x31
	.long	0x254f
	.secrel32	LLST20
	.secrel32	LVUS20
	.uleb128 0x32
	.long	LVL38
	.long	0x28dc
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.long	0x245f
	.long	LBI27
	.byte	LVU130
	.secrel32	Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x9b
	.byte	0x8
	.long	0x21e6
	.uleb128 0x33
	.long	0x2485
	.secrel32	LLST21
	.secrel32	LVUS21
	.uleb128 0x30
	.secrel32	Ldebug_ranges0+0x20
	.uleb128 0x31
	.long	0x2491
	.secrel32	LLST22
	.secrel32	LVUS22
	.uleb128 0x31
	.long	0x249c
	.secrel32	LLST23
	.secrel32	LVUS23
	.uleb128 0x29
	.long	LVL47
	.long	0x28e8
	.long	0x21a2
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL49
	.long	0x28f5
	.long	0x21be
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL51
	.long	0x2902
	.long	0x21d3
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x32
	.long	LVL52
	.long	0x290f
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.long	0x2735
	.long	LBI35
	.byte	LVU192
	.long	LBB35
	.long	LBE35-LBB35
	.byte	0x1
	.byte	0xb6
	.byte	0x3
	.long	0x221a
	.uleb128 0x32
	.long	LVL75
	.long	0x291c
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	_tx_widgets
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x28
	.long	LVL23
	.long	0x2928
	.uleb128 0x28
	.long	LVL24
	.long	0x2934
	.uleb128 0x29
	.long	LVL26
	.long	0x2940
	.long	0x224b
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC2
	.byte	0
	.uleb128 0x28
	.long	LVL27
	.long	0x294c
	.uleb128 0x29
	.long	LVL28
	.long	0x2959
	.long	0x2273
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC3
	.byte	0
	.uleb128 0x29
	.long	LVL29
	.long	0x2965
	.long	0x2288
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL31
	.long	0x2959
	.long	0x22a7
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC4
	.byte	0
	.uleb128 0x29
	.long	LVL32
	.long	0x2965
	.long	0x22bc
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL42
	.long	0x2972
	.long	0x22d1
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL45
	.long	0x297f
	.long	0x22ee
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 -56
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.long	LVL59
	.long	0x298c
	.long	0x2303
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL61
	.long	0x2999
	.long	0x2323
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x5
	.byte	0x3
	.long	_compare_func
	.byte	0
	.uleb128 0x29
	.long	LVL62
	.long	0x29a5
	.long	0x2337
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x30
	.byte	0
	.uleb128 0x29
	.long	LVL64
	.long	0x29b1
	.long	0x234f
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x5
	.byte	0x3
	.long	LC5
	.byte	0
	.uleb128 0x28
	.long	LVL66
	.long	0x29bd
	.uleb128 0x29
	.long	LVL67
	.long	0x2965
	.long	0x2375
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -36
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL68
	.long	0x29c9
	.long	0x238a
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.long	LVL69
	.long	0x29d5
	.uleb128 0x29
	.long	LVL70
	.long	0x2965
	.long	0x23af
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x76
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL71
	.long	0x29c9
	.long	0x23c4
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x2
	.byte	0x77
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.long	LVL72
	.long	0x29e1
	.long	0x23d9
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x2
	.byte	0x73
	.sleb128 0
	.byte	0
	.uleb128 0x28
	.long	LVL73
	.long	0x29ee
	.uleb128 0x28
	.long	LVL74
	.long	0x29fa
	.uleb128 0x28
	.long	LVL76
	.long	0x29fa
	.uleb128 0x29
	.long	LVL77
	.long	0x2a06
	.long	0x2408
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x1
	.byte	0x40
	.byte	0
	.uleb128 0x29
	.long	LVL78
	.long	0x2a12
	.long	0x2420
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC7
	.byte	0
	.uleb128 0x28
	.long	LVL79
	.long	0x2a1e
	.uleb128 0x29
	.long	LVL84
	.long	0x28c4
	.long	0x243f
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x29
	.long	LVL87
	.long	0x28c4
	.long	0x2455
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 -48
	.byte	0x6
	.byte	0
	.uleb128 0x28
	.long	LVL88
	.long	0x28d0
	.byte	0
	.uleb128 0x35
	.ascii "has_output_scan_elements\0"
	.byte	0x1
	.byte	0x72
	.byte	0xd
	.long	0x19af
	.byte	0x1
	.long	0x24a7
	.uleb128 0x36
	.ascii "dev\0"
	.byte	0x1
	.byte	0x72
	.byte	0x39
	.long	0x1b55
	.uleb128 0x22
	.ascii "ch\0"
	.byte	0x1
	.byte	0x74
	.byte	0x16
	.long	0x1b68
	.uleb128 0x22
	.ascii "i\0"
	.byte	0x1
	.byte	0x75
	.byte	0xf
	.long	0xf5
	.byte	0
	.uleb128 0x37
	.ascii "compare_func\0"
	.byte	0x1
	.byte	0x6b
	.byte	0xd
	.long	0x1f4
	.long	LFB1141
	.long	LFE1141-LFB1141
	.uleb128 0x1
	.byte	0x9c
	.long	0x2525
	.uleb128 0x26
	.ascii "a\0"
	.byte	0x1
	.byte	0x6b
	.byte	0x28
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x26
	.ascii "b\0"
	.byte	0x1
	.byte	0x6b
	.byte	0x39
	.long	0x249
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x27
	.ascii "pa\0"
	.byte	0x1
	.byte	0x6d
	.byte	0xe
	.long	0xcfe
	.secrel32	LLST3
	.secrel32	LVUS3
	.uleb128 0x27
	.ascii "pb\0"
	.byte	0x1
	.byte	0x6d
	.byte	0x17
	.long	0xcfe
	.secrel32	LLST4
	.secrel32	LVUS4
	.uleb128 0x38
	.long	LVL14
	.long	0x2a2a
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x39
	.secrel32	LASF7
	.byte	0x1
	.byte	0x5c
	.byte	0x11
	.long	0x3dd
	.byte	0x1
	.long	0x255c
	.uleb128 0x22
	.ascii "node\0"
	.byte	0x1
	.byte	0x5e
	.byte	0xa
	.long	0x3dd
	.uleb128 0x3a
	.secrel32	LASF9
	.byte	0x1
	.byte	0x5f
	.byte	0xa
	.long	0x3dd
	.uleb128 0x3a
	.secrel32	LASF8
	.byte	0x1
	.byte	0x60
	.byte	0x15
	.long	0x1d3d
	.byte	0
	.uleb128 0x37
	.ascii "generic_identify\0"
	.byte	0x1
	.byte	0x57
	.byte	0xd
	.long	0x19af
	.long	LFB1139
	.long	LFE1139-LFB1139
	.uleb128 0x1
	.byte	0x9c
	.long	0x2593
	.uleb128 0x2d
	.secrel32	LASF8
	.byte	0x1
	.byte	0x57
	.byte	0x37
	.long	0x1d18
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.byte	0
	.uleb128 0x3b
	.ascii "make_widget_update_signal_based\0"
	.byte	0x1
	.byte	0x3b
	.byte	0xd
	.byte	0x1
	.long	0x26cd
	.uleb128 0x36
	.ascii "widgets\0"
	.byte	0x1
	.byte	0x3b
	.byte	0x40
	.long	0x1b79
	.uleb128 0x36
	.ascii "num_widgets\0"
	.byte	0x1
	.byte	0x3c
	.byte	0x10
	.long	0xf5
	.uleb128 0x22
	.ascii "signal_name\0"
	.byte	0x1
	.byte	0x3e
	.byte	0x7
	.long	0x26cd
	.uleb128 0x22
	.ascii "i\0"
	.byte	0x1
	.byte	0x3f
	.byte	0xf
	.long	0xf5
	.uleb128 0x3c
	.long	0x2628
	.uleb128 0x3a
	.secrel32	LASF10
	.byte	0x1
	.byte	0x42
	.byte	0x7
	.long	0x704
	.uleb128 0x22
	.ascii "__t\0"
	.byte	0x1
	.byte	0x42
	.byte	0x7
	.long	0x670
	.uleb128 0x22
	.ascii "__r\0"
	.byte	0x1
	.byte	0x42
	.byte	0x7
	.long	0x201
	.byte	0
	.uleb128 0x3c
	.long	0x2652
	.uleb128 0x3a
	.secrel32	LASF10
	.byte	0x1
	.byte	0x44
	.byte	0xc
	.long	0x704
	.uleb128 0x22
	.ascii "__t\0"
	.byte	0x1
	.byte	0x44
	.byte	0xc
	.long	0x670
	.uleb128 0x22
	.ascii "__r\0"
	.byte	0x1
	.byte	0x44
	.byte	0xc
	.long	0x201
	.byte	0
	.uleb128 0x3c
	.long	0x267c
	.uleb128 0x3a
	.secrel32	LASF10
	.byte	0x1
	.byte	0x46
	.byte	0xc
	.long	0x704
	.uleb128 0x22
	.ascii "__t\0"
	.byte	0x1
	.byte	0x46
	.byte	0xc
	.long	0x670
	.uleb128 0x22
	.ascii "__r\0"
	.byte	0x1
	.byte	0x46
	.byte	0xc
	.long	0x201
	.byte	0
	.uleb128 0x3c
	.long	0x26a6
	.uleb128 0x3a
	.secrel32	LASF10
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.long	0x704
	.uleb128 0x22
	.ascii "__t\0"
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.long	0x670
	.uleb128 0x22
	.ascii "__r\0"
	.byte	0x1
	.byte	0x48
	.byte	0xc
	.long	0x201
	.byte	0
	.uleb128 0x3d
	.uleb128 0x3a
	.secrel32	LASF10
	.byte	0x1
	.byte	0x4d
	.byte	0x7
	.long	0x704
	.uleb128 0x22
	.ascii "__t\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x7
	.long	0x670
	.uleb128 0x22
	.ascii "__r\0"
	.byte	0x1
	.byte	0x4d
	.byte	0x7
	.long	0x201
	.byte	0
	.byte	0
	.uleb128 0x1c
	.long	0xd9
	.long	0x26dd
	.uleb128 0x1d
	.long	0xf5
	.byte	0x18
	.byte	0
	.uleb128 0x24
	.ascii "save_widget_value\0"
	.byte	0x1
	.byte	0x36
	.byte	0xd
	.long	LFB1137
	.long	LFE1137-LFB1137
	.uleb128 0x1
	.byte	0x9c
	.long	0x2735
	.uleb128 0x25
	.secrel32	LASF6
	.byte	0x1
	.byte	0x36
	.byte	0x2a
	.long	0x1771
	.secrel32	LLST0
	.secrel32	LVUS0
	.uleb128 0x26
	.ascii "iio_w\0"
	.byte	0x1
	.byte	0x36
	.byte	0x45
	.long	0x1b79
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x3e
	.long	LVL2
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 4
	.byte	0x6
	.byte	0
	.byte	0
	.uleb128 0x3f
	.ascii "tx_update_values\0"
	.byte	0x1
	.byte	0x31
	.byte	0xd
	.byte	0x1
	.uleb128 0x40
	.ascii "sprintf\0"
	.byte	0x2
	.word	0x17e
	.byte	0x5
	.long	0x105
	.byte	0x3
	.long	0x279c
	.uleb128 0x41
	.ascii "__stream\0"
	.byte	0x2
	.word	0x17e
	.byte	0x14
	.long	0x13f
	.uleb128 0x42
	.secrel32	LASF11
	.byte	0x2
	.word	0x17e
	.byte	0x2a
	.long	0xcfe
	.uleb128 0x43
	.uleb128 0x44
	.secrel32	LASF12
	.byte	0x2
	.word	0x180
	.byte	0x7
	.long	0x105
	.uleb128 0x44
	.secrel32	LASF13
	.byte	0x2
	.word	0x181
	.byte	0x15
	.long	0xc1
	.byte	0
	.uleb128 0x40
	.ascii "printf\0"
	.byte	0x2
	.word	0x162
	.byte	0x5
	.long	0x105
	.byte	0x3
	.long	0x27da
	.uleb128 0x42
	.secrel32	LASF11
	.byte	0x2
	.word	0x162
	.byte	0x19
	.long	0xcfe
	.uleb128 0x43
	.uleb128 0x44
	.secrel32	LASF12
	.byte	0x2
	.word	0x164
	.byte	0x7
	.long	0x105
	.uleb128 0x44
	.secrel32	LASF13
	.byte	0x2
	.word	0x165
	.byte	0x15
	.long	0xc1
	.byte	0
	.uleb128 0x45
	.long	0x274b
	.long	LFB1146
	.long	LFE1146-LFB1146
	.uleb128 0x1
	.byte	0x9c
	.long	0x2847
	.uleb128 0x46
	.long	0x2761
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x46
	.long	0x2773
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.uleb128 0x31
	.long	0x2781
	.secrel32	LLST5
	.secrel32	LVUS5
	.uleb128 0x31
	.long	0x278e
	.secrel32	LLST6
	.secrel32	LVUS6
	.uleb128 0x46
	.long	0x2773
	.uleb128 0x6
	.byte	0x3
	.long	LC0
	.byte	0x9f
	.uleb128 0x32
	.long	LVL17
	.long	0x2a3c
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x3
	.byte	0x91
	.sleb128 0
	.byte	0x6
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC0
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x2
	.byte	0x91
	.sleb128 8
	.byte	0
	.byte	0
	.uleb128 0x45
	.long	0x279c
	.long	LFB1145
	.long	LFE1145-LFB1145
	.uleb128 0x1
	.byte	0x9c
	.long	0x28b8
	.uleb128 0x46
	.long	0x27b1
	.uleb128 0x2
	.byte	0x91
	.sleb128 0
	.uleb128 0x31
	.long	0x27bf
	.secrel32	LLST7
	.secrel32	LVUS7
	.uleb128 0x31
	.long	0x27cc
	.secrel32	LLST8
	.secrel32	LVUS8
	.uleb128 0x46
	.long	0x27b1
	.uleb128 0x6
	.byte	0x3
	.long	LC1
	.byte	0x9f
	.uleb128 0x29
	.long	LVL20
	.long	0x2a48
	.long	0x289c
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 0
	.uleb128 0x1
	.byte	0x31
	.byte	0
	.uleb128 0x32
	.long	LVL21
	.long	0x2a54
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 4
	.uleb128 0x5
	.byte	0x3
	.long	LC1
	.uleb128 0x2a
	.uleb128 0x2
	.byte	0x74
	.sleb128 8
	.uleb128 0x2
	.byte	0x91
	.sleb128 4
	.byte	0
	.byte	0
	.uleb128 0x47
	.secrel32	LASF14
	.secrel32	LASF14
	.byte	0x25
	.byte	0x29
	.byte	0x6
	.uleb128 0x47
	.secrel32	LASF15
	.secrel32	LASF15
	.byte	0xb
	.byte	0x32
	.byte	0xa
	.uleb128 0x47
	.secrel32	LASF16
	.secrel32	LASF16
	.byte	0x26
	.byte	0x96
	.byte	0x6
	.uleb128 0x47
	.secrel32	LASF17
	.secrel32	LASF17
	.byte	0xb
	.byte	0x51
	.byte	0xa
	.uleb128 0x48
	.secrel32	LASF18
	.secrel32	LASF18
	.byte	0x27
	.word	0x254
	.byte	0x27
	.uleb128 0x48
	.secrel32	LASF19
	.secrel32	LASF19
	.byte	0x27
	.word	0x269
	.byte	0x2f
	.uleb128 0x48
	.secrel32	LASF20
	.secrel32	LASF20
	.byte	0x27
	.word	0x439
	.byte	0x1f
	.uleb128 0x48
	.secrel32	LASF21
	.secrel32	LASF21
	.byte	0x27
	.word	0x42f
	.byte	0x1f
	.uleb128 0x47
	.secrel32	LASF22
	.secrel32	LASF22
	.byte	0x23
	.byte	0x27
	.byte	0x6
	.uleb128 0x47
	.secrel32	LASF23
	.secrel32	LASF23
	.byte	0x26
	.byte	0x95
	.byte	0x16
	.uleb128 0x47
	.secrel32	LASF24
	.secrel32	LASF24
	.byte	0x21
	.byte	0x5f
	.byte	0xe
	.uleb128 0x47
	.secrel32	LASF25
	.secrel32	LASF25
	.byte	0x26
	.byte	0xc2
	.byte	0xc
	.uleb128 0x48
	.secrel32	LASF26
	.secrel32	LASF26
	.byte	0x1f
	.word	0x341
	.byte	0xa
	.uleb128 0x47
	.secrel32	LASF27
	.secrel32	LASF27
	.byte	0x21
	.byte	0x71
	.byte	0xe
	.uleb128 0x48
	.secrel32	LASF28
	.secrel32	LASF28
	.byte	0xd
	.word	0x8d9
	.byte	0x12
	.uleb128 0x48
	.secrel32	LASF29
	.secrel32	LASF29
	.byte	0x27
	.word	0x211
	.byte	0x27
	.uleb128 0x48
	.secrel32	LASF30
	.secrel32	LASF30
	.byte	0x27
	.word	0x21a
	.byte	0x2e
	.uleb128 0x48
	.secrel32	LASF31
	.secrel32	LASF31
	.byte	0x27
	.word	0x24e
	.byte	0x27
	.uleb128 0x47
	.secrel32	LASF32
	.secrel32	LASF32
	.byte	0xb
	.byte	0x6f
	.byte	0xa
	.uleb128 0x47
	.secrel32	LASF33
	.secrel32	LASF33
	.byte	0x25
	.byte	0x27
	.byte	0x1a
	.uleb128 0x47
	.secrel32	LASF34
	.secrel32	LASF34
	.byte	0x28
	.byte	0x49
	.byte	0xc
	.uleb128 0x47
	.secrel32	LASF35
	.secrel32	LASF35
	.byte	0x20
	.byte	0x6b
	.byte	0x9
	.uleb128 0x47
	.secrel32	LASF36
	.secrel32	LASF36
	.byte	0x20
	.byte	0x6f
	.byte	0x9
	.uleb128 0x47
	.secrel32	LASF37
	.secrel32	LASF37
	.byte	0x25
	.byte	0x3c
	.byte	0xc
	.uleb128 0x48
	.secrel32	LASF38
	.secrel32	LASF38
	.byte	0x1f
	.word	0x356
	.byte	0x9
	.uleb128 0x47
	.secrel32	LASF39
	.secrel32	LASF39
	.byte	0x25
	.byte	0x2a
	.byte	0x6
	.uleb128 0x47
	.secrel32	LASF40
	.secrel32	LASF40
	.byte	0x25
	.byte	0x2c
	.byte	0x6
	.uleb128 0x47
	.secrel32	LASF41
	.secrel32	LASF41
	.byte	0x25
	.byte	0x3d
	.byte	0x6
	.uleb128 0x47
	.secrel32	LASF42
	.secrel32	LASF42
	.byte	0x25
	.byte	0x31
	.byte	0x6
	.uleb128 0x47
	.secrel32	LASF43
	.secrel32	LASF43
	.byte	0xb
	.byte	0x3a
	.byte	0xa
	.uleb128 0x49
	.ascii "strcmp\0"
	.ascii "strcmp\0"
	.byte	0x29
	.byte	0x3f
	.byte	0xf
	.uleb128 0x47
	.secrel32	LASF44
	.secrel32	LASF44
	.byte	0x2
	.byte	0xb9
	.byte	0xf
	.uleb128 0x47
	.secrel32	LASF45
	.secrel32	LASF45
	.byte	0x2
	.byte	0x50
	.byte	0x17
	.uleb128 0x47
	.secrel32	LASF46
	.secrel32	LASF46
	.byte	0x2
	.byte	0xb3
	.byte	0xf
	.byte	0
	.section	.debug_abbrev,"dr"
Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x10
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x13
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0x18
	.uleb128 0x2111
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2116
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x55
	.uleb128 0x17
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x17
	.uleb128 0x2137
	.uleb128 0x17
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x2138
	.uleb128 0xb
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x57
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3d
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0x19
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x40
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0x19
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x41
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x43
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x44
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x6
	.uleb128 0x40
	.uleb128 0x18
	.uleb128 0x2117
	.uleb128 0x19
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x46
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x18
	.byte	0
	.byte	0
	.uleb128 0x47
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x48
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0xe
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x49
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0x19
	.uleb128 0x3c
	.uleb128 0x19
	.uleb128 0x6e
	.uleb128 0x8
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x39
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_loc,"dr"
Ldebug_loc0:
LVUS1:
	.uleb128 0
	.uleb128 LVU32
LLST1:
	.long	LVL4-Ltext0
	.long	LVL11-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
LVUS2:
	.uleb128 LVU13
	.uleb128 LVU22
	.uleb128 LVU24
	.uleb128 LVU27
LLST2:
	.long	LVL5-Ltext0
	.long	LVL7-Ltext0
	.word	0x1
	.byte	0x53
	.long	LVL8-Ltext0
	.long	LVL9-Ltext0
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS9:
	.uleb128 LVU79
	.uleb128 LVU81
	.uleb128 LVU81
	.uleb128 LVU90
LLST9:
	.long	LVL25-Ltext0
	.long	LVL26-1-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL26-1-Ltext0
	.long	LVL33-Ltext0
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS10:
	.uleb128 LVU86
	.uleb128 LVU88
	.uleb128 LVU88
	.uleb128 LVU217
	.uleb128 LVU220
	.uleb128 0
LLST10:
	.long	LVL30-Ltext0
	.long	LVL31-1-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL31-1-Ltext0
	.long	LVL88-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -44
	.long	LVL89-Ltext0
	.long	LFE1143-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -44
	.long	0
	.long	0
LVUS11:
	.uleb128 LVU177
	.uleb128 LVU179
	.uleb128 LVU179
	.uleb128 LVU208
LLST11:
	.long	LVL65-Ltext0
	.long	LVL66-1-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL66-1-Ltext0
	.long	LVL82-Ltext0
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS12:
	.uleb128 LVU92
	.uleb128 LVU101
	.uleb128 LVU101
	.uleb128 LVU217
	.uleb128 LVU220
	.uleb128 0
LLST12:
	.long	LVL34-Ltext0
	.long	LVL35-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL35-Ltext0
	.long	LVL88-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -36
	.long	LVL89-Ltext0
	.long	LFE1143-Ltext0
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS13:
	.uleb128 LVU66
	.uleb128 LVU124
	.uleb128 LVU124
	.uleb128 LVU175
	.uleb128 LVU175
	.uleb128 LVU205
	.uleb128 LVU205
	.uleb128 LVU208
	.uleb128 LVU208
	.uleb128 LVU213
	.uleb128 LVU213
	.uleb128 LVU216
	.uleb128 LVU220
	.uleb128 0
LLST13:
	.long	LVL22-Ltext0
	.long	LVL44-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL44-Ltext0
	.long	LVL63-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -37
	.long	LVL63-Ltext0
	.long	LVL81-Ltext0
	.word	0x2
	.byte	0x31
	.byte	0x9f
	.long	LVL81-Ltext0
	.long	LVL82-Ltext0
	.word	0x1
	.byte	0x52
	.long	LVL82-Ltext0
	.long	LVL85-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -37
	.long	LVL85-Ltext0
	.long	LVL87-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL89-Ltext0
	.long	LFE1143-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LVUS14:
	.uleb128 LVU119
	.uleb128 LVU124
	.uleb128 LVU124
	.uleb128 LVU155
	.uleb128 LVU156
	.uleb128 LVU159
	.uleb128 LVU159
	.uleb128 LVU201
	.uleb128 LVU206
	.uleb128 LVU209
	.uleb128 LVU209
	.uleb128 LVU213
	.uleb128 LVU213
	.uleb128 LVU216
LLST14:
	.long	LVL43-Ltext0
	.long	LVL44-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL44-Ltext0
	.long	LVL55-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -56
	.long	LVL56-Ltext0
	.long	LVL57-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL57-Ltext0
	.long	LVL80-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -56
	.long	LVL81-Ltext0
	.long	LVL83-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL83-Ltext0
	.long	LVL85-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -56
	.long	LVL85-Ltext0
	.long	LVL87-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LVUS15:
	.uleb128 LVU118
	.uleb128 LVU124
	.uleb128 LVU124
	.uleb128 LVU213
	.uleb128 LVU213
	.uleb128 LVU214
	.uleb128 LVU214
	.uleb128 LVU217
LLST15:
	.long	LVL43-Ltext0
	.long	LVL44-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL44-Ltext0
	.long	LVL85-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -52
	.long	LVL85-Ltext0
	.long	LVL86-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL86-Ltext0
	.long	LVL88-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -52
	.long	0
	.long	0
LVUS16:
	.uleb128 LVU115
	.uleb128 LVU217
LLST16:
	.long	LVL41-Ltext0
	.long	LVL88-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 -48
	.long	0
	.long	0
LVUS17:
	.uleb128 LVU162
	.uleb128 LVU165
	.uleb128 LVU165
	.uleb128 LVU168
LLST17:
	.long	LVL59-Ltext0
	.long	LVL60-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL60-Ltext0
	.long	LVL61-1-Ltext0
	.word	0x3
	.byte	0x91
	.sleb128 -76
	.long	0
	.long	0
LVUS18:
	.uleb128 LVU98
	.uleb128 LVU115
	.uleb128 LVU220
	.uleb128 0
LLST18:
	.long	LVL34-Ltext0
	.long	LVL41-Ltext0
	.word	0x1
	.byte	0x53
	.long	LVL89-Ltext0
	.long	LFE1143-Ltext0
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS19:
	.uleb128 LVU96
	.uleb128 LVU101
	.uleb128 LVU101
	.uleb128 LVU114
	.uleb128 LVU220
	.uleb128 0
LLST19:
	.long	LVL34-Ltext0
	.long	LVL35-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL35-Ltext0
	.long	LVL41-Ltext0
	.word	0x1
	.byte	0x56
	.long	LVL89-Ltext0
	.long	LFE1143-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	0
	.long	0
LVUS20:
	.uleb128 LVU103
	.uleb128 LVU108
LLST20:
	.long	LVL36-Ltext0
	.long	LVL37-1-Ltext0
	.word	0x1
	.byte	0x52
	.long	0
	.long	0
LVUS21:
	.uleb128 LVU130
	.uleb128 LVU137
	.uleb128 LVU137
	.uleb128 LVU152
	.uleb128 LVU159
	.uleb128 LVU160
LLST21:
	.long	LVL46-Ltext0
	.long	LVL47-1-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL47-1-Ltext0
	.long	LVL54-Ltext0
	.word	0x1
	.byte	0x53
	.long	LVL57-Ltext0
	.long	LVL58-Ltext0
	.word	0x1
	.byte	0x53
	.long	0
	.long	0
LVUS22:
	.uleb128 LVU143
	.uleb128 LVU145
	.uleb128 LVU145
	.uleb128 LVU150
	.uleb128 LVU159
	.uleb128 LVU160
LLST22:
	.long	LVL50-Ltext0
	.long	LVL51-1-Ltext0
	.word	0x1
	.byte	0x50
	.long	LVL51-1-Ltext0
	.long	LVL53-Ltext0
	.word	0x1
	.byte	0x56
	.long	LVL57-Ltext0
	.long	LVL58-Ltext0
	.word	0x1
	.byte	0x56
	.long	0
	.long	0
LVUS23:
	.uleb128 LVU134
	.uleb128 LVU139
	.uleb128 LVU139
	.uleb128 LVU152
	.uleb128 LVU159
	.uleb128 LVU160
LLST23:
	.long	LVL46-Ltext0
	.long	LVL48-Ltext0
	.word	0x2
	.byte	0x30
	.byte	0x9f
	.long	LVL48-Ltext0
	.long	LVL54-Ltext0
	.word	0x1
	.byte	0x57
	.long	LVL57-Ltext0
	.long	LVL58-Ltext0
	.word	0x1
	.byte	0x57
	.long	0
	.long	0
LVUS3:
	.uleb128 LVU36
	.uleb128 0
LLST3:
	.long	LVL13-Ltext0
	.long	LFE1141-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
LVUS4:
	.uleb128 LVU36
	.uleb128 0
LLST4:
	.long	LVL13-Ltext0
	.long	LFE1141-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 4
	.long	0
	.long	0
LVUS0:
	.uleb128 0
	.uleb128 LVU4
LLST0:
	.long	LVL0-Ltext0
	.long	LVL1-Ltext0
	.word	0x2
	.byte	0x91
	.sleb128 0
	.long	0
	.long	0
LVUS5:
	.uleb128 LVU46
	.uleb128 0
LLST5:
	.long	LVL17-Ltext0
	.long	LFE1146-Ltext0
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS6:
	.uleb128 LVU44
	.uleb128 LVU48
LLST6:
	.long	LVL16-Ltext0
	.long	LVL17-Ltext0
	.word	0x3
	.byte	0x91
	.sleb128 8
	.byte	0x9f
	.long	0
	.long	0
LVUS7:
	.uleb128 LVU57
	.uleb128 0
LLST7:
	.long	LVL21-Ltext0
	.long	LFE1145-Ltext0
	.word	0x1
	.byte	0x50
	.long	0
	.long	0
LVUS8:
	.uleb128 LVU55
	.uleb128 LVU59
LLST8:
	.long	LVL19-Ltext0
	.long	LVL21-Ltext0
	.word	0x3
	.byte	0x91
	.sleb128 4
	.byte	0x9f
	.long	0
	.long	0
	.section	.debug_aranges,"dr"
	.long	0x1c
	.word	0x2
	.secrel32	Ldebug_info0
	.byte	0x4
	.byte	0
	.word	0
	.word	0
	.long	Ltext0
	.long	Letext0-Ltext0
	.long	0
	.long	0
	.section	.debug_ranges,"dr"
Ldebug_ranges0:
	.long	LBB22-Ltext0
	.long	LBE22-Ltext0
	.long	LBB26-Ltext0
	.long	LBE26-Ltext0
	.long	LBB37-Ltext0
	.long	LBE37-Ltext0
	.long	0
	.long	0
	.long	LBB27-Ltext0
	.long	LBE27-Ltext0
	.long	LBB32-Ltext0
	.long	LBE32-Ltext0
	.long	LBB33-Ltext0
	.long	LBE33-Ltext0
	.long	LBB34-Ltext0
	.long	LBE34-Ltext0
	.long	0
	.long	0
	.section	.debug_line,"dr"
Ldebug_line0:
	.section	.debug_str,"dr"
LASF42:
	.ascii "dac_data_manager_set_buffer_chooser_current_folder\0"
LASF28:
	.ascii "g_type_check_instance_cast\0"
LASF44:
	.ascii "__mingw_vsprintf\0"
LASF39:
	.ascii "dac_data_manager_freq_widgets_range_update\0"
LASF41:
	.ascii "dac_data_manager_set_buffer_size_alignment\0"
LASF27:
	.ascii "gtk_builder_get_object\0"
LASF16:
	.ascii "osc_destroy_context\0"
LASF3:
	.ascii "xthickness\0"
LASF21:
	.ascii "iio_channel_is_output\0"
LASF5:
	.ascii "icon_factories\0"
LASF25:
	.ascii "osc_load_glade_file\0"
LASF38:
	.ascii "gtk_widget_show_all\0"
LASF26:
	.ascii "gtk_widget_get_type\0"
LASF40:
	.ascii "dac_data_manager_update_iio_widgets\0"
LASF6:
	.ascii "widget\0"
LASF29:
	.ascii "iio_context_get_devices_count\0"
LASF23:
	.ascii "osc_create_context\0"
LASF8:
	.ascii "plugin\0"
LASF15:
	.ascii "g_slist_free\0"
LASF34:
	.ascii "gtk_frame_new\0"
LASF0:
	.ascii "parent_instance\0"
LASF43:
	.ascii "g_slist_append\0"
LASF1:
	.ascii "colormap\0"
LASF20:
	.ascii "iio_channel_is_scan_element\0"
LASF7:
	.ascii "get_dac_dev_names\0"
LASF22:
	.ascii "iio_update_widgets\0"
LASF46:
	.ascii "__mingw_vfprintf\0"
LASF19:
	.ascii "iio_device_get_channel\0"
LASF18:
	.ascii "iio_device_get_channels_count\0"
LASF4:
	.ascii "ythickness\0"
LASF2:
	.ascii "font_desc\0"
LASF45:
	.ascii "__acrt_iob_func\0"
LASF14:
	.ascii "dac_data_manager_free\0"
LASF10:
	.ascii "__inst\0"
LASF35:
	.ascii "gtk_container_get_type\0"
LASF37:
	.ascii "dac_data_manager_get_gui_container\0"
LASF24:
	.ascii "gtk_builder_new\0"
LASF12:
	.ascii "__retval\0"
LASF36:
	.ascii "gtk_container_add\0"
LASF17:
	.ascii "g_slist_concat\0"
LASF30:
	.ascii "iio_context_get_device\0"
LASF31:
	.ascii "iio_device_get_name\0"
LASF13:
	.ascii "__local_argv\0"
LASF11:
	.ascii "__format\0"
LASF33:
	.ascii "dac_data_manager_new\0"
LASF32:
	.ascii "g_slist_find_custom\0"
LASF9:
	.ascii "dac_dev_names\0"
	.ident	"GCC: (Rev6, Built by MSYS2 project) 10.2.0"
	.def	_dac_data_manager_free;	.scl	2;	.type	32;	.endef
	.def	_g_slist_free;	.scl	2;	.type	32;	.endef
	.def	_osc_destroy_context;	.scl	2;	.type	32;	.endef
	.def	_strcmp;	.scl	2;	.type	32;	.endef
	.def	___mingw_vsprintf;	.scl	2;	.type	32;	.endef
	.def	___mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	_osc_create_context;	.scl	2;	.type	32;	.endef
	.def	_gtk_builder_new;	.scl	2;	.type	32;	.endef
	.def	_osc_load_glade_file;	.scl	2;	.type	32;	.endef
	.def	_gtk_widget_get_type;	.scl	2;	.type	32;	.endef
	.def	_gtk_builder_get_object;	.scl	2;	.type	32;	.endef
	.def	_g_type_check_instance_cast;	.scl	2;	.type	32;	.endef
	.def	_g_slist_concat;	.scl	2;	.type	32;	.endef
	.def	_g_slist_find_custom;	.scl	2;	.type	32;	.endef
	.def	_dac_data_manager_new;	.scl	2;	.type	32;	.endef
	.def	_gtk_frame_new;	.scl	2;	.type	32;	.endef
	.def	_gtk_container_get_type;	.scl	2;	.type	32;	.endef
	.def	_gtk_container_add;	.scl	2;	.type	32;	.endef
	.def	_dac_data_manager_get_gui_container;	.scl	2;	.type	32;	.endef
	.def	_gtk_widget_show_all;	.scl	2;	.type	32;	.endef
	.def	_dac_data_manager_freq_widgets_range_update;	.scl	2;	.type	32;	.endef
	.def	_dac_data_manager_update_iio_widgets;	.scl	2;	.type	32;	.endef
	.def	_iio_update_widgets;	.scl	2;	.type	32;	.endef
	.def	_dac_data_manager_set_buffer_size_alignment;	.scl	2;	.type	32;	.endef
	.def	_dac_data_manager_set_buffer_chooser_current_folder;	.scl	2;	.type	32;	.endef
	.def	_g_slist_append;	.scl	2;	.type	32;	.endef
