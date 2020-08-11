.class Lcom/mediatek/mom/p;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/mom/p$a;,
        Lcom/mediatek/mom/p$b;
    }
.end annotation


# static fields
.field private static W:Landroid/app/IActivityManager;

.field private static X:Z

.field private static Y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static Z:Lcom/mediatek/mom/p$a;

.field private static c:Lcom/mediatek/mom/ControllerBase;

.field private static g:Landroid/content/pm/IPackageManager;

.field static localLOGV:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 68
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/p;->localLOGV:Z

    .line 70
    sput-object v1, Lcom/mediatek/mom/p;->c:Lcom/mediatek/mom/ControllerBase;

    .line 71
    sput-object v1, Lcom/mediatek/mom/p;->W:Landroid/app/IActivityManager;

    .line 72
    sput-object v1, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    .line 73
    const/4 v0, 0x0

    sput-boolean v0, Lcom/mediatek/mom/p;->X:Z

    .line 74
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    .line 258
    sput-object v1, Lcom/mediatek/mom/p;->Z:Lcom/mediatek/mom/p$a;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 84
    invoke-static {}, Lcom/mediatek/mom/p;->getActivityManagerService()Landroid/app/IActivityManager;

    move-result-object v0

    sput-object v0, Lcom/mediatek/mom/p;->W:Landroid/app/IActivityManager;

    .line 85
    invoke-static {}, Lcom/mediatek/mom/p;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    .line 86
    invoke-static {}, Lcom/mediatek/mom/p;->t()V

    .line 87
    return-void
.end method

.method public static a(ILjava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7

    .prologue
    .line 154
    const/4 v0, 0x0

    .line 156
    :try_start_1
    sget-object v1, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x1000

    invoke-interface {v1, p1, v2, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_8} :catch_a

    move-result-object v0

    .line 160
    :goto_9
    return-object v0

    .line 157
    :catch_a
    move-exception v1

    .line 158
    const-string v2, "PackageController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getPackageInfoByUser() failed! with userId: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_9
.end method

.method public static final a()Lcom/mediatek/mom/ControllerBase;
    .registers 1

    .prologue
    .line 77
    sget-object v0, Lcom/mediatek/mom/p;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_b

    .line 78
    new-instance v0, Lcom/mediatek/mom/p;

    invoke-direct {v0}, Lcom/mediatek/mom/p;-><init>()V

    sput-object v0, Lcom/mediatek/mom/p;->c:Lcom/mediatek/mom/ControllerBase;

    .line 80
    :cond_b
    sget-object v0, Lcom/mediatek/mom/p;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private static a(IZ)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 104
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInstalledPackages() at user("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    :try_start_29
    sget-object v0, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    const/16 v2, 0x2200

    invoke-interface {v0, v2, p0}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 112
    if-eqz v0, :cond_8f

    .line 113
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 114
    if-eqz v0, :cond_8f

    .line 115
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 116
    :cond_3d
    :goto_3d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8f

    .line 117
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 118
    if-ne p1, v6, :cond_71

    .line 119
    const-string v3, "PackageController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Installed packageName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " appId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    :cond_71
    invoke-static {v0}, Lcom/mediatek/mom/p;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v3

    if-nez v3, :cond_3d

    .line 123
    sget-object v3, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v5, 0x1000

    invoke-interface {v3, v4, v5, p0}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 124
    if-eqz v3, :cond_90

    .line 125
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_86
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_86} :catch_87

    goto :goto_3d

    .line 134
    :catch_87
    move-exception v0

    .line 135
    const-string v2, "PackageController"

    const-string v3, "getPackageInfo() failed!"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 137
    :cond_8f
    return-object v1

    .line 126
    :cond_90
    if-ne p1, v6, :cond_3d

    .line 127
    :try_start_92
    const-string v3, "PackageController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pending the un-ready package: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v3, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_b3
    .catch Landroid/os/RemoteException; {:try_start_92 .. :try_end_b3} :catch_87

    goto :goto_3d
.end method

.method public static a(Landroid/content/pm/ApplicationInfo;)Z
    .registers 3

    .prologue
    .line 307
    iget v0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 308
    iget v1, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_10

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_12

    :cond_10
    const/4 v0, 0x1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public static b(ILjava/lang/String;)Z
    .registers 4

    .prologue
    .line 288
    invoke-static {p0, p1}, Lcom/mediatek/mom/p;->a(ILjava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 289
    if-eqz v0, :cond_11

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_11

    .line 290
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/mediatek/mom/p;->a(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    .line 293
    :goto_10
    return v0

    .line 292
    :cond_11
    const-string v0, "PackageController"

    const-string v1, "isSystemApp() return false with null packageName"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public static g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;
    .registers 7

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 144
    :try_start_5
    sget-object v1, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    const/16 v4, 0x1000

    sget-object v5, Lcom/mediatek/mom/p;->W:Landroid/app/IActivityManager;

    invoke-interface {v5}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v5

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v1, p0, v4, v5}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_14} :catch_19
    .catchall {:try_start_5 .. :try_end_14} :catchall_25

    move-result-object v0

    .line 148
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 150
    :goto_18
    return-object v0

    .line 145
    :catch_19
    move-exception v1

    .line 146
    :try_start_1a
    const-string v4, "PackageController"

    const-string v5, "getPackageInfo() failed!"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_21
    .catchall {:try_start_1a .. :try_end_21} :catchall_25

    .line 148
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_18

    :catchall_25
    move-exception v0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method public static getCurrentUser()I
    .registers 4

    .prologue
    .line 164
    const/16 v0, -0x2710

    .line 167
    :try_start_2
    sget-object v1, Lcom/mediatek/mom/p;->W:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v0, v1, Landroid/content/pm/UserInfo;->id:I
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_a} :catch_b

    .line 171
    :goto_a
    return v0

    .line 168
    :catch_b
    move-exception v1

    .line 169
    const-string v2, "PackageController"

    const-string v3, "getCurrentUser() failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a
