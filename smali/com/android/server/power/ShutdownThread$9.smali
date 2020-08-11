.class Lcom/android/server/power/ShutdownThread$9;
.super Ljava/lang/Thread;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/ShutdownThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/ShutdownThread;

.field final synthetic val$bypassRadioOff:Z

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/power/ShutdownThread;[ZZJ)V
    .registers 6

    .prologue
    .line 942
    iput-object p1, p0, Lcom/android/server/power/ShutdownThread$9;->this$0:Lcom/android/server/power/ShutdownThread;

    iput-object p2, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    iput-boolean p3, p0, Lcom/android/server/power/ShutdownThread$9;->val$bypassRadioOff:Z

    iput-wide p4, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 948
    const-string v9, "ShutdownThread"

    const-string v10, "task run"

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 950
    const-string v9, "nfc"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v3

    .line 952
    .local v3, "nfc":Landroid/nfc/INfcAdapter;
    const-string v9, "phone"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v5

    .line 954
    .local v5, "phone":Lcom/android/internal/telephony/ITelephony;
    const-string v9, "bluetooth_manager"

    invoke-static {v9}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v9

    invoke-static {v9}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v0

    .line 959
    .local v0, "bluetooth":Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_2f

    :try_start_29
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v9

    if-ne v9, v7, :cond_89

    :cond_2f
    move v4, v7

    .line 961
    .local v4, "nfcOff":Z
    :goto_30
    if-nez v4, :cond_3d

    .line 962
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off NFC..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    const/4 v9, 0x0

    invoke-interface {v3, v9}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_3d
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_3d} :catch_8b

    .line 971
    :cond_3d
    :goto_3d
    if-eqz v0, :cond_45

    :try_start_3f
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v9

    if-nez v9, :cond_95

    :cond_45
    move v1, v7

    .line 972
    .local v1, "bluetoothOff":Z
    :goto_46
    if-nez v1, :cond_53

    .line 973
    const-string v9, "ShutdownThread"

    const-string v10, "Disabling Bluetooth..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    const/4 v9, 0x0

    invoke-interface {v0, v9}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_53
    .catch Landroid/os/RemoteException; {:try_start_3f .. :try_end_53} :catch_97

    .line 982
    :cond_53
    :goto_53
    if-eqz v5, :cond_5b

    :try_start_55
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z

    move-result v9

    if-nez v9, :cond_a1

    :cond_5b
    move v6, v7

    .line 983
    .local v6, "radioOff":Z
    :goto_5c
    if-nez v6, :cond_6e

    .line 984
    # getter for: Lcom/android/server/power/ShutdownThread;->mShutdownFlow:I
    invoke-static {}, Lcom/android/server/power/ShutdownThread;->access$700()I

    move-result v9

    if-eq v9, v7, :cond_6e

    .line 985
    const-string v9, "ShutdownThread"

    const-string v10, "Turning off cellular radios..."

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->shutdownMobileRadios()V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_55 .. :try_end_6e} :catch_a3

    .line 993
    :cond_6e
    :goto_6e
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v6, v9, v7

    .line 995
    const-string v9, "ShutdownThread"

    const-string v10, "Waiting for NFC, Bluetooth and Radio..."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 997
    iget-boolean v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$bypassRadioOff:Z

    if-eqz v9, :cond_b2

    .line 998
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v7, v9, v8

    .line 999
    const-string v7, "ShutdownThread"

    const-string v8, "bypass RadioOff!"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1045
    :cond_88
    :goto_88
    return-void

    .end local v1    # "bluetoothOff":Z
    .end local v4    # "nfcOff":Z
    .end local v6    # "radioOff":Z
    :cond_89
    move v4, v8

    .line 959
    goto :goto_30

    .line 965
    :catch_8b
    move-exception v2

    .line 966
    .local v2, "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 967
    const/4 v4, 0x1

    .restart local v4    # "nfcOff":Z
    goto :goto_3d

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_95
    move v1, v8

    .line 971
    goto :goto_46

    .line 976
    :catch_97
    move-exception v2

    .line 977
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 978
    const/4 v1, 0x1

    .restart local v1    # "bluetoothOff":Z
    goto :goto_53

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_a1
    move v6, v8

    .line 982
    goto :goto_5c

    .line 989
    :catch_a3
    move-exception v2

    .line 990
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 991
    const/4 v6, 0x1

    .restart local v6    # "radioOff":Z
    goto :goto_6e

    .line 1042
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_ad
    const-wide/16 v10, 0x1f4

    invoke-static {v10, v11}, Landroid/os/SystemClock;->sleep(J)V

    .line 1001
    :cond_b2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    iget-wide v12, p0, Lcom/android/server/power/ShutdownThread$9;->val$endTime:J

    cmp-long v9, v10, v12

    if-gez v9, :cond_88

    .line 1002
    if-nez v1, :cond_ce

    .line 1004
    :try_start_be
    invoke-interface {v0}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z
    :try_end_c1
    .catch Landroid/os/RemoteException; {:try_start_be .. :try_end_c1} :catch_10a

    move-result v9

    if-nez v9, :cond_108

    move v1, v7

    .line 1009
    :goto_c5
    if-eqz v1, :cond_ce

    .line 1010
    const-string v9, "ShutdownThread"

    const-string v10, "Bluetooth turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    :cond_ce
    if-nez v6, :cond_e4

    .line 1015
    :try_start_d0
    invoke-interface {v5}, Lcom/android/internal/telephony/ITelephony;->needMobileRadioShutdown()Z
    :try_end_d3
    .catch Landroid/os/RemoteException; {:try_start_d0 .. :try_end_d3} :catch_116

    move-result v9

    if-nez v9, :cond_114

    move v6, v7

    .line 1020
    :goto_d7
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v6, v9, v7

    .line 1021
    if-eqz v6, :cond_e4

    .line 1022
    const-string v9, "ShutdownThread"

    const-string v10, "Radio turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1025
    :cond_e4
    if-nez v4, :cond_f6

    .line 1027
    :try_start_e6
    invoke-interface {v3}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_e9
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_e9} :catch_122

    move-result v9

    if-ne v9, v7, :cond_120

    move v4, v7

    .line 1032
    :goto_ed
    if-eqz v4, :cond_f6

    .line 1033
    const-string v9, "ShutdownThread"

    const-string v10, "NFC turned off."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1037
    :cond_f6
    if-eqz v6, :cond_ad

    if-eqz v1, :cond_ad

    if-eqz v4, :cond_ad

    .line 1038
    const-string v9, "ShutdownThread"

    const-string v10, "NFC, Radio and Bluetooth shutdown complete."

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1039
    iget-object v9, p0, Lcom/android/server/power/ShutdownThread$9;->val$done:[Z

    aput-boolean v7, v9, v8

    goto :goto_88

    :cond_108
    move v1, v8

    .line 1004
    goto :goto_c5

    .line 1005
    :catch_10a
    move-exception v2

    .line 1006
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during bluetooth shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1007
    const/4 v1, 0x1

    goto :goto_c5

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_114
    move v6, v8

    .line 1015
    goto :goto_d7

    .line 1016
    :catch_116
    move-exception v2

    .line 1017
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during radio shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1018
    const/4 v6, 0x1

    goto :goto_d7

    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_120
    move v4, v8

    .line 1027
    goto :goto_ed

    .line 1028
    :catch_122
    move-exception v2

    .line 1029
    .restart local v2    # "ex":Landroid/os/RemoteException;
    const-string v9, "ShutdownThread"

    const-string v10, "RemoteException during NFC shutdown"

    invoke-static {v9, v10, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1030
    const/4 v4, 0x1

    goto :goto_ed
.end method
