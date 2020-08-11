.class final Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsStatusListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "NmeaInfo"
.end annotation


# instance fields
.field nmea:Ljava/lang/String;

.field timestamp:J


# direct methods
.method constructor <init>(JLjava/lang/String;)V
    .registers 5
    .param p1, "t"    # J
    .param p3, "n"    # Ljava/lang/String;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-wide p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->timestamp:J

    .line 157
    iput-object p3, p0, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->nmea:Ljava/lang/String;

    .line 158
    return-void
.end method
