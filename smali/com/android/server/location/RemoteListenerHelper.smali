.class abstract Lcom/android/server/location/RemoteListenerHelper;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;,
        Lcom/android/server/location/RemoteListenerHelper$LinkedListener;,
        Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T",
        "Listener::Landroid/os/IInterface;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field protected static final RESULT_GPS_LOCATION_DISABLED:I = 0x3

.field protected static final RESULT_INTERNAL_ERROR:I = 0x4

.field protected static final RESULT_NOT_AVAILABLE:I = 0x1

.field protected static final RESULT_NOT_SUPPORTED:I = 0x2

.field protected static final RESULT_SUCCESS:I


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private mHasIsSupported:Z

.field private mIsRegistered:Z

.field private mIsSupported:Z

.field private final mListenerMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/location/RemoteListenerHelper",
            "<TT",
            "Listener;",
            ">.",
            "LinkedListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mTag:Ljava/lang/String;

.field private final mTempListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 5
    .param p1, "handler"    # Landroid/os/Handler;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 49
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    .line 246
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTempListeners:Ljava/util/ArrayList;

    .line 50
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    .line 52
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/RemoteListenerHelper;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 164
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2, p1}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 169
    return-void
.end method

.method private post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p2, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    if-eqz p2, :cond_c

    .line 173
    iget-object v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 175
    :cond_c
    return-void
.end method

.method private tryRegister()Z
    .registers 2

    .prologue
    .line 178
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_a

    .line 179
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->registerWithService()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    .line 181
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    return v0
.end method

.method private tryUnregister()V
    .registers 2

    .prologue
    .line 185
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    if-nez v0, :cond_5

    .line 190
    :goto_4
    return-void

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->unregisterFromService()V

    .line 189
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsRegistered:Z

    goto :goto_4
.end method


