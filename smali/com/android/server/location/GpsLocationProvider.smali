.class public Lcom/android/server/location/GpsLocationProvider;
.super Ljava/lang/Object;
.source "GpsLocationProvider.java"

# interfaces
.implements Lcom/android/server/location/LocationProviderInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/GpsLocationProvider$NetworkLocationListener;,
        Lcom/android/server/location/GpsLocationProvider$ProviderHandler;,
        Lcom/android/server/location/GpsLocationProvider$GpsRequest;
    }
.end annotation


# static fields
.field private static final ADD_LISTENER:I = 0x8

.field private static final AGPS_DATA_CONNECTION_CLOSED:I = 0x0

.field private static final AGPS_DATA_CONNECTION_OPEN:I = 0x2

.field private static final AGPS_DATA_CONNECTION_OPENING:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_GSM_CELLID:I = 0x1

.field private static final AGPS_REF_LOCATION_TYPE_UMTS_CELLID:I = 0x2

.field private static final AGPS_REG_LOCATION_TYPE_MAC:I = 0x3

.field private static final AGPS_RIL_REQUEST_REFLOC_CELLID:I = 0x1

.field private static final AGPS_RIL_REQUEST_REFLOC_MAC:I = 0x2

.field private static final AGPS_RIL_REQUEST_SETID_IMSI:I = 0x1

.field private static final AGPS_RIL_REQUEST_SETID_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_IMSI:I = 0x1

.field private static final AGPS_SETID_TYPE_MSISDN:I = 0x2

.field private static final AGPS_SETID_TYPE_NONE:I = 0x0

.field private static final AGPS_SUPL_MODE_MSA:I = 0x2

.field private static final AGPS_SUPL_MODE_MSB:I = 0x1

.field private static final AGPS_TYPE_C2K:I = 0x2

.field private static final AGPS_TYPE_SUPL:I = 0x1

.field private static final ALARM_TIMEOUT:Ljava/lang/String; = "com.android.internal.location.ALARM_TIMEOUT"

.field private static final ALARM_WAKEUP:Ljava/lang/String; = "com.android.internal.location.ALARM_WAKEUP"

.field private static final ALMANAC_MASK:I = 0x1

.field private static final APN_INVALID:I = 0x0

.field private static final APN_IPV4:I = 0x1

.field private static final APN_IPV4V6:I = 0x3

.field private static final APN_IPV6:I = 0x2

.field private static final BATTERY_SAVER_GPS_MODE:Ljava/lang/String; = "batterySaverGpsMode"

.field private static final BATTERY_SAVER_MODE_DISABLED_WHEN_SCREEN_OFF:I = 0x1

.field private static final BATTERY_SAVER_MODE_NO_CHANGE:I = 0x0

.field private static final CHECK_LOCATION:I = 0x1

.field private static final DEBUG:Z = true

.field private static final DEFAULT_PROPERTIES_FILE:Ljava/lang/String; = "/etc/gps.conf"

.field private static final DOWNLOAD_XTRA_DATA:I = 0x6

.field private static final DOWNLOAD_XTRA_DATA_FINISHED:I = 0xb

.field private static final ENABLE:I = 0x2

.field private static final EPHEMERIS_MASK:I = 0x0

.field private static final GPS_AGPS_DATA_CONNECTED:I = 0x3

.field private static final GPS_AGPS_DATA_CONN_DONE:I = 0x4

.field private static final GPS_AGPS_DATA_CONN_FAILED:I = 0x5

.field private static final GPS_CAPABILITY_GEOFENCING:I = 0x20

.field private static final GPS_CAPABILITY_MEASUREMENTS:I = 0x40

.field private static final GPS_CAPABILITY_MSA:I = 0x4

.field private static final GPS_CAPABILITY_MSB:I = 0x2

.field private static final GPS_CAPABILITY_NAV_MESSAGES:I = 0x80

.field private static final GPS_CAPABILITY_ON_DEMAND_TIME:I = 0x10

.field private static final GPS_CAPABILITY_SCHEDULING:I = 0x1

.field private static final GPS_CAPABILITY_SINGLE_SHOT:I = 0x8

.field private static final GPS_DELETE_ALL:I = 0xffff

.field private static final GPS_DELETE_ALMANAC:I = 0x2

.field private static final GPS_DELETE_CELLDB_INFO:I = 0x8000

.field private static final GPS_DELETE_EPHEMERIS:I = 0x1

.field private static final GPS_DELETE_HEALTH:I = 0x40

.field private static final GPS_DELETE_IONO:I = 0x10

.field private static final GPS_DELETE_POSITION:I = 0x4

.field private static final GPS_DELETE_RTI:I = 0x400

.field private static final GPS_DELETE_SADATA:I = 0x200

.field private static final GPS_DELETE_SVDIR:I = 0x80

.field private static final GPS_DELETE_SVSTEER:I = 0x100

.field private static final GPS_DELETE_TIME:I = 0x8

.field private static final GPS_DELETE_UTC:I = 0x20

.field private static final GPS_GEOFENCE_AVAILABLE:I = 0x2

.field private static final GPS_GEOFENCE_ERROR_GENERIC:I = -0x95

.field private static final GPS_GEOFENCE_ERROR_ID_EXISTS:I = -0x65

.field private static final GPS_GEOFENCE_ERROR_ID_UNKNOWN:I = -0x66

.field private static final GPS_GEOFENCE_ERROR_INVALID_TRANSITION:I = -0x67

.field private static final GPS_GEOFENCE_ERROR_TOO_MANY_GEOFENCES:I = 0x64

.field private static final GPS_GEOFENCE_OPERATION_SUCCESS:I = 0x0

.field private static final GPS_GEOFENCE_UNAVAILABLE:I = 0x1

.field private static final GPS_POLLING_THRESHOLD_INTERVAL:I = 0x2710

.field private static final GPS_POSITION_MODE_MS_ASSISTED:I = 0x2

.field private static final GPS_POSITION_MODE_MS_BASED:I = 0x1

.field private static final GPS_POSITION_MODE_STANDALONE:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_PERIODIC:I = 0x0

.field private static final GPS_POSITION_RECURRENCE_SINGLE:I = 0x1

.field private static final GPS_RELEASE_AGPS_DATA_CONN:I = 0x2

.field private static final GPS_REQUEST_AGPS_DATA_CONN:I = 0x1

.field private static final GPS_STATUS_ENGINE_OFF:I = 0x4

.field private static final GPS_STATUS_ENGINE_ON:I = 0x3

.field private static final GPS_STATUS_NONE:I = 0x0

.field private static final GPS_STATUS_SESSION_BEGIN:I = 0x1

.field private static final GPS_STATUS_SESSION_END:I = 0x2

.field private static final INJECT_NTP_TIME:I = 0x5

.field private static final INJECT_NTP_TIME_FINISHED:I = 0xa

.field private static final LOCATION_HAS_ACCURACY:I = 0x10

.field private static final LOCATION_HAS_ALTITUDE:I = 0x2

.field private static final LOCATION_HAS_BEARING:I = 0x8

.field private static final LOCATION_HAS_LAT_LONG:I = 0x1

.field private static final LOCATION_HAS_SPEED:I = 0x4

.field private static final LOCATION_INVALID:I = 0x0

.field private static final MAX_GNSS_SVS:I = 0x100

.field private static final MAX_SVS:I = 0x20

.field private static final NO_FIX_TIMEOUT:I = 0xea60

.field private static final NTP_INTERVAL:J = 0x5265c00L

.field private static final PROPERTIES:Lcom/android/internal/location/ProviderProperties;

.field private static final PROPERTIES_FILE_PREFIX:Ljava/lang/String; = "/etc/gps"

.field private static final PROPERTIES_FILE_SUFFIX:Ljava/lang/String; = ".conf"

.field private static final RECENT_FIX_TIMEOUT:J = 0x2710L

.field private static final REMOVE_LISTENER:I = 0x9

.field private static final RETRY_INTERVAL:J = 0x493e0L

.field private static final SET_REQUEST:I = 0x3

.field private static final SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field private static final STATE_DOWNLOADING:I = 0x1

.field private static final STATE_IDLE:I = 0x2

.field private static final STATE_PENDING_NETWORK:I = 0x0

.field private static final TAG:Ljava/lang/String; = "GpsLocationProvider"

.field private static final TCP_MAX_PORT:I = 0xffff

.field private static final TCP_MIN_PORT:I = 0x0

.field private static final UPDATE_LOCATION:I = 0x7

.field private static final UPDATE_NETWORK_STATE:I = 0x4

.field private static final USED_FOR_FIX_MASK:I = 0x2

.field private static final VERBOSE:Z = true

.field private static final WAKELOCK_KEY:Ljava/lang/String; = "GpsLocationProvider"

.field private static final WAKELOCK_RELEASE_TIMEOUT:I = 0xc

.field static final WAKELOCK_RELEASE_TIMEOUT_INTERVAL:I = 0x493e0


# instance fields
.field private final gpsHardware:Ljava/lang/String;

.field private mAGpsApn:Ljava/lang/String;

.field private mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

.field private mAGpsDataConnectionState:I

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private mApnIpType:I

.field private final mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mC2KServerHost:Ljava/lang/String;

.field private mC2KServerPort:I

.field private mClientSource:Landroid/os/WorkSource;

.field private final mConnMgr:Landroid/net/ConnectivityManager;

.field private final mContext:Landroid/content/Context;

.field private mDisableGps:Z

.field private mDownloadXtraDataPending:I

.field private mEnabled:Z

.field private mEngineCapabilities:I

.field private mEngineOn:Z

.field private mFixInterval:I

.field private mFixRequestTime:J

.field private mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

