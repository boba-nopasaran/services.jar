.class public Lcom/android/server/notification/ManagedServices$UserProfiles;
.super Ljava/lang/Object;
.source "ManagedServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ManagedServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserProfiles"
.end annotation


# instance fields
.field private final mCurrentProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/content/pm/UserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    return-void
.end method


# virtual methods
.method public getCurrentProfileIds()[I
    .registers 6

    .prologue
    .line 628
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v4

    .line 629
    :try_start_3
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    new-array v2, v3, [I

    .line 630
    .local v2, "users":[I
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 631
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_12
    if-ge v1, v0, :cond_1f

    .line 632
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    aput v3, v2, v1

    .line 631
    add-int/lit8 v1, v1, 0x1

    goto :goto_12

    .line 634
    :cond_1f
    monitor-exit v4

    return-object v2

    .line 635
    .end local v0    # "N":I
    .end local v1    # "i":I
    .end local v2    # "users":[I
    :catchall_21
    move-exception v3

    monitor-exit v4
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw v3
.end method

.method public isCurrentProfile(I)Z
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 639
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v1

    .line 640
    :try_start_3
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_c
    monitor-exit v1

    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_c

    .line 641
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method

.method public updateCache(Landroid/content/Context;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 614
    const-string v5, "user"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    .line 615
    .local v4, "userManager":Landroid/os/UserManager;
    if-eqz v4, :cond_36

    .line 616
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 617
    .local v0, "currentUserId":I
    invoke-virtual {v4, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v2

    .line 618
    .local v2, "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    iget-object v6, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    monitor-enter v6

    .line 619
    :try_start_15
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 620
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 621
    .local v3, "user":Landroid/content/pm/UserInfo;
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices$UserProfiles;->mCurrentProfiles:Landroid/util/SparseArray;

    iget v7, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v5, v7, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1e

    .line 623
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "user":Landroid/content/pm/UserInfo;
    :catchall_32
    move-exception v5

    monitor-exit v6
    :try_end_34
    .catchall {:try_start_15 .. :try_end_34} :catchall_32

    throw v5

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_35
    :try_start_35
    monitor-exit v6
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_32

    .line 625
    .end local v0    # "currentUserId":I
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "profiles":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    :cond_36
    return-void
.end method