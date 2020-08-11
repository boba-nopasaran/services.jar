.class Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;
.super Ljava/lang/Object;
.source "ActivityManagerService.java"

# interfaces
.implements Lcom/mediatek/anrmanager/ANRManager$IAnrActivityManagerService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnrActivityManagerService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .registers 2

    .prologue
    .line 21854
    iput-object p1, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;
    .registers 12
    .param p1, "clearTraces"    # Z
    .param p3, "processCpuTracker"    # Lcom/android/internal/os/ProcessCpuTracker;
    .param p5, "nativeProcs"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/internal/os/ProcessCpuTracker;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/io/File;"
        }
    .end annotation

    .prologue
    .line 21887
    .local p2, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_49

    .line 21888
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 21889
    .local v1, "pid":I
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_1b
    if-ltz v0, :cond_49

    .line 21890
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 21891
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    iget v3, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    if-ne v1, v3, :cond_4e

    .line 21892
    const-string v3, "persist.last.error.process"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 21898
    .end local v0    # "i":I
    .end local v1    # "pid":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_49
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/server/am/ActivityManagerService;->dumpStackTraces(ZLjava/util/ArrayList;Lcom/android/internal/os/ProcessCpuTracker;Landroid/util/SparseArray;[Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    return-object v3

    .line 21889
    .restart local v0    # "i":I
    .restart local v1    # "pid":I
    .restart local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_4e
    add-int/lit8 v0, v0, -0x1

    goto :goto_1b
.end method

.method public getInterestingPids()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 21880
    sget-object v0, Lcom/android/server/am/ActivityManagerService;->mInterestingPids:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getMonitorCpuUsage()Z
    .registers 2

    .prologue
    .line 21904
    const/4 v0, 0x1

    return v0
.end method

.method public getPidFromLruProcesses(IILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .registers 9
    .param p1, "appPid"    # I
    .param p2, "parentPid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21863
    .local p3, "firstPids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .local p4, "lastPids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/Boolean;>;"
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_3c

    .line 21864
    iget-object v3, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 21865
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_33

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->thread:Landroid/app/IApplicationThread;

    if-eqz v3, :cond_33

    .line 21866
    iget v1, v2, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 21867
    .local v1, "pid":I
    if-lez v1, :cond_33

    if-eq v1, p1, :cond_33

    if-eq v1, p2, :cond_33

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v1, v3, :cond_33

    .line 21868
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->persistent:Z

    if-eqz v3, :cond_36

    .line 21869
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21863
    .end local v1    # "pid":I
    :cond_33
    :goto_33
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 21871
    .restart local v1    # "pid":I
    :cond_36
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p4, v1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_33

    .line 21876
    .end local v1    # "pid":I
    .end local v2    # "r":Lcom/android/server/am/ProcessRecord;
    :cond_3c
    return-void
.end method

.method public getProcessCpuTracker()Lcom/android/internal/os/ProcessCpuTracker;
    .registers 2

    .prologue
    .line 21914
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object v0
.end method

.method public getProcessRecordPid(Ljava/lang/Object;)I
    .registers 3
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 21919
    if-eqz p1, :cond_7

    .line 21920
    check-cast p1, Lcom/android/server/am/ProcessRecord;

    .end local p1    # "obj":Ljava/lang/Object;
    iget v0, p1, Lcom/android/server/am/ProcessRecord;->pid:I

    .line 21922
    :goto_6
    return v0

    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_7
    const/4 v0, -0x1

    goto :goto_6
.end method

.method public getShuttingDown()Z
    .registers 2

    .prologue
    .line 21857
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mShuttingDown:Z

    return v0
.end method

.method public updateCpuStatsNow()V
    .registers 2

    .prologue
    .line 21909
    iget-object v0, p0, Lcom/android/server/am/ActivityManagerService$AnrActivityManagerService;->this$0:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStatsNow()V

    .line 21910
    return-void
.end method
