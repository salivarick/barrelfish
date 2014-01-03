#ifndef CAPBITS_H
#define CAPBITS_H
#include <barrelfish_kpi/capabilities.h>
struct CNode;
struct DevFrame;
struct Dispatcher;
struct EndPoint;
struct FCNode;
struct Frame;
struct ID;
struct IO;
struct IRQTable;
struct Kernel;
struct Notify_IPI;
struct Notify_RCK;
struct Null;
struct PerfMon;
struct PhysAddr;
struct RAM;
struct VNode_ARM_l1;
struct VNode_ARM_l2;
struct VNode_x86_32_pdir;
struct VNode_x86_32_pdpt;
struct VNode_x86_32_ptable;
struct VNode_x86_64_pdir;
struct VNode_x86_64_pdpt;
struct VNode_x86_64_pml4;
struct VNode_x86_64_ptable;
struct capability;
union capability_u;
enum objtype {
    ObjType_Num = 25,
    ObjType_PerfMon = 24,
    ObjType_ID = 23,
    ObjType_Notify_IPI = 22,
    ObjType_Notify_RCK = 21,
    ObjType_IO = 20,
    ObjType_IRQTable = 19,
    ObjType_VNode_ARM_l2 = 18,
    ObjType_VNode_ARM_l1 = 17,
    ObjType_VNode_x86_32_ptable = 16,
    ObjType_VNode_x86_32_pdir = 15,
    ObjType_VNode_x86_32_pdpt = 14,
    ObjType_VNode_x86_64_ptable = 13,
    ObjType_VNode_x86_64_pdir = 12,
    ObjType_VNode_x86_64_pdpt = 11,
    ObjType_VNode_x86_64_pml4 = 10,
    ObjType_Kernel = 9,
    ObjType_DevFrame = 8,
    ObjType_Frame = 7,
    ObjType_EndPoint = 6,
    ObjType_Dispatcher = 5,
    ObjType_FCNode = 4,
    ObjType_CNode = 3,
    ObjType_RAM = 2,
    ObjType_PhysAddr = 1,
    ObjType_Null = 0
};
struct Null {};
struct PhysAddr {genpaddr_t base;
                 uint8_t bits;};
struct RAM {genpaddr_t base;
            uint8_t bits;};
struct CNode {lpaddr_t cnode;
              uint8_t bits;
              CapRights rightsmask;
              uint8_t guard_size;
              capaddr_t guard;};
struct FCNode {genpaddr_t cnode;
               uint8_t bits;
               CapRights rightsmask;
               coreid_t core_id;
               uint8_t guard_size;
               capaddr_t guard;};
struct Dispatcher {struct dcb* dcb;};
struct EndPoint {struct dcb* listener;
                 lvaddr_t epoffset;
                 uint32_t epbuflen;};
struct Frame {genpaddr_t base;
              uint8_t bits;};
struct DevFrame {genpaddr_t base;
                 uint8_t bits;};
struct Kernel {};
struct VNode_x86_64_pml4 {genpaddr_t base;};
struct VNode_x86_64_pdpt {genpaddr_t base;};
struct VNode_x86_64_pdir {genpaddr_t base;};
struct VNode_x86_64_ptable {genpaddr_t base;};
struct VNode_x86_32_pdpt {genpaddr_t base;};
struct VNode_x86_32_pdir {genpaddr_t base;};
struct VNode_x86_32_ptable {genpaddr_t base;};
struct VNode_ARM_l1 {genpaddr_t base;};
struct VNode_ARM_l2 {genpaddr_t base;};
struct IRQTable {};
struct IO {uint16_t start;
           uint16_t end;};
struct Notify_RCK {coreid_t coreid;
                   uint16_t chanid;};
struct Notify_IPI {coreid_t coreid;
                   uint16_t chanid;};
struct ID {coreid_t coreid;
           uint32_t core_local_id;};
struct PerfMon {};
union capability_u {struct  Null null;
                    struct  PhysAddr physaddr;
                    struct  RAM ram;
                    struct  CNode cnode;
                    struct  FCNode fcnode;
                    struct  Dispatcher dispatcher;
                    struct  EndPoint endpoint;
                    struct  Frame frame;
                    struct  DevFrame devframe;
                    struct  Kernel kernel;
                    struct  VNode_x86_64_pml4 vnode_x86_64_pml4;
                    struct  VNode_x86_64_pdpt vnode_x86_64_pdpt;
                    struct  VNode_x86_64_pdir vnode_x86_64_pdir;
                    struct  VNode_x86_64_ptable vnode_x86_64_ptable;
                    struct  VNode_x86_32_pdpt vnode_x86_32_pdpt;
                    struct  VNode_x86_32_pdir vnode_x86_32_pdir;
                    struct  VNode_x86_32_ptable vnode_x86_32_ptable;
                    struct  VNode_ARM_l1 vnode_arm_l1;
                    struct  VNode_ARM_l2 vnode_arm_l2;
                    struct  IRQTable irqtable;
                    struct  IO io;
                    struct  Notify_RCK notify_rck;
                    struct  Notify_IPI notify_ipi;
                    struct  ID id;
                    struct  PerfMon perfmon;};
struct capability {enum objtype type;
                   CapRights rights;
                   union  capability_u u;};
#endif // CAPBITS_H
