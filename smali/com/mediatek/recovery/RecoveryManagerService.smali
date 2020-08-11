.class public Lcom/mediatek/recovery/RecoveryManagerService;
.super Lcom/mediatek/recovery/IRecoveryManagerService$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/recovery/RecoveryManagerService$b;,
        Lcom/mediatek/recovery/RecoveryManagerService$a;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private n:Lcom/mediatek/recovery/EventLogger;

.field private o:Z

.field private p:Ljava/io/File;

.field private q:Ljava/io/File;

.field private r:Lcom/mediatek/recovery/RecoveryManagerService$a;

.field private s:Lcom/mediatek/recovery/RecoveryParser;

.field private t:Lcom/mediatek/recovery/BackupServant;

.field private final u:Lcom/mediatek/recovery/RecoveryManagerService$b;

.field private v:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Lcom/mediatek/recovery/IRecoveryManagerService$Stub;-><init>()V

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;

    .line 74
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->o:Z

    .line 89
    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->v:Z

    .line 131
    iput-object p1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->mContext:Landroid/content/Context;

    .line 132
    new-instance v0, Lcom/mediatek/recovery/EventLogger;

    const-string v1, "RecoveryManagerService"

    invoke-direct {v0, v1}, Lcom/mediatek/recovery/EventLogger;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    .line 133
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "RecoveryManagerService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 135
    new-instance v1, Lcom/mediatek/recovery/RecoveryManagerService$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService$b;-><init>(Lcom/mediatek/recovery/RecoveryManagerService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    .line 136
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "framework"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->p:Ljava/io/File;

    .line 137
    new-instance v0, Lcom/mediatek/recovery/RecoveryParser;

    invoke-direct {v0}, Lcom/mediatek/recovery/RecoveryParser;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    .line 138
    new-instance v0, Lcom/mediatek/recovery/BackupServant;

    invoke-direct {v0}, Lcom/mediatek/recovery/BackupServant;-><init>()V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    .line 139
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->p:Ljava/io/File;

    const-string v2, "recovery.jar"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->q:Ljava/io/File;

    .line 140
    new-instance v0, Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->q:Ljava/io/File;

    invoke-direct {v0, v1}, Lcom/mediatek/recovery/RecoveryManagerService$a;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->r:Lcom/mediatek/recovery/RecoveryManagerService$a;

    .line 142
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    invoke-virtual {v0}, Lcom/mediatek/recovery/RecoveryParser;->read()V

    .line 143
    return-void
.end method

.method private a(Ljava/lang/RuntimeException;)I
    .registers 9

    .prologue
    .line 403
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 404
    const/4 v3, -0x1

    .line 405
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_10a

    .line 406
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 407
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v1, v1, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/Module;

    .line 408
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-nez v2, :cond_62

    .line 409
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->r:Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v5, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-static {v2, v5}, Lcom/mediatek/recovery/RecoveryManagerService$a;->a(Lcom/mediatek/recovery/RecoveryManagerService$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractExceptionParser;

    iput-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    .line 411
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    if-nez v2, :cond_62

    .line 412
    const-string v2, "RecoveryManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to get exception parser class: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParserClass:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " from recovery module: "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Skip it!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    .line 420
    :cond_62
    iget-object v2, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v2, p1}, Lcom/mediatek/recovery/AbstractExceptionParser;->parseException(Ljava/lang/RuntimeException;)Ljava/util/ArrayList;

    move-result-object v2

    .line 422
    iget-object v1, v1, Lcom/mediatek/recovery/Module;->exceptionParser:Lcom/mediatek/recovery/AbstractExceptionParser;

    invoke-virtual {v1}, Lcom/mediatek/recovery/AbstractExceptionParser;->getLastError()I

    move-result v1

    if-eqz v1, :cond_90

    .line 423
    const-string v1, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " mismatch"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 427
    :cond_90
    if-eqz v2, :cond_98

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b8

    .line 429
    :cond_98
    const-string v1, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Recovery module: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " returns unavailable pathes, try other modules!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    .line 433
    :cond_b8
    iget-object v3, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovery module: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "match the exception for file: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " start restoring"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/mediatek/recovery/EventLogger;->logBootRecovery(Ljava/lang/String;)V

    .line 438
    invoke-virtual {p0, v0, v2}, Lcom/mediatek/recovery/RecoveryManagerService;->a(Ljava/lang/String;Ljava/util/ArrayList;)I

    move-result v0

    .line 439
    if-eqz v0, :cond_106

    .line 440
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed with error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/recovery/EventLogger;->logBootRecovery(Ljava/lang/String;)V

    .line 446
    :goto_105
    return v0

    .line 442
    :cond_106
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->d()V

    goto :goto_105

    :cond_10a
    move v0, v3

    goto :goto_105
.end method

.method static synthetic a(Lcom/mediatek/recovery/RecoveryManagerService;)V
    .registers 1

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->d()V

    return-void
.end method

.method private b(Ljava/lang/String;)V
    .registers 7

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 344
    const-string v2, "RecoveryManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reboot for reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v2

    .line 349
    if-eqz v2, :cond_4a

    .line 350
    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_28
    invoke-interface {v2, v3, p1, v4}, Landroid/os/IPowerManager;->reboot(ZLjava/lang/String;Z)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_2b} :catch_53

    .line 359
    :goto_2b
    if-nez v0, :cond_49

    .line 360
    const-string v0, "RecoveryManagerService"

    const-string v1, "Fall back to force reboot"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    :try_start_34
    new-instance v0, Ljava/lang/ProcessBuilder;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "/system/bin/reboot"

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_49
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_49} :catch_5c

    .line 367
    :cond_49
    :goto_49
    return-void

    .line 353
    :cond_4a
    :try_start_4a
    const-string v0, "RecoveryManagerService"

    const-string v2, "Power Manager Service is dead !!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_51} :catch_53

    :goto_51
    move v0, v1

    goto :goto_2b

    .line 355
    :catch_53
    move-exception v0

    .line 357
    const-string v0, "RecoveryManagerService"

    const-string v2, "Exception happened when performing pm reboot "

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_51

    .line 363
    :catch_5c
    move-exception v0

    .line 364
    const-string v1, "RecoveryManagerService"

    const-string v2, "Failed to reboot device"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_49
