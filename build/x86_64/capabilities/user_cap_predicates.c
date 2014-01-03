#include <barrelfish/barrelfish.h>
#include <barrelfish_kpi/capbits.h>
#include <barrelfish/cap_predicates.h>
/* Includes: */
 
#include <stdint.h>
#include <assert.h>
 
/* Function Definitions: */
 
int8_t compare_caps(struct  capability* left,struct  capability* right,bool tiebreak) {
    uint8_t _fof_x121;
    uint8_t _fof_x122;
    genpaddr_t _fof_x123;
    genpaddr_t _fof_x124;
    gensize_t _fof_x125;
    gensize_t _fof_x126;
    struct  capability* left__115;
    struct  capability left__115__116;
    enum objtype left__115__116__119;
    union  capability_u left__115__116__127;
    struct  FCNode left__115__116__127__129;
    genpaddr_t left__115__116__127__129__131;
    uint8_t left__115__116__127__129__133;
    coreid_t left__115__116__127__129__135;
    union  capability_u left__115__116__137;
    struct  IO left__115__116__137__139;
    uint16_t left__115__116__137__139__141;
    uint16_t left__115__116__137__139__143;
    union  capability_u left__115__116__145;
    struct  Notify_RCK left__115__116__145__147;
    coreid_t left__115__116__145__147__149;
    uint16_t left__115__116__145__147__151;
    union  capability_u left__115__116__153;
    struct  Notify_IPI left__115__116__153__155;
    coreid_t left__115__116__153__155__157;
    uint16_t left__115__116__153__155__159;
    union  capability_u left__115__116__161;
    struct  ID left__115__116__161__163;
    coreid_t left__115__116__161__163__165;
    uint32_t left__115__116__161__163__167;
    struct  capability* right__117;
    struct  capability right__117__118;
    enum objtype right__117__118__120;
    union  capability_u right__117__118__128;
    struct  FCNode right__117__118__128__130;
    genpaddr_t right__117__118__128__130__132;
    uint8_t right__117__118__128__130__134;
    coreid_t right__117__118__128__130__136;
    union  capability_u right__117__118__138;
    struct  IO right__117__118__138__140;
    uint16_t right__117__118__138__140__142;
    uint16_t right__117__118__138__140__144;
    union  capability_u right__117__118__146;
    struct  Notify_RCK right__117__118__146__148;
    coreid_t right__117__118__146__148__150;
    uint16_t right__117__118__146__148__152;
    union  capability_u right__117__118__154;
    struct  Notify_IPI right__117__118__154__156;
    coreid_t right__117__118__154__156__158;
    uint16_t right__117__118__154__156__160;
    union  capability_u right__117__118__162;
    struct  ID right__117__118__162__164;
    coreid_t right__117__118__162__164__166;
    uint32_t right__117__118__162__164__168;
 
    left__115 = left;
    left__115__116 = *left__115;
    right__117 = right;
    right__117__118 = *right__117;
    left__115__116__119 = left__115__116.type;
    right__117__118__120 = right__117__118.type;
    _fof_x121 = get_type_root(left__115__116__119);
    _fof_x122 = get_type_root(right__117__118__120);
    if ((_fof_x121 != _fof_x122)){
        return ((((_fof_x121 < _fof_x122)) ? (-1) : (1)));
    } else {
    }
    _fof_x123 = get_address(left);
    _fof_x124 = get_address(right);
    if ((_fof_x123 != _fof_x124)){
        return ((((_fof_x123 < _fof_x124)) ? (-1) : (1)));
    } else {
    }
    _fof_x125 = get_size(left);
    _fof_x126 = get_size(right);
    if ((_fof_x125 != _fof_x126)){
        return ((((_fof_x125 > _fof_x126)) ? (-1) : (1)));
    } else {
    }
    if ((left__115__116__119 != right__117__118__120)){
        return ((((left__115__116__119 < right__117__118__120)) ? (-1) : (1)));
    } else {
    }
    switch (left__115__116__119) {
        case ObjType_ID: {
            left__115__116__161 = left__115__116.u;
            right__117__118__162 = right__117__118.u;
            left__115__116__161__163 = left__115__116__161.id;
            right__117__118__162__164 = right__117__118__162.id;
            left__115__116__161__163__165 = left__115__116__161__163.coreid;
            right__117__118__162__164__166 = right__117__118__162__164.coreid;
            if ((left__115__116__161__163__165 != right__117__118__162__164__166)){
                return ((((left__115__116__161__163__165 < right__117__118__162__164__166)) ? (-1) : (1)));
            } else {
            }
            left__115__116__161__163__167 = left__115__116__161__163.core_local_id;
            right__117__118__162__164__168 = right__117__118__162__164.core_local_id;
            if ((left__115__116__161__163__167 != right__117__118__162__164__168)){
                return ((((left__115__116__161__163__167 < right__117__118__162__164__168)) ? (-1) : (1)));
            } else {
            }
            break;
        }
        case ObjType_Notify_IPI: {
            left__115__116__153 = left__115__116.u;
            right__117__118__154 = right__117__118.u;
            left__115__116__153__155 = left__115__116__153.notify_ipi;
            right__117__118__154__156 = right__117__118__154.notify_ipi;
            left__115__116__153__155__157 = left__115__116__153__155.coreid;
            right__117__118__154__156__158 = right__117__118__154__156.coreid;
            if ((left__115__116__153__155__157 != right__117__118__154__156__158)){
                return ((((left__115__116__153__155__157 < right__117__118__154__156__158)) ? (-1) : (1)));
            } else {
            }
            left__115__116__153__155__159 = left__115__116__153__155.chanid;
            right__117__118__154__156__160 = right__117__118__154__156.chanid;
            if ((left__115__116__153__155__159 != right__117__118__154__156__160)){
                return ((((left__115__116__153__155__159 < right__117__118__154__156__160)) ? (-1) : (1)));
            } else {
            }
            break;
        }
        case ObjType_Notify_RCK: {
            left__115__116__145 = left__115__116.u;
            right__117__118__146 = right__117__118.u;
            left__115__116__145__147 = left__115__116__145.notify_rck;
            right__117__118__146__148 = right__117__118__146.notify_rck;
            left__115__116__145__147__149 = left__115__116__145__147.coreid;
            right__117__118__146__148__150 = right__117__118__146__148.coreid;
            if ((left__115__116__145__147__149 != right__117__118__146__148__150)){
                return ((((left__115__116__145__147__149 < right__117__118__146__148__150)) ? (-1) : (1)));
            } else {
            }
            left__115__116__145__147__151 = left__115__116__145__147.chanid;
            right__117__118__146__148__152 = right__117__118__146__148.chanid;
            if ((left__115__116__145__147__151 != right__117__118__146__148__152)){
                return ((((left__115__116__145__147__151 < right__117__118__146__148__152)) ? (-1) : (1)));
            } else {
            }
            break;
        }
        case ObjType_IO: {
            left__115__116__137 = left__115__116.u;
            right__117__118__138 = right__117__118.u;
            left__115__116__137__139 = left__115__116__137.io;
            right__117__118__138__140 = right__117__118__138.io;
            left__115__116__137__139__141 = left__115__116__137__139.start;
            right__117__118__138__140__142 = right__117__118__138__140.start;
            if ((left__115__116__137__139__141 != right__117__118__138__140__142)){
                return ((((left__115__116__137__139__141 < right__117__118__138__140__142)) ? (-1) : (1)));
            } else {
            }
            left__115__116__137__139__143 = left__115__116__137__139.end;
            right__117__118__138__140__144 = right__117__118__138__140.end;
            if ((left__115__116__137__139__143 != right__117__118__138__140__144)){
                return ((((left__115__116__137__139__143 < right__117__118__138__140__144)) ? (-1) : (1)));
            } else {
            }
            break;
        }
        case ObjType_FCNode: {
            left__115__116__127 = left__115__116.u;
            right__117__118__128 = right__117__118.u;
            left__115__116__127__129 = left__115__116__127.fcnode;
            right__117__118__128__130 = right__117__118__128.fcnode;
            left__115__116__127__129__131 = left__115__116__127__129.cnode;
            right__117__118__128__130__132 = right__117__118__128__130.cnode;
            if ((left__115__116__127__129__131 != right__117__118__128__130__132)){
                return ((((left__115__116__127__129__131 < right__117__118__128__130__132)) ? (-1) : (1)));
            } else {
            }
            left__115__116__127__129__133 = left__115__116__127__129.bits;
            right__117__118__128__130__134 = right__117__118__128__130.bits;
            if ((left__115__116__127__129__133 != right__117__118__128__130__134)){
                return ((((left__115__116__127__129__133 < right__117__118__128__130__134)) ? (-1) : (1)));
            } else {
            }
            left__115__116__127__129__135 = left__115__116__127__129.core_id;
            right__117__118__128__130__136 = right__117__118__128__130.core_id;
            if ((left__115__116__127__129__135 != right__117__118__128__130__136)){
                return ((((left__115__116__127__129__135 < right__117__118__128__130__136)) ? (-1) : (1)));
            } else {
            }
            break;
        }
        default: {
        }
    }
    if (tiebreak){
        if ((left != right)){
            return ((((left < right)) ? (-1) : (1)));
        } else {
        }
    } else {
    }
    return (0);
}
 
