.class Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;
.super Lcom/android/server/backup/BackupManagerService$FullBackupTask;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PerformAdbBackupTask"
.end annotation


# instance fields
.field mAllApps:Z

.field mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

.field mCompress:Z

.field mCurrentPassword:Ljava/lang/String;

.field mDeflater:Ljava/util/zip/DeflaterOutputStream;

.field mDoWidgets:Z

.field mEncryptPassword:Ljava/lang/String;

.field mIncludeApks:Z

.field mIncludeObbs:Z

.field mIncludeShared:Z

.field mIncludeSystem:Z

.field final mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

.field mOutputFile:Landroid/os/ParcelFileDescriptor;

.field mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/backup/BackupManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/backup/BackupManagerService;Landroid/os/ParcelFileDescriptor;Landroid/app/backup/IFullBackupRestoreObserver;ZZZZLjava/lang/String;Ljava/lang/String;ZZZ[Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .registers 18
    .param p2, "fd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "observer"    # Landroid/app/backup/IFullBackupRestoreObserver;
    .param p4, "includeApks"    # Z
    .param p5, "includeObbs"    # Z
    .param p6, "includeShared"    # Z
    .param p7, "doWidgets"    # Z
    .param p8, "curPassword"    # Ljava/lang/String;
    .param p9, "encryptPassword"    # Ljava/lang/String;
    .param p10, "doAllApps"    # Z
    .param p11, "doSystem"    # Z
    .param p12, "doCompress"    # Z
    .param p13, "packages"    # [Ljava/lang/String;
    .param p14, "latch"    # Ljava/util/concurrent/atomic/AtomicBoolean;

    .prologue
    .line 3487
    iput-object p1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    .line 3488
    invoke-direct {p0, p1, p3}, Lcom/android/server/backup/BackupManagerService$FullBackupTask;-><init>(Lcom/android/server/backup/BackupManagerService;Landroid/app/backup/IFullBackupRestoreObserver;)V

    .line 3489
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3491
    iput-object p2, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    .line 3492
    iput-boolean p4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    .line 3493
    iput-boolean p5, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    .line 3494
    iput-boolean p6, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    .line 3495
    iput-boolean p7, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    .line 3496
    iput-boolean p10, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    .line 3497
    iput-boolean p11, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    .line 3498
    if-nez p13, :cond_31

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_1e
    iput-object v1, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    .line 3501
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    .line 3506
    if-eqz p9, :cond_2c

    const-string v1, ""

    invoke-virtual {v1, p9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 3507
    :cond_2c
    iput-object p8, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    .line 3511
    :goto_2e
    iput-boolean p12, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    .line 3512
    return-void

    .line 3498
    :cond_31
    new-instance v1, Ljava/util/ArrayList;

    invoke-static/range {p13 .. p13}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1e

    .line 3509
    :cond_3b
    iput-object p9, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    goto :goto_2e
.end method

.method private emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    .registers 26
    .param p1, "headerbuf"    # Ljava/lang/StringBuilder;
    .param p2, "ofstream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 3531
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v17

    .line 3532
    .local v17, "newUserSalt":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v21, v0

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v17

    move/from16 v4, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->buildPasswordKey(Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService;->access$1400(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;Ljava/lang/String;[BI)Ljavax/crypto/SecretKey;

    move-result-object v18

    .line 3536
    .local v18, "userKey":Ljavax/crypto/SecretKey;
    const/16 v19, 0x20

    move/from16 v0, v19

    new-array v13, v0, [B

    .line 3537
    .local v13, "masterPw":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mRng:Ljava/security/SecureRandom;
    invoke-static/range {v19 .. v19}, Lcom/android/server/backup/BackupManagerService;->access$1500(Lcom/android/server/backup/BackupManagerService;)Ljava/security/SecureRandom;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 3538
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const/16 v20, 0x200

    # invokes: Lcom/android/server/backup/BackupManagerService;->randomBytes(I)[B
    invoke-static/range {v19 .. v20}, Lcom/android/server/backup/BackupManagerService;->access$1300(Lcom/android/server/backup/BackupManagerService;I)[B

    move-result-object v9

    .line 3541
    .local v9, "checksumSalt":[B
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v7

    .line 3542
    .local v7, "c":Ljavax/crypto/Cipher;
    new-instance v12, Ljavax/crypto/spec/SecretKeySpec;

    const-string v19, "AES"

    move-object/from16 v0, v19

    invoke-direct {v12, v13, v0}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 3543
    .local v12, "masterKeySpec":Ljavax/crypto/spec/SecretKeySpec;
    const/16 v19, 0x1

    move/from16 v0, v19

    invoke-virtual {v7, v0, v12}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3544
    new-instance v11, Ljavax/crypto/CipherOutputStream;

    move-object/from16 v0, p2

    invoke-direct {v11, v0, v7}, Ljavax/crypto/CipherOutputStream;-><init>(Ljava/io/OutputStream;Ljavax/crypto/Cipher;)V

    .line 3547
    .local v11, "finalOutput":Ljava/io/OutputStream;
    const-string v19, "AES-256"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3548
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3550
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3551
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3553
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v9}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3554
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3556
    const/16 v19, 0x2710

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3557
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3560
    const-string v19, "AES/CBC/PKCS5Padding"

    invoke-static/range {v19 .. v19}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v15

    .line 3561
    .local v15, "mkC":Ljavax/crypto/Cipher;
    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v15, v0, v1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 3563
    invoke-virtual {v15}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 3564
    .local v5, "IV":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3565
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3577
    invoke-virtual {v7}, Ljavax/crypto/Cipher;->getIV()[B

    move-result-object v5

    .line 3578
    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v14

    .line 3579
    .local v14, "mk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    const-string v20, "PBKDF2WithHmacSHA1"

    invoke-virtual {v12}, Ljavax/crypto/spec/SecretKeySpec;->getEncoded()[B

    move-result-object v21

    const/16 v22, 0x2710

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v22

    # invokes: Lcom/android/server/backup/BackupManagerService;->makeKeyChecksum(Ljava/lang/String;[B[BI)[B
    invoke-static {v0, v1, v2, v9, v3}, Lcom/android/server/backup/BackupManagerService;->access$1700(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;[B[BI)[B

    move-result-object v8

    .line 3582
    .local v8, "checksum":[B
    new-instance v6, Ljava/io/ByteArrayOutputStream;

    array-length v0, v5

    move/from16 v19, v0

    array-length v0, v14

    move/from16 v20, v0

    add-int v19, v19, v20

    array-length v0, v8

    move/from16 v20, v0

    add-int v19, v19, v20

    add-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    invoke-direct {v6, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 3584
    .local v6, "blob":Ljava/io/ByteArrayOutputStream;
    new-instance v16, Ljava/io/DataOutputStream;

    move-object/from16 v0, v16

    invoke-direct {v0, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 3585
    .local v16, "mkOut":Ljava/io/DataOutputStream;
    array-length v0, v5

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3586
    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/io/DataOutputStream;->write([B)V

    .line 3587
    array-length v0, v14

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3588
    move-object/from16 v0, v16

    invoke-virtual {v0, v14}, Ljava/io/DataOutputStream;->write([B)V

    .line 3589
    array-length v0, v8

    move/from16 v19, v0

    move-object/from16 v0, v16

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/io/DataOutputStream;->writeByte(I)V

    .line 3590
    move-object/from16 v0, v16

    invoke-virtual {v0, v8}, Ljava/io/DataOutputStream;->write([B)V

    .line 3591
    invoke-virtual/range {v16 .. v16}, Ljava/io/DataOutputStream;->flush()V

    .line 3592
    invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v15, v0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v10

    .line 3593
    .local v10, "encryptedMk":[B
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    # invokes: Lcom/android/server/backup/BackupManagerService;->byteArrayToHex([B)Ljava/lang/String;
    invoke-static {v0, v10}, Lcom/android/server/backup/BackupManagerService;->access$1600(Lcom/android/server/backup/BackupManagerService;[B)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3594
    const/16 v19, 0xa

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 3596
    return-object v11
.end method

.method private finalizeBackup(Ljava/io/OutputStream;)V
    .registers 6
    .param p1, "out"    # Ljava/io/OutputStream;

    .prologue
    .line 3602
    const/16 v2, 0x400

    :try_start_2
    new-array v1, v2, [B

    .line 3603
    .local v1, "eof":[B
    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7} :catch_8

    .line 3607
    .end local v1    # "eof":[B
    :goto_7
    return-void

    .line 3604
    :catch_8
    move-exception v0

    .line 3605
    .local v0, "e":Ljava/io/IOException;
    const-string v2, "BackupManagerService"

    const-string v3, "Error attempting to finalize backup stream"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method


# virtual methods
.method addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/TreeMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageInfo;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3515
    .local p1, "set":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    .local p2, "pkgNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_4
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_46

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3516
    .local v3, "pkgName":Ljava/lang/String;
    invoke-virtual {p1, v3}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 3518
    :try_start_16
    iget-object v4, p0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static {v4}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x40

    invoke-virtual {v4, v3, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    .line 3520
    .local v2, "info":Landroid/content/pm/PackageInfo;
    invoke-virtual {p1, v3, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_25
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_25} :catch_26

    goto :goto_4

    .line 3521
    .end local v2    # "info":Landroid/content/pm/PackageInfo;
    :catch_26
    move-exception v0

    .line 3522
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v4, "BackupManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unknown package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", skipping"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3526
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "pkgName":Ljava/lang/String;
    :cond_46
    return-void
.end method

.method public run()V
    .registers 30

    .prologue
    .line 3611
    const-string v25, "BackupManagerService"

    const-string v26, "--- Performing full-dataset adb backup ---"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    new-instance v22, Ljava/util/TreeMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/TreeMap;-><init>()V

    .line 3614
    .local v22, "packagesToBackup":Ljava/util/TreeMap;, "Ljava/util/TreeMap<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;"
    new-instance v18, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;-><init>(Lcom/android/server/backup/BackupManagerService;)V

    .line 3615
    .local v18, "obbConnection":Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->establish()V

    .line 3617
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendStartBackup()V

    .line 3620
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mAllApps:Z

    move/from16 v25, v0

    if-eqz v25, :cond_78

    .line 3621
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v25

    const/16 v26, 0x40

    invoke-virtual/range {v25 .. v26}, Landroid/content/pm/PackageManager;->getInstalledPackages(I)Ljava/util/List;

    move-result-object v6

    .line 3623
    .local v6, "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_3a
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v25

    if-ge v15, v0, :cond_78

    .line 3624
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageInfo;

    .line 3626
    .local v23, "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeSystem:Z

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-eq v0, v1, :cond_66

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    move/from16 v25, v0

    and-int/lit8 v25, v25, 0x1

    if-nez v25, :cond_75

    .line 3628
    :cond_66
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3623
    :cond_75
    add-int/lit8 v15, v15, 0x1

    goto :goto_3a

    .line 3635
    .end local v6    # "allPackages":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/PackageInfo;>;"
    .end local v15    # "i":I
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_78
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mDoWidgets:Z

    move/from16 v25, v0

    if-eqz v25, :cond_91

    .line 3636
    const/16 v25, 0x0

    invoke-static/range {v25 .. v25}, Lcom/android/server/AppWidgetBackupBridge;->getWidgetParticipants(I)Ljava/util/List;

    move-result-object v24

    .line 3638
    .local v24, "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v24, :cond_91

    .line 3649
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 3656
    .end local v24    # "pkgs":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_91
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    if-eqz v25, :cond_a8

    .line 3657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mPackages:Ljava/util/ArrayList;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->addPackagesToSet(Ljava/util/TreeMap;Ljava/util/List;)V

    .line 3663
    :cond_a8
    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeMap;->entrySet()Ljava/util/Set;

    move-result-object v25

    invoke-interface/range {v25 .. v25}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .line 3664
    .local v17, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Landroid/content/pm/PackageInfo;>;>;"
    :cond_b0
    :goto_b0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v25

    if-eqz v25, :cond_d2

    .line 3665
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v25

    check-cast v25, Ljava/util/Map$Entry;

    invoke-interface/range {v25 .. v25}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/PackageInfo;

    .line 3666
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v25, v0

    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->appIsEligibleForBackup(Landroid/content/pm/ApplicationInfo;)Z

    move-result v25

    if-nez v25, :cond_b0

    .line 3667
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->remove()V

    goto :goto_b0

    .line 3672
    .end local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :cond_d2
    new-instance v7, Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3674
    .local v7, "backupQueue":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageInfo;>;"
    new-instance v20, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v25

    move-object/from16 v0, v20

    move-object/from16 v1, v25

    invoke-direct {v0, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 3675
    .local v20, "ofstream":Ljava/io/FileOutputStream;
    const/16 v21, 0x0

    .line 3677
    .local v21, "out":Ljava/io/OutputStream;
    const/16 v23, 0x0

    .line 3679
    .restart local v23    # "pkg":Landroid/content/pm/PackageInfo;
    :try_start_f4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v25, v0

    if-eqz v25, :cond_186

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mEncryptPassword:Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    if-lez v25, :cond_186

    const/4 v10, 0x1

    .line 3682
    .local v10, "encrypting":Z
    :goto_109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->deviceIsEncrypted()Z

    move-result v25

    if-eqz v25, :cond_18e

    if-nez v10, :cond_18e

    .line 3683
    const-string v25, "BackupManagerService"

    const-string v26, "Unencrypted backup of encrypted device; aborting"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_11e
    .catch Landroid/os/RemoteException; {:try_start_f4 .. :try_end_11e} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_f4 .. :try_end_11e} :catch_422
    .catchall {:try_start_f4 .. :try_end_11e} :catchall_525

    .line 3790
    if-eqz v21, :cond_123

    :try_start_120
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3791
    :cond_123
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_12c
    .catch Ljava/io/IOException; {:try_start_120 .. :try_end_12c} :catch_5a5

    .line 3795
    :goto_12c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3796
    :try_start_139
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3797
    monitor-exit v26
    :try_end_149
    .catchall {:try_start_139 .. :try_end_149} :catchall_188

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3799
    :try_start_150
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3801
    monitor-exit v26
    :try_end_169
    .catchall {:try_start_150 .. :try_end_169} :catchall_18b

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3803
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3804
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3807
    .end local v10    # "encrypting":Z
    :goto_185
    return-void

    .line 3679
    :cond_186
    const/4 v10, 0x0

    goto :goto_109

    .line 3797
    .restart local v10    # "encrypting":Z
    :catchall_188
    move-exception v25

    :try_start_189
    monitor-exit v26
    :try_end_18a
    .catchall {:try_start_189 .. :try_end_18a} :catchall_188

    throw v25

    .line 3801
    :catchall_18b
    move-exception v25

    :try_start_18c
    monitor-exit v26
    :try_end_18d
    .catchall {:try_start_18c .. :try_end_18d} :catchall_18b

    throw v25

    .line 3687
    :cond_18e
    move-object/from16 v11, v20

    .line 3691
    .local v11, "finalOutput":Ljava/io/OutputStream;
    :try_start_190
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCurrentPassword:Ljava/lang/String;

    move-object/from16 v26, v0

    # invokes: Lcom/android/server/backup/BackupManagerService;->backupPasswordMatches(Ljava/lang/String;)Z
    invoke-static/range {v25 .. v26}, Lcom/android/server/backup/BackupManagerService;->access$1800(Lcom/android/server/backup/BackupManagerService;Ljava/lang/String;)Z

    move-result v25

    if-nez v25, :cond_218

    .line 3692
    const-string v25, "BackupManagerService"

    const-string v26, "Backup password mismatch; aborting"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a9
    .catch Landroid/os/RemoteException; {:try_start_190 .. :try_end_1a9} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_190 .. :try_end_1a9} :catch_422
    .catchall {:try_start_190 .. :try_end_1a9} :catchall_525

    .line 3790
    if-eqz v21, :cond_1ae

    :try_start_1ab
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3791
    :cond_1ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1b7
    .catch Ljava/io/IOException; {:try_start_1ab .. :try_end_1b7} :catch_5a2

    .line 3795
    :goto_1b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3796
    :try_start_1c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3797
    monitor-exit v26
    :try_end_1d4
    .catchall {:try_start_1c4 .. :try_end_1d4} :catchall_212

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3799
    :try_start_1db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3801
    monitor-exit v26
    :try_end_1f4
    .catchall {:try_start_1db .. :try_end_1f4} :catchall_215

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3803
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3804
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_185

    .line 3797
    :catchall_212
    move-exception v25

    :try_start_213
    monitor-exit v26
    :try_end_214
    .catchall {:try_start_213 .. :try_end_214} :catchall_212

    throw v25

    .line 3801
    :catchall_215
    move-exception v25

    :try_start_216
    monitor-exit v26
    :try_end_217
    .catchall {:try_start_216 .. :try_end_217} :catchall_215

    throw v25

    .line 3721
    :cond_218
    :try_start_218
    new-instance v14, Ljava/lang/StringBuilder;

    const/16 v25, 0x400

    move/from16 v0, v25

    invoke-direct {v14, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3723
    .local v14, "headerbuf":Ljava/lang/StringBuilder;
    const-string v25, "ANDROID BACKUP\n"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3724
    const/16 v25, 0x3

    move/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 3725
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_38f

    const-string v25, "\n1\n"

    :goto_239
    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_23e
    .catch Landroid/os/RemoteException; {:try_start_218 .. :try_end_23e} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_218 .. :try_end_23e} :catch_422
    .catchall {:try_start_218 .. :try_end_23e} :catchall_525

    .line 3729
    if-eqz v10, :cond_393

    .line 3730
    :try_start_240
    move-object/from16 v0, p0

    invoke-direct {v0, v14, v11}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->emitAesBackupHeader(Ljava/lang/StringBuilder;Ljava/io/OutputStream;)Ljava/io/OutputStream;
    :try_end_245
    .catch Ljava/lang/Exception; {:try_start_240 .. :try_end_245} :catch_39d
    .catch Landroid/os/RemoteException; {:try_start_240 .. :try_end_245} :catch_31e
    .catchall {:try_start_240 .. :try_end_245} :catchall_525

    move-result-object v11

    move-object v12, v11

    .line 3735
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .local v12, "finalOutput":Ljava/io/OutputStream;
    :goto_247
    :try_start_247
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    const-string v26, "UTF-8"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v13

    .line 3736
    .local v13, "header":[B
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/io/FileOutputStream;->write([B)V

    .line 3739
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mCompress:Z

    move/from16 v25, v0

    if-eqz v25, :cond_5a8

    .line 3740
    new-instance v8, Ljava/util/zip/Deflater;

    const/16 v25, 0x9

    move/from16 v0, v25

    invoke-direct {v8, v0}, Ljava/util/zip/Deflater;-><init>(I)V

    .line 3741
    .local v8, "deflater":Ljava/util/zip/Deflater;
    new-instance v11, Ljava/util/zip/DeflaterOutputStream;

    const/16 v25, 0x1

    move/from16 v0, v25

    invoke-direct {v11, v12, v8, v0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/util/zip/Deflater;Z)V
    :try_end_270
    .catch Ljava/lang/Exception; {:try_start_247 .. :try_end_270} :catch_59e
    .catch Landroid/os/RemoteException; {:try_start_247 .. :try_end_270} :catch_31e
    .catchall {:try_start_247 .. :try_end_270} :catchall_525

    .line 3744
    .end local v8    # "deflater":Ljava/util/zip/Deflater;
    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    :goto_270
    move-object/from16 v21, v11

    .line 3752
    :try_start_272
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeShared:Z

    move/from16 v25, v0
    :try_end_278
    .catch Landroid/os/RemoteException; {:try_start_272 .. :try_end_278} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_272 .. :try_end_278} :catch_422
    .catchall {:try_start_272 .. :try_end_278} :catchall_525

    if-eqz v25, :cond_291

    .line 3754
    :try_start_27a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    # getter for: Lcom/android/server/backup/BackupManagerService;->mPackageManager:Landroid/content/pm/PackageManager;
    invoke-static/range {v25 .. v25}, Lcom/android/server/backup/BackupManagerService;->access$500(Lcom/android/server/backup/BackupManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v25

    const-string v26, "com.android.sharedstoragebackup"

    const/16 v27, 0x0

    invoke-virtual/range {v25 .. v27}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v23

    .line 3755
    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_291
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_27a .. :try_end_291} :catch_418
    .catch Landroid/os/RemoteException; {:try_start_27a .. :try_end_291} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_27a .. :try_end_291} :catch_422
    .catchall {:try_start_27a .. :try_end_291} :catchall_525

    .line 3762
    :cond_291
    :goto_291
    :try_start_291
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 3763
    .local v5, "N":I
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_296
    if-ge v15, v5, :cond_4a3

    .line 3764
    invoke-virtual {v7, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v25

    move-object/from16 v0, v25

    check-cast v0, Landroid/content/pm/PackageInfo;

    move-object/from16 v23, v0

    .line 3765
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    const-string v26, "com.android.sharedstoragebackup"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 3768
    .local v16, "isSharedStorage":Z
    new-instance v25, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeApks:Z

    move/from16 v28, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    move-object/from16 v2, v21

    move-object/from16 v3, v27

    move/from16 v4, v28

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;-><init>(Lcom/android/server/backup/BackupManagerService;Ljava/io/OutputStream;Ljava/lang/String;Z)V

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    .line 3769
    if-eqz v16, :cond_497

    const-string v25, "Shared storage"

    :goto_2d9
    move-object/from16 v0, p0

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendOnBackupPackage(Ljava/lang/String;)V

    .line 3770
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mBackupEngine:Lcom/android/server/backup/BackupManagerService$FullBackupEngine;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/android/server/backup/BackupManagerService$FullBackupEngine;->backupOnePackage(Landroid/content/pm/PackageInfo;)I

    .line 3774
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mIncludeObbs:Z

    move/from16 v25, v0

    if-eqz v25, :cond_49f

    .line 3775
    move-object/from16 v0, v18

    move-object/from16 v1, v23

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->backupObbs(Landroid/content/pm/PackageInfo;Ljava/io/OutputStream;)Z

    move-result v19

    .line 3776
    .local v19, "obbOkay":Z
    if-nez v19, :cond_49f

    .line 3777
    new-instance v25, Ljava/lang/RuntimeException;

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "Failure writing OBB stack for "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-direct/range {v25 .. v26}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v25
    :try_end_31e
    .catch Landroid/os/RemoteException; {:try_start_291 .. :try_end_31e} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_291 .. :try_end_31e} :catch_422
    .catchall {:try_start_291 .. :try_end_31e} :catchall_525

    .line 3784
    .end local v5    # "N":I
    .end local v10    # "encrypting":Z
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .end local v13    # "header":[B
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v15    # "i":I
    .end local v16    # "isSharedStorage":Z
    .end local v19    # "obbOkay":Z
    :catch_31e
    move-exception v9

    .line 3785
    .local v9, "e":Landroid/os/RemoteException;
    :try_start_31f
    const-string v25, "BackupManagerService"

    const-string v26, "App died during full backup"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_326
    .catchall {:try_start_31f .. :try_end_326} :catchall_525

    .line 3790
    if-eqz v21, :cond_32b

    :try_start_328
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3791
    :cond_32b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_334
    .catch Ljava/io/IOException; {:try_start_328 .. :try_end_334} :catch_595

    .line 3795
    :goto_334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3796
    :try_start_341
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3797
    monitor-exit v26
    :try_end_351
    .catchall {:try_start_341 .. :try_end_351} :catchall_519

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3799
    :try_start_358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3801
    monitor-exit v26
    :try_end_371
    .catchall {:try_start_358 .. :try_end_371} :catchall_51c

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3803
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3804
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_185

    .line 3725
    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v10    # "encrypting":Z
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_38f
    :try_start_38f
    const-string v25, "\n0\n"
    :try_end_391
    .catch Landroid/os/RemoteException; {:try_start_38f .. :try_end_391} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_38f .. :try_end_391} :catch_422
    .catchall {:try_start_38f .. :try_end_391} :catchall_525

    goto/16 :goto_239

    .line 3732
    :cond_393
    :try_start_393
    const-string v25, "none\n"

    move-object/from16 v0, v25

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_39a
    .catch Ljava/lang/Exception; {:try_start_393 .. :try_end_39a} :catch_39d
    .catch Landroid/os/RemoteException; {:try_start_393 .. :try_end_39a} :catch_31e
    .catchall {:try_start_393 .. :try_end_39a} :catchall_525

    move-object v12, v11

    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_247

    .line 3745
    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    :catch_39d
    move-exception v9

    .line 3747
    .local v9, "e":Ljava/lang/Exception;
    :goto_39e
    :try_start_39e
    const-string v25, "BackupManagerService"

    const-string v26, "Unable to emit archive header"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3a9
    .catch Landroid/os/RemoteException; {:try_start_39e .. :try_end_3a9} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_39e .. :try_end_3a9} :catch_422
    .catchall {:try_start_39e .. :try_end_3a9} :catchall_525

    .line 3790
    if-eqz v21, :cond_3ae

    :try_start_3ab
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3791
    :cond_3ae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_3b7
    .catch Ljava/io/IOException; {:try_start_3ab .. :try_end_3b7} :catch_59b

    .line 3795
    :goto_3b7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3796
    :try_start_3c4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3797
    monitor-exit v26
    :try_end_3d4
    .catchall {:try_start_3c4 .. :try_end_3d4} :catchall_412

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3799
    :try_start_3db
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3801
    monitor-exit v26
    :try_end_3f4
    .catchall {:try_start_3db .. :try_end_3f4} :catchall_415

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3803
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3804
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_185

    .line 3797
    :catchall_412
    move-exception v25

    :try_start_413
    monitor-exit v26
    :try_end_414
    .catchall {:try_start_413 .. :try_end_414} :catchall_412

    throw v25

    .line 3801
    :catchall_415
    move-exception v25

    :try_start_416
    monitor-exit v26
    :try_end_417
    .catchall {:try_start_416 .. :try_end_417} :catchall_415

    throw v25

    .line 3756
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v13    # "header":[B
    :catch_418
    move-exception v9

    .line 3757
    .local v9, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :try_start_419
    const-string v25, "BackupManagerService"

    const-string v26, "Unable to find shared-storage backup handler"

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_420
    .catch Landroid/os/RemoteException; {:try_start_419 .. :try_end_420} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_419 .. :try_end_420} :catch_422
    .catchall {:try_start_419 .. :try_end_420} :catchall_525

    goto/16 :goto_291

    .line 3786
    .end local v9    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v10    # "encrypting":Z
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .end local v13    # "header":[B
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_422
    move-exception v9

    .line 3787
    .local v9, "e":Ljava/lang/Exception;
    :try_start_423
    const-string v25, "BackupManagerService"

    const-string v26, "Internal exception during full backup"

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_42e
    .catchall {:try_start_423 .. :try_end_42e} :catchall_525

    .line 3790
    if-eqz v21, :cond_433

    :try_start_430
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3791
    :cond_433
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_43c
    .catch Ljava/io/IOException; {:try_start_430 .. :try_end_43c} :catch_592

    .line 3795
    :goto_43c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3796
    :try_start_449
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3797
    monitor-exit v26
    :try_end_459
    .catchall {:try_start_449 .. :try_end_459} :catchall_51f

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3799
    :try_start_460
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3801
    monitor-exit v26
    :try_end_479
    .catchall {:try_start_460 .. :try_end_479} :catchall_522

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3803
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3804
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_185

    .line 3769
    .end local v9    # "e":Ljava/lang/Exception;
    .restart local v5    # "N":I
    .restart local v10    # "encrypting":Z
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "header":[B
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v15    # "i":I
    .restart local v16    # "isSharedStorage":Z
    :cond_497
    :try_start_497
    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v25, v0

    goto/16 :goto_2d9

    .line 3763
    :cond_49f
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_296

    .line 3783
    .end local v16    # "isSharedStorage":Z
    :cond_4a3
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->finalizeBackup(Ljava/io/OutputStream;)V
    :try_end_4aa
    .catch Landroid/os/RemoteException; {:try_start_497 .. :try_end_4aa} :catch_31e
    .catch Ljava/lang/Exception; {:try_start_497 .. :try_end_4aa} :catch_422
    .catchall {:try_start_497 .. :try_end_4aa} :catchall_525

    .line 3790
    if-eqz v21, :cond_4af

    :try_start_4ac
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3791
    :cond_4af
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_4b8
    .catch Ljava/io/IOException; {:try_start_4ac .. :try_end_4b8} :catch_598

    .line 3795
    :goto_4b8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3796
    :try_start_4c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/util/SparseArray;->clear()V

    .line 3797
    monitor-exit v26
    :try_end_4d5
    .catchall {:try_start_4c5 .. :try_end_4d5} :catchall_513

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3799
    :try_start_4dc
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    const/16 v27, 0x1

    move-object/from16 v0, v25

    move/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->notifyAll()V

    .line 3801
    monitor-exit v26
    :try_end_4f5
    .catchall {:try_start_4dc .. :try_end_4f5} :catchall_516

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3803
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3804
    const-string v25, "BackupManagerService"

    const-string v26, "Full backup pass complete."

    invoke-static/range {v25 .. v26}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/16 :goto_185

    .line 3797
    :catchall_513
    move-exception v25

    :try_start_514
    monitor-exit v26
    :try_end_515
    .catchall {:try_start_514 .. :try_end_515} :catchall_513

    throw v25

    .line 3801
    :catchall_516
    move-exception v25

    :try_start_517
    monitor-exit v26
    :try_end_518
    .catchall {:try_start_517 .. :try_end_518} :catchall_516

    throw v25

    .line 3797
    .end local v5    # "N":I
    .end local v10    # "encrypting":Z
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .end local v13    # "header":[B
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .end local v15    # "i":I
    .local v9, "e":Landroid/os/RemoteException;
    :catchall_519
    move-exception v25

    :try_start_51a
    monitor-exit v26
    :try_end_51b
    .catchall {:try_start_51a .. :try_end_51b} :catchall_519

    throw v25

    .line 3801
    :catchall_51c
    move-exception v25

    :try_start_51d
    monitor-exit v26
    :try_end_51e
    .catchall {:try_start_51d .. :try_end_51e} :catchall_51c

    throw v25

    .line 3797
    .local v9, "e":Ljava/lang/Exception;
    :catchall_51f
    move-exception v25

    :try_start_520
    monitor-exit v26
    :try_end_521
    .catchall {:try_start_520 .. :try_end_521} :catchall_51f

    throw v25

    .line 3801
    :catchall_522
    move-exception v25

    :try_start_523
    monitor-exit v26
    :try_end_524
    .catchall {:try_start_523 .. :try_end_524} :catchall_522

    throw v25

    .line 3789
    .end local v9    # "e":Ljava/lang/Exception;
    :catchall_525
    move-exception v25

    .line 3790
    if-eqz v21, :cond_52b

    :try_start_528
    invoke-virtual/range {v21 .. v21}, Ljava/io/OutputStream;->close()V

    .line 3791
    :cond_52b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mOutputFile:Landroid/os/ParcelFileDescriptor;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_534
    .catch Ljava/io/IOException; {:try_start_528 .. :try_end_534} :catch_590

    .line 3795
    :goto_534
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOpLock:Ljava/lang/Object;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3796
    :try_start_541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mCurrentOperations:Landroid/util/SparseArray;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/util/SparseArray;->clear()V

    .line 3797
    monitor-exit v26
    :try_end_551
    .catchall {:try_start_541 .. :try_end_551} :catchall_58a

    .line 3798
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v26, v0

    monitor-enter v26

    .line 3799
    :try_start_558
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v27, v0

    const/16 v28, 0x1

    invoke-virtual/range {v27 .. v28}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3800
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->mLatch:Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Ljava/lang/Object;->notifyAll()V

    .line 3801
    monitor-exit v26
    :try_end_56d
    .catchall {:try_start_558 .. :try_end_56d} :catchall_58d

    .line 3802
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->sendEndBackup()V

    .line 3803
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/backup/BackupManagerService$FullBackupObbConnection;->tearDown()V

    .line 3804
    const-string v26, "BackupManagerService"

    const-string v27, "Full backup pass complete."

    invoke-static/range {v26 .. v27}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService$PerformAdbBackupTask;->this$0:Lcom/android/server/backup/BackupManagerService;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/server/backup/BackupManagerService;->mWakelock:Landroid/os/PowerManager$WakeLock;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/os/PowerManager$WakeLock;->release()V

    throw v25

    .line 3797
    :catchall_58a
    move-exception v25

    :try_start_58b
    monitor-exit v26
    :try_end_58c
    .catchall {:try_start_58b .. :try_end_58c} :catchall_58a

    throw v25

    .line 3801
    :catchall_58d
    move-exception v25

    :try_start_58e
    monitor-exit v26
    :try_end_58f
    .catchall {:try_start_58e .. :try_end_58f} :catchall_58d

    throw v25

    .line 3792
    :catch_590
    move-exception v26

    goto :goto_534

    .restart local v9    # "e":Ljava/lang/Exception;
    :catch_592
    move-exception v25

    goto/16 :goto_43c

    .local v9, "e":Landroid/os/RemoteException;
    :catch_595
    move-exception v25

    goto/16 :goto_334

    .end local v9    # "e":Landroid/os/RemoteException;
    .restart local v5    # "N":I
    .restart local v10    # "encrypting":Z
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "header":[B
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    .restart local v15    # "i":I
    :catch_598
    move-exception v25

    goto/16 :goto_4b8

    .end local v5    # "N":I
    .end local v13    # "header":[B
    .end local v15    # "i":I
    .local v9, "e":Ljava/lang/Exception;
    :catch_59b
    move-exception v25

    goto/16 :goto_3b7

    .line 3745
    .end local v9    # "e":Ljava/lang/Exception;
    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    .restart local v12    # "finalOutput":Ljava/io/OutputStream;
    :catch_59e
    move-exception v9

    move-object v11, v12

    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_39e

    .line 3792
    .end local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :catch_5a2
    move-exception v25

    goto/16 :goto_1b7

    .end local v11    # "finalOutput":Ljava/io/OutputStream;
    :catch_5a5
    move-exception v25

    goto/16 :goto_12c

    .restart local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v13    # "header":[B
    .restart local v14    # "headerbuf":Ljava/lang/StringBuilder;
    :cond_5a8
    move-object v11, v12

    .end local v12    # "finalOutput":Ljava/io/OutputStream;
    .restart local v11    # "finalOutput":Ljava/io/OutputStream;
    goto/16 :goto_270
.end method
