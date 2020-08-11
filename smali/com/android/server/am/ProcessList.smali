.class final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# static fields
.field static final BACKUP_APP_ADJ:I = 0x3

.field static final CACHED_APP_MAX_ADJ:I = 0xf

.field static final CACHED_APP_MIN_ADJ:I = 0x9

.field static final FOREGROUND_APP_ADJ:I = 0x0

.field static final HEAVY_WEIGHT_APP_ADJ:I = 0x4

.field static final HOME_APP_ADJ:I = 0x6

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_TARGET:B = 0x0t

.field static final MAX_CACHED_APPS:I

.field private static final MAX_EMPTY_APPS:I

.field static final MAX_EMPTY_TIME:J = 0x1b7740L

.field static final MIN_CACHED_APPS:I = 0x2

.field static final MIN_CRASH_INTERVAL:I = 0xea60

.field static final NATIVE_ADJ:I = -0x11

.field static final PAGE_SIZE:I = 0x1000

.field static final PERCEPTIBLE_APP_ADJ:I = 0x2

.field static final PERSISTENT_PROC_ADJ:I = -0xc

.field static final PERSISTENT_SERVICE_ADJ:I = -0xb

.field static final PREVIOUS_APP_ADJ:I = 0x7

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field public static final PSS_ALL_INTERVAL:I = 0x927c0

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x1b7740

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x1b7740

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0xdbba0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x124f80

.field private static final PSS_SHORT_INTERVAL:I = 0x1d4c0

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SERVICE_ADJ:I = 0x5

.field static final SERVICE_B_ADJ:I = 0x8

.field static final SYSTEM_ADJ:I = -0x10

.field static final TRIM_CACHED_APPS:I

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_EMPTY_APPS:I

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field static final UNKNOWN_ADJ:I = 0x10

.field static final VISIBLE_APP_ADJ:I = 0x1