genpaddr_t get_address(struct  capability* cap) {
    uint64_t _fof_x25;
    uint64_t _fof_x31;
    struct  capability* cap__10;
    struct  capability cap__10__11;
    union  capability_u cap__10__11__12;
    struct  RAM cap__10__11__12__13;
    genpaddr_t cap__10__11__12__13__14;
    struct  capability* cap__15;
    struct  capability cap__15__16;
    union  capability_u cap__15__16__17;
    struct  CNode cap__15__16__17__18;
    lpaddr_t cap__15__16__17__18__19;
    struct  capability* cap__2;
    struct  capability* cap__20;
    struct  capability cap__20__21;
    union  capability_u cap__20__21__22;
    struct  Dispatcher cap__20__21__22__23;
    struct dcb* cap__20__21__22__23__24;
    struct  capability* cap__26;
    struct  capability cap__26__27;
    union  capability_u cap__26__27__28;
    struct  EndPoint cap__26__27__28__29;
    struct dcb* cap__26__27__28__29__30;
    struct  capability cap__2__3;
    enum objtype cap__2__3__4;
    struct  capability* cap__32;
    struct  capability cap__32__33;
    union  capability_u cap__32__33__34;
    struct  Frame cap__32__33__34__35;
    genpaddr_t cap__32__33__34__35__36;
    struct  capability* cap__37;
    struct  capability cap__37__38;
    union  capability_u cap__37__38__39;
    struct  DevFrame cap__37__38__39__40;
    genpaddr_t cap__37__38__39__40__41;
    struct  capability* cap__42;
    struct  capability cap__42__43;
    union  capability_u cap__42__43__44;
    struct  VNode_x86_64_pml4 cap__42__43__44__45;
    genpaddr_t cap__42__43__44__45__46;
    struct  capability* cap__47;
    struct  capability cap__47__48;
    union  capability_u cap__47__48__49;
    struct  VNode_x86_64_pdpt cap__47__48__49__50;
    genpaddr_t cap__47__48__49__50__51;
    struct  capability* cap__5;
    struct  capability* cap__52;
    struct  capability cap__52__53;
    union  capability_u cap__52__53__54;
    struct  VNode_x86_64_pdir cap__52__53__54__55;
    genpaddr_t cap__52__53__54__55__56;
    struct  capability* cap__57;
    struct  capability cap__57__58;
    union  capability_u cap__57__58__59;
    struct  VNode_x86_64_ptable cap__57__58__59__60;
    genpaddr_t cap__57__58__59__60__61;
    struct  capability cap__5__6;
    union  capability_u cap__5__6__7;
    struct  PhysAddr cap__5__6__7__8;
    genpaddr_t cap__5__6__7__8__9;
    struct  capability* cap__62;
    struct  capability cap__62__63;
    union  capability_u cap__62__63__64;
    struct  VNode_x86_32_pdpt cap__62__63__64__65;
    genpaddr_t cap__62__63__64__65__66;
    struct  capability* cap__67;
    struct  capability cap__67__68;
    union  capability_u cap__67__68__69;
    struct  VNode_x86_32_pdir cap__67__68__69__70;
    genpaddr_t cap__67__68__69__70__71;
    struct  capability* cap__72;
    struct  capability cap__72__73;
    union  capability_u cap__72__73__74;
    struct  VNode_x86_32_ptable cap__72__73__74__75;
    genpaddr_t cap__72__73__74__75__76;
    struct  capability* cap__77;
    struct  capability cap__77__78;
    union  capability_u cap__77__78__79;
    struct  VNode_ARM_l1 cap__77__78__79__80;
    genpaddr_t cap__77__78__79__80__81;
    struct  capability* cap__82;
    struct  capability cap__82__83;
    union  capability_u cap__82__83__84;
    struct  VNode_ARM_l2 cap__82__83__84__85;
    genpaddr_t cap__82__83__84__85__86;
 
    cap__2 = cap;
    cap__2__3 = *cap__2;
    cap__2__3__4 = cap__2__3.type;
    switch (cap__2__3__4) {
        case ObjType_PerfMon: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_ID: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_Notify_IPI: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_Notify_RCK: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_IO: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_IRQTable: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_VNode_ARM_l2: {
            cap__82 = cap;
            cap__82__83 = *cap__82;
            cap__82__83__84 = cap__82__83.u;
            cap__82__83__84__85 = cap__82__83__84.vnode_arm_l2;
            cap__82__83__84__85__86 = cap__82__83__84__85.base;
            return (cap__82__83__84__85__86);
            break;
        }
        case ObjType_VNode_ARM_l1: {
            cap__77 = cap;
            cap__77__78 = *cap__77;
            cap__77__78__79 = cap__77__78.u;
            cap__77__78__79__80 = cap__77__78__79.vnode_arm_l1;
            cap__77__78__79__80__81 = cap__77__78__79__80.base;
            return (cap__77__78__79__80__81);
            break;
        }
        case ObjType_VNode_x86_32_ptable: {
            cap__72 = cap;
            cap__72__73 = *cap__72;
            cap__72__73__74 = cap__72__73.u;
            cap__72__73__74__75 = cap__72__73__74.vnode_x86_32_ptable;
            cap__72__73__74__75__76 = cap__72__73__74__75.base;
            return (cap__72__73__74__75__76);
            break;
        }
        case ObjType_VNode_x86_32_pdir: {
            cap__67 = cap;
            cap__67__68 = *cap__67;
            cap__67__68__69 = cap__67__68.u;
            cap__67__68__69__70 = cap__67__68__69.vnode_x86_32_pdir;
            cap__67__68__69__70__71 = cap__67__68__69__70.base;
            return (cap__67__68__69__70__71);
            break;
        }
        case ObjType_VNode_x86_32_pdpt: {
            cap__62 = cap;
            cap__62__63 = *cap__62;
            cap__62__63__64 = cap__62__63.u;
            cap__62__63__64__65 = cap__62__63__64.vnode_x86_32_pdpt;
            cap__62__63__64__65__66 = cap__62__63__64__65.base;
            return (cap__62__63__64__65__66);
            break;
        }
        case ObjType_VNode_x86_64_ptable: {
            cap__57 = cap;
            cap__57__58 = *cap__57;
            cap__57__58__59 = cap__57__58.u;
            cap__57__58__59__60 = cap__57__58__59.vnode_x86_64_ptable;
            cap__57__58__59__60__61 = cap__57__58__59__60.base;
            return (cap__57__58__59__60__61);
            break;
        }
        case ObjType_VNode_x86_64_pdir: {
            cap__52 = cap;
            cap__52__53 = *cap__52;
            cap__52__53__54 = cap__52__53.u;
            cap__52__53__54__55 = cap__52__53__54.vnode_x86_64_pdir;
            cap__52__53__54__55__56 = cap__52__53__54__55.base;
            return (cap__52__53__54__55__56);
            break;
        }
        case ObjType_VNode_x86_64_pdpt: {
            cap__47 = cap;
            cap__47__48 = *cap__47;
            cap__47__48__49 = cap__47__48.u;
            cap__47__48__49__50 = cap__47__48__49.vnode_x86_64_pdpt;
            cap__47__48__49__50__51 = cap__47__48__49__50.base;
            return (cap__47__48__49__50__51);
            break;
        }
        case ObjType_VNode_x86_64_pml4: {
            cap__42 = cap;
            cap__42__43 = *cap__42;
            cap__42__43__44 = cap__42__43.u;
            cap__42__43__44__45 = cap__42__43__44.vnode_x86_64_pml4;
            cap__42__43__44__45__46 = cap__42__43__44__45.base;
            return (cap__42__43__44__45__46);
            break;
        }
        case ObjType_Kernel: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_DevFrame: {
            cap__37 = cap;
            cap__37__38 = *cap__37;
            cap__37__38__39 = cap__37__38.u;
            cap__37__38__39__40 = cap__37__38__39.devframe;
            cap__37__38__39__40__41 = cap__37__38__39__40.base;
            return (cap__37__38__39__40__41);
            break;
        }
        case ObjType_Frame: {
            cap__32 = cap;
            cap__32__33 = *cap__32;
            cap__32__33__34 = cap__32__33.u;
            cap__32__33__34__35 = cap__32__33__34.frame;
            cap__32__33__34__35__36 = cap__32__33__34__35.base;
            return (cap__32__33__34__35__36);
            break;
        }
        case ObjType_EndPoint: {
            cap__26 = cap;
            cap__26__27 = *cap__26;
            cap__26__27__28 = cap__26__27.u;
            cap__26__27__28__29 = cap__26__27__28.endpoint;
            cap__26__27__28__29__30 = cap__26__27__28__29.listener;
            _fof_x31 = mem_to_local_phys(((lvaddr_t) cap__26__27__28__29__30));
            return (_fof_x31);
            break;
        }
        case ObjType_Dispatcher: {
            cap__20 = cap;
            cap__20__21 = *cap__20;
            cap__20__21__22 = cap__20__21.u;
            cap__20__21__22__23 = cap__20__21__22.dispatcher;
            cap__20__21__22__23__24 = cap__20__21__22__23.dcb;
            _fof_x25 = mem_to_local_phys(((lvaddr_t) cap__20__21__22__23__24));
            return (_fof_x25);
            break;
        }
        case ObjType_FCNode: {
            return (((genpaddr_t) 0));
            break;
        }
        case ObjType_CNode: {
            cap__15 = cap;
            cap__15__16 = *cap__15;
            cap__15__16__17 = cap__15__16.u;
            cap__15__16__17__18 = cap__15__16__17.cnode;
            cap__15__16__17__18__19 = cap__15__16__17__18.cnode;
            return (cap__15__16__17__18__19);
            break;
        }
        case ObjType_RAM: {
            cap__10 = cap;
            cap__10__11 = *cap__10;
            cap__10__11__12 = cap__10__11.u;
            cap__10__11__12__13 = cap__10__11__12.ram;
            cap__10__11__12__13__14 = cap__10__11__12__13.base;
            return (cap__10__11__12__13__14);
            break;
        }
        case ObjType_PhysAddr: {
            cap__5 = cap;
            cap__5__6 = *cap__5;
            cap__5__6__7 = cap__5__6.u;
            cap__5__6__7__8 = cap__5__6__7.physaddr;
            cap__5__6__7__8__9 = cap__5__6__7__8.base;
            return (cap__5__6__7__8__9);
            break;
        }
        case ObjType_Null: {
            return (((genpaddr_t) 0));
            break;
        }
        default: {
            assert(0);
            return (0);
        }
    }
}
 
