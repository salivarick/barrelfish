#ifndef __trivfs_RPC_CLIENT_H
#define __trivfs_RPC_CLIENT_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: trivfs
 * INTEFACE FILE: ../if/trivfs.if
 * INTERFACE DESCRIPTION: Trivial file system interface
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

#include <if/trivfs_defs.h>

/*
 * Forward declaration of binding type
 */
struct trivfs_rpc_client;

/*
 * Function signatures
 */
typedef  errval_t trivfs_bulk_init__rpc_method_fn(struct trivfs_rpc_client *_rpc, struct capref frame, trivfs_errval_t *err);
typedef  errval_t trivfs_getroot__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t *rootfh);
typedef  errval_t trivfs_readdir__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t dir, uint32_t idx, trivfs_errval_t *err, char **name, bool *isdir, trivfs_fsize_t *size);
typedef  errval_t trivfs_lookup__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t dir, const char *name, trivfs_errval_t *err, trivfs_fh_t *fh, bool *isdir);
typedef  errval_t trivfs_getattr__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t fh, trivfs_errval_t *err, bool *isdir, trivfs_fsize_t *size);
typedef  errval_t trivfs_read__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t file, trivfs_offset_t offset, trivfs_fsize_t maxlen, trivfs_errval_t *err, uint8_t **data, size_t *retlen);
typedef  errval_t trivfs_write__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t file, trivfs_offset_t offset, const uint8_t *data, size_t len, trivfs_errval_t *err);
typedef  errval_t trivfs_read_bulk__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t file, trivfs_offset_t offset, trivfs_fsize_t maxlen, trivfs_bulkid_t bulkid, trivfs_errval_t *err, trivfs_fsize_t *retlen);
typedef  errval_t trivfs_write_bulk__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t file, trivfs_offset_t offset, trivfs_fsize_t len, trivfs_bulkid_t bulkid, trivfs_errval_t *err);
typedef  errval_t trivfs_truncate__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t file, trivfs_fsize_t newsize, trivfs_errval_t *err);
typedef  errval_t trivfs_create__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t dir, const char *name, trivfs_errval_t *err, trivfs_fh_t *fh);
typedef  errval_t trivfs_mkdir__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t dir, const char *name, trivfs_errval_t *err, trivfs_fh_t *fh);
typedef  errval_t trivfs_delete__rpc_method_fn(struct trivfs_rpc_client *_rpc, trivfs_fh_t fh, trivfs_errval_t *err);

/*
 * VTable struct definition for the interface
 */
struct trivfs_rpc_vtbl {
    trivfs_bulk_init__rpc_method_fn *bulk_init;
    trivfs_getroot__rpc_method_fn *getroot;
    trivfs_readdir__rpc_method_fn *readdir;
    trivfs_lookup__rpc_method_fn *lookup;
    trivfs_getattr__rpc_method_fn *getattr;
    trivfs_read__rpc_method_fn *read;
    trivfs_write__rpc_method_fn *write;
    trivfs_read_bulk__rpc_method_fn *read_bulk;
    trivfs_write_bulk__rpc_method_fn *write_bulk;
    trivfs_truncate__rpc_method_fn *truncate;
    trivfs_create__rpc_method_fn *create;
    trivfs_mkdir__rpc_method_fn *mkdir;
    trivfs_delete__rpc_method_fn *delete;
};

/*
 * The Binding structure
 */
struct trivfs_rpc_client {
    struct trivfs_binding *b;
    struct trivfs_rpc_vtbl vtbl;
    bool rpc_in_progress;
    bool reply_present;
    errval_t async_error;
    struct waitset rpc_waitset;
    struct waitset_chanstate dummy_chanstate;
};

/*
 * Function to initialise an RPC client
 */
extern  errval_t trivfs_rpc_client_init(struct trivfs_rpc_client *rpc, struct trivfs_binding *binding);

#endif // __trivfs_RPC_CLIENT_H