.end method

.method private d()V
    .registers 2

    .prologue
    .line 340
    const-string v0, "Repair"

    invoke-direct {p0, v0}, Lcom/mediatek/recovery/RecoveryManagerService;->b(Ljava/lang/String;)V

    .line 341
    return-void
.end method


# virtual methods
.method a(Ljava/lang/String;Ljava/util/ArrayList;)I
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 151
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 152
    if-nez v0, :cond_2d

    .line 153
    const-string v0, "RecoveryManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Recovery failed, Module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v0, -0xa

    .line 227
    :goto_2c
    return v0

    .line 158
    :cond_2d
    new-instance v3, Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 160
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 161
    :goto_3a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 162
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 163
    iget-object v2, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 164
    if-nez v2, :cond_71

    .line 165
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, File: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " undefined"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/16 v0, -0xb

    goto :goto_2c

    .line 168
    :cond_71
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    .line 171
    :cond_75
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 172
    :cond_79
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_161

    .line 173
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 178
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    if-nez v2, :cond_dc

    .line 179
    const-string v2, "RecoveryManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "File: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " has no default recovery action"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_a9
    iget-object v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    if-eqz v2, :cond_79

    .line 208
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->r:Lcom/mediatek/recovery/RecoveryManagerService$a;

    iget-object v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/mediatek/recovery/RecoveryManagerService$a;->a(Lcom/mediatek/recovery/RecoveryManagerService$a;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/recovery/AbstractRecoveryMethod;

    .line 210
    if-nez v2, :cond_13d

    .line 211
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, recovery class: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->className:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " instantiation failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v0, -0x8

    goto/16 :goto_2c

    .line 182
    :cond_dc
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_112

    .line 183
    new-instance v2, Ljava/io/File;

    iget-object v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_112

    .line 185
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-nez v2, :cond_112

    .line 186
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, cannot finish defualt REMOVE action for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    const/4 v0, -0x3

    goto/16 :goto_2c

    .line 194
    :cond_112
    iget v2, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->defaultActionFlag:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_a9

    .line 195
    iget-object v2, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v2, v0, v1}, Lcom/mediatek/recovery/BackupServant;->restore(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v2

    .line 196
    if-eqz v2, :cond_a9

    .line 197
    const-string v0, "RecoveryManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Recovery failed, cannot perform resotre for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 200
    goto/16 :goto_2c

    .line 216
    :cond_13d
    iget-object v1, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/mediatek/recovery/AbstractRecoveryMethod;->doRecover(Ljava/lang/Object;)I

    move-result v1

    .line 218
    if-eqz v1, :cond_79

    .line 219
    const-string v0, "RecoveryManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Recovery failed, recovery method execute failed, error code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const/16 v0, -0x9

    goto/16 :goto_2c

    .line 227
    :cond_161
    const/4 v0, 0x0

    goto/16 :goto_2c
.end method

.method public backupSingleFile(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8

    .prologue
    const/4 v2, -0x4

    .line 282
    const/4 v3, 0x0

    .line 283
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 284
    const/4 v1, 0x0

    .line 285
    if-eqz v0, :cond_25

    .line 286
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 287
    if-nez v1, :cond_2b

    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 293
    :goto_1c
    if-nez v1, :cond_29

    .line 294
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v1, v0, v2}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    move-result v0

    .line 296
    :goto_24
    return v0

    :cond_25
    move-object v4, v1

    move v1, v2

    move-object v2, v4

    .line 291
    goto :goto_1c

    :cond_29
    move v0, v1

    goto :goto_24

    :cond_2b
    move-object v2, v1

    move v1, v3

    goto :goto_1c
.end method

.method c()V
    .registers 6

    .prologue
    .line 254
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->s:Lcom/mediatek/recovery/RecoveryParser;

    iget-object v0, v0, Lcom/mediatek/recovery/RecoveryParser;->mModules:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 255
    :cond_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 256
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/recovery/Module;

    .line 257
    iget-object v1, v0, Lcom/mediatek/recovery/Module;->mRecoveryFiles:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 259
    :cond_22
    :goto_22
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 260
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;

    .line 261
    iget v4, v1, Lcom/mediatek/recovery/RegisteredRecoveryFile;->backupFlag:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_22

    .line 262
    iget-object v4, p0, Lcom/mediatek/recovery/RecoveryManagerService;->t:Lcom/mediatek/recovery/BackupServant;

    invoke-virtual {v4, v0, v1}, Lcom/mediatek/recovery/BackupServant;->backup(Lcom/mediatek/recovery/Module;Lcom/mediatek/recovery/RegisteredRecoveryFile;)I

    goto :goto_22

    .line 266
    :cond_3a
    return-void
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 300
    const-string v0, "RecoveryManangerService v2.0"

    return-object v0
.end method

.method public handleException(Ljava/lang/RuntimeException;Z)V
    .registers 7

    .prologue
    const/4 v0, -0x1

    .line 369
    const-string v1, "RecoveryManagerService"

    const-string v2, "Catch exception "

    invoke-static {v1, v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 370
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;->getNewInstance(Ljava/lang/Throwable;Ljava/lang/Boolean;)Lcom/mediatek/recovery/AbstractExceptionParser$ParsedException;

    move-result-object v1

    .line 373
    if-nez v1, :cond_1a

    .line 374
    const-string v1, "RecoveryManagerService"

    const-string v2, "The exception backtrace is null, stop handle progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_1a
    iget-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->v:Z

    if-eqz v1, :cond_4a

    .line 378
    const-string v1, "RecoveryManagerService"

    const-string v2, "The first exception happened in system server has been caught, stop handle progress"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_25
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    invoke-virtual {v1}, Lcom/mediatek/recovery/EventLogger;->getLastBootStatus()I

    move-result v1

    sget v2, Lcom/mediatek/recovery/EventLogger;->LAST_BOOT_SUCCESS:I

    if-ne v1, v2, :cond_34

    .line 384
    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    invoke-virtual {v1, p1}, Lcom/mediatek/recovery/EventLogger;->logBootFail(Ljava/lang/Throwable;)V

    .line 386
    :cond_34
    sget-object v1, Lcom/mediatek/recovery/RecoveryManager;->ANTIBRICKING_LEVEL:Ljava/lang/String;

    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4e

    .line 388
    const-string v1, "RecoveryManagerService"

    const-string v2, "RMS is partial support, do not recover any files, just record the exception"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :goto_45
    if-eqz v0, :cond_5c

    if-eqz p2, :cond_5c

    .line 398
    throw p1

    .line 381
    :cond_4a
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->v:Z

    goto :goto_25

    .line 391
    :cond_4e
    :try_start_4e
    invoke-direct {p0, p1}, Lcom/mediatek/recovery/RecoveryManagerService;->a(Ljava/lang/RuntimeException;)I
    :try_end_51
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_51} :catch_53

    move-result v0

    goto :goto_45

    .line 392
    :catch_53
    move-exception v1

    .line 394
    const-string v2, "RecoveryManagerService"

    const-string v3, "Exception recovery failed due to RMS excetipn"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_45

    .line 400
    :cond_5c
    return-void
.end method

.method public startBootMonitor()V
    .registers 5

    .prologue
    .line 488
    const-string v0, "RecoveryManagerService"

    const-string v1, "Start boot monitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 489
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    iget-object v1, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/mediatek/recovery/RecoveryManagerService$b;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/32 v2, 0x1b7740

    invoke-virtual {v0, v1, v2, v3}, Lcom/mediatek/recovery/RecoveryManagerService$b;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 490
    return-void
.end method

.method public stopBootMonitor()V
    .registers 3

    .prologue
    .line 497
    const-string v0, "RecoveryManagerService"

    const-string v1, "Stop boot monitor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->u:Lcom/mediatek/recovery/RecoveryManagerService$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/recovery/RecoveryManagerService$b;->removeMessages(I)V

    .line 499
    return-void
.end method

.method public systemReady()V
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->n:Lcom/mediatek/recovery/EventLogger;

    const-string v1, "systemReady()"

    invoke-virtual {v0, v1}, Lcom/mediatek/recovery/EventLogger;->logBootSuccess(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/recovery/RecoveryManagerService;->c()V

    .line 275
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/recovery/RecoveryManagerService;->o:Z

    .line 276
    return-void
.end method
