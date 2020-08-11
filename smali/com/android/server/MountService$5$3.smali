.class Lcom/android/server/MountService$5$3;
.super Ljava/lang/Thread;
.source "MountService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/MountService$5;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/MountService$5;


# direct methods
.method constructor <init>(Lcom/android/server/MountService$5;)V
    .registers 2

    .prologue
    .line 1170
    iput-object p1, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x0

    const/16 v11, 0x1e

    .line 1172
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v6

    .line 1173
    .local v6, "tempVolumes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/storage/StorageVolume;>;"
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumesLock:Ljava/lang/Object;
    invoke-static {v8}, Lcom/android/server/MountService;->access$800(Lcom/android/server/MountService;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1174
    :try_start_10
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mVolumes:Ljava/util/ArrayList;
    invoke-static {v8}, Lcom/android/server/MountService;->access$3200(Lcom/android/server/MountService;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_1c
    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_43

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 1175
    .local v7, "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v8

    # getter for: Lcom/android/server/MountService;->EXTERNAL_OTG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/MountService;->access$3900()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1c

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v8

    if-nez v8, :cond_1c

    .line 1176
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    .line 1179
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :catchall_40
    move-exception v8

    monitor-exit v9
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_40

    throw v8

    .restart local v2    # "i$":Ljava/util/Iterator;
    :cond_43
    :try_start_43
    monitor-exit v9
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_40

    .line 1181
    const/4 v5, 0x0

    .line 1182
    .local v5, "state":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1183
    .local v4, "path":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4a
    :goto_4a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1e2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageVolume;

    .line 1184
    .restart local v7    # "volume":Landroid/os/storage/StorageVolume;
    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 1185
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1186
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Privacy Protection wipe: path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    const-string v8, "checking"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_c9

    .line 1189
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Privacy Protection wipe: path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is checking, wait.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1190
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_ab
    if-ge v1, v11, :cond_c9

    .line 1192
    const-wide/16 v8, 0x3e8

    :try_start_af
    invoke-static {v8, v9}, Lcom/android/server/MountService$5$3;->sleep(J)V
    :try_end_b2
    .catch Ljava/lang/InterruptedException; {:try_start_af .. :try_end_b2} :catch_1ac

    .line 1196
    :goto_b2
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1197
    const-string v8, "checking"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1b6

    .line 1198
    const-string v8, "MountService"

    const-string v9, "Privacy Protection wipe: wait checking done!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1204
    .end local v1    # "i":I
    :cond_c9
    const-string v8, "mounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_116

    .line 1205
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Privacy Protection wipe: path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is mounted, wait.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const/4 v9, 0x1

    invoke-virtual {v8, v4, v9, v12}, Lcom/android/server/MountService;->unmountVolumeNotSwap(Ljava/lang/String;ZZ)V

    .line 1207
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_f8
    if-ge v1, v11, :cond_116

    .line 1209
    const-wide/16 v8, 0x3e8

    :try_start_fc
    invoke-static {v8, v9}, Lcom/android/server/MountService$5$3;->sleep(J)V
    :try_end_ff
    .catch Ljava/lang/InterruptedException; {:try_start_fc .. :try_end_ff} :catch_1ba

    .line 1213
    :goto_ff
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1214
    const-string v8, "unmounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1c4

    .line 1215
    const-string v8, "MountService"

    const-string v9, "Privacy Protection wipe: wait unmount done!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    .end local v1    # "i":I
    :cond_116
    const-string v8, "shared"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_164

    .line 1222
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Privacy Protection wipe: path "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "is shared, wait.."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    const-string v9, "ums"

    # invokes: Lcom/android/server/MountService;->doShareUnshareVolume(Ljava/lang/String;Ljava/lang/String;Z)V
    invoke-static {v8, v4, v9, v12}, Lcom/android/server/MountService;->access$1300(Lcom/android/server/MountService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 1224
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_146
    if-ge v1, v11, :cond_164

    .line 1226
    const-wide/16 v8, 0x3e8

    :try_start_14a
    invoke-static {v8, v9}, Lcom/android/server/MountService$5$3;->sleep(J)V
    :try_end_14d
    .catch Ljava/lang/InterruptedException; {:try_start_14a .. :try_end_14d} :catch_1c8

    .line 1230
    :goto_14d
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1231
    const-string v8, "unmounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1d2

    .line 1232
    const-string v8, "MountService"

    const-string v9, "Privacy Protection wipe: wait unshare done!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1238
    .end local v1    # "i":I
    :cond_164
    const-string v8, "unmounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a

    .line 1239
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Privacy Protection wipe: format "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # invokes: Lcom/android/server/MountService;->doFormatVolume(Ljava/lang/String;)I
    invoke-static {v8, v4}, Lcom/android/server/MountService;->access$4000(Lcom/android/server/MountService;Ljava/lang/String;)I

    .line 1241
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_18c
    if-ge v1, v11, :cond_4a

    .line 1243
    const-wide/16 v8, 0x3e8

    :try_start_190
    invoke-static {v8, v9}, Lcom/android/server/MountService$5$3;->sleep(J)V
    :try_end_193
    .catch Ljava/lang/InterruptedException; {:try_start_190 .. :try_end_193} :catch_1d6

    .line 1247
    :goto_193
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    invoke-virtual {v8, v4}, Lcom/android/server/MountService;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1248
    const-string v8, "unmounted"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1df

    .line 1249
    const-string v8, "MountService"

    const-string v9, "Privacy Protection wipe: format done!"

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4a

    .line 1193
    :catch_1ac
    move-exception v0

    .line 1194
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v9, "Exception when wait!"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_b2

    .line 1190
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1b6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_ab

    .line 1210
    :catch_1ba
    move-exception v0

    .line 1211
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v9, "Exception when wait!"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_ff

    .line 1207
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1c4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_f8

    .line 1227
    :catch_1c8
    move-exception v0

    .line 1228
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v9, "Exception when wait!"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_14d

    .line 1224
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1d2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_146

    .line 1244
    :catch_1d6
    move-exception v0

    .line 1245
    .restart local v0    # "ex":Ljava/lang/InterruptedException;
    const-string v8, "MountService"

    const-string v9, "Exception when wait!"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_193

    .line 1241
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_1df
    add-int/lit8 v1, v1, 0x1

    goto :goto_18c

    .line 1256
    .end local v1    # "i":I
    .end local v7    # "volume":Landroid/os/storage/StorageVolume;
    :cond_1e2
    new-instance v3, Landroid/content/Intent;

    const-string v8, "com.mediatek.ppl.MOUNT_SERVICE_WIPE_RESPONSE"

    invoke-direct {v3, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1257
    .local v3, "intent":Landroid/content/Intent;
    iget-object v8, p0, Lcom/android/server/MountService$5$3;->this$1:Lcom/android/server/MountService$5;

    iget-object v8, v8, Lcom/android/server/MountService$5;->this$0:Lcom/android/server/MountService;

    # getter for: Lcom/android/server/MountService;->mContext:Landroid/content/Context;
    invoke-static {v8}, Lcom/android/server/MountService;->access$4100(Lcom/android/server/MountService;)Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1258
    const-string v8, "MountService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Privacy Protection wipe: send "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1259
    return-void
.end method
