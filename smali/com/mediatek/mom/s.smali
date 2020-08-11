.class Lcom/mediatek/mom/s;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static an:Lcom/mediatek/mom/s;


# instance fields
.field private ao:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/q;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/mom/s;->an:Lcom/mediatek/mom/s;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    .line 53
    return-void
.end method

.method private a(IJJ)Ljava/util/List;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJJ)",
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/mom/PermissionHistoryBase;",
            ">;"
        }
    .end annotation

    .prologue
    .line 161
    const-wide/16 v8, 0x0

    .line 162
    const-wide/16 v6, 0x0

    .line 163
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 165
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    monitor-enter v11

    .line 166
    :try_start_e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    .line 167
    :cond_16
    :goto_16
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_91

    .line 168
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/mediatek/mom/q;

    .line 170
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getUserId()I

    move-result v5

    move/from16 v0, p1

    if-ne v0, v5, :cond_16

    .line 173
    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/mediatek/mom/q;->overlap(JJ)Z

    move-result v5

    const/4 v13, 0x1

    if-ne v5, v13, :cond_7a

    .line 174
    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-nez v5, :cond_53

    .line 175
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getStartTime()J

    move-result-wide v6

    .line 176
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v8

    const-wide/16 v14, 0x0

    cmp-long v5, v8, v14

    if-nez v5, :cond_4e

    move-wide/from16 v4, p4

    :goto_4b
    move-wide v8, v6

    move-wide v6, v4

    .line 203
    goto :goto_16

    .line 179
    :cond_4e
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v4

    goto :goto_4b

    .line 183
    :cond_53
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getStartTime()J

    move-result-wide v14

    cmp-long v5, v14, v6

    if-lez v5, :cond_6c

    .line 185
    new-instance v5, Lcom/mediatek/mom/PermissionHistoryBase;

    invoke-direct {v5, v8, v9, v6, v7}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 187
    invoke-interface {v10, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 189
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getStartTime()J

    move-result-wide v6

    .line 190
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v4

    goto :goto_4b

    .line 193
    :cond_6c
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v14

    cmp-long v5, v14, v6

    if-lez v5, :cond_a4

    .line 194
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v4

    move-wide v6, v8

    goto :goto_4b

    .line 198
    :cond_7a
    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v14

    const-wide/16 v16, 0x0

    cmp-long v5, v14, v16

    if-nez v5, :cond_a4

    invoke-virtual {v4}, Lcom/mediatek/mom/q;->getStartTime()J

    move-result-wide v4

    cmp-long v4, v4, p2

    if-gez v4, :cond_a4

    move-wide/from16 v4, p4

    move-wide/from16 v6, p2

    .line 201
    goto :goto_4b

    .line 205
    :cond_91
    const-wide/16 v4, 0x0

    cmp-long v4, v8, v4

    if-eqz v4, :cond_9f

    .line 206
    new-instance v4, Lcom/mediatek/mom/PermissionHistoryBase;

    invoke-direct {v4, v8, v9, v6, v7}, Lcom/mediatek/mom/PermissionHistoryBase;-><init>(JJ)V

    .line 208
    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 210
    :cond_9f
    monitor-exit v11

    return-object v10

    .line 211
    :catchall_a1
    move-exception v4

    monitor-exit v11
    :try_end_a3
    .catchall {:try_start_e .. :try_end_a3} :catchall_a1

    throw v4

    :cond_a4
    move-wide v4, v6

    move-wide v6, v8

    goto :goto_4b
.end method

.method private c(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/q;
    .registers 13

    .prologue
    .line 229
    const/4 v1, 0x0

    .line 230
    iget-object v2, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    monitor-enter v2

    .line 231
    :try_start_4
    iget-object v0, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 232
    :cond_a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 233
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/q;

    .line 234
    invoke-virtual {v0}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-nez v4, :cond_a

    invoke-virtual {v0}, Lcom/mediatek/mom/q;->getUserId()I

    move-result v4

    if-ne v4, p1, :cond_a

    invoke-virtual {v0}, Lcom/mediatek/mom/q;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/mediatek/mom/q;->u()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 238
    const/4 v4, -0x1

    if-ne p4, v4, :cond_3f

    .line 247
    :goto_3d
    monitor-exit v2

    return-object v0

    .line 241
    :cond_3f
    invoke-virtual {v0}, Lcom/mediatek/mom/q;->getStatus()I

    move-result v4

    if-ne v4, p4, :cond_a

    goto :goto_3d

    .line 248
    :catchall_46
    move-exception v0

    monitor-exit v2
    :try_end_48
    .catchall {:try_start_4 .. :try_end_48} :catchall_46

    throw v0

    :cond_49
    move-object v0, v1

    goto :goto_3d
.end method

.method public static x()Lcom/mediatek/mom/s;
    .registers 1

    .prologue
    .line 67
    sget-object v0, Lcom/mediatek/mom/s;->an:Lcom/mediatek/mom/s;

    if-nez v0, :cond_b

    .line 68
    new-instance v0, Lcom/mediatek/mom/s;

    invoke-direct {v0}, Lcom/mediatek/mom/s;-><init>()V

    sput-object v0, Lcom/mediatek/mom/s;->an:Lcom/mediatek/mom/s;

    .line 70
    :cond_b
    sget-object v0, Lcom/mediatek/mom/s;->an:Lcom/mediatek/mom/s;

    return-object v0
.end method


# virtual methods
.method public a(IJ)J
    .registers 14

    .prologue
    const-wide/16 v6, 0x0

    .line 118
    .line 122
    const-string v0, "PermissionHistoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInteractionTime() userId: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeBound(ns): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v8, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    monitor-enter v8

    .line 125
    :try_start_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 126
    cmp-long v0, v4, p2

    if-gez v0, :cond_54

    .line 127
    const-string v0, "PermissionHistoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid timeBound! currentTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " timeBound: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    monitor-exit v8

    move-wide v0, v6

    .line 155
    :goto_53
    return-wide v0

    .line 131
    :cond_54
    sub-long v2, v4, p2

    .line 133
    const-string v0, "PermissionHistoryHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getInteractionTime() currentTime: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, " searchTime: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, p0

    move v1, p1

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/mediatek/mom/s;->a(IJJ)Ljava/util/List;

    move-result-object v0

    .line 136
    if-eqz v0, :cond_c9

    .line 137
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 138
    :goto_84
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 139
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/PermissionHistoryBase;

    .line 140
    invoke-virtual {v0, v2, v3}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-eqz v1, :cond_a7

    invoke-virtual {v0, v4, v5}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-eqz v1, :cond_a7

    move-wide v0, p2

    .line 152
    :goto_9d
    cmp-long v2, v0, p2

    if-lez v2, :cond_a2

    move-wide v0, p2

    .line 155
    :cond_a2
    monitor-exit v8

    goto :goto_53

    .line 156
    :catchall_a4
    move-exception v0

    monitor-exit v8
    :try_end_a6
    .catchall {:try_start_27 .. :try_end_a6} :catchall_a4

    throw v0

    .line 143
    :cond_a7
    :try_start_a7
    invoke-virtual {v0, v2, v3}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-eqz v1, :cond_b5

    .line 144
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->getEndTime()J

    move-result-wide v0

    sub-long/2addr v0, v2

    add-long/2addr v0, v6

    :goto_b3
    move-wide v6, v0

    .line 150
    goto :goto_84

    .line 145
    :cond_b5
    invoke-virtual {v0, v4, v5}, Lcom/mediatek/mom/PermissionHistoryBase;->within(J)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 146
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->getStartTime()J

    move-result-wide v0

    sub-long v0, v4, v0

    add-long/2addr v0, v6

    goto :goto_b3

    .line 148
    :cond_c3
    invoke-virtual {v0}, Lcom/mediatek/mom/PermissionHistoryBase;->totalTime()J
    :try_end_c6
    .catchall {:try_start_a7 .. :try_end_c6} :catchall_a4

    move-result-wide v0

    add-long/2addr v0, v6

    goto :goto_b3

    :cond_c9
    move-wide v0, v6

    goto :goto_9d
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 15

    .prologue
    .line 75
    iget-object v7, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    monitor-enter v7

    .line 77
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/s;->c(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/q;

    move-result-object v0

    .line 78
    if-eqz v0, :cond_27

    .line 79
    const-string v1, "PermissionHistoryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Avoid adding non-finished permission history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/mom/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    monitor-exit v7

    .line 103
    :goto_26
    return-void

    .line 84
    :cond_27
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 85
    new-instance v0, Lcom/mediatek/mom/q;

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/mom/q;-><init>(ILjava/lang/String;Ljava/lang/String;JI)V

    .line 87
    iget-object v1, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    const-string v1, "PermissionHistoryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addHistory() history: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mediatek/mom/q;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    const-wide/32 v0, 0xea60

    cmp-long v0, v4, v0

    if-lez v0, :cond_93

    const-wide/32 v0, 0xea60

    sub-long v0, v4, v0

    move-wide v2, v0

    .line 93
    :goto_62
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-lez v0, :cond_97

    .line 94
    iget-object v0, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 95
    :cond_6e
    :goto_6e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_97

    .line 96
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/mom/q;

    .line 97
    invoke-virtual {v0}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmp-long v4, v4, v8

    if-eqz v4, :cond_6e

    invoke-virtual {v0}, Lcom/mediatek/mom/q;->getEndTime()J

    move-result-wide v4

    cmp-long v0, v4, v2

    if-gez v0, :cond_6e

    .line 98
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_6e

    .line 102
    :catchall_90
    move-exception v0

    monitor-exit v7
    :try_end_92
    .catchall {:try_start_3 .. :try_end_92} :catchall_90

    throw v0

    .line 92
    :cond_93
    const-wide/16 v0, -0x1

    move-wide v2, v0

    goto :goto_62

    .line 102
    :cond_97
    :try_start_97
    monitor-exit v7
    :try_end_98
    .catchall {:try_start_97 .. :try_end_98} :catchall_90

    goto :goto_26
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;I)V
    .registers 11

    .prologue
    .line 106
    iget-object v1, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    monitor-enter v1

    .line 108
    :try_start_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/mediatek/mom/s;->c(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/q;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_54

    .line 110
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/mediatek/mom/q;->setEndTime(J)V

    .line 111
    const-string v0, "PermissionHistoryHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setEnd() userId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " packageName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "permission: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " endTime: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_54
    monitor-exit v1

    .line 115
    return-void

    .line 114
    :catchall_56
    move-exception v0

    monitor-exit v1
    :try_end_58
    .catchall {:try_start_3 .. :try_end_58} :catchall_56

    throw v0
.end method

.method public c(ILjava/lang/String;Ljava/lang/String;)Z
    .registers 6

    .prologue
    .line 216
    iget-object v1, p0, Lcom/mediatek/mom/s;->ao:Ljava/util/List;

    monitor-enter v1

    .line 217
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 218
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/mom/s;->c(ILjava/lang/String;Ljava/lang/String;I)Lcom/mediatek/mom/q;

    move-result-object v0

    .line 220
    if-eqz v0, :cond_10

    .line 221
    const/4 v0, 0x1

    monitor-exit v1

    .line 223
    :goto_f
    return v0

    :cond_10
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_f

    .line 224
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_13

    throw v0
.end method