.end method

.method public static getInstalledPackages(I)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/PackageInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/mediatek/mom/p;->a(IZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static h(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 175
    sget-object v0, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/mediatek/mom/p;->X:Z

    if-nez v0, :cond_a

    .line 176
    :cond_8
    const/4 v0, 0x0

    .line 179
    :goto_9
    return v0

    .line 178
    :cond_a
    sget-object v1, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    monitor-enter v1

    .line 179
    :try_start_d
    sget-object v0, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    monitor-exit v1

    goto :goto_9

    .line 180
    :catchall_15
    move-exception v0

    monitor-exit v1
    :try_end_17
    .catchall {:try_start_d .. :try_end_17} :catchall_15

    throw v0
.end method

.method public static i(Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 184
    sget-object v0, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    if-eqz v0, :cond_d

    .line 185
    sget-object v1, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    monitor-enter v1

    .line 186
    :try_start_7
    sget-object v0, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 187
    monitor-exit v1

    .line 189
    :cond_d
    return-void

    .line 187
    :catchall_e
    move-exception v0

    monitor-exit v1
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_e

    throw v0
.end method

.method public static j(Ljava/lang/String;)Z
    .registers 4

    .prologue
    .line 313
    invoke-static {p0}, Lcom/mediatek/mom/p;->g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 314
    if-eqz v0, :cond_34

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_34

    .line 315
    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e8

    if-eq v1, v2, :cond_32

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3e9

    if-eq v1, v2, :cond_32

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x3ea

    if-eq v1, v2, :cond_32

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v2, 0x403

    if-eq v1, v2, :cond_32

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x3ef

    if-ne v0, v1, :cond_34

    .line 320
    :cond_32
    const/4 v0, 0x1

    .line 323
    :goto_33
    return v0

    :cond_34
    const/4 v0, 0x0

    goto :goto_33
.end method

.method private static t()V
    .registers 3

    .prologue
    .line 93
    sget-object v1, Lcom/mediatek/mom/p;->Y:Ljava/util/List;

    monitor-enter v1

    .line 94
    :try_start_3
    invoke-static {}, Lcom/mediatek/mom/p;->getCurrentUser()I

    move-result v0

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/mediatek/mom/p;->a(IZ)Ljava/util/List;

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/mom/p;->X:Z

    .line 96
    monitor-exit v1

    .line 97
    return-void

    .line 96
    :catchall_10
    move-exception v0

    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v0
.end method


# virtual methods
.method public deletePackage(Ljava/lang/String;)V
    .registers 6

    .prologue
    .line 267
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deletePackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    invoke-static {p1}, Lcom/mediatek/mom/p;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 269
    sget-object v0, Lcom/mediatek/mom/p;->Z:Lcom/mediatek/mom/p$a;

    if-nez v0, :cond_29

    .line 270
    new-instance v0, Lcom/mediatek/mom/p$a;

    invoke-direct {v0, p0}, Lcom/mediatek/mom/p$a;-><init>(Lcom/mediatek/mom/p;)V

    sput-object v0, Lcom/mediatek/mom/p;->Z:Lcom/mediatek/mom/p$a;

    .line 273
    :cond_29
    :try_start_29
    sget-object v0, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    sget-object v1, Lcom/mediatek/mom/p;->Z:Lcom/mediatek/mom/p$a;

    invoke-static {}, Lcom/mediatek/mom/p;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x2

    invoke-interface {v0, p1, v1, v2, v3}, Landroid/content/pm/IPackageManager;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_35} :catch_4f

    .line 280
    :goto_35
    return-void

    .line 278
    :cond_36
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore core package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35

    .line 274
    :catch_4f
    move-exception v0

    goto :goto_35
.end method

.method public dump(Ljava/io/PrintWriter;Lcom/mediatek/mom/MobileManagerService$a;)V
    .registers 4

    .prologue
    .line 284
    const-string v0, "PackageController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;)V
    .registers 5

    .prologue
    .line 198
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "forceStopPackage: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    invoke-static {p1}, Lcom/mediatek/mom/p;->j(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 201
    :try_start_1e
    sget-object v0, Lcom/mediatek/mom/p;->W:Landroid/app/IActivityManager;

    sget-object v1, Lcom/mediatek/mom/p;->W:Landroid/app/IActivityManager;

    invoke-interface {v1}, Landroid/app/IActivityManager;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v0, p1, v1}, Landroid/app/IActivityManager;->forceStopPackage(Ljava/lang/String;I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_1e .. :try_end_2b} :catch_45

    .line 208
    :goto_2b
    return-void

    .line 206
    :cond_2c
    const-string v0, "PackageController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignore core package: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 202
    :catch_45
    move-exception v0

    goto :goto_2b
.end method

.method public installPackage(Landroid/net/Uri;Lcom/mediatek/common/mom/IPackageInstallCallback;)V
    .registers 11

    .prologue
    const/4 v1, 0x0

    .line 219
    const-string v0, "PackageController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installPackage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v6, Lcom/mediatek/mom/p$b;

    invoke-direct {v6, p2}, Lcom/mediatek/mom/p$b;-><init>(Lcom/mediatek/common/mom/IPackageInstallCallback;)V

    .line 222
    new-instance v0, Landroid/content/pm/VerificationParams;

    const/4 v4, -0x1

    move-object v2, v1

    move-object v3, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Landroid/content/pm/VerificationParams;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ILandroid/content/pm/ManifestDigest;)V

    .line 224
    const/4 v4, 0x0

    .line 226
    :try_start_28
    sget-object v1, Lcom/mediatek/mom/p;->g:Landroid/content/pm/IPackageManager;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6}, Lcom/mediatek/mom/p$b;->getBinder()Landroid/content/pm/IPackageInstallObserver2;

    move-result-object v3

    const-string v5, "PackageController"

    const/4 v7, 0x0

    move-object v6, v0

    invoke-interface/range {v1 .. v7}, Landroid/content/pm/IPackageManager;->installPackage(Ljava/lang/String;Landroid/content/pm/IPackageInstallObserver2;ILjava/lang/String;Landroid/content/pm/VerificationParams;Ljava/lang/String;)V
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_39} :catch_3a

    .line 236
    :goto_39
    return-void

    .line 233
    :catch_3a
    move-exception v0

    goto :goto_39
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 90
    return-void
.end method
