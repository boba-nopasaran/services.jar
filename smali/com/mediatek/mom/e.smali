.class Lcom/mediatek/mom/e;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"


# static fields
.field private static c:Lcom/mediatek/mom/ControllerBase;

.field private static g:Landroid/content/pm/IPackageManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    const/4 v0, 0x0

    .line 58
    sput-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/ControllerBase;

    .line 59
    sput-object v0, Lcom/mediatek/mom/e;->g:Landroid/content/pm/IPackageManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 61
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    .line 62
    invoke-static {}, Lcom/mediatek/mom/e;->getPackageManagerService()Landroid/content/pm/IPackageManager;

    move-result-object v0

    sput-object v0, Lcom/mediatek/mom/e;->g:Landroid/content/pm/IPackageManager;

    .line 63
    return-void
.end method

.method public static a(I)I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 78
    .line 80
    :try_start_1
    sget-object v1, Lcom/mediatek/mom/e;->g:Landroid/content/pm/IPackageManager;

    invoke-interface {v1, p0}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 81
    if-nez v2, :cond_2b

    .line 82
    const-string v1, "LicenseController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No packages are found with uid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_21} :catch_22

    .line 99
    :cond_21
    :goto_21
    return v0

    .line 85
    :catch_22
    move-exception v1

    .line 86
    const-string v2, "LicenseController"

    const-string v3, "getPackagesForUid() failed! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_21

    .line 93
    :cond_2b
    array-length v3, v2

    move v1, v0

    :goto_2d
    if-ge v1, v3, :cond_21

    aget-object v0, v2, v1

    .line 94
    invoke-static {v0}, Lcom/mediatek/mom/e;->b(Ljava/lang/String;)I

    move-result v0

    .line 95
    if-nez v0, :cond_21

    .line 93
    add-int/lit8 v1, v1, 0x1

    goto :goto_2d
.end method

.method public static a(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 103
    .line 105
    if-nez p0, :cond_a

    .line 106
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "null packageName"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 108
    :cond_a
    const-string v0, "LicenseController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkManagerIdentity("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-static {p0}, Lcom/mediatek/mom/e;->b(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static final a()Lcom/mediatek/mom/ControllerBase;
    .registers 1

    .prologue
    .line 66
    sget-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_b

    .line 67
    new-instance v0, Lcom/mediatek/mom/e;

    invoke-direct {v0}, Lcom/mediatek/mom/e;-><init>()V

    sput-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/ControllerBase;

    .line 69
    :cond_b
    sget-object v0, Lcom/mediatek/mom/e;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method

.method private a(Landroid/content/pm/PackageInfo;)Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 174
    const-string v1, "android.permission.REBOOT_IPO"

    .line 175
    if-eqz p1, :cond_1e

    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v2, :cond_1e

    .line 176
    iget-object v2, p1, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 177
    invoke-interface {v2, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 178
    const/4 v2, -0x1

    if-ne v1, v2, :cond_26

    .line 179
    const-string v1, "LicenseController"

    const-string v2, "Invalid P! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    :goto_1d
    return v0

    .line 183
    :cond_1e
    const-string v1, "LicenseController"

    const-string v2, "Package without P! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    .line 186
    :cond_26
    const/4 v0, 0x1

    goto :goto_1d
.end method

.method private a(Landroid/content/pm/PackageInfo;I)Z
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 190
    if-eqz p1, :cond_19

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v1, :cond_19

    .line 191
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v1, v1, v0

    .line 192
    invoke-static {p2, v1}, Lcom/mediatek/mom/j;->a(ILandroid/content/pm/Signature;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 193
    const-string v1, "LicenseController"

    const-string v2, "Invalid C! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :goto_18
    return v0

    .line 197
    :cond_19
    const-string v1, "LicenseController"

    const-string v2, "Package without C! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_18

    .line 200
    :cond_21
    const/4 v0, 0x1

    goto :goto_18
.end method

.method private static b(Ljava/lang/String;)I
    .registers 4

    .prologue
    .line 114
    const/4 v0, 0x0

    .line 115
    invoke-static {p0}, Lcom/mediatek/mom/p;->g(Ljava/lang/String;)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 116
    if-eqz v1, :cond_17

    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v2, :cond_17

    .line 117
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 118
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seinfo:Ljava/lang/String;

    .line 119
    invoke-static {v0, v1, p0}, Lcom/mediatek/mom/j;->a(ILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 122
    :cond_17
    return v0
.end method


# virtual methods
.method public a(II)Z
    .registers 13

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 126
    if-nez p2, :cond_c

    .line 127
    const-string v1, "LicenseController"

    const-string v2, "Not an authorized identity"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_b
    :goto_b
    return v0

    .line 131
    :cond_c
    invoke-static {p2}, Lcom/mediatek/mom/j;->m(I)Z

    move-result v2

    if-nez v2, :cond_14

    move v0, v1

    .line 132
    goto :goto_b

    .line 135
    :cond_14
    invoke-static {p2}, Lcom/mediatek/mom/j;->k(I)Lcom/mediatek/mom/j$a;

    move-result-object v3

    .line 137
    if-nez v3, :cond_43

    .line 138
    const-string v1, "LicenseController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The identity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " doesn\'t exist!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    .line 142
    :cond_43
    invoke-virtual {v3}, Lcom/mediatek/mom/j$a;->m()Z

    move-result v2

    if-eqz v2, :cond_4b

    move v0, v1

    .line 143
    goto :goto_b

    .line 146
    :cond_4b
    :try_start_4b
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 147
    sget-object v2, Lcom/mediatek/mom/e;->g:Landroid/content/pm/IPackageManager;

    invoke-interface {v2, p1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v5

    .line 148
    if-nez v5, :cond_68

    .line 149
    const-string v1, "LicenseController"

    const-string v2, "getPackagesForUid() with null packages! "

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_5e} :catch_5f

    goto :goto_b

    .line 162
    :catch_5f
    move-exception v1

    .line 163
    const-string v2, "LicenseController"

    const-string v3, "get PackagesInfo failed! "

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_b

    .line 152
    :cond_68
    :try_start_68
    array-length v6, v5

    move v2, v0

    :goto_6a
    if-ge v2, v6, :cond_85

    aget-object v7, v5, v2

    .line 153
    sget-object v8, Lcom/mediatek/mom/e;->g:Landroid/content/pm/IPackageManager;

    const/16 v9, 0x1040

    invoke-interface {v8, v7, v9, v4}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v7

    .line 155
    invoke-direct {p0, v7, p2}, Lcom/mediatek/mom/e;->a(Landroid/content/pm/PackageInfo;I)Z

    move-result v8

    if-eqz v8, :cond_b

    .line 158
    invoke-direct {p0, v7}, Lcom/mediatek/mom/e;->a(Landroid/content/pm/PackageInfo;)Z
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_68 .. :try_end_7f} :catch_5f

    move-result v7

    if-eqz v7, :cond_b

    .line 152
    add-int/lit8 v2, v2, 0x1

    goto :goto_6a

    .line 166
    :cond_85
    const-string v0, "LicenseController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkProtocol("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") passed!"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {v3}, Lcom/mediatek/mom/j$a;->l()V

    move v0, v1

    .line 170
    goto/16 :goto_b
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 74
    return-void
.end method
