#ifndef __ahci_mgmt_RPC_CLIENT_H
#define __ahci_mgmt_RPC_CLIENT_H 1
/*
 * Copyright (c) 2010, ETH Zurich.
 * All rights reserved.
 * 
 * INTERFACE NAME: ahci_mgmt
 * INTEFACE FILE: ../if/ahci_mgmt.if
 * INTERFACE DESCRIPTION: AHCI Management Daemon
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

#include <if/ahci_mgmt_defs.h>

/*
 * Forward declaration of binding type
 */
struct ahci_mgmt_rpc_client;

/*
 * Function signatures
 */
typedef  errval_t ahci_mgmt_list__rpc_method_fn(struct ahci_mgmt_rpc_client *_rpc, uint8_t **port_ids, size_t *len);
typedef  errval_t ahci_mgmt_identify__rpc_method_fn(struct ahci_mgmt_rpc_client *_rpc, uint8_t port_id, uint8_t **identify_data, size_t *data_len);
typedef  errval_t ahci_mgmt_open__rpc_method_fn(struct ahci_mgmt_rpc_client *_rpc, uint8_t port_id, ahci_mgmt_errval_t *status, struct capref *controller_mem, uint64_t *offset, uint32_t *capabilities);
typedef  errval_t ahci_mgmt_close__rpc_method_fn(struct ahci_mgmt_rpc_client *_rpc, uint8_t port_id, ahci_mgmt_errval_t *status);

/*
 * VTable struct definition for the interface
 */
struct ahci_mgmt_rpc_vtbl {
    ahci_mgmt_list__rpc_method_fn *list;
    ahci_mgmt_identify__rpc_method_fn *identify;
    ahci_mgmt_open__rpc_method_fn *open;
    ahci_mgmt_close__rpc_method_fn *close;
};

/*
 * The Binding structure
 */
struct ahci_mgmt_rpc_client {
    struct ahci_mgmt_binding *b;
    struct ahci_mgmt_rpc_vtbl vtbl;
    bool rpc_in_progress;
    bool reply_present;
    errval_t async_error;
    struct waitset rpc_waitset;
    struct waitset_chanstate dummy_chanstate;
};

/*
 * Function to initialise an RPC client
 */
extern  errval_t ahci_mgmt_rpc_client_init(struct ahci_mgmt_rpc_client *rpc, struct ahci_mgmt_binding *binding);

#endif // __ahci_mgmt_RPC_CLIENT_H