.field private mGnssSnrs:[F

.field private mGnssSvAlmanac:[Z

.field private mGnssSvAzimuths:[F

.field private mGnssSvElevations:[F

.field private mGnssSvEphemeris:[Z

.field private mGnssSvInFix:[Z

.field private mGnssSvs:[I

.field private mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

.field private final mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

.field private final mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

.field private final mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

.field private mGpsTimeSyncFlag:Z

.field private mHandler:Landroid/os/Handler;

.field private final mILocationManager:Landroid/location/ILocationManager;

.field private mInjectNtpTimePending:I

.field private mIsEmergencyCallDialed:Z

.field private mLastFixTime:J

.field private final mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

.field private mLocation:Landroid/location/Location;

.field private mLocationExtras:Landroid/os/Bundle;

.field private mLocationFlags:I

.field private mLock:Ljava/lang/Object;

.field private mLockHandler:Ljava/lang/Object;

.field private final mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

.field private mNavigating:Z

.field private final mNetInitiatedListener:Landroid/location/INetInitiatedListener;

.field private mNetworkAvailable:Z

.field private mNmeaBuffer:[B

.field private final mNtpTime:Landroid/util/NtpTrustedTime;

.field private final mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mPeriodicTimeInjection:Z

.field private mPositionMode:I

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProperties:Ljava/util/Properties;

.field private mProviderRequest:Lcom/android/internal/location/ProviderRequest;

.field private mSingleShot:Z

.field private mSnrs:[F

.field private mStarted:Z

.field private mStatus:I

.field private mStatusUpdateTime:J

.field private mSuplEsEnabled:Z

.field private mSuplServerHost:Ljava/lang/String;

.field private mSuplServerPort:I

.field private mSupportsXtra:Z

.field private mSvAzimuths:[F

.field private mSvCount:I

.field private mSvElevations:[F

.field private mSvMasks:[I

.field private mSvs:[I

.field private mTimeToFirstFix:I

.field private final mTimeoutIntent:Landroid/app/PendingIntent;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWakeupIntent:Landroid/app/PendingIntent;

.field private mWorkSource:Landroid/os/WorkSource;

.field private routeNetworkType:I


# direct methods
.method static constructor <clinit>()V
    .registers 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    .line 122
    new-instance v0, Lcom/android/internal/location/ProviderProperties;

    const/4 v8, 0x3

    move v2, v1

    move v4, v3

    move v5, v1

    move v6, v1

    move v7, v1

    move v9, v1

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/location/ProviderProperties;-><init>(ZZZZZZZII)V

    sput-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    .line 2457
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->class_init_native()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/location/ILocationManager;Landroid/os/Looper;)V
    .registers 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ilocationManager"    # Landroid/location/ILocationManager;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    const/4 v6, 0x2

    const/16 v5, 0x20

    const/4 v4, 0x1

    const/16 v2, 0x100

    const/4 v3, 0x0

    .line 652
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    .line 275
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLockHandler:Ljava/lang/Object;

    .line 277
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 280
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 283
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 317
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 318
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 330
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 345
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 347
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 356
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 358
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 363
    iput v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    .line 366
    iput-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    .line 371
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    .line 372
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    .line 407
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    .line 413
    iput-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    .line 419
    const-string v0, "ro.hardware.gps"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->gpsHardware:Ljava/lang/String;

    .line 421
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$1;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$1;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    .line 449
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$2;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$2;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 503
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$3;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$3;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 1290
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$10;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$10;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    .line 1963
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$11;

    invoke-direct {v0, p0}, Lcom/android/server/location/GpsLocationProvider$11;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    .line 2363
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    .line 2438
    new-array v0, v5, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    .line 2439
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    .line 2440
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    .line 2441
    new-array v0, v5, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    .line 2442
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    .line 2446
    new-array v0, v2, [I

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    .line 2447
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    .line 2448
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    .line 2449
    new-array v0, v2, [F

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    .line 2450
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    .line 2451
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    .line 2452
    new-array v0, v2, [Z

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    .line 2455
    const/16 v0, 0x78

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    .line 653
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    .line 654
    invoke-static {p1}, Landroid/util/NtpTrustedTime;->getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    .line 655
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    .line 657
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 660
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    .line 661
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    const-string v1, "GpsLocationProvider"

    invoke-virtual {v0, v4, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 662
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 664
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    .line 665
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    .line 666
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    .line 668
    const-string v0, "connectivity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    .line 671
    const-string v0, "appops"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    .line 675
    const-string v0, "batterystats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 679
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    .line 680
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 683
    new-instance v0, Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    invoke-direct {v0, p1, v1, v2}, Lcom/android/internal/location/GpsNetInitiatedHandler;-><init>(Landroid/content/Context;Landroid/location/INetInitiatedListener;Z)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    .line 694
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mOnSubscriptionsChangedListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 698
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;

    invoke-direct {v0, p0, p3}, Lcom/android/server/location/GpsLocationProvider$ProviderHandler;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    .line 699
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->listenForBroadcasts()V

    .line 702
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$4;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$4;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 725
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$5;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$5;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    .line 737
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$6;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$6;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    .line 759
    new-instance v0, Lcom/android/server/location/GpsLocationProvider$7;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/location/GpsLocationProvider$7;-><init>(Lcom/android/server/location/GpsLocationProvider;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    .line 780
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/location/GpsLocationProvider;)Lcom/android/server/location/GpsStatusListenerHelper;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/location/GpsLocationProvider;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100()Z
    .registers 1

    .prologue
    .line 115
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_measurement_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_measurement_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1400()Z
    .registers 1

    .prologue
    .line 115
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_navigation_message_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop_navigation_message_collection()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/location/GpsLocationProvider;)Landroid/util/NtpTrustedTime;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNtpTime:Landroid/util/NtpTrustedTime;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/location/GpsLocationProvider;JJI)V
    .registers 7
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # J
    .param p3, "x2"    # J
    .param p5, "x3"    # I

    .prologue
    .line 115
    invoke-direct/range {p0 .. p5}, Lcom/android/server/location/GpsLocationProvider;->native_inject_time(JJI)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/server/location/GpsLocationProvider;IILjava/lang/Object;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Ljava/lang/Object;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/location/GpsLocationProvider;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLockHandler:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/location/GpsLocationProvider;)Landroid/os/PowerManager$WakeLock;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/location/GpsLocationProvider;)Ljava/util/Properties;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/location/GpsLocationProvider;[BI)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # [B
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_inject_xtra_data([BI)V

    return-void
.end method

.method static synthetic access$2500()Z
    .registers 1

    .prologue
    .line 115
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_geofence_supported()Z

    move-result v0

    return v0
.end method

.method static synthetic access$2600(IDDDIIII)Z
    .registers 12
    .param p0, "x0"    # I
    .param p1, "x1"    # D
    .param p3, "x2"    # D
    .param p5, "x3"    # D
    .param p7, "x4"    # I
    .param p8, "x5"    # I
    .param p9, "x6"    # I
    .param p10, "x7"    # I

    .prologue
    .line 115
    invoke-static/range {p0 .. p10}, Lcom/android/server/location/GpsLocationProvider;->native_add_geofence(IDDDIIII)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2700(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_remove_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2800(I)Z
    .registers 2
    .param p0, "x0"    # I

    .prologue
    .line 115
    invoke-static {p0}, Lcom/android/server/location/GpsLocationProvider;->native_pause_geofence(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2900(II)Z
    .registers 3
    .param p0, "x0"    # I
    .param p1, "x1"    # I

    .prologue
    .line 115
    invoke-static {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->native_resume_geofence(II)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkSmsSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/location/GpsLocationProvider;II)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->native_send_ni_response(II)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleEnable()V

    return-void
.end method

.method static synthetic access$3200(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDisable()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/location/GpsLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "x2"    # Landroid/os/WorkSource;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/location/GpsLocationProvider;ILandroid/net/NetworkInfo;)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/net/NetworkInfo;

    .prologue
    .line 115
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleInjectNtpTime()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/location/GpsLocationProvider;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    return v0
.end method

.method static synthetic access$3700(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->handleDownloadXtraData()V

    return-void
.end method

.method static synthetic access$3802(Lcom/android/server/location/GpsLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    return p1
.end method

.method static synthetic access$3902(Lcom/android/server/location/GpsLocationProvider;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Intent;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->checkWapSuplInit(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/server/location/GpsLocationProvider;Landroid/location/Location;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/location/Location;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->handleUpdateLocation(Landroid/location/Location;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/location/GpsLocationProvider;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/location/GpsLocationProvider;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;

    .prologue
    .line 115
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateLowPowerMode()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/location/GpsLocationProvider;Landroid/content/Context;)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Landroid/content/Context;

    .prologue
    .line 115
    invoke-direct {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->subscriptionOrSimChanged(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$802(Lcom/android/server/location/GpsLocationProvider;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/location/GpsLocationProvider;
    .param p1, "x1"    # Z

    .prologue
    .line 115
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mIsEmergencyCallDialed:Z

    return p1
.end method

.method private buildLocation(IDDDFFFJ)Landroid/location/Location;
    .registers 19
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1819
    new-instance v2, Landroid/location/Location;

    const-string v3, "gps"

    invoke-direct {v2, v3}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 1820
    .local v2, "location":Landroid/location/Location;
    and-int/lit8 v3, p1, 0x1

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1e

    .line 1821
    invoke-virtual {v2, p2, p3}, Landroid/location/Location;->setLatitude(D)V

    .line 1822
    invoke-virtual {v2, p4, p5}, Landroid/location/Location;->setLongitude(D)V

    .line 1823
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1824
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1826
    :cond_1e
    and-int/lit8 v3, p1, 0x2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_26

    .line 1827
    invoke-virtual {v2, p6, p7}, Landroid/location/Location;->setAltitude(D)V

    .line 1829
    :cond_26
    and-int/lit8 v3, p1, 0x4

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2e

    .line 1830
    invoke-virtual {v2, p8}, Landroid/location/Location;->setSpeed(F)V

    .line 1832
    :cond_2e
    and-int/lit8 v3, p1, 0x8

    const/16 v4, 0x8

    if-ne v3, v4, :cond_37

    .line 1833
    invoke-virtual {v2, p9}, Landroid/location/Location;->setBearing(F)V

    .line 1835
    :cond_37
    and-int/lit8 v3, p1, 0x10

    const/16 v4, 0x10

    if-ne v3, v4, :cond_42

    .line 1836
    move/from16 v0, p10

    invoke-virtual {v2, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1838
    :cond_42
    return-object v2
.end method

.method private checkSmsSuplInit(Landroid/content/Intent;)V
    .registers 6
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 528
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    move-result-object v1

    .line 529
    .local v1, "messages":[Landroid/telephony/SmsMessage;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_5
    array-length v3, v1

    if-ge v0, v3, :cond_15

    .line 530
    aget-object v3, v1, v0

    invoke-virtual {v3}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v2

    .line 531
    .local v2, "supl_init":[B
    array-length v3, v2

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    .line 529
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 533
    .end local v2    # "supl_init":[B
    :cond_15
    return-void
.end method

.method private checkWapSuplInit(Landroid/content/Intent;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 537
    invoke-virtual {p0, p1}, Lcom/android/server/location/GpsLocationProvider;->isWapPushLegal(Landroid/content/Intent;)Z

    move-result v0

    .line 538
    .local v0, "ret":Z
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[agps] WARNING: checkWapSuplInit ret="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    if-nez v0, :cond_1f

    .line 545
    :goto_1e
    return-void

    .line 543
    :cond_1f
    const-string v2, "data"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    move-object v1, v2

    check-cast v1, [B

    .line 544
    .local v1, "supl_init":[B
    array-length v2, v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->native_agps_ni_message([BI)V

    goto :goto_1e
.end method

.method private static native class_init_native()V
.end method

.method private deleteAidingData(Landroid/os/Bundle;)Z
    .registers 6
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1318
    if-nez p1, :cond_c

    .line 1319
    const v0, 0xffff

    .line 1337
    .local v0, "flags":I
    :cond_5
    :goto_5
    if-eqz v0, :cond_95

    .line 1338
    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->native_delete_aiding_data(I)V

    .line 1339
    const/4 v1, 0x1

    .line 1342
    :goto_b
    return v1

    .line 1321
    .end local v0    # "flags":I
    :cond_c
    const/4 v0, 0x0

    .line 1322
    .restart local v0    # "flags":I
    const-string v1, "ephemeris"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    or-int/lit8 v0, v0, 0x1

    .line 1323
    :cond_17
    const-string v1, "almanac"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_21

    or-int/lit8 v0, v0, 0x2

    .line 1324
    :cond_21
    const-string v1, "position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2b

    or-int/lit8 v0, v0, 0x4

    .line 1325
    :cond_2b
    const-string v1, "time"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_35

    or-int/lit8 v0, v0, 0x8

    .line 1326
    :cond_35
    const-string v1, "iono"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3f

    or-int/lit8 v0, v0, 0x10

    .line 1327
    :cond_3f
    const-string v1, "utc"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_49

    or-int/lit8 v0, v0, 0x20

    .line 1328
    :cond_49
    const-string v1, "health"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_53

    or-int/lit8 v0, v0, 0x40

    .line 1329
    :cond_53
    const-string v1, "svdir"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5d

    or-int/lit16 v0, v0, 0x80

    .line 1330
    :cond_5d
    const-string v1, "svsteer"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_67

    or-int/lit16 v0, v0, 0x100

    .line 1331
    :cond_67
    const-string v1, "sadata"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_71

    or-int/lit16 v0, v0, 0x200

    .line 1332
    :cond_71
    const-string v1, "rti"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7b

    or-int/lit16 v0, v0, 0x400

    .line 1333
    :cond_7b
    const-string v1, "celldb-info"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_87

    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1334
    :cond_87
    const-string v1, "all"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const v1, 0xffff

    or-int/2addr v0, v1

    goto/16 :goto_5

    .line 1341
    :cond_95
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteAidingData extras:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "flags:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1342
    const/4 v1, 0x0

    goto/16 :goto_b
.end method

.method private getApnIpType(Ljava/lang/String;)I
    .registers 11
    .param p1, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v8, 0x0

    .line 2231
    if-nez p1, :cond_6

    move v0, v8

    .line 2263
    :cond_5
    :goto_5
    return v0

    .line 2236
    :cond_6
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    if-eqz v0, :cond_15

    .line 2237
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    goto :goto_5

    .line 2240
    :cond_15
    const-string v0, "current = 1 and apn = \'%s\' and carrier_enabled = 1"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v8

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2241
    .local v3, "selection":Ljava/lang/String;
    const/4 v6, 0x0

    .line 2243
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_20
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "protocol"

    aput-object v5, v2, v4

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2250
    if-eqz v6, :cond_4e

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 2251
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/location/GpsLocationProvider;->translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_47} :catch_6d
    .catchall {:try_start_20 .. :try_end_47} :catchall_8c

    move-result v0

    .line 2258
    if-eqz v6, :cond_5

    .line 2259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_5

    .line 2253
    :cond_4e
    :try_start_4e
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry found in query for APN: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_66} :catch_6d
    .catchall {:try_start_4e .. :try_end_66} :catchall_8c

    .line 2258
    if-eqz v6, :cond_6b

    .line 2259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_6b
    :goto_6b
    move v0, v8

    .line 2263
    goto :goto_5

    .line 2255
    :catch_6d
    move-exception v7

    .line 2256
    .local v7, "e":Ljava/lang/Exception;
    :try_start_6e
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error encountered on APN query for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_86
    .catchall {:try_start_6e .. :try_end_86} :catchall_8c

    .line 2258
    if-eqz v6, :cond_6b

    .line 2259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_6b

    .line 2258
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_8c
    move-exception v0

    if-eqz v6, :cond_92

    .line 2259
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_92
    throw v0
.end method

.method private getAutoGpsState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 2408
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "auto_time_gps"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_c
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_c} :catch_11

    move-result v2

    if-lez v2, :cond_10

    const/4 v1, 0x1

    .line 2411
    :cond_10
    :goto_10
    return v1

    .line 2410
    :catch_11
    move-exception v0

    .line 2411
    .local v0, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    goto :goto_10
.end method

.method private getGeofenceStatus(I)I
    .registers 3
    .param p1, "status"    # I

    .prologue
    .line 1845
    sparse-switch p1, :sswitch_data_12

    .line 1859
    const/4 v0, -0x1

    :goto_4
    return v0

    .line 1847
    :sswitch_5
    const/4 v0, 0x0

    goto :goto_4

    .line 1849
    :sswitch_7
    const/4 v0, 0x5

    goto :goto_4

    .line 1851
    :sswitch_9
    const/4 v0, 0x2

    goto :goto_4

    .line 1853
    :sswitch_b
    const/4 v0, 0x4

    goto :goto_4

    .line 1855
    :sswitch_d
    const/4 v0, 0x1

    goto :goto_4

    .line 1857
    :sswitch_f
    const/4 v0, 0x3

    goto :goto_4

    .line 1845
    nop

    :sswitch_data_12
    .sparse-switch
        -0x95 -> :sswitch_7
        -0x67 -> :sswitch_b
        -0x66 -> :sswitch_f
        -0x65 -> :sswitch_9
        0x0 -> :sswitch_5
        0x64 -> :sswitch_d
    .end sparse-switch
.end method

.method private getSelectedApn()Ljava/lang/String;
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 2205
    const-string v0, "content://telephony/carriers/preferapn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 2206
    .local v1, "uri":Landroid/net/Uri;
    const/4 v6, 0x0

    .line 2208
    .local v6, "cursor":Landroid/database/Cursor;
    :try_start_8
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "apn"

    aput-object v4, v2, v3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "name ASC"

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 2214
    if-eqz v6, :cond_31

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 2215
    const/4 v0, 0x0

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_2a} :catch_3f
    .catchall {:try_start_8 .. :try_end_2a} :catchall_4d

    move-result-object v0

    .line 2222
    if-eqz v6, :cond_30

    .line 2223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 2227
    :cond_30
    :goto_30
    return-object v0

    .line 2217
    :cond_31
    :try_start_31
    const-string v0, "GpsLocationProvider"

    const-string v2, "No APN found to select."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_38} :catch_3f
    .catchall {:try_start_31 .. :try_end_38} :catchall_4d

    .line 2222
    if-eqz v6, :cond_3d

    .line 2223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_3d
    :goto_3d
    move-object v0, v8

    .line 2227
    goto :goto_30

    .line 2219
    :catch_3f
    move-exception v7

    .line 2220
    .local v7, "e":Ljava/lang/Exception;
    :try_start_40
    const-string v0, "GpsLocationProvider"

    const-string v2, "Error encountered on selecting the APN."

    invoke-static {v0, v2, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_47
    .catchall {:try_start_40 .. :try_end_47} :catchall_4d

    .line 2222
    if-eqz v6, :cond_3d

    .line 2223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_3d

    .line 2222
    .end local v7    # "e":Ljava/lang/Exception;
    :catchall_4d
    move-exception v0

    if-eqz v6, :cond_53

    .line 2223
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_53
    throw v0
.end method

.method private getSuplMode(Ljava/util/Properties;ZZ)I
    .registers 11
    .param p1, "properties"    # Ljava/util/Properties;
    .param p2, "agpsEnabled"    # Z
    .param p3, "singleShot"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 1052
    if-eqz p2, :cond_23

    .line 1053
    const-string v5, "SUPL_MODE"

    invoke-virtual {p1, v5}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1054
    .local v1, "modeString":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1055
    .local v2, "suplMode":I
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_15

    .line 1057
    :try_start_11
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_14} :catch_24

    move-result v2

    .line 1063
    :cond_15
    if-eqz p3, :cond_3e

    const/4 v5, 0x4

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_3e

    and-int/lit8 v5, v2, 0x2

    if-eqz v5, :cond_3e

    move v3, v4

    .line 1072
    .end local v1    # "modeString":Ljava/lang/String;
    .end local v2    # "suplMode":I
    :cond_23
    :goto_23
    return v3

    .line 1058
    .restart local v1    # "modeString":Ljava/lang/String;
    .restart local v2    # "suplMode":I
    :catch_24
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to parse SUPL_MODE: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_23

    .line 1067
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_3e
    invoke-direct {p0, v4}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_23

    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_23

    .line 1069
    const/4 v3, 0x1

    goto :goto_23
.end method

.method private handleDisable()V
    .registers 3

    .prologue
    .line 1114
    const-string v0, "GpsLocationProvider"

    const-string v1, "handleDisable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1117
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1118
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1119
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1122
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_cleanup()V

    .line 1123
    return-void
.end method

.method private handleDownloadXtraData()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 956
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-ne v0, v1, :cond_6

    .line 1000
    :goto_5
    return-void

    .line 960
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_e

    .line 962
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    goto :goto_5

    .line 965
    :cond_e
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    .line 968
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLockHandler:Ljava/lang/Object;

    monitor-enter v1

    .line 969
    :try_start_13
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 970
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 971
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 972
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_35

    .line 973
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$9;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$9;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 972
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private handleEnable()V
    .registers 5

    .prologue
    .line 1076
    const-string v1, "GpsLocationProvider"

    const-string v2, "handleEnable"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1078
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_init()Z

    move-result v0

    .line 1080
    .local v0, "enabled":Z
    if-eqz v0, :cond_2c

    .line 1081
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_supports_xtra()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    .line 1084
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_1f

    .line 1085
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1087
    :cond_1f
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v1, :cond_2b

    .line 1088
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1096
    :cond_2b
    :goto_2b
    return-void

    .line 1091
    :cond_2c
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1092
    const/4 v1, 0x0

    :try_start_30
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1093
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3b

    .line 1094
    const-string v1, "GpsLocationProvider"

    const-string v2, "Failed to enable location provider"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 1093
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v2
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v1
.end method

.method private handleInjectNtpTime()V
    .registers 7

    .prologue
    const/4 v1, 0x1

    .line 890
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-ne v0, v1, :cond_6

    .line 953
    :goto_5
    return-void

    .line 894
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-nez v0, :cond_e

    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    goto :goto_5

    .line 899
    :cond_e
    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    .line 902
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLockHandler:Ljava/lang/Object;

    monitor-enter v1

    .line 903
    :try_start_13
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 904
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 905
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 906
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_13 .. :try_end_2a} :catchall_35

    .line 908
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/server/location/GpsLocationProvider$8;

    invoke-direct {v1, p0}, Lcom/android/server/location/GpsLocationProvider$8;-><init>(Lcom/android/server/location/GpsLocationProvider;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_5

    .line 906
    :catchall_35
    move-exception v0

    :try_start_36
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_36 .. :try_end_37} :catchall_35

    throw v0
.end method

.method private handleSetRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 3
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    .line 1161
    iput-object p2, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    .line 1162
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 1163
    return-void
.end method

.method private handleUpdateLocation(Landroid/location/Location;)V
    .registers 9
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    .line 1003
    invoke-virtual {p1}, Landroid/location/Location;->hasAccuracy()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1004
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v6

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_inject_location(DDF)V

    .line 1007
    :cond_16
    return-void
.end method

.method private handleUpdateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 13
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 830
    const/4 v0, 0x2

    if-ne p1, v0, :cond_c1

    const/4 v0, 0x1

    :goto_4
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    .line 833
    const-string v1, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateNetworkState "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_c4

    const-string v0, "available"

    :goto_19
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " info: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    if-eqz p2, :cond_5d

    .line 838
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v8

    .line 839
    .local v8, "dataEnabled":Z
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_c8

    if-eqz v8, :cond_c8

    const/4 v4, 0x1

    .line 840
    .local v4, "networkAvailable":Z
    :goto_41
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->getSelectedApn()Ljava/lang/String;

    move-result-object v6

    .line 841
    .local v6, "defaultApn":Ljava/lang/String;
    if-nez v6, :cond_49

    .line 842
    const-string v6, "dummy-apn"

    .line 845
    :cond_49
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->isRoaming()Z

    move-result v3

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/location/GpsLocationProvider;->native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V

    .line 850
    .end local v4    # "networkAvailable":Z
    .end local v6    # "defaultApn":Ljava/lang/String;
    .end local v8    # "dataEnabled":Z
    :cond_5d
    if-eqz p2, :cond_a8

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a8

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_a8

    .line 852
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_cb

    .line 853
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v7

    .line 854
    .local v7, "apnName":Ljava/lang/String;
    if-nez v7, :cond_77

    .line 857
    const-string v7, "dummy-apn"

    .line 859
    :cond_77
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 860
    invoke-direct {p0, v7}, Lcom/android/server/location/GpsLocationProvider;->getApnIpType(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 861
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 863
    const-string v0, "native_agps_data_conn_open: mAgpsApn=%s, mApnIpType=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 866
    .local v9, "message":Ljava/lang/String;
    const-string v0, "GpsLocationProvider"

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 869
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 879
    .end local v7    # "apnName":Ljava/lang/String;
    .end local v9    # "message":Ljava/lang/String;
    :cond_a8
    :goto_a8
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetworkAvailable:Z

    if-eqz v0, :cond_c0

    .line 880
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mInjectNtpTimePending:I

    if-nez v0, :cond_b6

    .line 881
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 883
    :cond_b6
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDownloadXtraDataPending:I

    if-nez v0, :cond_c0

    .line 884
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 887
    :cond_c0
    return-void

    .line 830
    :cond_c1
    const/4 v0, 0x0

    goto/16 :goto_4

    .line 833
    :cond_c4
    const-string v0, "unavailable"

    goto/16 :goto_19

    .line 839
    .restart local v8    # "dataEnabled":Z
    :cond_c8
    const/4 v4, 0x0

    goto/16 :goto_41

    .line 871
    .end local v8    # "dataEnabled":Z
    :cond_cb
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call native_agps_data_conn_failed, info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    .line 873
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    .line 874
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 875
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto :goto_a8
.end method

.method private hasCapability(I)Z
    .registers 3
    .param p1, "capability"    # I

    .prologue
    .line 1434
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_7

    const/4 v0, 0x1

    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method private hasIccCard()Z
    .registers 4

    .prologue
    .line 2416
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 2418
    .local v0, "tpMgr":Landroid/telephony/TelephonyManager;
    if-eqz v0, :cond_11

    .line 2419
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    .line 2421
    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method private hibernate()V
    .registers 8

    .prologue
    .line 1426
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1427
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1428
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1429
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1430
    .local v0, "now":J
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v4, v4

    add-long/2addr v4, v0

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 1431
    return-void
.end method

.method private isCurrentTimeValid()Z
    .registers 8

    .prologue
    const/4 v3, 0x1

    .line 1442
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 1444
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    add-int/lit16 v2, v4, 0x76c

    .line 1445
    .local v2, "year":I
    const/4 v4, 0x2

    invoke-virtual {v0, v4}, Ljava/util/Calendar;->get(I)I

    move-result v1

    .line 1446
    .local v1, "month":I
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isCurrentTimeValid year:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " month: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1447
    const/16 v4, 0x7e3

    if-lt v2, v4, :cond_3f

    if-le v1, v3, :cond_3f

    :goto_3e
    return v3

    :cond_3f
    const/4 v3, 0x0

    goto :goto_3e
.end method

.method public static isSupported()Z
    .registers 1

    .prologue
    .line 564
    invoke-static {}, Lcom/android/server/location/GpsLocationProvider;->native_is_supported()Z

    move-result v0

    return v0
.end method

.method private listenForBroadcasts()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 783
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 784
    .local v1, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 785
    const-string v2, "sms"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 786
    const-string v2, "localhost"

    const-string v3, "7275"

    invoke-virtual {v1, v2, v3}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 787
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 789
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 790
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 792
    :try_start_2a
    const-string v2, "application/vnd.omaloc-supl-init"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_2f
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_2a .. :try_end_2f} :catch_6f

    .line 796
    :goto_2f
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 798
    new-instance v1, Landroid/content/IntentFilter;

    .end local v1    # "intentFilter":Landroid/content/IntentFilter;
    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 799
    .restart local v1    # "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 800
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 801
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE_IMMEDIATE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 802
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 803
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 804
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 805
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 807
    const-string v2, "android.location.agps.EMERGENCY_CALL"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 809
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 810
    return-void

    .line 793
    :catch_6f
    move-exception v0

    .line 794
    .local v0, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "GpsLocationProvider"

    const-string v3, "Malformed SUPL init mime type"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f
.end method

.method private loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z
    .registers 10
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 635
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_18

    .line 636
    .local v1, "file":Ljava/io/File;
    const/4 v2, 0x0

    .line 638
    .local v2, "stream":Ljava/io/FileInputStream;
    :try_start_6
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_13

    .line 639
    .end local v2    # "stream":Ljava/io/FileInputStream;
    .local v3, "stream":Ljava/io/FileInputStream;
    :try_start_b
    invoke-virtual {p2, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_e
    .catchall {:try_start_b .. :try_end_e} :catchall_33

    .line 641
    :try_start_e
    invoke-static {v3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 648
    const/4 v4, 0x1

    .end local v1    # "file":Ljava/io/File;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :goto_12
    return v4

    .line 641
    .restart local v1    # "file":Ljava/io/File;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    :catchall_13
    move-exception v4

    :goto_14
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v4
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_18} :catch_18

    .line 644
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "stream":Ljava/io/FileInputStream;
    :catch_18
    move-exception v0

    .line 645
    .local v0, "e":Ljava/io/IOException;
    const-string v4, "GpsLocationProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not open GPS configuration file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v4, 0x0

    goto :goto_12

    .line 641
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "file":Ljava/io/File;
    .restart local v3    # "stream":Ljava/io/FileInputStream;
    :catchall_33
    move-exception v4

    move-object v2, v3

    .end local v3    # "stream":Ljava/io/FileInputStream;
    .restart local v2    # "stream":Ljava/io/FileInputStream;
    goto :goto_14
.end method

.method private loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 12
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    .line 618
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x107003b

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "configValues":[Ljava/lang/String;
    move-object v0, v1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_e
    if-ge v2, v4, :cond_61

    aget-object v3, v0, v2

    .line 621
    .local v3, "item":Ljava/lang/String;
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "GpsParamsResource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    const-string v6, "="

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 624
    .local v5, "split":[Ljava/lang/String;
    array-length v6, v5

    const/4 v7, 0x2

    if-ne v6, v7, :cond_48

    .line 625
    const/4 v6, 0x0

    aget-object v6, v5, v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v7, v5, v7

    invoke-virtual {p2, v6, v7}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    .line 620
    :goto_45
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 627
    :cond_48
    const-string v6, "GpsLocationProvider"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "malformed contents: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_45

    .line 630
    .end local v3    # "item":Ljava/lang/String;
    .end local v5    # "split":[Ljava/lang/String;
    :cond_61
    return-void
.end method

.method private static native native_add_geofence(IDDDIIII)Z
.end method

.method private native native_agps_data_conn_closed()V
.end method

.method private native native_agps_data_conn_failed()V
.end method

.method private native native_agps_data_conn_open(Ljava/lang/String;I)V
.end method

.method private native native_agps_ni_message([BI)V
.end method

.method private native native_agps_set_id(ILjava/lang/String;)V
.end method

.method private native native_agps_set_ref_location_cellid(IIIII)V
.end method

.method private native native_cleanup()V
.end method

.method private static native native_configuration_update(Ljava/lang/String;)V
.end method

.method private native native_delete_aiding_data(I)V
.end method

.method private native native_get_internal_state()Ljava/lang/String;
.end method

.method private native native_init()Z
.end method

.method private native native_inject_location(DDF)V
.end method

.method private native native_inject_time(JJI)V
.end method

.method private native native_inject_xtra_data([BI)V
.end method

.method private static native native_is_geofence_supported()Z
.end method

.method private static native native_is_measurement_supported()Z
.end method

.method private static native native_is_navigation_message_supported()Z
.end method

.method private static native native_is_supported()Z
.end method

.method private static native native_pause_geofence(I)Z
.end method

.method private native native_read_gnss_sv_status([I[F[F[F[Z[Z[Z)I
.end method

.method private native native_read_nmea([BI)I
.end method

.method private native native_read_sv_status([I[F[F[F[I)I
.end method

.method private static native native_remove_geofence(I)Z
.end method

.method private static native native_resume_geofence(II)Z
.end method

.method private native native_send_ni_response(II)V
.end method

.method private native native_set_agps_server(ILjava/lang/String;I)V
.end method

.method private native native_set_position_mode(IIIII)Z
.end method

.method private native native_start()Z
.end method

.method private native native_start_measurement_collection()Z
.end method

.method private native native_start_navigation_message_collection()Z
.end method

.method private native native_stop()Z
.end method

.method private native native_stop_measurement_collection()Z
.end method

.method private native native_stop_navigation_message_collection()Z
.end method

.method private native native_supports_xtra()Z
.end method

.method private native native_update_network_state(ZIZZLjava/lang/String;Ljava/lang/String;)V
.end method

.method private reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "properties"    # Ljava/util/Properties;

    .prologue
    const/4 v7, 0x1

    .line 568
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Reset GPS properties, previous size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 569
    invoke-direct {p0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromResource(Landroid/content/Context;Ljava/util/Properties;)V

    .line 570
    const/4 v3, 0x0

    .line 571
    .local v3, "isPropertiesLoadedFromFile":Z
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->gpsHardware:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_48

    .line 572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "/etc/gps."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsLocationProvider;->gpsHardware:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".conf"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 574
    .local v5, "propFilename":Ljava/lang/String;
    invoke-direct {p0, v5, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    move-result v3

    .line 577
    .end local v5    # "propFilename":Ljava/lang/String;
    :cond_48
    if-nez v3, :cond_4f

    .line 578
    const-string v8, "/etc/gps.conf"

    invoke-direct {p0, v8, p2}, Lcom/android/server/location/GpsLocationProvider;->loadPropertiesFromFile(Ljava/lang/String;Ljava/util/Properties;)Z

    .line 580
    :cond_4f
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "GPS properties reloaded, size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {p2}, Ljava/util/Properties;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    const-string v8, "SUPL_HOST"

    invoke-virtual {p2, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "SUPL_PORT"

    invoke-virtual {p2, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v8, v9}, Lcom/android/server/location/GpsLocationProvider;->setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    const-string v8, "C2K_HOST"

    invoke-virtual {p2, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    .line 586
    const-string v8, "C2K_PORT"

    invoke-virtual {p2, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 587
    .local v4, "portString":Ljava/lang/String;
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerHost:Ljava/lang/String;

    if-eqz v8, :cond_94

    if-eqz v4, :cond_94

    .line 589
    :try_start_8e
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iput v8, p0, Lcom/android/server/location/GpsLocationProvider;->mC2KServerPort:I
    :try_end_94
    .catch Ljava/lang/NumberFormatException; {:try_start_8e .. :try_end_94} :catch_d5

    .line 597
    :cond_94
    :goto_94
    :try_start_94
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v8, 0x1000

    invoke-direct {v0, v8}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 598
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v8, 0x0

    invoke-virtual {p2, v0, v8}, Ljava/util/Properties;->store(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 599
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/location/GpsLocationProvider;->native_configuration_update(Ljava/lang/String;)V

    .line 600
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "final config = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c2
    .catch Ljava/io/IOException; {:try_start_94 .. :try_end_c2} :catch_ef

    .line 606
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :goto_c2
    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    const-string v9, "SUPL_ES"

    invoke-virtual {v8, v9}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 607
    .local v6, "suplESProperty":Ljava/lang/String;
    if-eqz v6, :cond_d4

    .line 609
    :try_start_cc
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    if-ne v8, v7, :cond_f8

    :goto_d2
    iput-boolean v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z
    :try_end_d4
    .catch Ljava/lang/NumberFormatException; {:try_start_cc .. :try_end_d4} :catch_fa

    .line 614
    :cond_d4
    :goto_d4
    return-void

    .line 590
    .end local v6    # "suplESProperty":Ljava/lang/String;
    :catch_d5
    move-exception v1

    .line 591
    .local v1, "e":Ljava/lang/NumberFormatException;
    const-string v8, "GpsLocationProvider"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "unable to parse C2K_PORT: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_94

    .line 601
    .end local v1    # "e":Ljava/lang/NumberFormatException;
    :catch_ef
    move-exception v2

    .line 602
    .local v2, "ex":Ljava/io/IOException;
    const-string v8, "GpsLocationProvider"

    const-string v9, "failed to dump properties contents"

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c2

    .line 609
    .end local v2    # "ex":Ljava/io/IOException;
    .restart local v6    # "suplESProperty":Ljava/lang/String;
    :cond_f8
    const/4 v7, 0x0

    goto :goto_d2

    .line 610
    :catch_fa
    move-exception v1

    .line 611
    .restart local v1    # "e":Ljava/lang/NumberFormatException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "unable to parse SUPL_ES: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d4
.end method

.method private reportAGpsStatus(II[B)V
    .registers 12
    .param p1, "type"    # I
    .param p2, "status"    # I
    .param p3, "ipaddr"    # [B

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1691
    packed-switch p2, :pswitch_data_10c

    .line 1755
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received Unknown AGPS status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    :cond_1e
    :goto_1e
    return-void

    .line 1693
    :pswitch_1f
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_REQUEST_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received SUPL IP addr[]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    iput v6, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1700
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->doStartUsingNetwork()I

    move-result v1

    .line 1704
    .local v1, "result":I
    if-eqz p3, :cond_66

    .line 1706
    :try_start_46
    invoke-static {p3}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    .line 1707
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "IP address converted to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_66
    .catch Ljava/net/UnknownHostException; {:try_start_46 .. :try_end_66} :catch_81

    .line 1714
    :cond_66
    :goto_66
    if-nez v1, :cond_ab

    .line 1715
    const-string v2, "GpsLocationProvider"

    const-string v3, "PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1716
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    if-eqz v2, :cond_9d

    .line 1717
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->setRouting()V

    .line 1718
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsApn:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mApnIpType:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_open(Ljava/lang/String;I)V

    .line 1719
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    goto :goto_1e

    .line 1708
    :catch_81
    move-exception v0

    .line 1709
    .local v0, "e":Ljava/net/UnknownHostException;
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad IP Address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1710
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto :goto_66

    .line 1721
    .end local v0    # "e":Ljava/net/UnknownHostException;
    :cond_9d
    const-string v2, "GpsLocationProvider"

    const-string v3, "mAGpsApn not set when receiving PhoneConstants.APN_ALREADY_ACTIVE"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1723
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_1e

    .line 1725
    :cond_ab
    if-ne v1, v6, :cond_b6

    .line 1726
    const-string v2, "GpsLocationProvider"

    const-string v3, "PhoneConstants.APN_REQUEST_STARTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1729
    :cond_b6
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature failed, value is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1731
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1732
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_failed()V

    goto/16 :goto_1e

    .line 1736
    .end local v1    # "result":I
    :pswitch_d5
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_RELEASE_AGPS_DATA_CONN"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1737
    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    if-eqz v2, :cond_1e

    .line 1738
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    const-string v3, "enableSUPL"

    invoke-virtual {v2, v5, v3}, Landroid/net/ConnectivityManager;->stopUsingNetworkFeature(ILjava/lang/String;)I

    .line 1740
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_data_conn_closed()V

    .line 1741
    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionState:I

    .line 1742
    iput-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    goto/16 :goto_1e

    .line 1746
    :pswitch_f0
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONNECTED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1749
    :pswitch_f9
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_DONE"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1752
    :pswitch_102
    const-string v2, "GpsLocationProvider"

    const-string v3, "GPS_AGPS_DATA_CONN_FAILED"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    .line 1691
    nop

    :pswitch_data_10c
    .packed-switch 0x1
        :pswitch_1f
        :pswitch_d5
        :pswitch_f0
        :pswitch_f9
        :pswitch_102
    .end packed-switch
.end method

.method private reportGeofenceAddStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1924
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1925
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1927
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceAddStatus(II)V

    .line 1928
    return-void
.end method

.method private reportGeofencePauseStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1944
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1945
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1947
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofencePauseStatus(II)V

    .line 1948
    return-void
.end method

.method private reportGeofenceRemoveStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1934
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1935
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1937
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceRemoveStatus(II)V

    .line 1938
    return-void
.end method

.method private reportGeofenceResumeStatus(II)V
    .registers 5
    .param p1, "geofenceId"    # I
    .param p2, "status"    # I

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1955
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    .line 1957
    :cond_c
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->getGeofenceStatus(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceResumeStatus(II)V

    .line 1958
    return-void
.end method

.method private reportGeofenceStatus(IIDDDFFFJ)V
    .registers 31
    .param p1, "status"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J

    .prologue
    .line 1897
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v2, :cond_12

    .line 1898
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_12
    move-object/from16 v2, p0

    move/from16 v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move/from16 v10, p9

    move/from16 v11, p10

    move/from16 v12, p11

    move-wide/from16 v13, p12

    .line 1900
    invoke-direct/range {v2 .. v14}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v15

    .line 1909
    .local v15, "location":Landroid/location/Location;
    const/16 v16, 0x1

    .line 1910
    .local v16, "monitorStatus":I
    const/4 v2, 0x2

    move/from16 v0, p1

    if-ne v0, v2, :cond_31

    .line 1911
    const/16 v16, 0x0

    .line 1913
    :cond_31
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v3, 0x0

    sget v4, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move/from16 v0, v16

    invoke-virtual {v2, v3, v0, v15, v4}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceMonitorStatus(IILandroid/location/Location;I)V

    .line 1918
    return-void
.end method

.method private reportGeofenceTransition(IIDDDFFFJIJ)V
    .registers 30
    .param p1, "geofenceId"    # I
    .param p2, "flags"    # I
    .param p3, "latitude"    # D
    .param p5, "longitude"    # D
    .param p7, "altitude"    # D
    .param p9, "speed"    # F
    .param p10, "bearing"    # F
    .param p11, "accuracy"    # F
    .param p12, "timestamp"    # J
    .param p14, "transition"    # I
    .param p15, "transitionTimestamp"    # J

    .prologue
    .line 1870
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    if-nez v0, :cond_c

    .line 1871
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/hardware/location/GeofenceHardwareImpl;->getInstance(Landroid/content/Context;)Landroid/hardware/location/GeofenceHardwareImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    :cond_c
    move-object v0, p0

    move v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    move-wide/from16 v6, p7

    move/from16 v8, p9

    move/from16 v9, p10

    move/from16 v10, p11

    move-wide/from16 v11, p12

    .line 1873
    invoke-direct/range {v0 .. v12}, Lcom/android/server/location/GpsLocationProvider;->buildLocation(IDDDFFFJ)Landroid/location/Location;

    move-result-object v2

    .line 1882
    .local v2, "location":Landroid/location/Location;
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGeofenceHardwareImpl:Landroid/hardware/location/GeofenceHardwareImpl;

    const/4 v6, 0x0

    sget v7, Landroid/location/FusedBatchOptions$SourceTechnologies;->GNSS:I

    move v1, p1

    move/from16 v3, p14

    move-wide/from16 v4, p15

    invoke-virtual/range {v0 .. v7}, Landroid/hardware/location/GeofenceHardwareImpl;->reportGeofenceTransition(ILandroid/location/Location;IJII)V

    .line 1889
    return-void
.end method

.method private reportGnssSvStatus()V
    .registers 19

    .prologue
    .line 1599
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/location/GpsLocationProvider;->native_read_gnss_sv_status([I[F[F[F[Z[Z[Z)I

    move-result v3

    .line 1601
    .local v3, "svCount":I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/location/GpsStatusListenerHelper;->onGnssSvStatusChanged(I[I[F[F[F[Z[Z[Z)V

    .line 1612
    const-string v2, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "GNSS SV count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " ephemerisMask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " almanacMask: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_88
    if-ge v12, v3, :cond_111

    .line 1616
    const-string v4, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sv: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvs:[I

    aget v5, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " snr: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSnrs:[F

    aget v5, v5, v12

    const/high16 v6, 0x41200000    # 10.0f

    div-float/2addr v5, v6

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " elev: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvElevations:[F

    aget v5, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " azimuth: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAzimuths:[F

    aget v5, v5, v12

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvEphemeris:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_108

    const-string v2, " E"

    :goto_de
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvAlmanac:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_10b

    const-string v2, " A"

    :goto_ec
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    aget-boolean v2, v2, v12

    if-eqz v2, :cond_10e

    const-string v2, " U"

    :goto_fa
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    add-int/lit8 v12, v12, 0x1

    goto :goto_88

    .line 1616
    :cond_108
    const-string v2, " "

    goto :goto_de

    :cond_10b
    const-string v2, " "

    goto :goto_ec

    :cond_10e
    const-string v2, " "

    goto :goto_fa

    .line 1625
    :cond_111
    const/16 v16, 0x0

    .line 1626
    .local v16, "svFixCount":I
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/server/location/GpsLocationProvider;->mGnssSvInFix:[Z

    .local v11, "arr$":[Z
    array-length v15, v11

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_119
    if-ge v13, v15, :cond_124

    aget-boolean v17, v11, v13

    .line 1627
    .local v17, "value":Z
    if-eqz v17, :cond_121

    .line 1628
    add-int/lit8 v16, v16, 0x1

    .line 1626
    :cond_121
    add-int/lit8 v13, v13, 0x1

    goto :goto_119

    .line 1631
    .end local v17    # "value":Z
    :cond_124
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1634
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v2, :cond_175

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v4, 0x2

    if-ne v2, v4, :cond_175

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_175

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x2710

    cmp-long v2, v4, v6

    if-lez v2, :cond_175

    .line 1637
    new-instance v14, Landroid/content/Intent;

    const-string v2, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1638
    .local v14, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    const/4 v4, 0x0

    invoke-virtual {v14, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1639
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v14, v4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1640
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1642
    .end local v14    # "intent":Landroid/content/Intent;
    :cond_175
    return-void
.end method

.method private reportLocation(IDDDFFFJ)V
    .registers 28
    .param p1, "flags"    # I
    .param p2, "latitude"    # D
    .param p4, "longitude"    # D
    .param p6, "altitude"    # D
    .param p8, "speed"    # F
    .param p9, "bearing"    # F
    .param p10, "accuracy"    # F
    .param p11, "timestamp"    # J

    .prologue
    .line 1455
    const-string v5, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "reportLocation lat: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p2

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " long: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p4

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " timestamp: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p11

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1458
    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    monitor-enter v10

    .line 1459
    :try_start_35
    move/from16 v0, p1

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1460
    and-int/lit8 v5, p1, 0x1

    const/4 v11, 0x1

    if-ne v5, v11, :cond_5c

    .line 1461
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p2

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 1462
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p4

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 1463
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p11

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setTime(J)V

    .line 1466
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v12

    invoke-virtual {v5, v12, v13}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 1468
    :cond_5c
    and-int/lit8 v5, p1, 0x2

    const/4 v11, 0x2

    if-ne v5, v11, :cond_19a

    .line 1469
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move-wide/from16 v0, p6

    invoke-virtual {v5, v0, v1}, Landroid/location/Location;->setAltitude(D)V

    .line 1473
    :goto_68
    and-int/lit8 v5, p1, 0x4

    const/4 v11, 0x4

    if-ne v5, v11, :cond_1a4

    .line 1474
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p8

    invoke-virtual {v5, v0}, Landroid/location/Location;->setSpeed(F)V

    .line 1478
    :goto_74
    and-int/lit8 v5, p1, 0x8

    const/16 v11, 0x8

    if-ne v5, v11, :cond_1ab

    .line 1479
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p9

    invoke-virtual {v5, v0}, Landroid/location/Location;->setBearing(F)V

    .line 1483
    :goto_81
    and-int/lit8 v5, p1, 0x10

    const/16 v11, 0x10

    if-ne v5, v11, :cond_1b2

    .line 1484
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    move/from16 v0, p10

    invoke-virtual {v5, v0}, Landroid/location/Location;->setAccuracy(F)V

    .line 1490
    :goto_8e
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    invoke-virtual {v5, v11}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V
    :try_end_95
    .catchall {:try_start_35 .. :try_end_95} :catchall_1a1

    .line 1493
    :try_start_95
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mILocationManager:Landroid/location/ILocationManager;

    iget-object v11, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/4 v12, 0x0

    invoke-interface {v5, v11, v12}, Landroid/location/ILocationManager;->reportLocation(Landroid/location/Location;Z)V
    :try_end_9d
    .catch Landroid/os/RemoteException; {:try_start_95 .. :try_end_9d} :catch_1cc
    .catchall {:try_start_95 .. :try_end_9d} :catchall_1a1

    .line 1497
    :goto_9d
    :try_start_9d
    monitor-exit v10
    :try_end_9e
    .catchall {:try_start_9d .. :try_end_9e} :catchall_1a1

    .line 1499
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1501
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    if-eqz v5, :cond_10d

    and-int/lit8 v5, p1, 0x1

    const/4 v10, 0x1

    if-ne v5, v10, :cond_10d

    .line 1504
    const-wide/16 v10, 0x0

    cmp-long v5, p11, v10

    if-eqz v5, :cond_b6

    .line 1505
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    .line 1507
    :cond_b6
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1508
    .local v2, "c":Ljava/util/Calendar;
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1509
    .local v6, "now":J
    const-string v5, "GpsLocationProvider"

    const-string v10, "GPS time sync is enabled"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1510
    const-string v5, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, " ########## Auto-sync time with GPS: timestamp = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    move-wide/from16 v0, p11

    invoke-virtual {v10, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ########## now = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    sub-long v10, v6, p11

    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    const-wide/32 v12, 0xea60

    cmp-long v5, v10, v12

    if-lez v5, :cond_10d

    .line 1514
    move-wide/from16 v0, p11

    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1515
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1516
    .local v8, "when":J
    const-wide/16 v10, 0x3e8

    div-long v10, v8, v10

    const-wide/32 v12, 0x7fffffff

    cmp-long v5, v10, v12

    if-gez v5, :cond_10d

    .line 1517
    invoke-static {v8, v9}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 1526
    .end local v2    # "c":Ljava/util/Calendar;
    .end local v6    # "now":J
    .end local v8    # "when":J
    :cond_10d
    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    if-nez v5, :cond_13f

    and-int/lit8 v5, p1, 0x1

    const/4 v10, 0x1

    if-ne v5, v10, :cond_13f

    .line 1527
    iget-wide v10, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    iget-wide v12, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    sub-long/2addr v10, v12

    long-to-int v5, v10

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1528
    const-string v5, "GpsLocationProvider"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "TTFF: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget v11, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1531
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    invoke-virtual {v5, v10}, Lcom/android/server/location/GpsStatusListenerHelper;->onFirstFix(I)V

    .line 1534
    :cond_13f
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    if-eqz v5, :cond_146

    .line 1535
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1538
    :cond_146
    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v5, :cond_17e

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    const/4 v10, 0x2

    if-eq v5, v10, :cond_17e

    .line 1541
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_164

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v10, 0xea60

    if-ge v5, v10, :cond_164

    .line 1542
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v10, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v5, v10}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1546
    :cond_164
    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1547
    .local v4, "intent":Landroid/content/Intent;
    const-string v5, "enabled"

    const/4 v10, 0x1

    invoke-virtual {v4, v5, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1548
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v4, v10}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1549
    const/4 v5, 0x2

    iget v10, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v5, v10}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1552
    .end local v4    # "intent":Landroid/content/Intent;
    :cond_17e
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_199

    iget-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v5, :cond_199

    iget v5, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const/16 v10, 0x2710

    if-le v5, v10, :cond_199

    .line 1554
    const-string v5, "GpsLocationProvider"

    const-string v10, "got fix, hibernating"

    invoke-static {v5, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1555
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hibernate()V

    .line 1557
    :cond_199
    return-void

    .line 1471
    :cond_19a
    :try_start_19a
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeAltitude()V

    goto/16 :goto_68

    .line 1497
    :catchall_1a1
    move-exception v5

    monitor-exit v10
    :try_end_1a3
    .catchall {:try_start_19a .. :try_end_1a3} :catchall_1a1

    throw v5

    .line 1476
    :cond_1a4
    :try_start_1a4
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeSpeed()V

    goto/16 :goto_74

    .line 1481
    :cond_1ab
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeBearing()V

    goto/16 :goto_81

    .line 1485
    :cond_1b2
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->gpsHardware:Ljava/lang/String;

    const-string v11, "custom"

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c5

    .line 1486
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    const/high16 v11, 0x3f800000    # 1.0f

    invoke-virtual {v5, v11}, Landroid/location/Location;->setAccuracy(F)V

    goto/16 :goto_8e

    .line 1488
    :cond_1c5
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mLocation:Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->removeAccuracy()V

    goto/16 :goto_8e

    .line 1494
    :catch_1cc
    move-exception v3

    .line 1495
    .local v3, "e":Landroid/os/RemoteException;
    const-string v5, "GpsLocationProvider"

    const-string v11, "RemoteException calling reportLocation"

    invoke-static {v5, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d4
    .catchall {:try_start_1a4 .. :try_end_1d4} :catchall_1a1

    goto/16 :goto_9d
.end method

.method private reportMeasurementData(Landroid/location/GpsMeasurementsEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GpsMeasurementsEvent;

    .prologue
    .line 1772
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsMeasurementsProvider;->onMeasurementsAvailable(Landroid/location/GpsMeasurementsEvent;)V

    .line 1773
    return-void
.end method

.method private reportNavigationMessage(Landroid/location/GpsNavigationMessageEvent;)V
    .registers 3
    .param p1, "event"    # Landroid/location/GpsNavigationMessageEvent;

    .prologue
    .line 1779
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    invoke-virtual {v0, p1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onNavigationMessageAvailable(Landroid/location/GpsNavigationMessageEvent;)V

    .line 1780
    return-void
.end method

.method private reportNmea(J)V
    .registers 8
    .param p1, "timestamp"    # J

    .prologue
    .line 1763
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    array-length v3, v3

    invoke-direct {p0, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_read_nmea([BI)I

    move-result v0

    .line 1764
    .local v0, "length":I
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNmeaBuffer:[B

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, v0}, Ljava/lang/String;-><init>([BII)V

    .line 1765
    .local v1, "nmea":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v2, p1, p2, v1}, Lcom/android/server/location/GpsStatusListenerHelper;->onNmeaReceived(JLjava/lang/String;)V

    .line 1766
    return-void
.end method

.method private reportStatus(I)V
    .registers 9
    .param p1, "status"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1563
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportStatus status: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1566
    .local v1, "wasNavigating":Z
    packed-switch p1, :pswitch_data_5e

    .line 1583
    :goto_1f
    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eq v1, v2, :cond_4d

    .line 1584
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsStatusListenerHelper;->onGpsEnabledChanged(Z)V

    .line 1585
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsMeasurementsProvider;->onGpsEnabledChanged(Z)V

    .line 1586
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v2, v3}, Lcom/android/server/location/GpsNavigationMessageProvider;->onGpsEnabledChanged(Z)V

    .line 1589
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.location.GPS_ENABLED_CHANGE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1590
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "enabled"

    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1591
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1593
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4d
    return-void

    .line 1568
    :pswitch_4e
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    .line 1569
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_1f

    .line 1572
    :pswitch_53
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_1f

    .line 1575
    :pswitch_56
    iput-boolean v6, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    goto :goto_1f

    .line 1578
    :pswitch_59
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineOn:Z

    .line 1579
    iput-boolean v5, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    goto :goto_1f

    .line 1566
    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_4e
        :pswitch_53
        :pswitch_56
        :pswitch_59
    .end packed-switch
.end method

.method private reportSvStatus()V
    .registers 15

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 1648
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_read_sv_status([I[F[F[F[I)I

    move-result v1

    .line 1649
    .local v1, "svCount":I
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mListenerHelper:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    iget-object v6, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v6, v6, v12

    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v7, v7, v11

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v8, v8, v13

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/location/GpsStatusListenerHelper;->onSvStatusChanged(I[I[F[F[FIII)V

    .line 1660
    const-string v0, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SV count: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ephemerisMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v12

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " almanacMask: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v3, v3, v11

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_68
    if-ge v9, v1, :cond_ff

    .line 1664
    const-string v2, "GpsLocationProvider"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sv: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " snr: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSnrs:[F

    aget v3, v3, v9

    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " elev: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvElevations:[F

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " azimuth: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSvAzimuths:[F

    aget v3, v3, v9

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v12

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_f6

    const-string v0, "  "

    :goto_bd
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v11

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_f9

    const-string v0, "  "

    :goto_d2
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v0, v0, v13

    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSvs:[I

    aget v4, v4, v9

    add-int/lit8 v4, v4, -0x1

    shl-int v4, v11, v4

    and-int/2addr v0, v4

    if-nez v0, :cond_fc

    const-string v0, ""

    :goto_e7
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_68

    .line 1664
    :cond_f6
    const-string v0, " E"

    goto :goto_bd

    :cond_f9
    const-string v0, " A"

    goto :goto_d2

    :cond_fc
    const-string v0, "U"

    goto :goto_e7

    .line 1675
    :cond_ff
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvMasks:[I

    aget v2, v2, v13

    invoke-static {v2}, Ljava/lang/Integer;->bitCount(I)I

    move-result v2

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1677
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNavigating:Z

    if-eqz v0, :cond_141

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne v0, v13, :cond_141

    iget-wide v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_141

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x2710

    cmp-long v0, v2, v4

    if-lez v0, :cond_141

    .line 1680
    new-instance v10, Landroid/content/Intent;

    const-string v0, "android.location.GPS_FIX_CHANGE"

    invoke-direct {v10, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1681
    .local v10, "intent":Landroid/content/Intent;
    const-string v0, "enabled"

    invoke-virtual {v10, v0, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1682
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v10, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1683
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-direct {p0, v11, v0}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1685
    .end local v10    # "intent":Landroid/content/Intent;
    :cond_141
    return-void
.end method

.method private requestRefLocation(I)V
    .registers 12
    .param p1, "flags"    # I

    .prologue
    const/4 v5, 0x3

    .line 2094
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/TelephonyManager;

    .line 2096
    .local v8, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v9

    .line 2097
    .local v9, "phoneType":I
    const/4 v0, 0x1

    if-ne v9, v0, :cond_71

    .line 2098
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v6

    check-cast v6, Landroid/telephony/gsm/GsmCellLocation;

    .line 2099
    .local v6, "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    if-eqz v6, :cond_69

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_69

    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v5, :cond_69

    .line 2102
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 2103
    .local v2, "mcc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 2104
    .local v3, "mnc":I
    invoke-virtual {v8}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v7

    .line 2105
    .local v7, "networkType":I
    if-eq v7, v5, :cond_59

    const/16 v0, 0x8

    if-eq v7, v0, :cond_59

    const/16 v0, 0x9

    if-eq v7, v0, :cond_59

    const/16 v0, 0xa

    if-eq v7, v0, :cond_59

    const/16 v0, 0xf

    if-ne v7, v0, :cond_67

    .line 2110
    :cond_59
    const/4 v1, 0x2

    .line 2114
    .local v1, "type":I
    :goto_5a
    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v4

    invoke-virtual {v6}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_ref_location_cellid(IIIII)V

    .line 2122
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .end local v7    # "networkType":I
    :cond_66
    :goto_66
    return-void

    .line 2112
    .restart local v2    # "mcc":I
    .restart local v3    # "mnc":I
    .restart local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    .restart local v7    # "networkType":I
    :cond_67
    const/4 v1, 0x1

    .restart local v1    # "type":I
    goto :goto_5a

    .line 2117
    .end local v1    # "type":I
    .end local v2    # "mcc":I
    .end local v3    # "mnc":I
    .end local v7    # "networkType":I
    :cond_69
    const-string v0, "GpsLocationProvider"

    const-string v4, "Error getting cell location info."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66

    .line 2119
    .end local v6    # "gsm_cell":Landroid/telephony/gsm/GsmCellLocation;
    :cond_71
    const/4 v0, 0x2

    if-ne v9, v0, :cond_66

    .line 2120
    const-string v0, "GpsLocationProvider"

    const-string v4, "CDMA not supported."

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_66
.end method

.method private requestSetID(I)V
    .registers 8
    .param p1, "flags"    # I

    .prologue
    .line 2053
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v5, "phone"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2055
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    const/4 v3, 0x0

    .line 2056
    .local v3, "type":I
    const-string v0, ""

    .line 2058
    .local v0, "data":Ljava/lang/String;
    and-int/lit8 v4, p1, 0x1

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1f

    .line 2059
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2060
    .local v1, "data_temp":Ljava/lang/String;
    if-nez v1, :cond_1c

    .line 2078
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_18
    :goto_18
    invoke-direct {p0, v3, v0}, Lcom/android/server/location/GpsLocationProvider;->native_agps_set_id(ILjava/lang/String;)V

    .line 2079
    return-void

    .line 2064
    .restart local v1    # "data_temp":Ljava/lang/String;
    :cond_1c
    move-object v0, v1

    .line 2065
    const/4 v3, 0x1

    goto :goto_18

    .line 2068
    .end local v1    # "data_temp":Ljava/lang/String;
    :cond_1f
    and-int/lit8 v4, p1, 0x2

    const/4 v5, 0x2

    if-ne v4, v5, :cond_18

    .line 2069
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 2070
    .restart local v1    # "data_temp":Ljava/lang/String;
    if-eqz v1, :cond_18

    .line 2074
    move-object v0, v1

    .line 2075
    const/4 v3, 0x2

    goto :goto_18
.end method

.method private requestUtcTime()V
    .registers 4

    .prologue
    .line 2086
    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 2087
    return-void
.end method

.method private sendMessage(IILjava/lang/Object;)V
    .registers 10
    .param p1, "message"    # I
    .param p2, "arg"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 2128
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLockHandler:Ljava/lang/Object;

    monitor-enter v1

    .line 2129
    :try_start_3
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 2130
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2131
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xc

    const-wide/32 v4, 0x493e0

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 2132
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_25

    .line 2133
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2134
    return-void

    .line 2132
    :catchall_25
    move-exception v0

    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    throw v0
.end method

.method private setEngineCapabilities(I)V
    .registers 7
    .param p1, "capabilities"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1786
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    .line 1788
    const/16 v0, 0x10

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_15

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    if-nez v0, :cond_15

    .line 1789
    iput-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPeriodicTimeInjection:Z

    .line 1790
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->requestUtcTime()V

    .line 1793
    :cond_15
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    and-int/lit8 v0, p1, 0x40

    const/16 v4, 0x40

    if-ne v0, v4, :cond_2d

    move v0, v1

    :goto_1e
    invoke-virtual {v3, v0}, Lcom/android/server/location/GpsMeasurementsProvider;->onCapabilitiesUpdated(Z)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    and-int/lit16 v3, p1, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_2f

    :goto_29
    invoke-virtual {v0, v1}, Lcom/android/server/location/GpsNavigationMessageProvider;->onCapabilitiesUpdated(Z)V

    .line 1797
    return-void

    :cond_2d
    move v0, v2

    .line 1793
    goto :goto_1e

    :cond_2f
    move v1, v2

    .line 1795
    goto :goto_29
.end method

.method private setRouting()V
    .registers 5

    .prologue
    .line 2284
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    if-nez v1, :cond_5

    .line 2299
    :goto_4
    return-void

    .line 2289
    :cond_5
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestRouteToHostAddress(ILjava/net/InetAddress;)Z

    move-result v0

    .line 2294
    .local v0, "result":Z
    if-nez v0, :cond_2c

    .line 2295
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error requesting route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 2297
    :cond_2c
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Successfully requested route to host: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mAGpsDataConnectionIpAddr:Ljava/net/InetAddress;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private setSuplHostPort(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "hostString"    # Ljava/lang/String;
    .param p2, "portString"    # Ljava/lang/String;

    .prologue
    .line 1025
    if-eqz p1, :cond_4

    .line 1026
    iput-object p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    .line 1028
    :cond_4
    if-eqz p2, :cond_c

    .line 1030
    :try_start_6
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_c} :catch_24

    .line 1035
    :cond_c
    :goto_c
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    if-eqz v1, :cond_23

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    if-lez v1, :cond_23

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    const v2, 0xffff

    if-gt v1, v2, :cond_23

    .line 1038
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerHost:Ljava/lang/String;

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplServerPort:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/location/GpsLocationProvider;->native_set_agps_server(ILjava/lang/String;I)V

    .line 1040
    :cond_23
    return-void

    .line 1031
    :catch_24
    move-exception v0

    .line 1032
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v1, "GpsLocationProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unable to parse SUPL_PORT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c
.end method

.method private startNavigating(Z)V
    .registers 12
    .param p1, "singleShot"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1346
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_7e

    .line 1347
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startNavigating, singleShot is "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1348
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1349
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1350
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1351
    iput-boolean p1, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1352
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1354
    iput-boolean v8, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsTimeSyncFlag:Z

    .line 1357
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "assisted_gps_enabled"

    invoke-static {v0, v1, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_7f

    move v6, v8

    .line 1360
    .local v6, "agpsEnabled":Z
    :goto_3b
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, v0, v6, p1}, Lcom/android/server/location/GpsLocationProvider;->getSuplMode(Ljava/util/Properties;ZZ)I

    move-result v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    .line 1365
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    packed-switch v0, :pswitch_data_c4

    .line 1376
    const-string v7, "unknown"

    .line 1379
    .local v7, "mode":Ljava/lang/String;
    :goto_4a
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setting position_mode to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1382
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_8a

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1383
    .local v3, "interval":I
    :goto_6a
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_8d

    .line 1385
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1386
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    .end local v3    # "interval":I
    .end local v6    # "agpsEnabled":Z
    .end local v7    # "mode":Ljava/lang/String;
    :cond_7e
    :goto_7e
    return-void

    :cond_7f
    move v6, v2

    .line 1357
    goto :goto_3b

    .line 1367
    .restart local v6    # "agpsEnabled":Z
    :pswitch_81
    const-string v7, "standalone"

    .line 1368
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_4a

    .line 1370
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_84
    const-string v7, "MS_ASSISTED"

    .line 1371
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_4a

    .line 1373
    .end local v7    # "mode":Ljava/lang/String;
    :pswitch_87
    const-string v7, "MS_BASED"

    .line 1374
    .restart local v7    # "mode":Ljava/lang/String;
    goto :goto_4a

    .line 1382
    :cond_8a
    const/16 v3, 0x3e8

    goto :goto_6a

    .line 1389
    .restart local v3    # "interval":I
    :cond_8d
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_start()Z

    move-result v0

    if-nez v0, :cond_9d

    .line 1390
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1391
    const-string v0, "GpsLocationProvider"

    const-string v1, "native_start failed in startNavigating()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e

    .line 1396
    :cond_9d
    invoke-direct {p0, v8, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1397
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixRequestTime:J

    .line 1398
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 1401
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    const v1, 0xea60

    if-lt v0, v1, :cond_7e

    .line 1402
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/32 v8, 0xea60

    add-long/2addr v4, v8

    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_7e

    .line 1365
    :pswitch_data_c4
    .packed-switch 0x0
        :pswitch_81
        :pswitch_87
        :pswitch_84
    .end packed-switch
.end method

.method private stopNavigating()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1410
    const-string v0, "GpsLocationProvider"

    const-string v1, "stopNavigating"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1411
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_1f

    .line 1412
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    .line 1413
    iput-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mSingleShot:Z

    .line 1414
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_stop()Z

    .line 1415
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeToFirstFix:I

    .line 1416
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLastFixTime:J

    .line 1417
    iput v2, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationFlags:I

    .line 1420
    const/4 v0, 0x1

    invoke-direct {p0, v0, v2}, Lcom/android/server/location/GpsLocationProvider;->updateStatus(II)V

    .line 1422
    :cond_1f
    return-void
.end method

.method private subscriptionOrSimChanged(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 512
    const-string v2, "GpsLocationProvider"

    const-string v3, "received SIM realted action: "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 515
    .local v1, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "mccMnc":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 517
    const-string v2, "GpsLocationProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SIM MCC/MNC is available: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 519
    :try_start_36
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mProperties:Ljava/util/Properties;

    invoke-direct {p0, p1, v2}, Lcom/android/server/location/GpsLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V

    .line 520
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    iget-boolean v4, p0, Lcom/android/server/location/GpsLocationProvider;->mSuplEsEnabled:Z

    invoke-virtual {v2, v4}, Lcom/android/internal/location/GpsNetInitiatedHandler;->setSuplEsEnabled(Z)V

    .line 521
    monitor-exit v3

    .line 525
    :goto_43
    return-void

    .line 521
    :catchall_44
    move-exception v2

    monitor-exit v3
    :try_end_46
    .catchall {:try_start_36 .. :try_end_46} :catchall_44

    throw v2

    .line 523
    :cond_47
    const-string v2, "GpsLocationProvider"

    const-string v3, "SIM MCC/MNC is still not available"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_43
.end method

.method private translateToApnIpType(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "ipProtocol"    # Ljava/lang/String;
    .param p2, "apn"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    const/4 v3, 0x0

    .line 2267
    const-string v4, "IP"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 2280
    :goto_b
    return v1

    .line 2270
    :cond_c
    const-string v4, "IPV6"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    move v1, v2

    .line 2271
    goto :goto_b

    .line 2273
    :cond_16
    const-string v4, "IPV4V6"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 2274
    const/4 v1, 0x3

    goto :goto_b

    .line 2278
    :cond_20
    const-string v4, "Unknown IP Protocol: %s, for APN: %s"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v1

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 2279
    .local v0, "message":Ljava/lang/String;
    const-string v1, "GpsLocationProvider"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v3

    .line 2280
    goto :goto_b
.end method

.method private updateClientUids(Landroid/os/WorkSource;)V
    .registers 13
    .param p1, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1222
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mClientSource:Landroid/os/WorkSource;

    invoke-virtual {v7, p1}, Landroid/os/WorkSource;->setReturningDiffs(Landroid/os/WorkSource;)[Landroid/os/WorkSource;

    move-result-object v0

    .line 1223
    .local v0, "changes":[Landroid/os/WorkSource;
    if-nez v0, :cond_9

    .line 1264
    :cond_8
    return-void

    .line 1226
    :cond_9
    const/4 v7, 0x0

    aget-object v5, v0, v7

    .line 1227
    .local v5, "newWork":Landroid/os/WorkSource;
    const/4 v7, 0x1

    aget-object v2, v0, v7

    .line 1230
    .local v2, "goneWork":Landroid/os/WorkSource;
    if-eqz v5, :cond_41

    .line 1231
    const/4 v4, -0x1

    .line 1232
    .local v4, "lastuid":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    invoke-virtual {v5}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_41

    .line 1234
    :try_start_19
    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1235
    .local v6, "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v5, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->startOperation(Landroid/os/IBinder;IILjava/lang/String;)I

    .line 1237
    if-eq v6, v4, :cond_35

    .line 1238
    move v4, v6

    .line 1239
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStartGps(I)V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_35} :catch_38

    .line 1232
    .end local v6    # "uid":I
    :cond_35
    :goto_35
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 1241
    :catch_38
    move-exception v1

    .line 1242
    .local v1, "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_35

    .line 1248
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "lastuid":I
    :cond_41
    if-eqz v2, :cond_8

    .line 1249
    const/4 v4, -0x1

    .line 1250
    .restart local v4    # "lastuid":I
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_45
    invoke-virtual {v2}, Landroid/os/WorkSource;->size()I

    move-result v7

    if-ge v3, v7, :cond_8

    .line 1252
    :try_start_4b
    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->get(I)I

    move-result v6

    .line 1253
    .restart local v6    # "uid":I
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    iget-object v8, p0, Lcom/android/server/location/GpsLocationProvider;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    invoke-static {v8}, Landroid/app/AppOpsManager;->getToken(Lcom/android/internal/app/IAppOpsService;)Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v2, v3}, Landroid/os/WorkSource;->getName(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {v7, v8, v9, v6, v10}, Lcom/android/internal/app/IAppOpsService;->finishOperation(Landroid/os/IBinder;IILjava/lang/String;)V

    .line 1255
    if-eq v6, v4, :cond_67

    .line 1256
    move v4, v6

    .line 1257
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v7, v6}, Lcom/android/internal/app/IBatteryStats;->noteStopGps(I)V
    :try_end_67
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_67} :catch_6a

    .line 1250
    .end local v6    # "uid":I
    :cond_67
    :goto_67
    add-int/lit8 v3, v3, 0x1

    goto :goto_45

    .line 1259
    :catch_6a
    move-exception v1

    .line 1260
    .restart local v1    # "e":Landroid/os/RemoteException;
    const-string v7, "GpsLocationProvider"

    const-string v8, "RemoteException"

    invoke-static {v7, v8, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_67
.end method

.method private updateLowPowerMode()V
    .registers 4

    .prologue
    const/4 v0, 0x1

    .line 549
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "batterySaverGpsMode"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    packed-switch v1, :pswitch_data_2e

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, "disableGps":Z
    :goto_11
    iget-boolean v1, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-eq v0, v1, :cond_1a

    .line 558
    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    .line 559
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->updateRequirements()V

    .line 561
    :cond_1a
    return-void

    .line 552
    .end local v0    # "disableGps":Z
    :pswitch_1b
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v1

    if-eqz v1, :cond_2c

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v1

    if-nez v1, :cond_2c

    .line 553
    .restart local v0    # "disableGps":Z
    :goto_2b
    goto :goto_11

    .line 552
    .end local v0    # "disableGps":Z
    :cond_2c
    const/4 v0, 0x0

    goto :goto_2b

    .line 549
    :pswitch_data_2e
    .packed-switch 0x1
        :pswitch_1b
    .end packed-switch
.end method

.method private updateRequirements()V
    .registers 11

    .prologue
    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 1167
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    if-nez v0, :cond_b

    .line 1218
    :cond_a
    :goto_a
    return-void

    .line 1171
    :cond_b
    const/4 v8, 0x0

    .line 1174
    .local v8, "singleShot":Z
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_39

    .line 1178
    const/4 v8, 0x1

    .line 1180
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-object v0, v0, Lcom/android/internal/location/ProviderRequest;->locationRequests:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :cond_25
    :goto_25
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/location/LocationRequest;

    .line 1181
    .local v7, "lr":Landroid/location/LocationRequest;
    invoke-virtual {v7}, Landroid/location/LocationRequest;->getNumUpdates()I

    move-result v0

    if-eq v0, v9, :cond_25

    .line 1182
    const/4 v8, 0x0

    goto :goto_25

    .line 1187
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v7    # "lr":Landroid/location/LocationRequest;
    :cond_39
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setRequest "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-boolean v0, v0, Lcom/android/internal/location/ProviderRequest;->reportLocation:Z

    if-eqz v0, :cond_be

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    if-nez v0, :cond_be

    .line 1190
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mWorkSource:Landroid/os/WorkSource;

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1192
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v0, v0, Lcom/android/internal/location/ProviderRequest;->interval:J

    long-to-int v0, v0

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1195
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    int-to-long v0, v0

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_95

    .line 1196
    const-string v0, "GpsLocationProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "interval overflow: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/location/GpsLocationProvider;->mProviderRequest:Lcom/android/internal/location/ProviderRequest;

    iget-wide v4, v3, Lcom/android/internal/location/ProviderRequest;->interval:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1197
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    .line 1201
    :cond_95
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-eqz v0, :cond_b5

    invoke-direct {p0, v9}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 1203
    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mPositionMode:I

    iget v3, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/location/GpsLocationProvider;->native_set_position_mode(IIIII)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1205
    const-string v0, "GpsLocationProvider"

    const-string v1, "set_position_mode failed in setMinTime()"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_a

    .line 1207
    :cond_b5
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStarted:Z

    if-nez v0, :cond_a

    .line 1209
    invoke-direct {p0, v8}, Lcom/android/server/location/GpsLocationProvider;->startNavigating(Z)V

    goto/16 :goto_a

    .line 1212
    :cond_be
    new-instance v0, Landroid/os/WorkSource;

    invoke-direct {v0}, Landroid/os/WorkSource;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->updateClientUids(Landroid/os/WorkSource;)V

    .line 1214
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->stopNavigating()V

    .line 1215
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mWakeupIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 1216
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mTimeoutIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    goto/16 :goto_a
.end method

.method private updateStatus(II)V
    .registers 5
    .param p1, "status"    # I
    .param p2, "svCount"    # I

    .prologue
    .line 1141
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    if-eq p2, v0, :cond_19

    .line 1142
    :cond_8
    iput p1, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    .line 1143
    iput p2, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    .line 1144
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mLocationExtras:Landroid/os/Bundle;

    const-string v1, "satellites"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1145
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    .line 1147
    :cond_19
    return-void
.end method

.method private xtraDownloadRequest()V
    .registers 4

    .prologue
    .line 1803
    const-string v0, "GpsLocationProvider"

    const-string v1, "xtraDownloadRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1804
    const/4 v0, 0x6

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1805
    return-void
.end method


# virtual methods
.method public disable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 1105
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1106
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-nez v0, :cond_a

    monitor-exit v1

    .line 1111
    :goto_9
    return-void

    .line 1107
    :cond_a
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1108
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 1110
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_9

    .line 1108
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public doStartUsingNetwork()I
    .registers 9

    .prologue
    const/4 v4, 0x3

    .line 2367
    const/4 v1, 0x0

    .line 2368
    .local v1, "networkType":I
    const-string v0, "enableSUPL"

    .line 2369
    .local v0, "feature":Ljava/lang/String;
    iput v4, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    .line 2371
    iget-object v5, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    const-string v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 2375
    .local v2, "phone":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    .line 2377
    .local v3, "phoneNetwokrType":I
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] WARNING: GpsLocationProvider  phoneNetwokrType=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] isESUPL=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isESUPL()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] isEmergencyCallDialed=["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isEmergencyCallDialed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2380
    const/16 v5, 0xd

    if-ne v3, v5, :cond_66

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isESUPL()Z

    move-result v5

    if-eqz v5, :cond_66

    .line 2381
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isEmergencyCallDialed()Z

    move-result v5

    if-eqz v5, :cond_9f

    .line 2382
    const/16 v1, 0xf

    .line 2383
    const-string v0, "enableEmergency"

    .line 2384
    const/16 v5, 0xf

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    .line 2392
    :cond_66
    :goto_66
    if-nez v1, :cond_6e

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hasIccCard()Z

    move-result v5

    if-eqz v5, :cond_74

    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isAirplaneModeOn()Z

    move-result v5

    if-eqz v5, :cond_a8

    .line 2394
    :cond_74
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] APN_REQUEST_FAILED: hasIccCard="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->hasIccCard()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " isAirplaneModeOn="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lcom/android/server/location/GpsLocationProvider;->isAirplaneModeOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2400
    :goto_9e
    return v4

    .line 2386
    :cond_9f
    const/16 v1, 0xb

    .line 2387
    const-string v0, "enableIMS"

    .line 2388
    const/16 v5, 0xb

    iput v5, p0, Lcom/android/server/location/GpsLocationProvider;->routeNetworkType:I

    goto :goto_66

    .line 2400
    :cond_a8
    iget-object v4, p0, Lcom/android/server/location/GpsLocationProvider;->mConnMgr:Landroid/net/ConnectivityManager;

    invoke-virtual {v4, v1, v0}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result v4

    goto :goto_9e
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 2303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2304
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v1, "  mFixInterval="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mFixInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2305
    const-string v1, "  mDisableGps (battery saver mode)="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/location/GpsLocationProvider;->mDisableGps:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2306
    const-string v1, "  mEngineCapabilities=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/location/GpsLocationProvider;->mEngineCapabilities:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2307
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_48

    const-string v1, "SCHED "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2308
    :cond_48
    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_54

    const-string v1, "MSB "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2309
    :cond_54
    const/4 v1, 0x4

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_60

    const-string v1, "MSA "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2310
    :cond_60
    const/16 v1, 0x8

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_6d

    const-string v1, "SINGLE_SHOT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2311
    :cond_6d
    const/16 v1, 0x10

    invoke-direct {p0, v1}, Lcom/android/server/location/GpsLocationProvider;->hasCapability(I)Z

    move-result v1

    if-eqz v1, :cond_7a

    const-string v1, "ON_DEMAND_TIME "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2312
    :cond_7a
    const-string v1, ")\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2314
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->native_get_internal_state()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2315
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    .line 2316
    return-void
.end method

.method public enable()V
    .registers 4

    .prologue
    const/4 v2, 0x1

    .line 1016
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1017
    :try_start_4
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    if-eqz v0, :cond_a

    monitor-exit v1

    .line 1022
    :goto_9
    return-void

    .line 1018
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    .line 1019
    monitor-exit v1
    :try_end_e
    .catchall {:try_start_4 .. :try_end_e} :catchall_14

    .line 1021
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-direct {p0, v0, v2, v1}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    goto :goto_9

    .line 1019
    :catchall_14
    move-exception v0

    :try_start_15
    monitor-exit v1
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    throw v0
.end method

.method public getGpsGeofenceProxy()Landroid/location/IGpsGeofenceHardware;
    .registers 2

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsGeofenceBinder:Landroid/location/IGpsGeofenceHardware;

    return-object v0
.end method

.method public getGpsMeasurementsProvider()Lcom/android/server/location/GpsMeasurementsProvider;
    .registers 2

    .prologue
    .line 442
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsMeasurementsProvider:Lcom/android/server/location/GpsMeasurementsProvider;

    return-object v0
.end method

.method public getGpsNavigationMessageProvider()Lcom/android/server/location/GpsNavigationMessageProvider;
    .registers 2

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsNavigationMessageProvider:Lcom/android/server/location/GpsNavigationMessageProvider;

    return-object v0
.end method

.method public getGpsStatusProvider()Landroid/location/IGpsStatusProvider;
    .registers 2

    .prologue
    .line 434
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mGpsStatusProvider:Landroid/location/IGpsStatusProvider;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 817
    const-string v0, "gps"

    return-object v0
.end method

.method public getNetInitiatedListener()Landroid/location/INetInitiatedListener;
    .registers 2

    .prologue
    .line 1978
    iget-object v0, p0, Lcom/android/server/location/GpsLocationProvider;->mNetInitiatedListener:Landroid/location/INetInitiatedListener;

    return-object v0
.end method

.method public getProperties()Lcom/android/internal/location/ProviderProperties;
    .registers 2

    .prologue
    .line 822
    sget-object v0, Lcom/android/server/location/GpsLocationProvider;->PROPERTIES:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method public getStatus(Landroid/os/Bundle;)I
    .registers 4
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1134
    if-eqz p1, :cond_9

    .line 1135
    const-string v0, "satellites"

    iget v1, p0, Lcom/android/server/location/GpsLocationProvider;->mSvCount:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1137
    :cond_9
    iget v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatus:I

    return v0
.end method

.method public getStatusUpdateTime()J
    .registers 3

    .prologue
    .line 1151
    iget-wide v0, p0, Lcom/android/server/location/GpsLocationProvider;->mStatusUpdateTime:J

    return-wide v0
.end method

.method isAirplaneModeOn()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2425
    iget-object v2, p0, Lcom/android/server/location/GpsLocationProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_11

    :goto_10
    return v0

    :cond_11
    move v0, v1

    goto :goto_10
.end method

.method public isESUPL()Z
    .registers 2

    .prologue
    .line 2356
    const-string v0, "/data/agps_supl/isESUPL"

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmergencyCallDialed()Z
    .registers 2

    .prologue
    .line 2360
    const-string v0, "/data/agps_supl/isEmergencyCallDialed"

    invoke-virtual {p0, v0}, Lcom/android/server/location/GpsLocationProvider;->isFileExists(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c

    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mIsEmergencyCallDialed:Z

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public isEnabled()Z
    .registers 3

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/server/location/GpsLocationProvider;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1128
    :try_start_3
    iget-boolean v0, p0, Lcom/android/server/location/GpsLocationProvider;->mEnabled:Z

    monitor-exit v1

    return v0

    .line 1129
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public isFileExists(Ljava/lang/String;)Z
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 2351
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2352
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method protected isWapPushLegal(Landroid/content/Intent;)Z
    .registers 10
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 2321
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    .line 2322
    .local v2, "type":Ljava/lang/String;
    const-string v5, "application/vnd.omaloc-supl-init"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 2323
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] ERR: content type is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], but we expect [application/vnd.omaloc-supl-init]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2346
    .end local v2    # "type":Ljava/lang/String;
    :goto_2b
    return v4

    .line 2327
    .restart local v2    # "type":Ljava/lang/String;
    :cond_2c
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "wspHeaders"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 2329
    .local v3, "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez v3, :cond_47

    .line 2330
    const-string v5, "GpsLocationProvider"

    const-string v6, "[agps] ERR: wspHeader is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_41} :catch_42

    goto :goto_2b

    .line 2344
    .end local v2    # "type":Ljava/lang/String;
    .end local v3    # "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_42
    move-exception v1

    .line 2345
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b

    .line 2333
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "type":Ljava/lang/String;
    .restart local v3    # "wspHeaders":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_47
    :try_start_47
    const-string v5, "X-Wap-Application-Id"

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2334
    .local v0, "appId":Ljava/lang/String;
    if-nez v0, :cond_59

    .line 2335
    const-string v5, "GpsLocationProvider"

    const-string v6, "[agps] ERR: appId(X-Wap-Application-Id) is null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2b

    .line 2338
    :cond_59
    const-string v5, "x-oma-application:ulp.ua"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_80

    .line 2339
    const-string v5, "GpsLocationProvider"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[agps] ERR: appId is ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "], but we expect [x-oma-application:ulp.ua]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7f
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_7f} :catch_42

    goto :goto_2b

    .line 2343
    :cond_80
    const/4 v4, 0x1

    goto :goto_2b
.end method

.method public reportNiNotification(IIIIILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .registers 21
    .param p1, "notificationId"    # I
    .param p2, "niType"    # I
    .param p3, "notifyFlags"    # I
    .param p4, "timeout"    # I
    .param p5, "defaultResponse"    # I
    .param p6, "requestorId"    # Ljava/lang/String;
    .param p7, "text"    # Ljava/lang/String;
    .param p8, "requestorIdEncoding"    # I
    .param p9, "textEncoding"    # I
    .param p10, "extras"    # Ljava/lang/String;

    .prologue
    .line 1995
    const-string v7, "GpsLocationProvider"

    const-string v8, "reportNiNotification: entered"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1996
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notificationId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", niType: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", notifyFlags: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", timeout: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", defaultResponse: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2002
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "requestorId: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", text: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p7

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", requestorIdEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", textEncoding: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move/from16 v0, p9

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2007
    new-instance v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;

    invoke-direct {v6}, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;-><init>()V

    .line 2009
    .local v6, "notification":Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;
    iput p1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->notificationId:I

    .line 2010
    iput p2, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->niType:I

    .line 2011
    and-int/lit8 v7, p3, 0x1

    if-eqz v7, :cond_f3

    const/4 v7, 0x1

    :goto_93
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needNotify:Z

    .line 2012
    and-int/lit8 v7, p3, 0x2

    if-eqz v7, :cond_f5

    const/4 v7, 0x1

    :goto_9a
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->needVerify:Z

    .line 2013
    and-int/lit8 v7, p3, 0x4

    if-eqz v7, :cond_f7

    const/4 v7, 0x1

    :goto_a1
    iput-boolean v7, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->privacyOverride:Z

    .line 2014
    iput p4, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->timeout:I

    .line 2015
    iput p5, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->defaultResponse:I

    .line 2016
    move-object/from16 v0, p6

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorId:Ljava/lang/String;

    .line 2017
    move-object/from16 v0, p7

    iput-object v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->text:Ljava/lang/String;

    .line 2018
    move/from16 v0, p8

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->requestorIdEncoding:I

    .line 2019
    move/from16 v0, p9

    iput v0, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->textEncoding:I

    .line 2023
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 2025
    .local v1, "bundle":Landroid/os/Bundle;
    if-nez p10, :cond_c0

    const-string p10, ""

    .line 2026
    :cond_c0
    new-instance v4, Ljava/util/Properties;

    invoke-direct {v4}, Ljava/util/Properties;-><init>()V

    .line 2029
    .local v4, "extraProp":Ljava/util/Properties;
    :try_start_c5
    new-instance v7, Ljava/io/StringReader;

    move-object/from16 v0, p10

    invoke-direct {v7, v0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/Properties;->load(Ljava/io/Reader;)V
    :try_end_cf
    .catch Ljava/io/IOException; {:try_start_c5 .. :try_end_cf} :catch_f9

    .line 2036
    :goto_cf
    invoke-virtual {v4}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_d7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_115

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2038
    .local v3, "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v1, v7, v8}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d7

    .line 2011
    .end local v1    # "bundle":Landroid/os/Bundle;
    .end local v3    # "ent":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v4    # "extraProp":Ljava/util/Properties;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_f3
    const/4 v7, 0x0

    goto :goto_93

    .line 2012
    :cond_f5
    const/4 v7, 0x0

    goto :goto_9a

    .line 2013
    :cond_f7
    const/4 v7, 0x0

    goto :goto_a1

    .line 2031
    .restart local v1    # "bundle":Landroid/os/Bundle;
    .restart local v4    # "extraProp":Ljava/util/Properties;
    :catch_f9
    move-exception v2

    .line 2033
    .local v2, "e":Ljava/io/IOException;
    const-string v7, "GpsLocationProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "reportNiNotification cannot parse extras data: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, p10

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_cf

    .line 2041
    .end local v2    # "e":Ljava/io/IOException;
    .restart local v5    # "i$":Ljava/util/Iterator;
    :cond_115
    iput-object v1, v6, Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;->extras:Landroid/os/Bundle;

    .line 2043
    iget-object v7, p0, Lcom/android/server/location/GpsLocationProvider;->mNIHandler:Lcom/android/internal/location/GpsNetInitiatedHandler;

    invoke-virtual {v7, v6}, Lcom/android/internal/location/GpsNetInitiatedHandler;->handleNiNotification(Lcom/android/internal/location/GpsNetInitiatedHandler$GpsNiNotification;)V

    .line 2044
    return-void
.end method

.method public sendExtraCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .registers 9
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 1269
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1270
    .local v0, "identity":J
    const/4 v2, 0x0

    .line 1272
    .local v2, "result":Z
    const-string v3, "delete_aiding_data"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1273
    invoke-direct {p0, p2}, Lcom/android/server/location/GpsLocationProvider;->deleteAidingData(Landroid/os/Bundle;)Z

    move-result v2

    .line 1286
    :cond_11
    :goto_11
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1287
    return v2

    .line 1274
    :cond_15
    const-string v3, "force_time_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1275
    const/4 v3, 0x5

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {p0, v3, v4, v5}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1276
    const/4 v2, 0x1

    goto :goto_11

    .line 1277
    :cond_25
    const-string v3, "force_xtra_injection"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 1278
    iget-boolean v3, p0, Lcom/android/server/location/GpsLocationProvider;->mSupportsXtra:Z

    if-eqz v3, :cond_11

    .line 1279
    invoke-direct {p0}, Lcom/android/server/location/GpsLocationProvider;->xtraDownloadRequest()V

    .line 1280
    const/4 v2, 0x1

    goto :goto_11

    .line 1283
    :cond_36
    const-string v3, "GpsLocationProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sendExtraCommand: unknown command "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public setRequest(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V
    .registers 6
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    .line 1156
    const/4 v0, 0x3

    const/4 v1, 0x0

    new-instance v2, Lcom/android/server/location/GpsLocationProvider$GpsRequest;

    invoke-direct {v2, p1, p2}, Lcom/android/server/location/GpsLocationProvider$GpsRequest;-><init>(Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 1157
    return-void
.end method

.method public updateNetworkState(ILandroid/net/NetworkInfo;)V
    .registers 4
    .param p1, "state"    # I
    .param p2, "info"    # Landroid/net/NetworkInfo;

    .prologue
    .line 826
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/location/GpsLocationProvider;->sendMessage(IILjava/lang/Object;)V

    .line 827
    return-void
.end method
