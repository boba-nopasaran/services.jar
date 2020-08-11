.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CountryDetectorService$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLocationBasedDetectorListener:Landroid/location/CountryListener;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/CountryDetectorService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 99
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 101
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/CountryDetectorService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/CountryDetectorService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/CountryDetectorService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/CountryDetectorService;)Lcom/android/server/location/ComprehensiveCountryDetector;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/CountryDetectorService;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    return-object v0
.end method

.method private addListener(Landroid/location/ICountryListener;)V
    .registers 7
    .param p1, "listener"    # Landroid/location/ICountryListener;

    .prologue
    .line 136
    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v3

    .line 137
    :try_start_3
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_39

    .line 139
    .local v1, "r":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_8
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v4, 0x0

    invoke-interface {v2, v1, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 140
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-virtual {v2, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_2e

    .line 142
    const-string v2, "CountryDetector"

    const-string v4, "The first listener is added"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    invoke-virtual {p0, v2}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_2e
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_2e} :catch_30
    .catchall {:try_start_8 .. :try_end_2e} :catchall_39

    .line 148
    :cond_2e
    :goto_2e
    :try_start_2e
    monitor-exit v3

    .line 149
    return-void

    .line 145
    :catch_30
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CountryDetector"

    const-string v4, "linkToDeath failed:"

    invoke-static {v2, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2e

    .line 148
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "r":Lcom/android/server/CountryDetectorService$Receiver;
    :catchall_39
    move-exception v2

    monitor-exit v3
    :try_end_3b
    .catchall {:try_start_2e .. :try_end_3b} :catchall_39

    throw v2
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 181
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 182
    new-instance v0, Lcom/android/server/CountryDetectorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CountryDetectorService$1;-><init>(Lcom/android/server/CountryDetectorService;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    .line 191
    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .registers 5
    .param p1, "key"    # Landroid/os/IBinder;

    .prologue
    .line 152
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v1

    .line 153
    :try_start_3
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 155
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    .line 156
    const-string v0, "CountryDetector"

    const-string v2, "No listener is left"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1b
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_3 .. :try_end_1f} :catchall_1d

    throw v0
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_a

    .line 119
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 121
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    .line 122
    return-void
.end method

.method public detectCountry()Landroid/location/Country;
    .registers 2

    .prologue
    .line 106
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_6

    .line 107
    const/4 v0, 0x0

    .line 109
    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-virtual {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    goto :goto_5
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 216
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const-string v3, "android.permission.DUMP"

    const-string v4, "CountryDetector"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    :try_start_9
    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p2}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    .line 221
    .local v1, "p":Landroid/util/Printer;
    const-string v2, "CountryDetectorService state:"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Number of listeners="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 223
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    if-nez v2, :cond_3d

    .line 224
    const-string v2, "  ComprehensiveCountryDetector not initialized"

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 231
    .end local v1    # "p":Landroid/util/Printer;
    :goto_3c
    return-void

    .line 226
    .restart local v1    # "p":Landroid/util/Printer;
    :cond_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-virtual {v3}, Lcom/android/server/location/ComprehensiveCountryDetector;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/util/Printer;->println(Ljava/lang/String;)V
    :try_end_59
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_59} :catch_5a

    goto :goto_3c

    .line 228
    .end local v1    # "p":Landroid/util/Printer;
    :catch_5a
    move-exception v0

    .line 229
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CountryDetector"

    const-string v3, "Failed to dump CountryDetectorService: "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3c
.end method

.method isSystemReady()Z
    .registers 2

    .prologue
    .line 210
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return v0
.end method

.method protected notifyReceivers(Landroid/location/Country;)V
    .registers 8
    .param p1, "country"    # Landroid/location/Country;

    .prologue
    .line 163
    iget-object v4, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v4

    .line 164
    :try_start_3
    iget-object v3, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_2a

    .line 166
    .local v2, "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_19
    invoke-virtual {v2}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_20
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_20} :catch_21
    .catchall {:try_start_19 .. :try_end_20} :catchall_2a

    goto :goto_d

    .line 167
    :catch_21
    move-exception v0

    .line 169
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v3, "CountryDetector"

    const-string v5, "notifyReceivers failed:"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_d

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    :catchall_2a
    move-exception v3

    monitor-exit v4
    :try_end_2c
    .catchall {:try_start_22 .. :try_end_2c} :catchall_2a

    throw v3

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_2d
    :try_start_2d
    monitor-exit v4
    :try_end_2e
    .catchall {:try_start_2d .. :try_end_2e} :catchall_2a

    .line 173
    return-void
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .registers 3
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_a

    .line 130
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0

    .line 132
    :cond_a
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 133
    return-void
.end method

.method public run()V
    .registers 2

    .prologue
    .line 194
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 195
    invoke-direct {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    .line 196
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 197
    return-void
.end method

.method protected setCountryListener(Landroid/location/CountryListener;)V
    .registers 4
    .param p1, "listener"    # Landroid/location/CountryListener;

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$2;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 206
    return-void
.end method

.method systemRunning()V
    .registers 2

    .prologue
    .line 177
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 178
    return-void
.end method
