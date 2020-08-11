.class Lcom/android/server/location/FlpHardwareProvider$1;
.super Landroid/hardware/location/IFusedLocationHardware$Stub;
.source "FlpHardwareProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/FlpHardwareProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/FlpHardwareProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/FlpHardwareProvider;)V
    .registers 2

    .prologue
    .line 269
    iput-object p1, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    invoke-direct {p0}, Landroid/hardware/location/IFusedLocationHardware$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSupportedBatchSize()I
    .registers 2

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeGetBatchSize()I
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$300(Lcom/android/server/location/FlpHardwareProvider;)I

    move-result v0

    return v0
.end method

.method public injectDeviceContext(I)V
    .registers 3
    .param p1, "deviceEnabledContext"    # I

    .prologue
    .line 334
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDeviceContext(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$1100(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 335
    return-void
.end method

.method public injectDiagnosticData(Ljava/lang/String;)V
    .registers 3
    .param p1, "data"    # Ljava/lang/String;

    .prologue
    .line 324
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeInjectDiagnosticData(Ljava/lang/String;)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$900(Lcom/android/server/location/FlpHardwareProvider;Ljava/lang/String;)V

    .line 325
    return-void
.end method

.method public registerSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .registers 5
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 272
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 274
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 275
    const-string v0, "FlpHardwareProvider"

    const-string v2, "Replacing an existing IFusedLocationHardware sink"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_16
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 279
    monitor-exit v1

    .line 280
    return-void

    .line 279
    :catchall_1d
    move-exception v0

    monitor-exit v1
    :try_end_1f
    .catchall {:try_start_7 .. :try_end_1f} :catchall_1d

    throw v0
.end method

.method public requestBatchOfLocations(I)V
    .registers 3
    .param p1, "batchSizeRequested"    # I

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeRequestBatchedLocation(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$700(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 315
    return-void
.end method

.method public startBatching(ILandroid/location/FusedBatchOptions;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStartBatching(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$400(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    .line 300
    return-void
.end method

.method public stopBatching(I)V
    .registers 3
    .param p1, "requestId"    # I

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeStopBatching(I)V
    invoke-static {v0, p1}, Lcom/android/server/location/FlpHardwareProvider;->access$500(Lcom/android/server/location/FlpHardwareProvider;I)V

    .line 305
    return-void
.end method

.method public supportsDeviceContextInjection()Z
    .registers 2

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDeviceContextSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$1000(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public supportsDiagnosticDataInjection()Z
    .registers 2

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeIsDiagnosticSupported()Z
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$800(Lcom/android/server/location/FlpHardwareProvider;)Z

    move-result v0

    return v0
.end method

.method public unregisterSink(Landroid/hardware/location/IFusedLocationHardwareSink;)V
    .registers 5
    .param p1, "eventSink"    # Landroid/hardware/location/IFusedLocationHardwareSink;

    .prologue
    .line 284
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSinkLock:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$100(Lcom/android/server/location/FlpHardwareProvider;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 286
    :try_start_7
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # getter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0}, Lcom/android/server/location/FlpHardwareProvider;->access$200(Lcom/android/server/location/FlpHardwareProvider;)Landroid/hardware/location/IFusedLocationHardwareSink;

    move-result-object v0

    if-ne v0, p1, :cond_15

    .line 287
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    const/4 v2, 0x0

    # setter for: Lcom/android/server/location/FlpHardwareProvider;->mLocationSink:Landroid/hardware/location/IFusedLocationHardwareSink;
    invoke-static {v0, v2}, Lcom/android/server/location/FlpHardwareProvider;->access$202(Lcom/android/server/location/FlpHardwareProvider;Landroid/hardware/location/IFusedLocationHardwareSink;)Landroid/hardware/location/IFusedLocationHardwareSink;

    .line 289
    :cond_15
    monitor-exit v1

    .line 290
    return-void

    .line 289
    :catchall_17
    move-exception v0

    monitor-exit v1
    :try_end_19
    .catchall {:try_start_7 .. :try_end_19} :catchall_17

    throw v0
.end method

.method public updateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    .registers 4
    .param p1, "requestId"    # I
    .param p2, "options"    # Landroid/location/FusedBatchOptions;

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/server/location/FlpHardwareProvider$1;->this$0:Lcom/android/server/location/FlpHardwareProvider;

    # invokes: Lcom/android/server/location/FlpHardwareProvider;->nativeUpdateBatchingOptions(ILandroid/location/FusedBatchOptions;)V
    invoke-static {v0, p1, p2}, Lcom/android/server/location/FlpHardwareProvider;->access$600(Lcom/android/server/location/FlpHardwareProvider;ILandroid/location/FusedBatchOptions;)V

    .line 310
    return-void
.end method
