.class Lcom/mediatek/mom/c;
.super Lcom/mediatek/mom/ControllerBase;
.source "SourceFile"

# interfaces
.implements Lcom/mediatek/mom/IPackageBasedController;


# static fields
.field private static c:Lcom/mediatek/mom/ControllerBase;

.field private static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 57
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xff

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/mediatek/mom/c;->f:Ljava/util/HashMap;

    .line 63
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/c;->c:Lcom/mediatek/mom/ControllerBase;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/mediatek/mom/ControllerBase;-><init>()V

    return-void
.end method

.method public static final a()Lcom/mediatek/mom/ControllerBase;
    .registers 2

    .prologue
    .line 67
    sget-object v0, Lcom/mediatek/mom/c;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_12

    .line 68
    new-instance v0, Lcom/mediatek/mom/c;

    invoke-direct {v0}, Lcom/mediatek/mom/c;-><init>()V

    sput-object v0, Lcom/mediatek/mom/c;->c:Lcom/mediatek/mom/ControllerBase;

    .line 69
    const-string v0, "FirewallController"

    const-string v1, "Create MobileManagerController:FirewallController"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    :cond_12
    sget-object v0, Lcom/mediatek/mom/c;->c:Lcom/mediatek/mom/ControllerBase;

    if-nez v0, :cond_1e

    .line 73
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "null FirewallController"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1e
    sget-object v0, Lcom/mediatek/mom/c;->c:Lcom/mediatek/mom/ControllerBase;

    return-object v0
.end method


# virtual methods
.method public clearAllSettings()Z
    .registers 4

    .prologue
    .line 86
    const/4 v0, 0x1

    .line 87
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 91
    :try_start_b
    const-string v2, "mobile"

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearFirewallChain(Ljava/lang/String;)V

    .line 92
    const-string v2, "wifi"

    invoke-interface {v1, v2}, Landroid/os/INetworkManagementService;->clearFirewallChain(Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_15} :catch_1b
    .catch Ljava/lang/IllegalStateException; {:try_start_b .. :try_end_15} :catch_21

    .line 101
    :goto_15
    sget-object v1, Lcom/mediatek/mom/c;->f:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 103
    return v0

    .line 93
    :catch_1b
    move-exception v0

    .line 94
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 95
    const/4 v0, 0x0

    .line 98
    goto :goto_15

    .line 96
    :catch_21
    move-exception v1

    .line 97
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_15
.end method

.method public clearPackageSettings(Ljava/lang/String;)Z
    .registers 3

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public onPackageStatusChange(ILjava/lang/String;I)V
    .registers 9

    .prologue
    const/4 v0, 0x0

    .line 113
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    const-string v0, "FirewallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPackageStatusChange("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    packed-switch p3, :pswitch_data_7e

    .line 142
    :goto_2f
    return-void

    .line 118
    :pswitch_30
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    .line 121
    :try_start_3a
    sget-object v0, Lcom/mediatek/mom/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 123
    if-eqz v0, :cond_70

    .line 124
    const-string v2, "FirewallController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "remove uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v2, v3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V

    .line 128
    sget-object v0, Lcom/mediatek/mom/c;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_3a .. :try_end_6a} :catch_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_3a .. :try_end_6a} :catch_78

    goto :goto_2f

    .line 132
    :catch_6b
    move-exception v0

    .line 133
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2f

    .line 130
    :cond_70
    :try_start_70
    const-string v0, "FirewallController"

    const-string v1, "No found"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_77
    .catch Landroid/os/RemoteException; {:try_start_70 .. :try_end_77} :catch_6b
    .catch Ljava/lang/IllegalStateException; {:try_start_70 .. :try_end_77} :catch_78

    goto :goto_2f

    .line 134
    :catch_78
    move-exception v0

    .line 135
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_2f

    .line 116
    nop

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_30
    .end packed-switch
.end method

.method public onUserStatusChange(II)V
    .registers 3

    .prologue
    .line 145
    return-void
.end method

.method public setFirewallPolicy(IIZ)V
    .registers 10

    .prologue
    .line 148
    const-string v0, ""

    .line 149
    const-string v0, "FirewallController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFirewallPolicy:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    iget-object v0, p0, Lcom/mediatek/mom/c;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 153
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 155
    if-nez v1, :cond_42

    .line 156
    const-string v0, "FirewallController"

    const-string v1, "null packages"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :goto_41
    return-void

    .line 160
    :cond_42
    array-length v2, v1

    const/4 v0, 0x0

    :goto_44
    if-ge v0, v2, :cond_54

    aget-object v3, v1, v0

    .line 161
    sget-object v4, Lcom/mediatek/mom/c;->f:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    .line 165
    :cond_54
    :try_start_54
    const-string v0, "network_management"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v0

    .line 167
    invoke-interface {v0, p1, p2, p3}, Landroid/os/INetworkManagementService;->setFirewallUidChainRule(IIZ)V
    :try_end_61
    .catch Landroid/os/RemoteException; {:try_start_54 .. :try_end_61} :catch_62

    goto :goto_41

    .line 169
    :catch_62
    move-exception v0

    .line 170
    const-string v1, "FirewallController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception2:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_41
.end method

.method public systemReady(Landroid/content/Context;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/mediatek/mom/c;->mContext:Landroid/content/Context;

    .line 109
    return-void
.end method
