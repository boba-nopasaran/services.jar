.class final Lcom/android/server/power/PowerManagerService$11;
.super Ljava/util/ArrayList;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 2

    .prologue
    .line 4216
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4217
    const-string v0, "AudioMix"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$11;->add(Ljava/lang/Object;)Z

    .line 4218
    const-string v0, "LocationManagerService"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$11;->add(Ljava/lang/Object;)Z

    .line 4219
    const-string v0, "GpsLocationProvider"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$11;->add(Ljava/lang/Object;)Z

    .line 4220
    const-string v0, "*alarm*"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$11;->add(Ljava/lang/Object;)Z

    .line 4221
    const-string v0, "MediaScannerService"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$11;->add(Ljava/lang/Object;)Z

    .line 4222
    const-string v0, "WindowManager"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$11;->add(Ljava/lang/Object;)Z

    .line 4223
    const-string v0, "ActivityManager-Launch"

    invoke-virtual {p0, v0}, Lcom/android/server/power/PowerManagerService$11;->add(Ljava/lang/Object;)Z

    .line 4224
    return-void
.end method