gensize_t get_size(struct  capability* cap) {
    struct  capability* cap__100;
    struct  capability cap__100__101;
    union  capability_u cap__100__101__102;
    struct  CNode cap__100__101__102__103;
    uint8_t cap__100__101__102__103__104;
    struct  capability* cap__105;
    struct  capability cap__105__106;
    union  capability_u cap__105__106__107;
    struct  Frame cap__105__106__107__108;
    uint8_t cap__105__106__107__108__109;
    struct  capability* cap__110;
    struct  capability cap__110__111;
    union  capability_u cap__110__111__112;
    struct  DevFrame cap__110__111__112__113;
    uint8_t cap__110__111__112__113__114;
    struct  capability* cap__87;
    struct  capability cap__87__88;
    enum objtype cap__87__88__89;
    struct  capability* cap__90;
    struct  capability cap__90__91;
    union  capability_u cap__90__91__92;
    struct  PhysAddr cap__90__91__92__93;
    uint8_t cap__90__91__92__93__94;
    struct  capability* cap__95;
    struct  capability cap__95__96;
    union  capability_u cap__95__96__97;
    struct  RAM cap__95__96__97__98;
    uint8_t cap__95__96__97__98__99;
 
    cap__87 = cap;
    cap__87__88 = *cap__87;
    cap__87__88__89 = cap__87__88.type;
    switch (cap__87__88__89) {
        case ObjType_PerfMon: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_ID: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_Notify_IPI: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_Notify_RCK: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_IO: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_IRQTable: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_VNode_ARM_l2: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_ARM_l1: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_x86_32_ptable: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_x86_32_pdir: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_x86_32_pdpt: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_x86_64_ptable: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_x86_64_pdir: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_x86_64_pdpt: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_VNode_x86_64_pml4: {
            return ((((gensize_t) 1) << 12));
            break;
        }
        case ObjType_Kernel: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_DevFrame: {
            cap__110 = cap;
            cap__110__111 = *cap__110;
            cap__110__111__112 = cap__110__111.u;
            cap__110__111__112__113 = cap__110__111__112.devframe;
            cap__110__111__112__113__114 = cap__110__111__112__113.bits;
            return ((((gensize_t) 1) << cap__110__111__112__113__114));
            break;
        }
        case ObjType_Frame: {
            cap__105 = cap;
            cap__105__106 = *cap__105;
            cap__105__106__107 = cap__105__106.u;
            cap__105__106__107__108 = cap__105__106__107.frame;
            cap__105__106__107__108__109 = cap__105__106__107__108.bits;
            return ((((gensize_t) 1) << cap__105__106__107__108__109));
            break;
        }
        case ObjType_EndPoint: {
            return (0);
            break;
        }
        case ObjType_Dispatcher: {
            return ((((gensize_t) 1) << 10));
            break;
        }
        case ObjType_FCNode: {
            return (((gensize_t) 0));
            break;
        }
        case ObjType_CNode: {
            cap__100 = cap;
            cap__100__101 = *cap__100;
            cap__100__101__102 = cap__100__101.u;
            cap__100__101__102__103 = cap__100__101__102.cnode;
            cap__100__101__102__103__104 = cap__100__101__102__103.bits;
            return ((((gensize_t) 1) << (cap__100__101__102__103__104 + 7)));
            break;
        }
        case ObjType_RAM: {
            cap__95 = cap;
            cap__95__96 = *cap__95;
            cap__95__96__97 = cap__95__96.u;
            cap__95__96__97__98 = cap__95__96__97.ram;
            cap__95__96__97__98__99 = cap__95__96__97__98.bits;
            return ((((gensize_t) 1) << cap__95__96__97__98__99));
            break;
        }
        case ObjType_PhysAddr: {
            cap__90 = cap;
            cap__90__91 = *cap__90;
            cap__90__91__92 = cap__90__91.u;
            cap__90__91__92__93 = cap__90__91__92.physaddr;
            cap__90__91__92__93__94 = cap__90__91__92__93.bits;
            return ((((gensize_t) 1) << cap__90__91__92__93__94));
            break;
        }
        case ObjType_Null: {
            return (((gensize_t) 0));
            break;
        }
        default: {
            assert(0);
            return (0);
        }
    }
}
 
