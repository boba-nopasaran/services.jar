.class public Lcom/android/server/PersistentDataBlockService;
.super Lcom/android/server/SystemService;
.source "PersistentDataBlockService.java"


# static fields
.field public static final DIGEST_SIZE_BYTES:I = 0x20

.field private static final HEADER_SIZE:I = 0x8

.field private static final MAX_DATA_BLOCK_SIZE:I = 0x19000

.field private static final PARTITION_TYPE_MARKER:I = 0x19901873

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAllowedUid:I

.field private mBlockDeviceSize:J

.field private final mContext:Landroid/content/Context;

.field private final mDataBlockFile:Ljava/lang/String;

.field private final mLock:Ljava/lang/Object;

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 64
    const-class v0, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 76
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    .line 78
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 350
    new-instance v0, Lcom/android/server/PersistentDataBlockService$1;

    invoke-direct {v0, p0}, Lcom/android/server/PersistentDataBlockService$1;-><init>(Lcom/android/server/PersistentDataBlockService;)V

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    .line 83
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "PersistentDataBlockService init"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    iput-object p1, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    .line 85
    const-string v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    .line 86
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->getAllowedUid(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    .line 88
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PersistentDataBlockService, mDataBlockFile="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mAllowedUid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 63
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/PersistentDataBlockService;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->enforceUid(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceIsOwner()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/PersistentDataBlockService;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/PersistentDataBlockService;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/PersistentDataBlockService;)J
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/PersistentDataBlockService;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/PersistentDataBlockService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/PersistentDataBlockService;Ljava/io/DataInputStream;)I
    .registers 3
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;
    .param p1, "x1"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/android/server/PersistentDataBlockService;->getTotalDataSizeLocked(Ljava/io/DataInputStream;)I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceOemUnlockPermission()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/PersistentDataBlockService;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/PersistentDataBlockService;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked()V

    return-void
.end method

