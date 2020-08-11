.class Lcom/android/server/MountService$4$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$4;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$4;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$4;)V
    .registers 2

    .prologue
    .line 1096
    iput-object p1, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 1098
    # getter for: Lcom/android/server/MountService;->OMADM_SYNC_LOCK:Ljava/lang/Object;
    invoke-static {}, Lcom/android/server/MountService;->access$3700()Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1099
    :try_start_5
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1100
    .local v3, "length":I
    const/4 v5, 0x0

    .line 1101
    .local v5, "path":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_13
    if-ge v1, v3, :cond_d7

    .line 1102
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/storage/StorageVolume;

    invoke-virtual {v8}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;
    :try_end_26
    .catchall {:try_start_5 .. :try_end_26} :catchall_9b

    move-result-object v5

    .line 1104
    :try_start_27
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1105
    .local v4, "mCurState":Ljava/lang/String;
    const-string v8, "MountService"

    invoke-static {v8, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1106
    const-string v8, "mounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a1

    .line 1107
    const-string v8, "ro.mtk_2sdcard_swap"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v10, "1"

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_88

    .line 1108
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/MountService;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V

    .line 1113
    :goto_53
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_54
    const/16 v8, 0x14

    if-ge v2, v8, :cond_74

    .line 1114
    const-wide/16 v10, 0x3e8

    invoke-static {v10, v11}, Lcom/android/server/MountService$4$3;->sleep(J)V

    .line 1115
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v5}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1116
    const-string v8, "unmounted"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9e

    .line 1117
    const-string v8, "MountService"

    const-string v10, "Unmount Succeeded!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    .end local v2    # "j":I
    :cond_74
    :goto_74
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v5}, Lcom/android/server/MountService;->formatVolume(Ljava/lang/String;)I

    move-result v6

    .line 1127
    .local v6, "ret":I
    if-nez v6, :cond_bd

    .line 1128
    const-string v8, "MountService"

    const-string v10, "SD format Succeed!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    .end local v4    # "mCurState":Ljava/lang/String;
    .end local v6    # "ret":I
    :goto_85
    add-int/lit8 v1, v1, 0x1

    goto :goto_13

    .line 1110
    .restart local v4    # "mCurState":Ljava/lang/String;
    :cond_88
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual {v8, v5, v10, v11}, Lcom/android/server/MountService;->unmountVolume(Ljava/lang/String;ZZ)V
    :try_end_91
    .catch Ljava/lang/InterruptedException; {:try_start_27 .. :try_end_91} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_27 .. :try_end_91} :catch_b4
    .catch Ljava/lang/SecurityException; {:try_start_27 .. :try_end_91} :catch_c5
    .catch Ljava/lang/NullPointerException; {:try_start_27 .. :try_end_91} :catch_ce
    .catchall {:try_start_27 .. :try_end_91} :catchall_9b

    goto :goto_53

    .line 1132
    .end local v4    # "mCurState":Ljava/lang/String;
    :catch_92
    move-exception v0

    .line 1133
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_93
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 1142
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v1    # "i":I
    .end local v3    # "length":I
    .end local v5    # "path":Ljava/lang/String;
    :catchall_9b
    move-exception v8

    monitor-exit v9
    :try_end_9d
    .catchall {:try_start_93 .. :try_end_9d} :catchall_9b

    throw v8

    .line 1113
    .restart local v1    # "i":I
    .restart local v2    # "j":I
    .restart local v3    # "length":I
    .restart local v4    # "mCurState":Ljava/lang/String;
    .restart local v5    # "path":Ljava/lang/String;
    :cond_9e
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 1122
    .end local v2    # "j":I
    :cond_a1
    :try_start_a1
    const-string v8, "shared"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_74

    .line 1123
    iget-object v8, p0, Lcom/android/server/MountService$4$3;->this$1:Lcom/android/server/MountService$4;

    iget-object v8, v8, Lcom/android/server/MountService$4;->this$0:Lcom/android/server/MountService;

    const-string v10, "ums"

    const/4 v11, 0x0

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v8, v5, v10, v11}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_b3
    .catch Ljava/lang/InterruptedException; {:try_start_a1 .. :try_end_b3} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a1 .. :try_end_b3} :catch_b4
    .catch Ljava/lang/SecurityException; {:try_start_a1 .. :try_end_b3} :catch_c5
    .catch Ljava/lang/NullPointerException; {:try_start_a1 .. :try_end_b3} :catch_ce
    .catchall {:try_start_a1 .. :try_end_b3} :catchall_9b

    goto :goto_74

    .line 1134
    .end local v4    # "mCurState":Ljava/lang/String;
    :catch_b4
    move-exception v7

    .line 1135
    .local v7, "x":Ljava/lang/IllegalArgumentException;
    :try_start_b5
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_bc
    .catchall {:try_start_b5 .. :try_end_bc} :catchall_9b

    goto :goto_85

    .line 1130
    .end local v7    # "x":Ljava/lang/IllegalArgumentException;
    .restart local v4    # "mCurState":Ljava/lang/String;
    .restart local v6    # "ret":I
    :cond_bd
    :try_start_bd
    const-string v8, "MountService"

    const-string v10, "SD format Failed!"

    invoke-static {v8, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c4
    .catch Ljava/lang/InterruptedException; {:try_start_bd .. :try_end_c4} :catch_92
    .catch Ljava/lang/IllegalArgumentException; {:try_start_bd .. :try_end_c4} :catch_b4
    .catch Ljava/lang/SecurityException; {:try_start_bd .. :try_end_c4} :catch_c5
    .catch Ljava/lang/NullPointerException; {:try_start_bd .. :try_end_c4} :catch_ce
    .catchall {:try_start_bd .. :try_end_c4} :catchall_9b

    goto :goto_85

    .line 1136
    .end local v4    # "mCurState":Ljava/lang/String;
    .end local v6    # "ret":I
    :catch_c5
    move-exception v7

    .line 1137
    .local v7, "x":Ljava/lang/SecurityException;
    :try_start_c6
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 1138
    .end local v7    # "x":Ljava/lang/SecurityException;
    :catch_ce
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "MountService"

    const-string v10, "SD format exception"

    invoke-static {v8, v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_85

    .line 1142
    .end local v0    # "e":Ljava/lang/NullPointerException;
    :cond_d7
    monitor-exit v9
    :try_end_d8
    .catchall {:try_start_c6 .. :try_end_d8} :catchall_9b

    .line 1143
    return-void
.end method
