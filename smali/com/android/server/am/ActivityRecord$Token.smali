.class Lcom/android/server/am/ActivityRecord$Token;
.super Landroid/view/IApplicationToken$Stub;
.source "ActivityRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActivityRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Token"
.end annotation


# instance fields
.field final weakActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityRecord;)V
    .registers 3
    .param p1, "activity"    # Lcom/android/server/am/ActivityRecord;

    .prologue
    .line 332
    invoke-direct {p0}, Landroid/view/IApplicationToken$Stub;-><init>()V

    .line 333
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    .line 334
    return-void
.end method


# virtual methods
.method public getFocusAppPid()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 372
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 373
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    .line 374
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getFocusAppPid()I

    move-result v1

    .line 376
    :goto_e
    return v1

    :cond_f
    const/4 v1, -0x1

    goto :goto_e
.end method

.method public getKeyDispatchingTimeout()J
    .registers 5

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 364
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_f

    .line 365
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getKeyDispatchingTimeout()J

    move-result-wide v2

    .line 367
    :goto_e
    return-wide v2

    :cond_f
    const-wide/16 v2, 0x0

    goto :goto_e
.end method

.method public keyDispatchingTimedOut(Ljava/lang/String;)Z
    .registers 4
    .param p1, "reason"    # Ljava/lang/String;

    .prologue
    .line 358
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 359
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActivityRecord;->keyDispatchingTimedOut(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 383
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Token{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 384
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 386
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 387
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 388
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public windowsDrawn()V
    .registers 3

    .prologue
    .line 337
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 338
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_d

    .line 339
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsDrawn()V

    .line 341
    :cond_d
    return-void
.end method

.method public windowsGone()V
    .registers 3

    .prologue
    .line 351
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 352
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_d

    .line 353
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsGone()V

    .line 355
    :cond_d
    return-void
.end method

.method public windowsVisible()V
    .registers 3

    .prologue
    .line 344
    iget-object v1, p0, Lcom/android/server/am/ActivityRecord$Token;->weakActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ActivityRecord;

    .line 345
    .local v0, "activity":Lcom/android/server/am/ActivityRecord;
    if-eqz v0, :cond_d

    .line 346
    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->windowsVisible()V

    .line 348
    :cond_d
    return-void
.end method
