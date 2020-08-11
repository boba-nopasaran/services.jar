.class final Lcom/android/server/pm/ResmonFilter;
.super Ljava/lang/Object;
.source "ResmonFilter.java"


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method filt(Lcom/android/server/pm/Settings;Ljava/util/HashMap;)V
    .registers 14
    .param p1, "settings"    # Lcom/android/server/pm/Settings;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/pm/Settings;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p2, "packages":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroid/content/pm/PackageParser$Package;>;"
    const-string v9, "eng"

    const-string v10, "ro.build.type"

    invoke-static {v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_bb

    .line 16
    new-instance v6, Lcom/android/server/pm/ResmonWhitelistPackage;

    invoke-direct {v6}, Lcom/android/server/pm/ResmonWhitelistPackage;-><init>()V

    .line 17
    .local v6, "rsp":Lcom/android/server/pm/ResmonWhitelistPackage;
    invoke-virtual {v6}, Lcom/android/server/pm/ResmonWhitelistPackage;->readList()V

    .line 18
    iget-object v9, v6, Lcom/android/server/pm/ResmonWhitelistPackage;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_bb

    iget-object v9, v6, Lcom/android/server/pm/ResmonWhitelistPackage;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_bb

    .line 20
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .local v1, "excludeUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2c
    iget-object v9, v6, Lcom/android/server/pm/ResmonWhitelistPackage;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v2, v9, :cond_68

    .line 22
    iget-object v9, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v10, v6, Lcom/android/server/pm/ResmonWhitelistPackage;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 24
    .local v5, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_65

    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    if-eqz v9, :cond_65

    .line 26
    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_65

    .line 27
    iget-object v9, v5, Lcom/android/server/pm/PackageSetting;->pkg:Landroid/content/pm/PackageParser$Package;

    iget-object v9, v9, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_65
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 32
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_68
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 33
    .local v8, "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 34
    .local v4, "pkgit":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    :cond_75
    :goto_75
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_b3

    .line 35
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageParser$Package;

    .line 36
    .local v3, "pkg":Landroid/content/pm/PackageParser$Package;
    iget-object v9, p1, Lcom/android/server/pm/Settings;->mPackages:Landroid/util/ArrayMap;

    iget-object v10, v3, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 38
    .restart local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v5, :cond_93

    iget v9, v5, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_75

    .line 41
    :cond_93
    iget-object v9, v3, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 42
    .local v0, "curUid":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_75

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_75

    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_75

    .line 49
    .end local v0    # "curUid":I
    .end local v3    # "pkg":Landroid/content/pm/PackageParser$Package;
    .end local v5    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_b3
    new-instance v7, Lcom/android/server/pm/ResmonUidList;

    invoke-direct {v7}, Lcom/android/server/pm/ResmonUidList;-><init>()V

    .line 50
    .local v7, "rsu":Lcom/android/server/pm/ResmonUidList;
    invoke-virtual {v7, v8}, Lcom/android/server/pm/ResmonUidList;->updateList(Ljava/util/ArrayList;)V

    .line 53
    .end local v1    # "excludeUidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v2    # "i":I
    .end local v4    # "pkgit":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/pm/PackageParser$Package;>;"
    .end local v6    # "rsp":Lcom/android/server/pm/ResmonWhitelistPackage;
    .end local v7    # "rsu":Lcom/android/server/pm/ResmonUidList;
    .end local v8    # "uidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_bb
    return-void
.end method
