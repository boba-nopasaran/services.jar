.class Lcom/android/server/location/LocationProviderProxy$1;
.super Ljava/lang/Object;
.source "LocationProviderProxy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationProviderProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationProviderProxy;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationProviderProxy;)V
    .registers 2

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 130
    const-string v6, "LocationProviderProxy"

    const-string v7, "applying state to connected service"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const/4 v2, 0x0

    .line 137
    .local v2, "properties":Lcom/android/internal/location/ProviderProperties;
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 138
    :try_start_f
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mEnabled:Z
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$100(Lcom/android/server/location/LocationProviderProxy;)Z

    move-result v1

    .line 139
    .local v1, "enabled":Z
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mRequest:Lcom/android/internal/location/ProviderRequest;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$200(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ProviderRequest;

    move-result-object v3

    .line 140
    .local v3, "request":Lcom/android/internal/location/ProviderRequest;
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mWorksource:Landroid/os/WorkSource;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$300(Lcom/android/server/location/LocationProviderProxy;)Landroid/os/WorkSource;

    move-result-object v5

    .line 141
    .local v5, "source":Landroid/os/WorkSource;
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # invokes: Lcom/android/server/location/LocationProviderProxy;->getService()Lcom/android/internal/location/ILocationProvider;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$400(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/internal/location/ILocationProvider;

    move-result-object v4

    .line 142
    .local v4, "service":Lcom/android/internal/location/ILocationProvider;
    monitor-exit v7

    .line 144
    if-nez v4, :cond_2e

    .line 171
    :goto_2a
    return-void

    .line 142
    .end local v1    # "enabled":Z
    .end local v3    # "request":Lcom/android/internal/location/ProviderRequest;
    .end local v4    # "service":Lcom/android/internal/location/ILocationProvider;
    .end local v5    # "source":Landroid/os/WorkSource;
    :catchall_2b
    move-exception v6

    monitor-exit v7
    :try_end_2d
    .catchall {:try_start_f .. :try_end_2d} :catchall_2b

    throw v6

    .line 148
    .restart local v1    # "enabled":Z
    .restart local v3    # "request":Lcom/android/internal/location/ProviderRequest;
    .restart local v4    # "service":Lcom/android/internal/location/ILocationProvider;
    .restart local v5    # "source":Landroid/os/WorkSource;
    :cond_2e
    :try_start_2e
    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->getProperties()Lcom/android/internal/location/ProviderProperties;

    move-result-object v2

    .line 149
    if-nez v2, :cond_56

    .line 150
    const-string v6, "LocationProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v8}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " has invalid locatino provider properties"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    :cond_56
    if-eqz v1, :cond_60

    .line 156
    invoke-interface {v4}, Lcom/android/internal/location/ILocationProvider;->enable()V

    .line 157
    if-eqz v3, :cond_60

    .line 158
    invoke-interface {v4, v3, v5}, Lcom/android/internal/location/ILocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    :try_end_60
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_60} :catch_71
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_60} :catch_78

    .line 168
    :cond_60
    :goto_60
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mLock:Ljava/lang/Object;
    invoke-static {v6}, Lcom/android/server/location/LocationProviderProxy;->access$000(Lcom/android/server/location/LocationProviderProxy;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 169
    :try_start_67
    iget-object v6, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # setter for: Lcom/android/server/location/LocationProviderProxy;->mProperties:Lcom/android/internal/location/ProviderProperties;
    invoke-static {v6, v2}, Lcom/android/server/location/LocationProviderProxy;->access$602(Lcom/android/server/location/LocationProviderProxy;Lcom/android/internal/location/ProviderProperties;)Lcom/android/internal/location/ProviderProperties;

    .line 170
    monitor-exit v7

    goto :goto_2a

    :catchall_6e
    move-exception v6

    monitor-exit v7
    :try_end_70
    .catchall {:try_start_67 .. :try_end_70} :catchall_6e

    throw v6

    .line 161
    :catch_71
    move-exception v0

    .line 162
    .local v0, "e":Landroid/os/RemoteException;
    const-string v6, "LocationProviderProxy"

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60

    .line 163
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_78
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/Exception;
    const-string v6, "LocationProviderProxy"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/location/LocationProviderProxy$1;->this$0:Lcom/android/server/location/LocationProviderProxy;

    # getter for: Lcom/android/server/location/LocationProviderProxy;->mServiceWatcher:Lcom/android/server/ServiceWatcher;
    invoke-static {v8}, Lcom/android/server/location/LocationProviderProxy;->access$500(Lcom/android/server/location/LocationProviderProxy;)Lcom/android/server/ServiceWatcher;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/ServiceWatcher;->getBestPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_60
.end method