uint8_t get_type_root(enum objtype type) {
 
    switch (type) {
        case ObjType_PerfMon: {
            return (9);
            break;
        }
        case ObjType_ID: {
            return (8);
            break;
        }
        case ObjType_Notify_IPI: {
            return (7);
            break;
        }
        case ObjType_Notify_RCK: {
            return (6);
            break;
        }
        case ObjType_IO: {
            return (5);
            break;
        }
        case ObjType_IRQTable: {
            return (4);
            break;
        }
        case ObjType_VNode_ARM_l2: {
            return (1);
            break;
        }
        case ObjType_VNode_ARM_l1: {
            return (1);
            break;
        }
        case ObjType_VNode_x86_32_ptable: {
            return (1);
            break;
        }
        case ObjType_VNode_x86_32_pdir: {
            return (1);
            break;
        }
        case ObjType_VNode_x86_32_pdpt: {
            return (1);
            break;
        }
        case ObjType_VNode_x86_64_ptable: {
            return (1);
            break;
        }
        case ObjType_VNode_x86_64_pdir: {
            return (1);
            break;
        }
        case ObjType_VNode_x86_64_pdpt: {
            return (1);
            break;
        }
        case ObjType_VNode_x86_64_pml4: {
            return (1);
            break;
        }
        case ObjType_Kernel: {
            return (3);
            break;
        }
        case ObjType_DevFrame: {
            return (1);
            break;
        }
        case ObjType_Frame: {
            return (1);
            break;
        }
        case ObjType_EndPoint: {
            return (1);
            break;
        }
        case ObjType_Dispatcher: {
            return (1);
            break;
        }
        case ObjType_FCNode: {
            return (2);
            break;
        }
        case ObjType_CNode: {
            return (1);
            break;
        }
        case ObjType_RAM: {
            return (1);
            break;
        }
        case ObjType_PhysAddr: {
            return (1);
            break;
        }
        case ObjType_Null: {
            return (0);
            break;
        }
        default: {
            assert(0);
            return (0);
        }
    }
}
 
