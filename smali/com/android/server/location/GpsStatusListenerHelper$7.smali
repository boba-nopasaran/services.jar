.class Lcom/android/server/location/GpsStatusListenerHelper$7;
.super Ljava/lang/Object;
.source "GpsStatusListenerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/GpsStatusListenerHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GpsStatusListenerHelper;


# direct methods
.method constructor <init>(Lcom/android/server/location/GpsStatusListenerHelper;)V
    .registers 2

    .prologue
    .line 166
    iput-object p1, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    .line 169
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 170
    .local v6, "now":J
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v5, v6, v7}, Lcom/android/server/location/GpsStatusListenerHelper;->reloadProperty(J)V

    .line 173
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v8, v5, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    monitor-enter v8

    .line 174
    :try_start_e
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v5, v5, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-nez v5, :cond_1a

    .line 175
    monitor-exit v8

    .line 193
    :cond_19
    :goto_19
    return-void

    .line 177
    :cond_1a
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    iget-object v5, v5, Lcom/android/server/location/GpsStatusListenerHelper;->mNmeaInfoList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;

    .line 178
    .local v2, "info":Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;
    monitor-exit v8
    :try_end_25
    .catchall {:try_start_e .. :try_end_25} :catchall_a9

    .line 180
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    invoke-virtual {v5}, Lcom/android/server/location/GpsStatusListenerHelper;->getAllListener()Ljava/util/ArrayList;

    move-result-object v4

    .line 182
    .local v4, "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/IGpsStatusListener;>;"
    :try_start_2b
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/location/IGpsStatusListener;

    .line 183
    .local v3, "listener":Landroid/location/IGpsStatusListener;
    iget-wide v8, v2, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->timestamp:J

    iget-object v5, v2, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->nmea:Ljava/lang/String;

    invoke-interface {v3, v8, v9, v5}, Landroid/location/IGpsStatusListener;->onNmeaReceived(JLjava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_42} :catch_43

    goto :goto_2f

    .line 185
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "listener":Landroid/location/IGpsStatusListener;
    :catch_43
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "GpsStatusListenerHelper"

    const-string v8, "call onNmeaReceived exception"

    invoke-static {v5, v8, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 189
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4b
    iget-object v5, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    # getter for: Lcom/android/server/location/GpsStatusListenerHelper;->CM_DEBUG:Z
    invoke-static {v5}, Lcom/android/server/location/GpsStatusListenerHelper;->access$100(Lcom/android/server/location/GpsStatusListenerHelper;)Z

    move-result v5

    if-eqz v5, :cond_19

    .line 190
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    sub-long v6, v8, v6

    .line 191
    const-string v5, "GpsStatusListenerHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Call nmea < ts_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v2, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->timestamp:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",nmea:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;->nmea:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ">, listen size:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",takes:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " ms, total ignored:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/location/GpsStatusListenerHelper$7;->this$0:Lcom/android/server/location/GpsStatusListenerHelper;

    # getter for: Lcom/android/server/location/GpsStatusListenerHelper;->mTotalIgnored:I
    invoke-static {v9}, Lcom/android/server/location/GpsStatusListenerHelper;->access$200(Lcom/android/server/location/GpsStatusListenerHelper;)I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_19

    .line 178
    .end local v2    # "info":Lcom/android/server/location/GpsStatusListenerHelper$NmeaInfo;
    .end local v4    # "listenerList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/location/IGpsStatusListener;>;"
    :catchall_a9
    move-exception v5

    :try_start_aa
    monitor-exit v8
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    throw v5
.end method
