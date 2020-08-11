.class Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyPackageMonitor"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V
    .registers 2

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;Lcom/android/server/pm/LauncherAppsService$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;
    .param p2, "x1"    # Lcom/android/server/pm/LauncherAppsService$1;

    .prologue
    .line 334
    invoke-direct {p0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;-><init>(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)V

    return-void
.end method

.method private isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z
    .registers 11
    .param p1, "user"    # Landroid/os/UserHandle;
    .param p2, "listeningUser"    # Landroid/os/UserHandle;
    .param p3, "debugMsg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 340
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    if-ne v5, v6, :cond_c

    .line 365
    :goto_b
    return v4

    .line 344
    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 346
    .local v0, "ident":J
    :try_start_10
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v3

    .line 347
    .local v3, "userInfo":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mUm:Landroid/os/UserManager;
    invoke-static {v5}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$100(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Landroid/os/UserManager;

    move-result-object v5

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2

    .line 348
    .local v2, "listeningUserInfo":Landroid/content/pm/UserInfo;
    if-eqz v3, :cond_41

    if-eqz v2, :cond_41

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_41

    iget v5, v3, Landroid/content/pm/UserInfo;->profileGroupId:I

    iget v6, v2, Landroid/content/pm/UserInfo;->profileGroupId:I

    if-ne v5, v6, :cond_41

    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isEnabled()Z
    :try_end_3e
    .catchall {:try_start_10 .. :try_end_3e} :catchall_4a

    move-result v5

    if-nez v5, :cond_46

    .line 356
    :cond_41
    const/4 v4, 0x0

    .line 365
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    :cond_46
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_b

    .end local v2    # "listeningUserInfo":Landroid/content/pm/UserInfo;
    .end local v3    # "userInfo":Landroid/content/pm/UserInfo;
    :catchall_4a
    move-exception v4

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 371
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 372
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 373
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_46

    .line 374
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 375
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 376
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string v6, "onPackageAdded"

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 373
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 378
    :cond_39
    :try_start_39
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageAdded(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_36

    .line 379
    :catch_3d
    move-exception v4

    .line 380
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 383
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_46
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 385
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageAdded(Ljava/lang/String;I)V

    .line 386
    return-void
.end method

.method public onPackageModified(Ljava/lang/String;)V
    .registers 10
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 409
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 410
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 411
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_46

    .line 412
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 413
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 414
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string v6, "onPackageModified"

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 411
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 416
    :cond_39
    :try_start_39
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageChanged(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_36

    .line 417
    :catch_3d
    move-exception v4

    .line 418
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 421
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_46
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 423
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackageModified(Ljava/lang/String;)V

    .line 424
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .registers 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 390
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 391
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 392
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_46

    .line 393
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 394
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 395
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string v6, "onPackageRemoved"

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 392
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 397
    :cond_39
    :try_start_39
    invoke-interface {v1, v5, p1}, Landroid/content/pm/IOnAppsChangedListener;->onPackageRemoved(Landroid/os/UserHandle;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_3c} :catch_3d

    goto :goto_36

    .line 398
    :catch_3d
    move-exception v4

    .line 399
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 402
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_46
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 404
    invoke-super {p0, p1, p2}, Lcom/android/internal/content/PackageMonitor;->onPackageRemoved(Ljava/lang/String;I)V

    .line 405
    return-void
.end method

.method public onPackagesAvailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 428
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 429
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 430
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_4a

    .line 431
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 432
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 433
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string v6, "onPackagesAvailable"

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 430
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 435
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v1, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesAvailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_36

    .line 436
    :catch_41
    move-exception v4

    .line 437
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 440
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_4a
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 442
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesAvailable([Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public onPackagesUnavailable([Ljava/lang/String;)V
    .registers 10
    .param p1, "packages"    # [Ljava/lang/String;

    .prologue
    .line 447
    new-instance v5, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->getChangingUserId()I

    move-result v6

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    .line 448
    .local v5, "user":Landroid/os/UserHandle;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->beginBroadcast()I

    move-result v3

    .line 449
    .local v3, "n":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_14
    if-ge v0, v3, :cond_4a

    .line 450
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/content/pm/IOnAppsChangedListener;

    .line 451
    .local v1, "listener":Landroid/content/pm/IOnAppsChangedListener;
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->getBroadcastCookie(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 452
    .local v2, "listeningUser":Landroid/os/UserHandle;
    const-string v6, "onPackagesUnavailable"

    invoke-direct {p0, v5, v2, v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isEnabledProfileOf(Landroid/os/UserHandle;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_39

    .line 449
    :goto_36
    add-int/lit8 v0, v0, 0x1

    goto :goto_14

    .line 454
    :cond_39
    :try_start_39
    invoke-virtual {p0}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->isReplacing()Z

    move-result v6

    invoke-interface {v1, v5, p1, v6}, Landroid/content/pm/IOnAppsChangedListener;->onPackagesUnavailable(Landroid/os/UserHandle;[Ljava/lang/String;Z)V
    :try_end_40
    .catch Landroid/os/RemoteException; {:try_start_39 .. :try_end_40} :catch_41

    goto :goto_36

    .line 455
    :catch_41
    move-exception v4

    .line 456
    .local v4, "re":Landroid/os/RemoteException;
    const-string v6, "LauncherAppsService"

    const-string v7, "Callback failed "

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_36

    .line 459
    .end local v1    # "listener":Landroid/content/pm/IOnAppsChangedListener;
    .end local v2    # "listeningUser":Landroid/os/UserHandle;
    .end local v4    # "re":Landroid/os/RemoteException;
    :cond_4a
    iget-object v6, p0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$MyPackageMonitor;->this$1:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    # getter for: Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->mListeners:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;
    invoke-static {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;->access$200(Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;)Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl$PackageCallbackList;->finishBroadcast()V

    .line 461
    invoke-super {p0, p1}, Lcom/android/internal/content/PackageMonitor;->onPackagesUnavailable([Ljava/lang/String;)V

    .line 462
    return-void
.end method