bool is_ancestor(struct  capability* child,struct  capability* parent) {
    bool _fof_x182;
    genpaddr_t _fof_x183;
    genpaddr_t _fof_x184;
    gensize_t _fof_x185;
    gensize_t _fof_x186;
    struct  capability* child__176;
    struct  capability child__176__177;
    enum objtype child__176__177__180;
    struct  capability* parent__178;
    struct  capability parent__178__179;
    enum objtype parent__178__179__181;
 
    child__176 = child;
    child__176__177 = *child__176;
    parent__178 = parent;
    parent__178__179 = *parent__178;
    child__176__177__180 = child__176__177.type;
    parent__178__179__181 = parent__178__179.type;
    _fof_x182 = is_well_founded(parent__178__179__181,child__176__177__180);
    if ((! _fof_x182)){
        return (0);
    } else {
    }
    _fof_x183 = get_address(parent);
    _fof_x184 = get_address(child);
    _fof_x185 = get_size(parent);
    _fof_x186 = get_size(child);
    if ((child__176__177__180 == parent__178__179__181)){
        return ((((_fof_x183 < _fof_x184) & ((_fof_x183 + _fof_x185) >= (_fof_x184 + _fof_x186))) | ((_fof_x183 <= _fof_x184) & ((_fof_x183 + _fof_x185) > (_fof_x184 + _fof_x186)))));
    } else {
        return (((_fof_x183 <= _fof_x184) & ((_fof_x183 + _fof_x185) >= (_fof_x184 + _fof_x186))));
    }
}
 