.method private computeAndWriteDigestLocked()Z
    .registers 8

    .prologue
    const/4 v3, 0x0

    .line 189
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "computeAndWriteDigestLocked"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v4, 0x0

    invoke-direct {p0, v4}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    .line 191
    .local v0, "digest":[B
    if-eqz v0, :cond_34

    .line 194
    :try_start_f
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_20
    .catch Ljava/io/FileNotFoundException; {:try_start_f .. :try_end_20} :catch_35

    .line 202
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    const/4 v4, 0x0

    const/16 v5, 0x20

    :try_start_23
    invoke-virtual {v2, v0, v4, v5}, Ljava/io/DataOutputStream;->write([BII)V

    .line 203
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_29} :catch_3e
    .catchall {:try_start_23 .. :try_end_29} :catchall_4a

    .line 208
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 210
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "computeAndWriteDigestLocked, return true"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v3, 0x1

    .line 213
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    :cond_34
    :goto_34
    return v3

    .line 196
    :catch_35
    move-exception v1

    .line 197
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "partition not available?"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_34

    .line 204
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "outputStream":Ljava/io/DataOutputStream;
    :catch_3e
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    :try_start_3f
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "failed to write block checksum"

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_4a

    .line 208
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_34

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_4a
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private computeDigestLocked([B)[B
    .registers 12
    .param p1, "storedDigest"    # [B

    .prologue
    const/4 v5, 0x0

    const/16 v9, 0x20

    .line 218
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "computeDigestLocked in"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :try_start_a
    new-instance v2, Ljava/io/DataInputStream;

    new-instance v6, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    iget-object v8, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1b} :catch_59

    .line 227
    .local v2, "inputStream":Ljava/io/DataInputStream;
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "computeDigestLocked, get MessageDigest isnstance"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    :try_start_22
    const-string v6, "SHA-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_27
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_22 .. :try_end_27} :catch_62

    move-result-object v3

    .line 239
    .local v3, "md":Ljava/security/MessageDigest;
    if-eqz p1, :cond_6e

    :try_start_2a
    array-length v6, p1

    if-ne v6, v9, :cond_6e

    .line 240
    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->read([B)I

    .line 245
    :goto_30
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "computeDigestLocked, start read partition"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/16 v6, 0x2000

    new-array v0, v6, [B

    .line 248
    .local v0, "data":[B
    const/4 v6, 0x0

    const/16 v7, 0x20

    invoke-virtual {v3, v0, v6, v7}, Ljava/security/MessageDigest;->update([BII)V

    .line 249
    :goto_41
    invoke-virtual {v2, v0}, Ljava/io/DataInputStream;->read([B)I

    move-result v4

    .local v4, "read":I
    const/4 v6, -0x1

    if-eq v4, v6, :cond_79

    .line 250
    const/4 v6, 0x0

    invoke-virtual {v3, v0, v6, v4}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_4c} :catch_4d
    .catchall {:try_start_2a .. :try_end_4c} :catchall_74

    goto :goto_41

    .line 253
    .end local v0    # "data":[B
    .end local v4    # "read":I
    :catch_4d
    move-exception v1

    .line 254
    .local v1, "e":Ljava/io/IOException;
    :try_start_4e
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "failed to read partition"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_55
    .catchall {:try_start_4e .. :try_end_55} :catchall_74

    .line 257
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 262
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "inputStream":Ljava/io/DataInputStream;
    .end local v3    # "md":Ljava/security/MessageDigest;
    :goto_58
    return-object v5

    .line 222
    :catch_59
    move-exception v1

    .line 223
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "partition not available?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_58

    .line 231
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "inputStream":Ljava/io/DataInputStream;
    :catch_62
    move-exception v1

    .line 233
    .local v1, "e":Ljava/security/NoSuchAlgorithmException;
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "SHA-256 not supported?"

    invoke-static {v6, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_58

    .line 242
    .end local v1    # "e":Ljava/security/NoSuchAlgorithmException;
    .restart local v3    # "md":Ljava/security/MessageDigest;
    :cond_6e
    const/16 v6, 0x20

    :try_start_70
    invoke-virtual {v2, v6}, Ljava/io/DataInputStream;->skipBytes(I)I
    :try_end_73
    .catch Ljava/io/IOException; {:try_start_70 .. :try_end_73} :catch_4d
    .catchall {:try_start_70 .. :try_end_73} :catchall_74

    goto :goto_30

    .line 257
    :catchall_74
    move-exception v6

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v6

    .line 252
    .restart local v0    # "data":[B
    .restart local v4    # "read":I
    :cond_79
    :try_start_79
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "computeDigestLocked, end read partition"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_80
    .catch Ljava/io/IOException; {:try_start_79 .. :try_end_80} :catch_4d
    .catchall {:try_start_79 .. :try_end_80} :catchall_74

    .line 257
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 260
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    .line 261
    .local v5, "returnValue":[B
    sget-object v6, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v7, "computeDigestLocked out"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_58
.end method

.method private doGetOemUnlockEnabled()Z
    .registers 11

    .prologue
    const/4 v3, 0x0

    .line 323
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "doGetOemUnlockEnabled in"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    :try_start_8
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v4, Ljava/io/FileInputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v4}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_19} :catch_4a

    .line 333
    .local v1, "inputStream":Ljava/io/DataInputStream;
    :try_start_19
    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_59
    .catchall {:try_start_19 .. :try_end_1c} :catchall_66

    .line 334
    :try_start_1c
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v1, v6, v7}, Ljava/io/DataInputStream;->skip(J)J

    .line 335
    invoke-virtual {v1}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    if-eqz v4, :cond_54

    const/4 v2, 0x1

    .line 336
    .local v2, "returnValue":Z
    :goto_2d
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doGetOemUnlockEnabled, return "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    monitor-exit v5
    :try_end_46
    .catchall {:try_start_1c .. :try_end_46} :catchall_56

    .line 343
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .end local v1    # "inputStream":Ljava/io/DataInputStream;
    .end local v2    # "returnValue":Z
    :goto_49
    return v2

    .line 327
    :catch_4a
    move-exception v0

    .line 328
    .local v0, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "partition not available"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 329
    goto :goto_49

    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v1    # "inputStream":Ljava/io/DataInputStream;
    :cond_54
    move v2, v3

    .line 335
    goto :goto_2d

    .line 338
    :catchall_56
    move-exception v4

    :try_start_57
    monitor-exit v5
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    :try_start_58
    throw v4
    :try_end_59
    .catch Ljava/io/IOException; {:try_start_58 .. :try_end_59} :catch_59
    .catchall {:try_start_58 .. :try_end_59} :catchall_66

    .line 339
    :catch_59
    move-exception v0

    .line 340
    .local v0, "e":Ljava/io/IOException;
    :try_start_5a
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "unable to access persistent partition"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_61
    .catchall {:try_start_5a .. :try_end_61} :catchall_66

    .line 343
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move v2, v3

    goto :goto_49

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_66
    move-exception v3

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private doSetOemUnlockEnabledLocked(Z)V
    .registers 12
    .param p1, "enabled"    # Z

    .prologue
    const/4 v4, 0x1

    .line 294
    sget-object v5, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "doSetOemUnlockEnabledLocked, enabled="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :try_start_19
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_25
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_25} :catch_51

    .line 304
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :try_start_25
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    .line 306
    .local v0, "channel":Ljava/nio/channels/FileChannel;
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->getBlockDeviceSize()J

    move-result-wide v6

    const-wide/16 v8, 0x1

    sub-long/2addr v6, v8

    invoke-virtual {v0, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    .line 308
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 309
    .local v1, "data":Ljava/nio/ByteBuffer;
    if-eqz p1, :cond_5a

    :goto_3a
    invoke-virtual {v1, v4}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 310
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 311
    invoke-virtual {v0, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 312
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 313
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "doSetOemUnlockEnabledLocked out"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_4d} :catch_5c
    .catchall {:try_start_25 .. :try_end_4d} :catchall_68

    .line 318
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 320
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_50
    return-void

    .line 298
    :catch_51
    move-exception v2

    .line 299
    .local v2, "e":Ljava/io/FileNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "partition not available"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_50

    .line 309
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "channel":Ljava/nio/channels/FileChannel;
    .restart local v1    # "data":Ljava/nio/ByteBuffer;
    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    :cond_5a
    const/4 v4, 0x0

    goto :goto_3a

    .line 314
    .end local v0    # "channel":Ljava/nio/channels/FileChannel;
    .end local v1    # "data":Ljava/nio/ByteBuffer;
    :catch_5c
    move-exception v2

    .line 315
    .local v2, "e":Ljava/io/IOException;
    :try_start_5d
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v5, "unable to access persistent partition"

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_68

    .line 318
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_50

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_68
    move-exception v4

    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
.end method

.method private enforceChecksumValidity()Z
    .registers 6

    .prologue
    .line 173
    const/16 v2, 0x20

    new-array v1, v2, [B

    .line 175
    .local v1, "storedDigest":[B
    iget-object v3, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 176
    :try_start_7
    invoke-direct {p0, v1}, Lcom/android/server/PersistentDataBlockService;->computeDigestLocked([B)[B

    move-result-object v0

    .line 177
    .local v0, "digest":[B
    if-eqz v0, :cond_13

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-nez v2, :cond_27

    .line 178
    :cond_13
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "Formatting FRP partition..."

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked()V

    .line 180
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "enforceChecksumValidity, return false"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v2, 0x0

    monitor-exit v3

    .line 185
    :goto_26
    return v2

    .line 183
    :cond_27
    monitor-exit v3
    :try_end_28
    .catchall {:try_start_7 .. :try_end_28} :catchall_31

    .line 184
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "enforceChecksumValidity, return true"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const/4 v2, 0x1

    goto :goto_26

    .line 183
    .end local v0    # "digest":[B
    :catchall_31
    move-exception v2

    :try_start_32
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_32 .. :try_end_33} :catchall_31

    throw v2
.end method

.method private enforceIsOwner()V
    .registers 3

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isOwner()Z

    move-result v0

    if-nez v0, :cond_12

    .line 140
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the Owner is allowed to change OEM unlock state"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 142
    :cond_12
    return-void
.end method

.method private enforceOemUnlockPermission()V
    .registers 4

    .prologue
    .line 126
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "enforceOemUnlockPermission"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.OEM_UNLOCK_STATE"

    const-string v2, "Can\'t access OEM unlock state"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    return-void
.end method

.method private enforceUid(I)V
    .registers 5
    .param p1, "callingUid"    # I

    .prologue
    .line 133
    iget v0, p0, Lcom/android/server/PersistentDataBlockService;->mAllowedUid:I

    if-eq p1, v0, :cond_23

    .line 134
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not allowed to access PST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_23
    return-void
.end method

.method private formatIfOemUnlockEnabled()V
    .registers 3

    .prologue
    .line 116
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "formatIfOemUnlockEnabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->doGetOemUnlockEnabled()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 118
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 119
    :try_start_10
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatPartitionLocked()V

    .line 120
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 121
    monitor-exit v1

    .line 123
    :cond_18
    return-void

    .line 121
    :catchall_19
    move-exception v0

    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_19

    throw v0
.end method

.method private formatPartitionLocked()V
    .registers 9

    .prologue
    const/16 v7, 0x20

    const/4 v6, 0x0

    .line 266
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "formatPartitionLocked"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    :try_start_a
    new-instance v2, Ljava/io/DataOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1b
    .catch Ljava/io/FileNotFoundException; {:try_start_a .. :try_end_1b} :catch_41

    .line 275
    .local v2, "outputStream":Ljava/io/DataOutputStream;
    new-array v0, v7, [B

    .line 277
    .local v0, "data":[B
    const/4 v3, 0x0

    const/16 v4, 0x20

    :try_start_20
    invoke-virtual {v2, v0, v3, v4}, Ljava/io/DataOutputStream;->write([BII)V

    .line 278
    const v3, 0x19901873

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 279
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 280
    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    .line 281
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "formatPartitionLocked init data, PARTITION_TYPE_MARKER=428873843, size=0 "

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_37} :catch_4a
    .catchall {:try_start_20 .. :try_end_37} :catchall_56

    .line 286
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 289
    invoke-direct {p0, v6}, Lcom/android/server/PersistentDataBlockService;->doSetOemUnlockEnabledLocked(Z)V

    .line 290
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->computeAndWriteDigestLocked()Z

    .line 291
    .end local v0    # "data":[B
    .end local v2    # "outputStream":Ljava/io/DataOutputStream;
    :goto_40
    return-void

    .line 270
    :catch_41
    move-exception v1

    .line 271
    .local v1, "e":Ljava/io/FileNotFoundException;
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "partition not available?"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_40

    .line 282
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "data":[B
    .restart local v2    # "outputStream":Ljava/io/DataOutputStream;
    :catch_4a
    move-exception v1

    .line 283
    .local v1, "e":Ljava/io/IOException;
    :try_start_4b
    sget-object v3, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v4, "failed to format block"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_56

    .line 286
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_40

    .end local v1    # "e":Ljava/io/IOException;
    :catchall_56
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v3
.end method

.method private getAllowedUid(I)I
    .registers 9
    .param p1, "userHandle"    # I

    .prologue
    .line 92
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllowedUid, userHandle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1040047

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, "allowedPackage":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/PersistentDataBlockService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 96
    .local v3, "pm":Landroid/content/pm/PackageManager;
    const/4 v1, -0x1

    .line 98
    .local v1, "allowedUid":I
    :try_start_2c
    invoke-virtual {v3, v0, p1}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I
    :try_end_2f
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2c .. :try_end_2f} :catch_49

    move-result v1

    .line 103
    :goto_30
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getAllowedUid, allowedUid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v1

    .line 99
    :catch_49
    move-exception v2

    .line 101
    .local v2, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v4, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not able to find package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_30
.end method

.method private getBlockDeviceSize()J
    .registers 7

    .prologue
    .line 162
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "getBlockDeviceSize"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 164
    :try_start_a
    iget-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1a

    .line 165
    iget-object v0, p0, Lcom/android/server/PersistentDataBlockService;->mDataBlockFile:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/PersistentDataBlockService;->nativeGetBlockDeviceSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    .line 167
    :cond_1a
    monitor-exit v1
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_38

    .line 168
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBlockDeviceSize, mBlockDeviceSize="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-wide v0, p0, Lcom/android/server/PersistentDataBlockService;->mBlockDeviceSize:J

    return-wide v0

    .line 167
    :catchall_38
    move-exception v0

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v0
.end method

.method private getTotalDataSizeLocked(Ljava/io/DataInputStream;)I
    .registers 8
    .param p1, "inputStream"    # Ljava/io/DataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const v5, 0x19901873

    .line 146
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v3, "getTotalDataSizeLocked"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    const/16 v2, 0x20

    invoke-virtual {p1, v2}, Ljava/io/DataInputStream;->skipBytes(I)I

    .line 150
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    .line 151
    .local v0, "blockId":I
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalDataSizeLocked, blockId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", PARTITION_TYPE_MARKER="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    if-ne v0, v5, :cond_54

    .line 153
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    .line 157
    .local v1, "totalDataSize":I
    :goto_3b
    sget-object v2, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getTotalDataSizeLocked, totalDataSize="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return v1

    .line 155
    .end local v1    # "totalDataSize":I
    :cond_54
    const/4 v1, 0x0

    .restart local v1    # "totalDataSize":I
    goto :goto_3b
.end method

.method private native nativeGetBlockDeviceSize(Ljava/lang/String;)J
.end method

.method private native nativeWipe(Ljava/lang/String;)I
.end method


# virtual methods
.method public onStart()V
    .registers 3

    .prologue
    .line 109
    sget-object v0, Lcom/android/server/PersistentDataBlockService;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->enforceChecksumValidity()Z

    .line 111
    invoke-direct {p0}, Lcom/android/server/PersistentDataBlockService;->formatIfOemUnlockEnabled()V

    .line 112
    const-string v0, "persistent_data_block"

    iget-object v1, p0, Lcom/android/server/PersistentDataBlockService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/PersistentDataBlockService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 113
    return-void
.end method
