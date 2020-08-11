.class Lcom/android/server/PersistentDataBlockService$1;
.super Landroid/service/persistentdata/IPersistentDataBlockService$Stub;
.source "PersistentDataBlockService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PersistentDataBlockService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/PersistentDataBlockService;


# direct methods
.method constructor <init>(Lcom/android/server/PersistentDataBlockService;)V
    .registers 2

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-direct {p0}, Landroid/service/persistentdata/IPersistentDataBlockService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getDataBlockSize()I
    .registers 7

    .prologue
    const/4 v3, 0x0

    .line 492
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "mService::getDataBlockSize"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$1300(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;

    move-result-object v2

    const-string v4, "android.permission.ACCESS_PDB_STATE"

    invoke-virtual {v2, v4}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_21

    .line 495
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v2, v4}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;I)V

    .line 500
    :cond_21
    :try_start_21
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/PersistentDataBlockService;->access$300(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_36
    .catch Ljava/io/FileNotFoundException; {:try_start_21 .. :try_end_36} :catch_51

    .line 507
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_36
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4
    :try_end_3d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_3d} :catch_60
    .catchall {:try_start_36 .. :try_end_3d} :catchall_6f

    .line 508
    :try_start_3d
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v5, "mService::getDataBlockSize, call getTotalDataSizeLocked"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v2, v1}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v2

    monitor-exit v4
    :try_end_4d
    .catchall {:try_start_3d .. :try_end_4d} :catchall_5d

    .line 515
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    :goto_50
    return v2

    .line 501
    :catch_51
    move-exception v0

    .line 502
    .local v0, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "partition not available"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 503
    goto :goto_50

    .line 510
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :catchall_5d
    move-exception v2

    :try_start_5e
    monitor-exit v4
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    throw v2
    :try_end_60
    .catch Ljava/io/IOException; {:try_start_5f .. :try_end_60} :catch_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_6f

    .line 511
    :catch_60
    move-exception v0

    .line 512
    .local v0, "e":Ljava/io/IOException;
    :try_start_61
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v4, "error reading data block size"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6a
    .catchall {:try_start_61 .. :try_end_6a} :catchall_6f

    .line 515
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v2, v3

    goto :goto_50

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_6f
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2
.end method

.method public getMaximumDataBlockSize()J
    .registers 9

    .prologue
    const-wide/32 v2, 0x19000

    .line 521
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v4}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v4

    const-wide/16 v6, 0x8

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x1

    sub-long v0, v4, v6

    .line 522
    .local v0, "actualSize":J
    cmp-long v4, v0, v2

    if-gtz v4, :cond_15

    .end local v0    # "actualSize":J
    :goto_14
    return-wide v0

    .restart local v0    # "actualSize":J
    :cond_15
    move-wide v0, v2

    goto :goto_14
.end method

