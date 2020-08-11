.class public final Lcom/mediatek/recovery/BackupServant;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Ljava/io/File;


# instance fields
.field private final b:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    .line 63
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "recovery"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/BackupServant;->a:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 73
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/recovery/BackupServant;-><init>(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 5

    .prologue
    const/4 v2, -0x1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x3

    iput v0, p0, Lcom/mediatek/recovery/BackupServant;->b:I

    .line 77
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/mediatek/recovery/BackupServant;->a:Ljava/io/File;

    .line 78
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 79
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x1fd

    invoke-static {v0, v1, v2, v2}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 83
    return-void
.end method

.method private a(Ljava/lang/String;)J
    .registers 8

    .prologue
    .line 223
    const/4 v4, 0x0

    .line 224
    const-wide/16 v0, 0x0

    .line 226
    :try_start_3
    new-instance v3, Ljava/io/BufferedInputStream;

    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_d
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_d} :catch_5c
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_d} :catch_3b
    .catchall {:try_start_3 .. :try_end_d} :catchall_4b

    .line 227
    :try_start_d
    new-instance v2, Ljava/util/zip/CRC32;

    invoke-direct {v2}, Ljava/util/zip/CRC32;-><init>()V

    .line 229
    :goto_12
    invoke-virtual {v3}, Ljava/io/InputStream;->read()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_27

    .line 230
    invoke-virtual {v2, v4}, Ljava/util/zip/CRC32;->update(I)V
    :try_end_1c
    .catch Ljava/io/FileNotFoundException; {:try_start_d .. :try_end_1c} :catch_1d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_1c} :catch_5a
    .catchall {:try_start_d .. :try_end_1c} :catchall_58

    goto :goto_12

    .line 233
    :catch_1d
    move-exception v2

    .line 235
    :goto_1e
    :try_start_1e
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_21
    .catchall {:try_start_1e .. :try_end_21} :catchall_58

    .line 240
    if-eqz v3, :cond_26

    .line 242
    :try_start_23
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_26} :catch_36

    .line 249
    :cond_26
    :goto_26
    return-wide v0

    .line 232
    :cond_27
    :try_start_27
    invoke-virtual {v2}, Ljava/util/zip/CRC32;->getValue()J
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2a} :catch_1d
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_5a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_58

    move-result-wide v0

    .line 240
    if-eqz v3, :cond_26

    .line 242
    :try_start_2d
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_26

    .line 243
    :catch_31
    move-exception v2

    .line 245
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 243
    :catch_36
    move-exception v2

    .line 245
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 236
    :catch_3b
    move-exception v2

    move-object v3, v4

    .line 238
    :goto_3d
    :try_start_3d
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_40
    .catchall {:try_start_3d .. :try_end_40} :catchall_58

    .line 240
    if-eqz v3, :cond_26

    .line 242
    :try_start_42
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_42 .. :try_end_45} :catch_46

    goto :goto_26

    .line 243
    :catch_46
    move-exception v2

    .line 245
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_26

    .line 240
    :catchall_4b
    move-exception v0

    move-object v3, v4

    :goto_4d
    if-eqz v3, :cond_52

    .line 242
    :try_start_4f
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_52
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_52} :catch_53

    .line 246
    :cond_52
    :goto_52
    throw v0

    .line 243
    :catch_53
    move-exception v1

    .line 245
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_52

    .line 240
    :catchall_58
    move-exception v0

    goto :goto_4d

    .line 236
    :catch_5a
    move-exception v2

    goto :goto_3d

    .line 233
    :catch_5c
    move-exception v2

    move-object v3, v4

    goto :goto_1e
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 182
    .line 185
    :try_start_1
    const-string v1, "BackupServant"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "source = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " dest = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2b
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_2b} :catch_63
    .catchall {:try_start_1 .. :try_end_2b} :catchall_95

    move-result-object v1

    .line 187
    :try_start_2c
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_34
    .catch Ljava/lang/NullPointerException; {:try_start_2c .. :try_end_34} :catch_a1
    .catchall {:try_start_2c .. :try_end_34} :catchall_9b

    move-result-object v0

    .line 188
    const-wide/16 v2, 0x0

    :try_start_37
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferFrom(Ljava/nio/channels/ReadableByteChannel;JJ)J
    :try_end_3e
    .catch Ljava/lang/NullPointerException; {:try_start_37 .. :try_end_3e} :catch_a1
    .catchall {:try_start_37 .. :try_end_3e} :catchall_6b

    .line 193
    if-eqz v1, :cond_49

    .line 194
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    if-eqz v0, :cond_56

    .line 200
    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->close()V

    .line 206
    return-void

    .line 196
    :cond_49
    const-string v0, "BackupServant"

    const-string v1, "Create input channel failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 202
    :cond_56
    const-string v0, "BackupServant"

    const-string v1, "Create output channel failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 189
    :catch_63
    move-exception v1

    move-object v1, v0

    .line 190
    :goto_65
    :try_start_65
    new-instance v2, Ljava/io/IOException;

    invoke-direct {v2}, Ljava/io/IOException;-><init>()V

    throw v2
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_6b

    .line 193
    :catchall_6b
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    :goto_70
    if-eqz v2, :cond_7b

    .line 194
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    .line 199
    if-eqz v1, :cond_88

    .line 200
    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->close()V

    .line 203
    throw v0

    .line 196
    :cond_7b
    const-string v0, "BackupServant"

    const-string v1, "Create input channel failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 202
    :cond_88
    const-string v0, "BackupServant"

    const-string v1, "Create output channel failed!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0

    .line 193
    :catchall_95
    move-exception v1

    move-object v2, v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    goto :goto_70

    :catchall_9b
    move-exception v2

    move-object v6, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_70

    .line 189
    :catch_a1
    move-exception v2

    goto :goto_65
