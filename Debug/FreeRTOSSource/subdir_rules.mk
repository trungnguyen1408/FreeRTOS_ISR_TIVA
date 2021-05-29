################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
FreeRTOSSource/croutine.obj: ../FreeRTOSSource/croutine.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/croutine.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/event_groups.obj: ../FreeRTOSSource/event_groups.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/event_groups.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/heap_2.obj: ../FreeRTOSSource/heap_2.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/heap_2.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/list.obj: ../FreeRTOSSource/list.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/list.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/port.obj: ../FreeRTOSSource/port.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/port.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/portasm.obj: ../FreeRTOSSource/portasm.asm $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/portasm.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/queue.obj: ../FreeRTOSSource/queue.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/queue.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/stream_buffer.obj: ../FreeRTOSSource/stream_buffer.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/stream_buffer.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/tasks.obj: ../FreeRTOSSource/tasks.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/tasks.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

FreeRTOSSource/timers.obj: ../FreeRTOSSource/timers.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="FreeRTOSSource/timers.d_raw" --obj_directory="FreeRTOSSource" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


