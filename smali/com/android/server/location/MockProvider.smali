.class public Lcom/android/server/location/MockProvider;
.super Ljava/lang/Object;
.source "MockProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# static fields
.field private static final TAG:Ljava/lang/String; = "MockProvider"


# instance fields
.field private mEnabled:Z

.field private final mExtras:Landroid/os/Bundle;

.field private mHasLocation:Z

.field private mHasStatus:Z

.field private final mLocation:Landroid/location/Location;

.field private final mLocationManager:Landroid/location/ILocationManager;

.field private final mName:Ljava/lang/String;

.field private final mProperties:Lcom/android/internal/location/ProviderProperties;

.field private mStatus:I

.field private mStatusUpdateTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/location/ILocationManager;Lcom/android/internal/location/ProviderProperties;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "locationManager"    # Landroid/location/ILocationManager;
    .param p3, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    .line 63
    if-nez p3, :cond_14

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "properties is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 65
    :cond_14
    iput-object p1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    .line 66
    iput-object p2, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    .line 67
    iput-object p3, p0, Lcom/android/server/location/MockProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    .line 68
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    .line 69
    return-void
.end method


# virtual methods
.method public clearLocation()V
    .registers 2

    .prologue
    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    .line 127
    return-void
.end method

.method public clearStatus()V
    .registers 3

    .prologue
    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    .line 141
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 142
    return-void
.end method

.method public disable()V
    .registers 2

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 84
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 146
    const-string v0, ""

    invoke-virtual {p0, p2, v0}, Lcom/android/server/location/MockProvider;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .prologue
    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasLocation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mLocation:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    new-instance v1, Landroid/util/PrintWriterPrinter;

    invoke-direct {v1, p1}, Landroid/util/PrintWriterPrinter;-><init>(Ljava/io/PrintWriter;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mHasStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mStatusUpdateTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mExtras="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public enable()V
    .registers 2

    .prologue
    .line 88
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    .line 89
    return-void
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mProperties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 98
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    if-eqz v0, :cond_f

    .line 99
    invoke-virtual {p1}, Landroid/os/Bundle;->clear()V

    .line 100
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 101
    iget v0, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 103
    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x2

    goto :goto_e
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method public isEnabled()Z
    .registers 2

    .prologue
    .line 93
    iget-boolean v0, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    return v0
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 4
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 165
    const/4 v0, 0x0

    return v0
.end method

.method public setLocation(Landroid/location/Location;)V
    .registers 6
    .param p1, "l"    # Landroid/location/Location;

    .prologue
    .line 113
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v1, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    .line 115
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/location/MockProvider;->mHasLocation:Z

    .line 116
    iget-boolean v1, p0, Lcom/android/server/location/MockProvider;->mEnabled:Z

    if-eqz v1, :cond_14

    .line 118
    :try_start_c
    iget-object v1, p0, Lcom/android/server/location/MockProvider;->mLocationManager:Landroid/location/ILocationManager;

    iget-object v2, p0, Lcom/android/server/location/MockProvider;->mLocation:Landroid/location/Location;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_14} :catch_15

    .line 123
    :cond_14
    :goto_14
    return-void

    .line 119
    :catch_15
    move-exception v0

    .line 120
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "MockProvider"

    const-string v2, "RemoteException calling reportLocation"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 161
    return-void
.end method

.method public setStatus(ILandroid/os/Bundle;J)V
    .registers 6
    .param p1, "status"    # I
    .param p2, "extras"    # Landroid/os/Bundle;
    .param p3, "updateTime"    # J

    .prologue
    .line 130
    iput p1, p0, Lcom/android/server/location/MockProvider;->mStatus:I

    .line 131
    iput-wide p3, p0, Lcom/android/server/location/MockProvider;->mStatusUpdateTime:J

    .line 132
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    .line 133
    if-eqz p2, :cond_10

    .line 134
    iget-object v0, p0, Lcom/android/server/location/MockProvider;->mExtras:Landroid/os/Bundle;

    invoke-virtual {v0, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 136
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/MockProvider;->mHasStatus:Z

    .line 137
    return-void
.end method
