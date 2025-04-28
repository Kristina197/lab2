.section .data
prompt:         .asciz "Enter string: "
compressed_msg: .asciz "Compressed: "
original_msg:   .asciz "Original: "
newline:        .asciz "\n"

.section .bss
.lcomm S, 256           # Буфер для ввода строки
.lcomm compressed, 512   # Буфер для сжатой строки
.lcomm count, 4         # Счетчик повторений (32 бита)

.section .text
.globl main
main:
    # Пролог функции
    pushq %rbp
    movq %rsp, %rbp
    
    # Вывод приглашения
    movq $prompt, %rdi
    call printf
    
    # Чтение строки
    movq $S, %rdi
    movq $256, %rsi
    movq stdin(%rip), %rdx
    call fgets
    
    # Удаление символа новой строки
    movq $S, %rdi
    call strlen
    movb $0, S(%rax)
    
    # Инициализация счетчика
    movl $1, count(%rip)
    movq $S, %rsi        # Указатель на текущий символ
    movq $compressed, %rdi # Указатель на сжатую строку

compress_loop:
    movb (%rsi), %al     # Текущий символ
    movb 1(%rsi), %bl    # Следующий символ
    cmpb %al, %bl
    jne different_chars
    
    # Увеличиваем счетчик
    incl count(%rip)
    jmp next_char

different_chars:
    # Добавляем символ в сжатую строку
    movb %al, (%rdi)
    incq %rdi
    
    # Преобразуем счетчик в строку
    movl count(%rip), %eax
    call int_to_string
    
    # Сбрасываем счетчик
    movl $1, count(%rip)

next_char:
    incq %rsi
    cmpb $0, (%rsi)
    jne compress_loop
    
    # Добавляем последний символ и его счетчик
    movb -1(%rsi), %al
    movb %al, (%rdi)
    incq %rdi
    movl count(%rip), %eax
    call int_to_string
    
    # Сравниваем длины строк
    movq $S, %rdi
    call strlen
    movq %rax, %rbx
    
    movq $compressed, %rdi
    call strlen
    
    cmpq %rbx, %rax
    jge output_original
    
    # Вывод сжатой строки
    movq $compressed_msg, %rdi
    call printf
    movq $compressed, %rdi
    call printf
    jmp exit_program

output_original:
    # Вывод исходной строки
    movq $original_msg, %rdi
    call printf
    movq $S, %rdi
    call printf

exit_program:
    # Перенос строки
    movq $newline, %rdi
    call printf
    
    # Эпилог функции
    movq %rbp, %rsp
    popq %rbp
    
    # Возврат 0
    movq $0, %rax
    ret

# Функция преобразования числа в строку (eax -> rdi)
int_to_string:
    pushq %rbx
    pushq %rcx
    pushq %rdx
    
    movl $10, %ebx
    xorl %ecx, %ecx      # Счетчик цифр

divide_loop:
    xorl %edx, %edx
    divl %ebx
    pushq %rdx           # Сохраняем цифру
    incl %ecx
    testl %eax, %eax
    jnz divide_loop

store_loop:
    popq %rax
    addb $'0', %al
    movb %al, (%rdi)
    incq %rdi
    loop store_loop
    
    popq %rdx
    popq %rcx
    popq %rbx
    ret
