.class Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/Tethering$TetherMasterSM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SimChangeBroadcastReceiver"
.end annotation


# instance fields
.field private final mGenerationNumber:I

.field private mSimAbsentSeen:Z

.field final synthetic this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;


# direct methods
.method public constructor <init>(Lcom/android/server/connectivity/Tethering$TetherMasterSM;I)V
    .registers 4
    .param p2, "generationNumber"    # I

    .prologue
    .line 2632
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    .line 2633
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 2630
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    .line 2634
    iput p2, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    .line 2635
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 17
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 2640
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "simchange mGenerationNumber="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", current generationNumber="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v13}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2643
    iget v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mGenerationNumber:I

    iget-object v12, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    # getter for: Lcom/android/server/connectivity/Tethering$TetherMasterSM;->mSimBcastGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v12}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->access$7300(Lcom/android/server/connectivity/Tethering$TetherMasterSM;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v12

    if-eq v11, v12, :cond_3d

    .line 2694
    :cond_3c
    :goto_3c
    return-void

    .line 2645
    :cond_3d
    const-string v11, "ss"

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 2648
    .local v7, "state":Ljava/lang/String;
    const-string v11, "Tethering"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "got Sim changed to state "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ", mSimAbsentSeen="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2650
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    if-nez v11, :cond_78

    const-string v11, "ABSENT"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_78

    .line 2651
    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    .line 2654
    :cond_78
    iget-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    if-eqz v11, :cond_3c

    const-string v11, "LOADED"

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3c

    .line 2655
    const/4 v11, 0x0

    iput-boolean v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->mSimAbsentSeen:Z

    .line 2657
    :try_start_87
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x1040019

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_187

    .line 2659
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x104001b

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 2661
    .local v8, "tetherService":Ljava/lang/String;
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2662
    .local v10, "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$200(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;

    move-result-object v12

    monitor-enter v12
    :try_end_c1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_87 .. :try_end_c1} :catch_10c

    .line 2663
    :try_start_c1
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 2664
    .local v4, "ifaces":Ljava/util/Set;
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_d1
    :goto_d1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_144

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2665
    .local v3, "iface":Ljava/lang/Object;
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mIfaces:Ljava/util/HashMap;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$7400(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashMap;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;

    .line 2666
    .local v5, "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    if-eqz v5, :cond_d1

    invoke-virtual {v5}, Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;->isTethered()Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 2667
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    # invokes: Lcom/android/server/connectivity/Tethering;->isUsb(Ljava/lang/String;)Z
    invoke-static {v13, v11}, Lcom/android/server/connectivity/Tethering;->access$3500(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_116

    .line 2668
    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x1

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 2676
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "iface":Ljava/lang/Object;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :catchall_109
    move-exception v11

    monitor-exit v12
    :try_end_10b
    .catchall {:try_start_c1 .. :try_end_10b} :catchall_109

    :try_start_10b
    throw v11
    :try_end_10c
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_10b .. :try_end_10c} :catch_10c

    .line 2689
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catch_10c
    move-exception v1

    .line 2690
    .local v1, "e":Landroid/content/res/Resources$NotFoundException;
    const-string v11, "Tethering"

    const-string v12, "no prov-check needed for new SIM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 2669
    .end local v1    # "e":Landroid/content/res/Resources$NotFoundException;
    .restart local v2    # "i$":Ljava/util/Iterator;
    .restart local v3    # "iface":Ljava/lang/Object;
    .restart local v4    # "ifaces":Ljava/util/Set;
    .restart local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    .restart local v8    # "tetherService":Ljava/lang/String;
    .restart local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_116
    :try_start_116
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v13, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    move-object v0, v3

    check-cast v0, Ljava/lang/String;

    move-object v11, v0

    invoke-virtual {v13, v11}, Lcom/android/server/connectivity/Tethering;->isWifi(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12e

    .line 2670
    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x0

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 2671
    :cond_12e
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    check-cast v3, Ljava/lang/String;

    .end local v3    # "iface":Ljava/lang/Object;
    invoke-virtual {v11, v3}, Lcom/android/server/connectivity/Tethering;->isBluetooth(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_d1

    .line 2672
    new-instance v11, Ljava/lang/Integer;

    const/4 v13, 0x2

    invoke-direct {v11, v13}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d1

    .line 2676
    .end local v5    # "sm":Lcom/android/server/connectivity/Tethering$TetherInterfaceSM;
    :cond_144
    monitor-exit v12
    :try_end_145
    .catchall {:try_start_116 .. :try_end_145} :catchall_109

    .line 2677
    :try_start_145
    invoke-virtual {v10}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_149
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v9

    .line 2678
    .local v9, "tetherType":I
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    .line 2679
    .local v6, "startProvIntent":Landroid/content/Intent;
    const-string v11, "extraAddTetherType"

    invoke-virtual {v6, v11, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 2680
    const-string v11, "extraRunProvision"

    const/4 v12, 0x1

    invoke-virtual {v6, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 2681
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    invoke-virtual {v6, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 2683
    iget-object v11, p0, Lcom/android/server/connectivity/Tethering$TetherMasterSM$SimChangeBroadcastReceiver;->this$1:Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v11, v11, Lcom/android/server/connectivity/Tethering$TetherMasterSM;->this$0:Lcom/android/server/connectivity/Tethering;

    # getter for: Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;
    invoke-static {v11}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;)Landroid/content/Context;

    move-result-object v11

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v11, v6, v12}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    goto :goto_149

    .line 2685
    .end local v6    # "startProvIntent":Landroid/content/Intent;
    .end local v9    # "tetherType":I
    :cond_17e
    const-string v11, "Tethering"

    const-string v12, "re-evaluate provisioning"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3c

    .line 2687
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "ifaces":Ljava/util/Set;
    .end local v8    # "tetherService":Ljava/lang/String;
    .end local v10    # "tethered":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_187
    const-string v11, "Tethering"

    const-string v12, "no prov-check needed for new SIM"

    invoke-static {v11, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18e
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_145 .. :try_end_18e} :catch_10c

    goto/16 :goto_3c
.end method
