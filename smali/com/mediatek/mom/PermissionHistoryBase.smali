.class public Lcom/mediatek/mom/PermissionHistoryBase;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mEndTime:J

.field private mStartTime:J


# direct methods
.method private constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(J)V
    .registers 6

    .prologue
    .line 53
    const-wide/16 v0, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 54
    return-void
.end method

.method public constructor <init>(JJ)V
    .registers 10

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    cmp-long v0, p1, p3

    if-lez v0, :cond_10

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-eqz v0, :cond_10

    move-wide v2, p1

    move-wide p1, p3

    move-wide p3, v2

    .line 62
    :cond_10
    iput-wide p1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    .line 63
    iput-wide p3, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    .line 64
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 130
    if-ne p0, p1, :cond_5

    .line 144
    :cond_4
    :goto_4
    return v0

    .line 134
    :cond_5
    instance-of v2, p1, Lcom/mediatek/mom/PermissionHistoryBase;

    if-nez v2, :cond_b

    move v0, v1

    .line 135
    goto :goto_4

    .line 138
    :cond_b
    check-cast p1, Lcom/mediatek/mom/PermissionHistoryBase;

    .line 140
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    invoke-virtual {p1}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_21

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    invoke-virtual {p1}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    :cond_21
    move v0, v1

    .line 142
    goto :goto_4
.end method

.method public getEndTime()J
    .registers 3

    .prologue
    .line 109
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    return-wide v0
.end method

.method public getStartTime()J
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    return-wide v0
.end method

.method public hashCode()I
    .registers 5

    .prologue
    .line 114
    .line 115
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x12b

    .line 116
    mul-int/lit8 v0, v0, 0xd

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    .line 118
    return v0
.end method

.method public overlap(JJ)Z
    .registers 12

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 85
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_13

    .line 86
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v2, p1, v2

    if-gtz v2, :cond_11

    .line 95
    :cond_10
    :goto_10
    return v0

    :cond_11
    move v0, v1

    .line 89
    goto :goto_10

    .line 92
    :cond_13
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v2, v2, p3

    if-gtz v2, :cond_1f

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    cmp-long v2, v2, p1

    if-gez v2, :cond_10

    :cond_1f
    move v0, v1

    .line 93
    goto :goto_10
.end method

.method public setEndTime(J)V
    .registers 4

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    .line 106
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PackagePermissionHistory {"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public totalTime()J
    .registers 5

    .prologue
    .line 67
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_10

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    sub-long/2addr v0, v2

    .line 70
    :goto_f
    return-wide v0

    :cond_10
    iget-wide v0, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    sub-long/2addr v0, v2

    goto :goto_f
.end method

.method public within(J)Z
    .registers 10

    .prologue
    const/4 v0, 0x1

    .line 75
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_10

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_10

    .line 80
    :cond_f
    :goto_f
    return v0

    .line 77
    :cond_10
    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mStartTime:J

    cmp-long v1, p1, v2

    if-ltz v1, :cond_1c

    iget-wide v2, p0, Lcom/mediatek/mom/PermissionHistoryBase;->mEndTime:J

    cmp-long v1, p1, v2

    if-lez v1, :cond_f

    .line 80
    :cond_1c
    const/4 v0, 0x0

    goto :goto_f
.end method
