################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
Application/ledGreenStateMachine.obj: ../Application/ledGreenStateMachine.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="Application/ledGreenStateMachine.d_raw" --obj_directory="Application" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Application/ledRedStateMachine.obj: ../Application/ledRedStateMachine.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="Application/ledRedStateMachine.d_raw" --obj_directory="Application" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Application/led_task.obj: ../Application/led_task.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="Application/led_task.d_raw" --obj_directory="Application" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Application/main.obj: ../Application/main.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="Application/main.d_raw" --obj_directory="Application" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '

Application/switch_task.obj: ../Application/switch_task.c $(GEN_OPTS) | $(GEN_HDRS)
	@echo 'Building file: "$<"'
	@echo 'Invoking: ARM Compiler'
	"C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/bin/armcl" -mv7M4 --code_state=16 --float_support=FPv4SPD16 -me --include_path="D:/FreeRTOS_ISR_TIVA/Application" --include_path="D:/FreeRTOS_ISR_TIVA/driver" --include_path="D:/FreeRTOS_ISR_TIVA/FreeRTOSSource" --include_path="D:/FreeRTOS_ISR_TIVA/Include" --include_path="D:/FreeRTOS_ISR_TIVA" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295/utils" --include_path="C:/ti/TivaWare_C_Series-2.2.0.295" --include_path="C:/ti/ccsv7/tools/compiler/ti-cgt-arm_20.2.5.LTS/include" --define=ccs="ccs" --define=PART_TM4C1232H6PM -g --gcc --diag_warning=225 --diag_wrap=off --display_error_number --abi=eabi --preproc_with_compile --preproc_dependency="Application/switch_task.d_raw" --obj_directory="Application" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