.method public getOemUnlockEnabled()Z
    .registers 3

    .prologue
    .line 485
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mService::getOemUnlockEnabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    .line 487
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1200(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v0

    return v0
.end method

.method public read()[B
    .registers 11

    .prologue
    const/4 v5, 0x0

    const/4 v8, 0x0

    .line 401
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "mService::read"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v6, v7}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;I)V

    .line 403
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$600(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v6

    if-nez v6, :cond_28

    .line 404
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "mService::read, enforceChecksumValidity is false, return byte[0]"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    new-array v0, v8, [B

    .line 444
    :goto_27
    return-object v0

    .line 410
    :cond_28
    :try_start_28
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->access$300(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3d
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_3d} :catch_68

    .line 417
    .local v2, "inputStream":Ljava/io/DataInputStream;
    :try_start_3d
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7
    :try_end_44
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_44} :catch_d0
    .catchall {:try_start_3d .. :try_end_44} :catchall_eb

    .line 418
    :try_start_44
    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    invoke-static {v6, v2}, Lcom/android/server/PersistentDataBlockService;->access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I

    move-result v4

    .line 420
    .local v4, "totalDataSize":I
    if-nez v4, :cond_74

    .line 421
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v8, "mService::read, totalDataSize == 0, return byte[0]"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    const/4 v6, 0x0

    new-array v0, v6, [B

    monitor-exit v7
    :try_end_59
    .catchall {:try_start_44 .. :try_end_59} :catchall_cd

    .line 441
    :try_start_59
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_5d

    goto :goto_27

    .line 442
    :catch_5d
    move-exception v1

    .line 443
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 411
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local v4    # "totalDataSize":I
    :catch_68
    move-exception v1

    .line 412
    .local v1, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "partition not available?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v5

    .line 413
    goto :goto_27

    .line 425
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    .restart local v4    # "totalDataSize":I
    :cond_74
    :try_start_74
    new-array v0, v4, [B

    .line 426
    .local v0, "data":[B
    const/4 v6, 0x0

    invoke-virtual {v2, v0, v6, v4}, Ljava/io/DataInputStream;->read([BII)I

    move-result v3

    .line 427
    .local v3, "read":I
    if-ge v3, v4, :cond_b2

    .line 429
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "failed to read entire data block. bytes read: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    monitor-exit v7
    :try_end_a2
    .catchall {:try_start_74 .. :try_end_a2} :catchall_cd

    .line 441
    :try_start_a2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_a5
    .catch Ljava/io/IOException; {:try_start_a2 .. :try_end_a5} :catch_a7

    :goto_a5
    move-object v0, v5

    .line 444
    goto :goto_27

    .line 442
    :catch_a7
    move-exception v1

    .line 443
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a5

    .line 433
    .end local v1    # "e":Ljava/io/IOException;
    :cond_b2
    :try_start_b2
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v8, "mService::read out"

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    monitor-exit v7
    :try_end_bc
    .catchall {:try_start_b2 .. :try_end_bc} :catchall_cd

    .line 441
    :try_start_bc
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_bf
    .catch Ljava/io/IOException; {:try_start_bc .. :try_end_bf} :catch_c1

    goto/16 :goto_27

    .line 442
    :catch_c1
    move-exception v1

    .line 443
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "failed to close OutputStream"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_27

    .line 435
    .end local v0    # "data":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "read":I
    .end local v4    # "totalDataSize":I
    :catchall_cd
    move-exception v6

    :try_start_ce
    monitor-exit v7
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    :try_start_cf
    throw v6
    :try_end_d0
    .catch Ljava/io/IOException; {:try_start_cf .. :try_end_d0} :catch_d0
    .catchall {:try_start_cf .. :try_end_d0} :catchall_eb

    .line 436
    :catch_d0
    move-exception v1

    .line 437
    .restart local v1    # "e":Ljava/io/IOException;
    :try_start_d1
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to read data"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_da
    .catchall {:try_start_d1 .. :try_end_da} :catchall_eb

    .line 441
    :try_start_da
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_dd
    .catch Ljava/io/IOException; {:try_start_da .. :try_end_dd} :catch_e0

    :goto_dd
    move-object v0, v5

    .line 444
    goto/16 :goto_27

    .line 442
    :catch_e0
    move-exception v1

    .line 443
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_dd

    .line 440
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_eb
    move-exception v5

    .line 441
    :try_start_ec
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_ef
    .catch Ljava/io/IOException; {:try_start_ec .. :try_end_ef} :catch_f0

    .line 444
    :goto_ef
    throw v5

    .line 442
    :catch_f0
    move-exception v1

    .line 443
    .restart local v1    # "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    const-string v7, "failed to close OutputStream"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ef
.end method

.method public setOemUnlockEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 469
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mService::setOemUnlockEnabled, enabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 481
    :goto_20
    return-void

    .line 474
    :cond_21
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    .line 475
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceIsOwner()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$1000(Lcom/android/server/PersistentDataBlockService;)V

    .line 477
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 478
    :try_start_32
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V
    invoke-static {v0, p1}, Lcom/android/server/PersistentDataBlockService;->access$1100(Lcom/android/server/PersistentDataBlockService;Z)V

    .line 479
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    .line 480
    monitor-exit v1

    goto :goto_20

    :catchall_3e
    move-exception v0

    monitor-exit v1
    :try_end_40
    .catchall {:try_start_32 .. :try_end_40} :catchall_3e

    throw v0
.end method

.method public wipe()V
    .registers 4

    .prologue
    .line 450
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mService::wipe"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$800(Lcom/android/server/PersistentDataBlockService;)V

    .line 453
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 455
    :try_start_15
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Not use nativeWipe, Formatting FRP partition..."

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked()V
    invoke-static {v0}, Lcom/android/server/PersistentDataBlockService;->access$900(Lcom/android/server/PersistentDataBlockService;)V

    .line 457
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Formatting FRP partition finish"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    monitor-exit v1

    .line 465
    return-void

    .line 464
    :catchall_2e
    move-exception v0

    monitor-exit v1
    :try_end_30
    .catchall {:try_start_15 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public write([B)I
    .registers 14
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v6, -0x1

    .line 353
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "mService::write data"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    # invokes: Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V
    invoke-static {v7, v8}, Lcom/android/server/PersistentDataBlockService;->access$100(Lcom/android/server/PersistentDataBlockService;I)V

    .line 357
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$200(Lcom/android/server/PersistentDataBlockService;)J

    move-result-wide v8

    const-wide/16 v10, 0x8

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x1

    sub-long v4, v8, v10

    .line 358
    .local v4, "maxBlockSize":J
    array-length v7, p1

    int-to-long v8, v7

    cmp-long v7, v8, v4

    if-lez v7, :cond_29

    .line 360
    neg-long v6, v4

    long-to-int v6, v6

    .line 394
    :goto_28
    return v6

    .line 365
    :cond_29
    :try_start_29
    new-instance v3, Ljava/io/DataOutputStream;

    new-instance v7, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/io/File;

    iget-object v9, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/server/PersistentDataBlockService;->access$300(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v7}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3e
    .catch Ljava/io/FileNotFoundException; {:try_start_29 .. :try_end_3e} :catch_a2

    .line 371
    .local v3, "outputStream":Ljava/io/DataOutputStream;
    array-length v7, p1

    add-int/lit8 v7, v7, 0x8

    invoke-static {v7}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 372
    .local v2, "headerAndData":Ljava/nio/ByteBuffer;
    const v7, 0x19901873

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 373
    array-length v7, p1

    invoke-virtual {v2, v7}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 374
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 376
    iget-object v7, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # getter for: Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;
    invoke-static {v7}, Lcom/android/server/PersistentDataBlockService;->access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 378
    const/16 v8, 0x20

    :try_start_5b
    new-array v0, v8, [B

    .line 379
    .local v0, "checksum":[B
    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-virtual {v3, v0, v8, v9}, Ljava/io/DataOutputStream;->write([BII)V

    .line 380
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 381
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    .line 382
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "mService::write flush"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_5b .. :try_end_76} :catch_ae
    .catchall {:try_start_5b .. :try_end_76} :catchall_be

    .line 387
    :try_start_76
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 390
    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService$1;->this$0:Lcom/android/server/PersistentDataBlockService;

    # invokes: Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z
    invoke-static {v8}, Lcom/android/server/PersistentDataBlockService;->access$500(Lcom/android/server/PersistentDataBlockService;)Z

    move-result v8

    if-eqz v8, :cond_c3

    .line 391
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mService::write return "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    array-length v9, p1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 392
    array-length v6, p1

    monitor-exit v7

    goto :goto_28

    .line 396
    .end local v0    # "checksum":[B
    :catchall_9f
    move-exception v6

    monitor-exit v7
    :try_end_a1
    .catchall {:try_start_76 .. :try_end_a1} :catchall_9f

    throw v6

    .line 366
    .end local v2    # "headerAndData":Ljava/nio/ByteBuffer;
    .end local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_a2
    move-exception v1

    .line 367
    .local v1, "e":Ljava/io/FileNotFoundException;
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v7

    const-string v8, "partition not available?"

    invoke-static {v7, v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_28

    .line 383
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "headerAndData":Ljava/nio/ByteBuffer;
    .restart local v3    # "outputStream":Ljava/io/DataOutputStream;
    :catch_ae
    move-exception v1

    .line 384
    .local v1, "e":Ljava/io/IOException;
    :try_start_af
    # getter for: Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/PersistentDataBlockService;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "failed writing to the persistent data block"

    invoke-static {v8, v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_b8
    .catchall {:try_start_af .. :try_end_b8} :catchall_be

    .line 387
    :try_start_b8
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v7

    goto/16 :goto_28

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_be
    move-exception v6

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 394
    .restart local v0    # "checksum":[B
    :cond_c3
    monitor-exit v7
    :try_end_c4
    .catchall {:try_start_b8 .. :try_end_c4} :catchall_9f

    goto/16 :goto_28
.end method