# virtual methods
.method public addListener(Landroid/os/IInterface;)Z
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 56
    const-string v6, "Attempted to register a \'null\' listener."

    invoke-static {p1, v6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 58
    .local v0, "binder":Landroid/os/IBinder;
    new-instance v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;-><init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;)V

    .line 59
    .local v1, "deathListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v6, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v6

    .line 60
    :try_start_13
    iget-object v7, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1d

    .line 62
    monitor-exit v6
    :try_end_1c
    .catchall {:try_start_13 .. :try_end_1c} :catchall_36

    .line 95
    :goto_1c
    return v4

    .line 65
    :cond_1d
    const/4 v7, 0x0

    :try_start_1e
    invoke-interface {v0, v1, v7}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_21} :catch_39
    .catchall {:try_start_1e .. :try_end_21} :catchall_36

    .line 72
    :try_start_21
    iget-object v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v5, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isAvailableInPlatform()Z

    move-result v5

    if-nez v5, :cond_44

    .line 77
    const/4 v3, 0x1

    .line 93
    .local v3, "result":I
    :goto_2d
    invoke-virtual {p0, v3}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v5

    invoke-direct {p0, p1, v5}, Lcom/android/server/location/RemoteListenerHelper;->post(Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 94
    monitor-exit v6

    goto :goto_1c

    .end local v3    # "result":I
    :catchall_36
    move-exception v4

    monitor-exit v6
    :try_end_38
    .catchall {:try_start_21 .. :try_end_38} :catchall_36

    throw v4

    .line 66
    :catch_39
    move-exception v2

    .line 69
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3a
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;

    const-string v7, "Remote listener already died."

    invoke-static {v4, v7, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    monitor-exit v6

    move v4, v5

    goto :goto_1c

    .line 78
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_44
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_4e

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-nez v5, :cond_4e

    .line 79
    const/4 v3, 0x2

    .restart local v3    # "result":I
    goto :goto_2d

    .line 80
    .end local v3    # "result":I
    :cond_4e
    invoke-virtual {p0}, Lcom/android/server/location/RemoteListenerHelper;->isGpsEnabled()Z

    move-result v5

    if-nez v5, :cond_56

    .line 81
    const/4 v3, 0x3

    .restart local v3    # "result":I
    goto :goto_2d

    .line 82
    .end local v3    # "result":I
    :cond_56
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z

    move-result v5

    if-nez v5, :cond_5e

    .line 85
    const/4 v3, 0x4

    .restart local v3    # "result":I
    goto :goto_2d

    .line 86
    .end local v3    # "result":I
    :cond_5e
    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    if-eqz v5, :cond_68

    iget-boolean v5, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    if-eqz v5, :cond_68

    .line 87
    const/4 v3, 0x0

    .restart local v3    # "result":I
    goto :goto_2d

    .line 91
    .end local v3    # "result":I
    :cond_68
    monitor-exit v6
    :try_end_69
    .catchall {:try_start_3a .. :try_end_69} :catchall_36

    goto :goto_1c
.end method

.method protected foreach(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 146
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 147
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 148
    monitor-exit v1

    .line 149
    return-void

    .line 148
    :catchall_8
    move-exception v0

    monitor-exit v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8

    throw v0
.end method

.method getAllListener()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTempListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 252
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 253
    :try_start_8
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 254
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTempListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;->getUnderlyingListener()Landroid/os/IInterface;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 256
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :catchall_28
    move-exception v2

    monitor-exit v3
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_28

    throw v2

    .restart local v0    # "i$":Ljava/util/Iterator;
    :cond_2b
    :try_start_2b
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_2b .. :try_end_2c} :catchall_28

    .line 257
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mTempListeners:Ljava/util/ArrayList;

    return-object v2
.end method

.method protected abstract getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract handleGpsEnabledChanged(Z)V
.end method

.method protected abstract isAvailableInPlatform()Z
.end method

.method protected abstract isGpsEnabled()Z
.end method

.method public onGpsEnabledChanged(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 116
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    invoke-virtual {p0, p1}, Lcom/android/server/location/RemoteListenerHelper;->handleGpsEnabledChanged(Z)V

    .line 117
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v2

    .line 118
    if-nez p1, :cond_d

    .line 119
    :try_start_8
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 120
    monitor-exit v2

    .line 132
    :goto_c
    return-void

    .line 122
    :cond_d
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 123
    monitor-exit v2

    goto :goto_c

    .line 131
    :catchall_17
    move-exception v1

    monitor-exit v2
    :try_end_19
    .catchall {:try_start_8 .. :try_end_19} :catchall_17

    throw v1

    .line 125
    :cond_1a
    :try_start_1a
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryRegister()Z

    move-result v1

    if-eqz v1, :cond_22

    .line 127
    monitor-exit v2

    goto :goto_c

    .line 129
    :cond_22
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/server/location/RemoteListenerHelper;->getHandlerOperation(I)Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    move-result-object v0

    .line 130
    .local v0, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    invoke-direct {p0, v0}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 131
    monitor-exit v2
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_17

    goto :goto_c
.end method

.method protected abstract registerWithService()Z
.end method

.method public removeListener(Landroid/os/IInterface;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT",
            "Listener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p1, "listener":Landroid/os/IInterface;, "TTListener;"
    const-string v2, "Attempted to remove a \'null\' listener."

    invoke-static {p1, v2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 102
    .local v0, "binder":Landroid/os/IBinder;
    iget-object v3, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v3

    .line 103
    :try_start_c
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/RemoteListenerHelper$LinkedListener;

    .line 104
    .local v1, "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    iget-object v2, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 105
    invoke-direct {p0}, Lcom/android/server/location/RemoteListenerHelper;->tryUnregister()V

    .line 107
    :cond_1f
    monitor-exit v3
    :try_end_20
    .catchall {:try_start_c .. :try_end_20} :catchall_27

    .line 108
    if-eqz v1, :cond_26

    .line 109
    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 111
    :cond_26
    return-void

    .line 107
    .end local v1    # "linkedListener":Lcom/android/server/location/RemoteListenerHelper$LinkedListener;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.LinkedListener;"
    :catchall_27
    move-exception v2

    :try_start_28
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    throw v2
.end method

.method protected setSupported(ZLcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 5
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>;"
    .local p2, "notifier":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iget-object v1, p0, Lcom/android/server/location/RemoteListenerHelper;->mListenerMap:Ljava/util/HashMap;

    monitor-enter v1

    .line 153
    const/4 v0, 0x1

    :try_start_4
    iput-boolean v0, p0, Lcom/android/server/location/RemoteListenerHelper;->mHasIsSupported:Z

    .line 154
    iput-boolean p1, p0, Lcom/android/server/location/RemoteListenerHelper;->mIsSupported:Z

    .line 155
    invoke-direct {p0, p2}, Lcom/android/server/location/RemoteListenerHelper;->foreachUnsafe(Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V

    .line 156
    monitor-exit v1

    .line 157
    return-void

    .line 156
    :catchall_d
    move-exception v0

    monitor-exit v1
    :try_end_f
    .catchall {:try_start_4 .. :try_end_f} :catchall_d

    throw v0
.end method

.method protected abstract unregisterFromService()V
.end method