.end method

.method private a(Ljava/io/File;J)Z
    .registers 8

    .prologue
    .line 209
    new-instance v0, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v0, v0

    mul-long/2addr v0, v2

    .line 213
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 215
    add-long/2addr v0, p2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_26

    .line 216
    const/4 v0, 0x0

    .line 218
    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x1

    goto :goto_25
.end method

.method public static getBackupDirectory()Ljava/io/File;
    .registers 1

    .prologue
    .line 69
    sget-object v0, Lcom/mediatek/recovery/BackupServant;->a:Ljava/io/File;

    return-object v0
.end method


# virtual methods
.method public backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I
    .registers 10

    .prologue
    const-wide/16 v4, 0x0

    .line 88
    new-instance v1, Ljava/io/File;

    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    .line 90
    cmp-long v0, v2, v4

    if-nez v0, :cond_3f

    .line 91
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Target module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Lcom/mediatek/recovery/Module;->moduleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " declared backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t exist or cannot backup. Skip it"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/4 v0, -0x4

    .line 129
    :goto_3e
    return v0

    .line 97
    :cond_3f
    invoke-direct {p0, v1, v4, v5}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_61

    .line 98
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup failed, not enough storage for file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    const/4 v0, -0x1

    goto :goto_3e

    .line 106
    :cond_61
    const/4 v0, 0x3

    .line 108
    :cond_62
    add-int/lit8 v0, v0, -0x1

    .line 110
    :try_start_64
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_71

    .line 111
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 113
    :cond_71
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-static {v1, v2}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_76
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_76} :catch_ac

    .line 119
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 120
    iget-object v4, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 121
    cmp-long v6, v2, v4

    if-eqz v6, :cond_8c

    if-gtz v0, :cond_62

    .line 123
    :cond_8c
    cmp-long v0, v2, v4

    if-eqz v0, :cond_ca

    .line 124
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup failed, mismatched CRC for declared backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    const/4 v0, -0x3

    goto :goto_3e

    .line 114
    :catch_ac
    move-exception v0

    .line 115
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup failed, create copy file failed for declared backup file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    const/4 v0, -0x2

    goto/16 :goto_3e

    .line 129
    :cond_ca
    const/4 v0, 0x0

    goto/16 :goto_3e
.end method

.method public restore(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I
    .registers 10

    .prologue
    .line 134
    new-instance v1, Ljava/io/File;

    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 136
    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 137
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore failed, not backup file for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    const/4 v0, -0x1

    .line 178
    :goto_2a
    return v0

    .line 142
    :cond_2b
    iget-object v0, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {p0, v0, v2, v3}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/io/File;J)Z

    move-result v0

    if-nez v0, :cond_53

    .line 143
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore failed, not enough storage for backup file "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    const/4 v0, -0x2

    goto :goto_2a

    .line 148
    :cond_53
    const/4 v0, 0x3

    .line 150
    :cond_54
    add-int/lit8 v0, v0, -0x1

    .line 152
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_7e

    .line 153
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_7e

    .line 154
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore failed, cannot remove original file: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const/4 v0, -0x3

    goto :goto_2a

    .line 161
    :cond_7e
    :try_start_7e
    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-static {v2, v1}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/io/File;Ljava/io/File;)V
    :try_end_83
    .catch Ljava/io/IOException; {:try_start_7e .. :try_end_83} :catch_bc

    .line 168
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/lang/String;)J

    move-result-wide v2

    .line 169
    iget-object v4, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/mediatek/recovery/BackupServant;->a(Ljava/lang/String;)J

    move-result-wide v4

    .line 171
    cmp-long v6, v2, v4

    if-eqz v6, :cond_9b

    if-gtz v0, :cond_54

    .line 173
    :cond_9b
    cmp-long v0, v2, v4

    if-eqz v0, :cond_da

    .line 174
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore failed, checksum mismatch for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v0, -0x5

    goto/16 :goto_2a

    .line 162
    :catch_bc
    move-exception v0

    .line 163
    const-string v0, "BackupServant"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restore failed, cannot copy backup file for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p2, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/4 v0, -0x4

    goto/16 :goto_2a

    .line 178
    :cond_da
    const/4 v0, 0x0

    goto/16 :goto_2a
.end method