.field private static final sFirstAwakePssTimes:[J

.field private static sLmkdOutputStream:Ljava/io/OutputStream;

.field private static sLmkdSocket:Landroid/net/LocalSocket;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstAwakePssTimes:[J

.field private static final sTestSameAwakePssTimes:[J


# instance fields
.field private mCachedRestoreLevel:J

.field private mHaveDisplaySize:Z

.field private mOomAdj:[I

.field private mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mTotalMemMb:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/16 v2, 0xe

    .line 136
    invoke-static {}, Lcom/android/server/am/ProcessList;->computeMaxCachedAppsBySystemMemory()I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    .line 142
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    invoke-static {v0}, Lcom/android/server/am/ProcessList;->computeEmptyProcessLimit(I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    .line 146
    sget v0, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_EMPTY_APPS:I

    .line 150
    sget v0, Lcom/android/server/am/ProcessList;->MAX_CACHED_APPS:I

    sget v1, Lcom/android/server/am/ProcessList;->MAX_EMPTY_APPS:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/server/am/ProcessList;->TRIM_CACHED_APPS:I

    .line 614
    new-array v0, v2, [I

    fill-array-data v0, :array_44

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 631
    new-array v0, v2, [J

    fill-array-data v0, :array_64

    sput-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 648
    new-array v0, v2, [J

    fill-array-data v0, :array_a0

    sput-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 665
    new-array v0, v2, [J

    fill-array-data v0, :array_dc

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 682
    new-array v0, v2, [J

    fill-array-data v0, :array_118

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    return-void

    .line 614
    nop

    :array_44
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    .line 631
    :array_64
    .array-data 8
        0x1d4c0
        0x1d4c0
        0x2710
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x4e20
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
        0x7530
    .end array-data

    .line 648
    :array_a0
    .array-data 8
        0xdbba0
        0xdbba0
        0x1d4c0
        0xdbba0
        0xdbba0
        0xdbba0
        0xdbba0
        0x124f80
        0x124f80
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
        0x1b7740
    .end array-data

    .line 665
    :array_dc
    .array-data 8
        0xbb8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
        0x1388
    .end array-data

    .line 682
    :array_118
    .array-data 8
        0x3a98
        0x3a98
        0x2710
        0x2710
        0x2710
        0x2710
        0x2710
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .registers 14

    .prologue
    const/16 v12, 0x9

    const/4 v11, 0x0

    const/4 v10, 0x6

    .line 197
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-array v5, v10, [I

    fill-array-data v5, :array_88

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 181
    new-array v5, v10, [I

    fill-array-data v5, :array_98

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 198
    new-instance v4, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v4}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 199
    .local v4, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 200
    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v6

    const-wide/32 v8, 0x100000

    div-long/2addr v6, v8

    iput-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 203
    const-string v5, "ro.mtk_gmo_ram_optimize"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "1"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_79

    .line 205
    const-wide/16 v2, 0x100

    .line 206
    .local v2, "LOW_LEVEL_SIZE":J
    const-wide/16 v0, 0x200

    .line 208
    .local v0, "HIGH_LEVEL_SIZE":J
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v8, 0x100

    cmp-long v5, v6, v8

    if-gtz v5, :cond_53

    .line 209
    new-array v5, v12, [I

    fill-array-data v5, :array_a8

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 220
    new-array v5, v12, [I

    fill-array-data v5, :array_be

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 277
    .end local v0    # "HIGH_LEVEL_SIZE":J
    .end local v2    # "LOW_LEVEL_SIZE":J
    :goto_4f
    invoke-direct {p0, v11, v11, v11}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 278
    return-void

    .line 231
    .restart local v0    # "HIGH_LEVEL_SIZE":J
    .restart local v2    # "LOW_LEVEL_SIZE":J
    :cond_53
    iget-wide v6, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v8, 0x200

    cmp-long v5, v6, v8

    if-gtz v5, :cond_6a

    .line 232
    new-array v5, v10, [I

    fill-array-data v5, :array_d4

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 240
    new-array v5, v10, [I

    fill-array-data v5, :array_e4

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    goto :goto_4f

    .line 249
    :cond_6a
    new-array v5, v10, [I

    fill-array-data v5, :array_f4

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 257
    new-array v5, v10, [I

    fill-array-data v5, :array_104

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    goto :goto_4f

    .line 270
    .end local v0    # "HIGH_LEVEL_SIZE":J
    .end local v2    # "LOW_LEVEL_SIZE":J
    :cond_79
    new-array v5, v10, [I

    fill-array-data v5, :array_114

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 275
    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v5, v5

    new-array v5, v5, [I

    iput-object v5, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    goto :goto_4f

    .line 175
    :array_88
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    .line 181
    :array_98
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data

    .line 209
    :array_a8
    .array-data 4
        0x0
        0x1
        0x2
        0x4
        0x6
        0x8
        0x9
        0xc
        0xf
    .end array-data

    .line 220
    :array_be
    .array-data 4
        0x1000
        0x3000
        0x5000
        0x6000
        0x7000
        0x8000
        0x9000
        0xa000
        0xc000
    .end array-data

    .line 232
    :array_d4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 240
    :array_e4
    .array-data 4
        0x6000
        0x7c00
        0x9800
        0xc000
        0xdc00
        0x10c00
    .end array-data

    .line 249
    :array_f4
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data

    .line 257
    :array_104
    .array-data 4
        0x9000
        0xc000
        0xf000
        0x12000
        0x15000
        0x19000
    .end array-data

    .line 270
    :array_114
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x9
        0xf
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 8
    .param p0, "sb"    # Ljava/lang/StringBuilder;
    .param p1, "ramKb"    # J

    .prologue
    .line 552
    const/4 v1, 0x0

    .local v1, "j":I
    const/16 v0, 0xa

    .local v0, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v1, v2, :cond_15

    .line 553
    int-to-long v2, v0

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 554
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 552
    :cond_10
    add-int/lit8 v1, v1, 0x1

    mul-int/lit8 v0, v0, 0xa

    goto :goto_3

    .line 557
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 558
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .registers 6
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "space"    # Ljava/lang/String;
    .param p2, "val"    # I
    .param p3, "base"    # I

    .prologue
    .line 455
    if-ne p2, p3, :cond_19

    .line 456
    if-nez p1, :cond_5

    .line 459
    .end local p0    # "prefix":Ljava/lang/String;
    :goto_4
    return-object p0

    .line 457
    .restart local p0    # "prefix":Ljava/lang/String;
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4

    .line 459
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sub-int v1, p2, p3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"    # I

    .prologue
    .line 451
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private static computeMaxCachedAppsBySystemMemory()I
    .registers 11

    .prologue
    .line 424
    const-string v8, "sys.cached.processes"

    const-string v9, "32,10,8"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "params":[Ljava/lang/String;
    const/16 v2, 0x20

    .local v2, "num_1G":I
    const/16 v4, 0xa

    .local v4, "num_768M":I
    const/16 v3, 0x8

    .line 426
    .local v3, "num_512M":I
    array-length v8, v5

    const/4 v9, 0x3

    if-ne v8, v9, :cond_2d

    .line 427
    const/4 v8, 0x0

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 428
    const/4 v8, 0x1

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 429
    const/4 v8, 0x2

    aget-object v8, v5, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 432
    :cond_2d
    new-instance v1, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v1}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 433
    .local v1, "memInfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 434
    invoke-virtual {v1}, Lcom/android/internal/util/MemInfoReader;->getTotalSizeKb()J

    move-result-wide v6

    .line 435
    .local v6, "totalSize":J
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "computeMaxCachedAppsBySystemMemory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " memory totalSize: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 437
    move v0, v2

    .line 438
    .local v0, "maxCachedApps":I
    const-wide/32 v8, 0xc0000

    cmp-long v8, v6, v8

    if-lez v8, :cond_91

    .line 439
    move v0, v2

    .line 446
    :goto_78
    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "computeMaxCachedAppsBySystemMemory: maxCachedApps = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 447
    return v0

    .line 440
    :cond_91
    const-wide/32 v8, 0x80000

    cmp-long v8, v6, v8

    if-lez v8, :cond_9a

    .line 441
    move v0, v4

    goto :goto_78

    .line 443
    :cond_9a
    move v0, v3

    goto :goto_78
.end method

.method public static computeNextPssTime(IZZZJ)J
    .registers 10
    .param p0, "procState"    # I
    .param p1, "first"    # Z
    .param p2, "test"    # Z
    .param p3, "sleeping"    # Z
    .param p4, "now"    # J

    .prologue
    .line 710
    const/4 v1, -0x1

    if-ne p0, v1, :cond_20

    .line 711
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[computeNextPssTime] procState = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 712
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 713
    const/16 p0, 0xd

    .line 716
    :cond_20
    if-eqz p2, :cond_2d

    if-eqz p1, :cond_2a

    sget-object v0, Lcom/android/server/am/ProcessList;->sTestFirstAwakePssTimes:[J

    .line 723
    .local v0, "table":[J
    :goto_26
    aget-wide v2, v0, p0

    add-long/2addr v2, p4

    return-wide v2

    .line 716
    .end local v0    # "table":[J
    :cond_2a
    sget-object v0, Lcom/android/server/am/ProcessList;->sTestSameAwakePssTimes:[J

    goto :goto_26

    :cond_2d
    if-eqz p1, :cond_32

    sget-object v0, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_26

    :cond_32
    sget-object v0, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    goto :goto_26
.end method

.method public static makeOomAdjString(I)Ljava/lang/String;
    .registers 7
    .param p0, "setAdj"    # I

    .prologue
    const/16 v5, -0xb

    const/16 v4, -0xc

    const/16 v3, -0x10

    const/16 v1, -0x11

    const/4 v2, 0x0

    .line 463
    const/16 v0, 0x9

    if-lt p0, v0, :cond_18

    .line 464
    const-string v0, "cch"

    const-string v1, "  "

    const/16 v2, 0x9

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 492
    :goto_17
    return-object v0

    .line 465
    :cond_18
    const/16 v0, 0x8

    if-lt p0, v0, :cond_25

    .line 466
    const-string v0, "svcb "

    const/16 v1, 0x8

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 467
    :cond_25
    const/4 v0, 0x7

    if-lt p0, v0, :cond_30

    .line 468
    const-string v0, "prev "

    const/4 v1, 0x7

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 469
    :cond_30
    const/4 v0, 0x6

    if-lt p0, v0, :cond_3b

    .line 470
    const-string v0, "home "

    const/4 v1, 0x6

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 471
    :cond_3b
    const/4 v0, 0x5

    if-lt p0, v0, :cond_46

    .line 472
    const-string v0, "svc  "

    const/4 v1, 0x5

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 473
    :cond_46
    const/4 v0, 0x4

    if-lt p0, v0, :cond_51

    .line 474
    const-string v0, "hvy  "

    const/4 v1, 0x4

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 475
    :cond_51
    const/4 v0, 0x3

    if-lt p0, v0, :cond_5c

    .line 476
    const-string v0, "bkup "

    const/4 v1, 0x3

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 477
    :cond_5c
    const/4 v0, 0x2

    if-lt p0, v0, :cond_67

    .line 478
    const-string v0, "prcp "

    const/4 v1, 0x2

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 479
    :cond_67
    const/4 v0, 0x1

    if-lt p0, v0, :cond_72

    .line 480
    const-string v0, "vis  "

    const/4 v1, 0x1

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 481
    :cond_72
    if-ltz p0, :cond_7c

    .line 482
    const-string v0, "fore "

    const/4 v1, 0x0

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 483
    :cond_7c
    if-lt p0, v5, :cond_85

    .line 484
    const-string v0, "psvc "

    invoke-static {v0, v2, p0, v5}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 485
    :cond_85
    if-lt p0, v4, :cond_8e

    .line 486
    const-string v0, "pers "

    invoke-static {v0, v2, p0, v4}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 487
    :cond_8e
    if-lt p0, v3, :cond_97

    .line 488
    const-string v0, "sys  "

    invoke-static {v0, v2, p0, v3}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto :goto_17

    .line 489
    :cond_97
    if-lt p0, v1, :cond_a1

    .line 490
    const-string v0, "ntv  "

    invoke-static {v0, v2, p0, v1}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17

    .line 492
    :cond_a1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_17
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"    # I

    .prologue
    .line 498
    packed-switch p0, :pswitch_data_34

    .line 545
    const-string v0, "??"

    .line 548
    .local v0, "procState":Ljava/lang/String;
    :goto_5
    return-object v0

    .line 500
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_6
    const-string v0, "N "

    .line 501
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 503
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_9
    const-string v0, "P "

    .line 504
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 506
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_c
    const-string v0, "PU"

    .line 507
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 509
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_f
    const-string v0, "T "

    .line 510
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 512
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_12
    const-string v0, "IF"

    .line 513
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 515
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_15
    const-string v0, "IB"

    .line 516
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 518
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_18
    const-string v0, "BU"

    .line 519
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 521
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1b
    const-string v0, "HW"

    .line 522
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 524
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_1e
    const-string v0, "S "

    .line 525
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 527
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_21
    const-string v0, "R "

    .line 528
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 530
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_24
    const-string v0, "HO"

    .line 531
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 533
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_27
    const-string v0, "LA"

    .line 534
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 536
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2a
    const-string v0, "CA"

    .line 537
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 539
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_2d
    const-string v0, "Ca"

    .line 540
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 542
    .end local v0    # "procState":Ljava/lang/String;
    :pswitch_30
    const-string v0, "CE"

    .line 543
    .restart local v0    # "procState":Ljava/lang/String;
    goto :goto_5

    .line 498
    nop

    :pswitch_data_34
    .packed-switch -0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
        :pswitch_21
        :pswitch_24
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3
    .param p0, "test"    # Z

    .prologue
    .line 704
    if-eqz p0, :cond_5

    const-wide/16 v0, 0x2710

    :goto_4
    return-wide v0

    :cond_5
    const-wide/16 v0, 0x3a98

    goto :goto_4
.end method

.method private static openLmkdSocket()Z
    .registers 5

    .prologue
    .line 782
    :try_start_0
    new-instance v1, Landroid/net/LocalSocket;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Landroid/net/LocalSocket;-><init>(I)V

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 783
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    new-instance v2, Landroid/net/LocalSocketAddress;

    const-string v3, "lmkd"

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->RESERVED:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v2, v3, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v1, v2}, Landroid/net/LocalSocket;->connect(Landroid/net/LocalSocketAddress;)V

    .line 786
    sget-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v1}, Landroid/net/LocalSocket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1e} :catch_20

    .line 794
    const/4 v1, 0x1

    .local v0, "ex":Ljava/io/IOException;
    :goto_1f
    return v1

    .line 787
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_20
    move-exception v0

    .line 788
    .restart local v0    # "ex":Ljava/io/IOException;
    const-string v1, "ActivityManager"

    const-string v2, "lowmemorykiller daemon socket open failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    .line 791
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"    # I
    .param p1, "procState2"    # I

    .prologue
    .line 700
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    sget-object v1, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v1, p1

    if-eq v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final remove(I)V
    .registers 3
    .param p0, "pid"    # I

    .prologue
    .line 774
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 775
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 776
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 777
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 778
    return-void
.end method

.method public static final setOomAdj(III)V
    .registers 13
    .param p0, "pid"    # I
    .param p1, "uid"    # I
    .param p2, "amt"    # I

    .prologue
    const/16 v1, 0x10

    .line 753
    if-ne p2, v1, :cond_5

    .line 768
    :cond_4
    :goto_4
    return-void

    .line 756
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 757
    .local v4, "start":J
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 758
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 759
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 760
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 761
    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 762
    invoke-static {v0}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 763
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 764
    .local v2, "now":J
    sub-long v6, v2, v4

    const-wide/16 v8, 0xfa

    cmp-long v1, v6, v8

    if-lez v1, :cond_4

    .line 765
    const-string v1, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SLOW OOM ADJ: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sub-long v8, v2, v4

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms for pid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method private updateOomLevels(IIZ)V
    .registers 28
    .param p1, "displayWidth"    # I
    .param p2, "displayHeight"    # I
    .param p3, "write"    # Z

    .prologue
    .line 293
    const-string v19, "ro.mtk_gmo_ram_optimize"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_a3

    .line 295
    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 296
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mCachedRestoreLevel = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz p3, :cond_a2

    .line 299
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 300
    .local v4, "buf":Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 301
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_67
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_9f

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 301
    add-int/lit8 v6, v6, 0x1

    goto :goto_67

    .line 305
    :cond_9f
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 422
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v6    # "i":I
    :cond_a2
    :goto_a2
    return-void

    .line 313
    :cond_a3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x15e

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    long-to-float v0, v0

    move/from16 v19, v0

    const/high16 v20, 0x43af0000    # 350.0f

    div-float v18, v19, v20

    .line 316
    .local v18, "scaleMem":F
    const v10, 0x5dc00

    .line 317
    .local v10, "minSize":I
    const v9, 0xfa000

    .line 318
    .local v9, "maxSize":I
    mul-int v19, p1, p2

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    int-to-float v0, v10

    move/from16 v20, v0

    sub-float v19, v19, v20

    const v20, 0x9c400

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    div-float v17, v19, v20

    .line 325
    .local v17, "scaleDisp":F
    cmpl-float v19, v18, v17

    if-lez v19, :cond_135

    move/from16 v16, v18

    .line 326
    .local v16, "scale":F
    :goto_d8
    const/16 v19, 0x0

    cmpg-float v19, v16, v19

    if-gez v19, :cond_138

    const/16 v16, 0x0

    .line 328
    :cond_e0
    :goto_e0
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e0009

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 330
    .local v12, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e0008

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 337
    .local v11, "minfree_abs":I
    const/4 v7, 0x0

    .line 339
    .local v7, "is64bit":Z
    const/4 v6, 0x0

    .restart local v6    # "i":I
    :goto_f8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_141

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v19, v0

    aget v8, v19, v6

    .line 341
    .local v8, "low":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v19, v0

    aget v5, v19, v6

    .line 347
    .local v5, "high":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-int v21, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 339
    add-int/lit8 v6, v6, 0x1

    goto :goto_f8

    .end local v5    # "high":I
    .end local v6    # "i":I
    .end local v7    # "is64bit":Z
    .end local v8    # "low":I
    .end local v11    # "minfree_abs":I
    .end local v12    # "minfree_adj":I
    .end local v16    # "scale":F
    :cond_135
    move/from16 v16, v17

    .line 325
    goto :goto_d8

    .line 327
    .restart local v16    # "scale":F
    :cond_138
    const/high16 v19, 0x3f800000    # 1.0f

    cmpl-float v19, v16, v19

    if-lez v19, :cond_e0

    const/high16 v16, 0x3f800000    # 1.0f

    goto :goto_e0

    .line 351
    .restart local v6    # "i":I
    .restart local v7    # "is64bit":Z
    .restart local v11    # "minfree_abs":I
    .restart local v12    # "minfree_adj":I
    :cond_141
    const-string v19, "ro.mediatek.cmcc.minfree.1g"

    invoke-static/range {v19 .. v19}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    const-string v20, "1"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_194

    .line 352
    const-string v19, "XXXXXX"

    const-string v20, "minfree for cmcc 1g"

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    const/4 v6, 0x0

    :goto_157
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_194

    .line 354
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    move-object/from16 v19, v0

    aget v8, v19, v6

    .line 355
    .restart local v8    # "low":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    move-object/from16 v19, v0

    aget v5, v19, v6

    .line 364
    .restart local v5    # "high":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v8

    move/from16 v20, v0

    sub-int v21, v5, v8

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v21, v21, v16

    add-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 353
    add-int/lit8 v6, v6, 0x1

    goto :goto_157

    .line 369
    .end local v5    # "high":I
    .end local v8    # "low":I
    :cond_194
    if-ltz v11, :cond_1e4

    .line 370
    const/4 v6, 0x0

    :goto_197
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_1e4

    .line 371
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    int-to-float v0, v11

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    aget v21, v21, v6

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    mul-float v20, v20, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    add-int/lit8 v22, v22, -0x1

    aget v21, v21, v22

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    div-float v20, v20, v21

    move/from16 v0, v20

    float-to-int v0, v0

    move/from16 v20, v0

    aput v20, v19, v6

    .line 370
    add-int/lit8 v6, v6, 0x1

    goto :goto_197

    .line 376
    :cond_1e4
    if-eqz v12, :cond_24c

    .line 377
    const/4 v6, 0x0

    :goto_1e7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_24c

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v20, v19, v6

    int-to-float v0, v12

    move/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    aget v22, v22, v6

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    mul-float v21, v21, v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    add-int/lit8 v23, v23, -0x1

    aget v22, v22, v23

    move/from16 v0, v22

    int-to-float v0, v0

    move/from16 v22, v0

    div-float v21, v21, v22

    move/from16 v0, v21

    float-to-int v0, v0

    move/from16 v21, v0

    add-int v20, v20, v21

    aput v20, v19, v6

    .line 380
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    if-gez v19, :cond_249

    .line 381
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aput v20, v19, v6

    .line 377
    :cond_249
    add-int/lit8 v6, v6, 0x1

    goto :goto_1e7

    .line 389
    :cond_24c
    const/16 v19, 0xf

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v20

    const-wide/16 v22, 0x400

    div-long v20, v20, v22

    const-wide/16 v22, 0x3

    div-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 390
    const-string v19, "ActivityManager"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "mCachedRestoreLevel="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    move-wide/from16 v22, v0

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    mul-int v19, p1, p2

    mul-int/lit8 v19, v19, 0x4

    mul-int/lit8 v19, v19, 0x3

    move/from16 v0, v19

    div-int/lit16 v13, v0, 0x400

    .line 395
    .local v13, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e000b

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 396
    .local v15, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x10e000a

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 398
    .local v14, "reserve_abs":I
    if-ltz v14, :cond_2a9

    .line 399
    move v13, v14

    .line 402
    :cond_2a9
    if-eqz v15, :cond_2af

    .line 403
    add-int/2addr v13, v15

    .line 404
    if-gez v13, :cond_2af

    .line 405
    const/4 v13, 0x0

    .line 409
    :cond_2af
    if-eqz p3, :cond_a2

    .line 410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    mul-int/lit8 v19, v19, 0x2

    add-int/lit8 v19, v19, 0x1

    mul-int/lit8 v19, v19, 0x4

    invoke-static/range {v19 .. v19}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 411
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    const/16 v19, 0x0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 412
    const/4 v6, 0x0

    :goto_2ce
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v6, v0, :cond_306

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    mul-int/lit16 v0, v0, 0x400

    move/from16 v19, v0

    move/from16 v0, v19

    div-int/lit16 v0, v0, 0x1000

    move/from16 v19, v0

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 414
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    move-object/from16 v19, v0

    aget v19, v19, v6

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 412
    add-int/lit8 v6, v6, 0x1

    goto :goto_2ce

    .line 417
    :cond_306
    invoke-static {v4}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;)V

    .line 418
    const-string v19, "sys.sysctl.extra_free_kbytes"

    invoke-static {v13}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_a2
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;)V
    .registers 7
    .param p0, "buf"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 799
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/4 v2, 0x3

    if-ge v1, v2, :cond_24

    .line 800
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    if-nez v2, :cond_16

    .line 801
    invoke-static {}, Lcom/android/server/am/ProcessList;->openLmkdSocket()Z

    move-result v2

    if-nez v2, :cond_16

    .line 803
    const-wide/16 v2, 0x3e8

    :try_start_10
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_13
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_13} :catch_36

    .line 799
    :goto_13
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 811
    :cond_16
    :try_start_16
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdOutputStream:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    invoke-virtual {v2, v3, v4, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_24
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_24} :catch_25

    .line 825
    :cond_24
    return-void

    .line 813
    :catch_25
    move-exception v0

    .line 814
    .local v0, "ex":Ljava/io/IOException;
    const-string v2, "ActivityManager"

    const-string v3, "Error writing to lowmemorykiller socket"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 818
    :try_start_2d
    sget-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_32
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_32} :catch_38

    .line 822
    :goto_32
    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/am/ProcessList;->sLmkdSocket:Landroid/net/LocalSocket;

    goto :goto_13

    .line 804
    .end local v0    # "ex":Ljava/io/IOException;
    :catch_36
    move-exception v2

    goto :goto_13

    .line 819
    .restart local v0    # "ex":Ljava/io/IOException;
    :catch_38
    move-exception v2

    goto :goto_32
.end method


# virtual methods
.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"    # Lcom/android/server/wm/WindowManagerService;

    .prologue
    const/4 v3, 0x1

    .line 281
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v1, :cond_1f

    .line 282
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 283
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 284
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    .line 285
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 286
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 289
    .end local v0    # "p":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .prologue
    .line 740
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getMemLevel(I)J
    .registers 6
    .param p1, "adjustment"    # I

    .prologue
    .line 727
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v1, v1

    if-ge v0, v1, :cond_17

    .line 728
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v1, v1, v0

    if-gt p1, v1, :cond_14

    .line 729
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    .line 732
    :goto_13
    return-wide v2

    .line 727
    :cond_14
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 732
    :cond_17
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    aget v1, v1, v2

    mul-int/lit16 v1, v1, 0x400

    int-to-long v2, v1

    goto :goto_13
.end method
