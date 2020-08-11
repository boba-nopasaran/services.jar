.class Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;
.super Ljava/lang/Object;
.source "RemoteListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/RemoteListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HandlerRunnable"
.end annotation


# instance fields
.field private final mListener:Landroid/os/IInterface;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT",
            "Listener;"
        }
    .end annotation
.end field

.field private final mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation",
            "<TT",
            "Listener;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/location/RemoteListenerHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/location/RemoteListenerHelper;Landroid/os/IInterface;Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;)V
    .registers 4
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
    .line 215
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    .local p2, "listener":Landroid/os/IInterface;, "TTListener;"
    .local p3, "operation":Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;, "Lcom/android/server/location/RemoteListenerHelper$ListenerOperation<TTListener;>;"
    iput-object p1, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    iput-object p2, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mListener:Landroid/os/IInterface;

    .line 217
    iput-object p3, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    .line 218
    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 222
    .local p0, "this":Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;, "Lcom/android/server/location/RemoteListenerHelper<TTListener;>.HandlerRunnable;"
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mListener:Landroid/os/IInterface;

    if-eqz v4, :cond_19

    .line 224
    :try_start_4
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    iget-object v5, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mListener:Landroid/os/IInterface;

    invoke-interface {v4, v5}, Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;->execute(Landroid/os/IInterface;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 239
    :cond_b
    :goto_b
    return-void

    .line 225
    :catch_c
    move-exception v0

    .line 226
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error in monitored listener."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_19
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    invoke-virtual {v4}, Lcom/android/server/location/RemoteListenerHelper;->getAllListener()Ljava/util/ArrayList;

    move-result-object v2

    .line 231
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TTListener;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_23
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IInterface;

    .line 233
    .local v3, "listener":Landroid/os/IInterface;, "TTListener;"
    :try_start_2f
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->mOperation:Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;

    invoke-interface {v4, v3}, Lcom/android/server/location/RemoteListenerHelper$ListenerOperation;->execute(Landroid/os/IInterface;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2f .. :try_end_34} :catch_35

    goto :goto_23

    .line 234
    :catch_35
    move-exception v0

    .line 235
    .restart local v0    # "e":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/server/location/RemoteListenerHelper$HandlerRunnable;->this$0:Lcom/android/server/location/RemoteListenerHelper;

    # getter for: Lcom/android/server/location/RemoteListenerHelper;->mTag:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/server/location/RemoteListenerHelper;->access$000(Lcom/android/server/location/RemoteListenerHelper;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Error in monitored listener."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_23
.end method
