/* Nochi Kernel Project - Standard UART I/O Definitions.
 * 
 * Copyright (c) 2026 Kapoti Nora H.
 * SPDX-License-Identifier: Apache-2.0
 * 
 * include/stduart.h
 */

#ifndef _STDUART_H
#define _STDUART_H

#include <klibc/stdint.h>
#include <klibc/stddef.h>

#define COM1 0x3f8

void outb(uint16_t port, uint8_t data);
void outw(uint16_t port, uint16_t data);
uint8_t inb(uint16_t port);
uint16_t inw(uint16_t port);

uint8_t uart_getstat(void);

void uart_init(void);
void uart_putchar(const char c);
void uart_puts(const char *s);
void uart_printf(const char *fmt, ...);

#endif
