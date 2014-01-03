#ifndef __fb_RPC_CLIENT_H
#define __fb_RPC_CLIENT_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: fb
 * INTEFACE FILE: ../if/fb.if
 * INTERFACE DESCRIPTION: Framebuffer interface
 * 
 * This file is distributed under the terms in the attached LICENSE
 * file. If you do not find this file, copies can be found by
 * writing to:
 * ETH Zurich D-INFK, Universitaetstr.6, CH-8092 Zurich.
 * Attn: Systems Group.
 * 
 * THIS FILE IS AUTOMATICALLY GENERATED BY FLOUNDER: DO NOT EDIT!
 */

/*
 * RPC client
 */

#include <if/fb_defs.h>

/*
 * Forward declaration of binding type
 */
struct fb_rpc_client;

/*
 * Function signatures
 */
typedef  errval_t fb_get_framebuffer__rpc_method_fn(struct fb_rpc_client *_rpc, fb_errval_t *err, struct capref *fbcap, uint32_t *offset);
typedef  errval_t fb_set_videomode__rpc_method_fn(struct fb_rpc_client *_rpc, uint16_t xres, uint16_t yres, uint8_t bpp, fb_errval_t *error);
typedef  errval_t fb_get_vesamode__rpc_method_fn(struct fb_rpc_client *_rpc, uint16_t *mode, bool *linear, fb_errval_t *error);
typedef  errval_t fb_set_vesamode__rpc_method_fn(struct fb_rpc_client *_rpc, uint16_t mode, bool linear, bool clear, fb_errval_t *error);
typedef  errval_t fb_save_vesastate__rpc_method_fn(struct fb_rpc_client *_rpc, fb_errval_t *error);
typedef  errval_t fb_restore_vesastate__rpc_method_fn(struct fb_rpc_client *_rpc, fb_errval_t *error);
typedef  errval_t fb_vsync__rpc_method_fn(struct fb_rpc_client *_rpc);

/*
 * VTable struct definition for the interface
 */
struct fb_rpc_vtbl {
    fb_get_framebuffer__rpc_method_fn *get_framebuffer;
    fb_set_videomode__rpc_method_fn *set_videomode;
    fb_get_vesamode__rpc_method_fn *get_vesamode;
    fb_set_vesamode__rpc_method_fn *set_vesamode;
    fb_save_vesastate__rpc_method_fn *save_vesastate;
    fb_restore_vesastate__rpc_method_fn *restore_vesastate;
    fb_vsync__rpc_method_fn *vsync;
};

/*
 * The Binding structure
 */
struct fb_rpc_client {
    struct fb_binding *b;
    struct fb_rpc_vtbl vtbl;
    bool rpc_in_progress;
    bool reply_present;
    errval_t async_error;
    struct waitset rpc_waitset;
    struct waitset_chanstate dummy_chanstate;
};

/*
 * Function to initialise an RPC client
 */
extern  errval_t fb_rpc_client_init(struct fb_rpc_client *rpc, struct fb_binding *binding);

#endif // __fb_RPC_CLIENT_H