bool is_copy(struct  capability* left,struct  capability* right) {
    int8_t _fof_x175;
    struct  capability* left__169;
    struct  capability left__169__170;
    enum objtype left__169__170__173;
    struct  capability* right__171;
    struct  capability right__171__172;
    enum objtype right__171__172__174;
 
    left__169 = left;
    left__169__170 = *left__169;
    right__171 = right;
    right__171__172 = *right__171;
    left__169__170__173 = left__169__170.type;
    right__171__172__174 = right__171__172.type;
    if ((left__169__170__173 != right__171__172__174)){
        return (0);
    } else {
    }
    switch (left__169__170__173) {
        case ObjType_PerfMon: {
            return (1);
            break;
        }
        case ObjType_IRQTable: {
            return (1);
            break;
        }
        case ObjType_Kernel: {
            return (1);
            break;
        }
        case ObjType_Null: {
            return (0);
            break;
        }
        default: {
        }
    }
    _fof_x175 = compare_caps(left,right,0);
    return ((_fof_x175 == 0));
}
 
bool is_equal_type(enum objtype left_type,enum objtype right_type) {
 
    return ((left_type == right_type));
}
 
bool is_well_founded(enum objtype src_type,enum objtype dest_type) {
 
    switch (dest_type) {
        case ObjType_VNode_ARM_l2: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_ARM_l1: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_x86_32_ptable: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_x86_32_pdir: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_x86_32_pdpt: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_x86_64_ptable: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_x86_64_pdir: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_x86_64_pdpt: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_VNode_x86_64_pml4: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_DevFrame: {
            return (((src_type == ObjType_PhysAddr) | (src_type == ObjType_DevFrame)));
            break;
        }
        case ObjType_Frame: {
            return (((src_type == ObjType_RAM) | (src_type == ObjType_Frame)));
            break;
        }
        case ObjType_EndPoint: {
            return (((src_type == ObjType_Dispatcher) | 0));
            break;
        }
        case ObjType_Dispatcher: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_CNode: {
            return (((src_type == ObjType_RAM) | 0));
            break;
        }
        case ObjType_RAM: {
            return (((src_type == ObjType_PhysAddr) | (src_type == ObjType_RAM)));
            break;
        }
        case ObjType_PhysAddr: {
            return ((0 | (src_type == ObjType_PhysAddr)));
            break;
        }
        default: {
            return (0);
        }
    }
}
 
 
 
