.class final Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "Bypass"
.end annotation


# static fields
.field private static final ACTION_RADIO_AVAILABLE:Ljava/lang/String; = "android.intent.action.RADIO_AVAILABLE"

.field private static final ACTION_USB_BYPASS_GETBYPASS:Ljava/lang/String; = "com.via.bypass.action.getbypass"

.field private static final ACTION_USB_BYPASS_GETBYPASS_RESULT:Ljava/lang/String; = "com.via.bypass.action.getbypass_result"

.field private static final ACTION_USB_BYPASS_SETBYPASS:Ljava/lang/String; = "com.via.bypass.action.setbypass"

.field private static final ACTION_USB_BYPASS_SETBYPASS_RESULT:Ljava/lang/String; = "com.via.bypass.action.setbypass_result"

.field private static final ACTION_USB_BYPASS_SETFUNCTION:Ljava/lang/String; = "com.via.bypass.action.setfunction"

.field private static final ACTION_USB_BYPASS_SETTETHERFUNCTION:Ljava/lang/String; = "com.via.bypass.action.settetherfunction"

.field private static final ACTION_VIA_ETS_DEV_CHANGED:Ljava/lang/String; = "via.cdma.action.ets.dev.changed"

.field private static final ACTION_VIA_SET_ETS_DEV:Ljava/lang/String; = "via.cdma.action.set.ets.dev"

.field private static final EXTRAL_VIA_ETS_DEV:Ljava/lang/String; = "via.cdma.extral.ets.dev"

.field private static final USB_FUNCTION_BYPASS:Ljava/lang/String; = "via_bypass"

.field public static final USB_FUNCTION_USERMODE:Ljava/lang/String; = "mtp"

.field private static final VALUE_BYPASS_CODE:Ljava/lang/String; = "com.via.bypass.bypass_code"

.field private static final VALUE_ENABLE_BYPASS:Ljava/lang/String; = "com.via.bypass.enable_bypass"

.field private static final VALUE_ISSET_BYPASS:Ljava/lang/String; = "com.via.bypass.isset_bypass"


# instance fields
.field private mBypassAll:I

.field private final mBypassCodes:[I

.field private mBypassFiles:[Ljava/io/File;

.field private final mBypassName:[Ljava/lang/String;

.field private final mBypassReceiver:Landroid/content/BroadcastReceiver;

.field private mBypassToSet:I

.field private mEtsDevInUse:Z

.field final synthetic this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V
    .registers 10

    .prologue
    const/4 v4, 0x5

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 844
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 776
    new-array v3, v4, [I

    fill-array-data v3, :array_a6

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    .line 777
    new-array v3, v4, [Ljava/lang/String;

    const-string v4, "gps"

    aput-object v4, v3, v6

    const-string v4, "pcv"

    aput-object v4, v3, v7

    const/4 v4, 0x2

    const-string v5, "atc"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    const-string v5, "ets"

    aput-object v5, v3, v4

    const/4 v4, 0x4

    const-string v5, "data"

    aput-object v5, v3, v4

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    .line 778
    iput v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    .line 780
    iput-boolean v6, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    .line 782
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;

    invoke-direct {v3, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassReceiver:Landroid/content/BroadcastReceiver;

    .line 846
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    array-length v3, v3

    new-array v3, v3, [Ljava/io/File;

    iput-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    .line 847
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3d
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_74

    .line 848
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/sys/class/usb_rawbulk/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassName:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/enable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 850
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    aput-object v4, v3, v0

    .line 851
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v0

    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    .line 847
    add-int/lit8 v0, v0, 0x1

    goto :goto_3d

    .line 853
    .end local v2    # "path":Ljava/lang/String;
    :cond_74
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->bEvdoDtViaSupport:Z
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$500()Z

    move-result v3

    if-ne v3, v7, :cond_a5

    .line 855
    new-instance v1, Landroid/content/IntentFilter;

    const-string v3, "com.via.bypass.action.setfunction"

    invoke-direct {v1, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 856
    .local v1, "intent":Landroid/content/IntentFilter;
    const-string v3, "com.via.bypass.action.settetherfunction"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 857
    const-string v3, "com.via.bypass.action.setbypass"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 858
    const-string v3, "com.via.bypass.action.getbypass"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 859
    const-string v3, "via.cdma.action.ets.dev.changed"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 860
    const-string v3, "android.intent.action.RADIO_AVAILABLE"

    invoke-virtual {v1, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 861
    iget-object v3, p1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 863
    .end local v1    # "intent":Landroid/content/IntentFilter;
    :cond_a5
    return-void

    .line 776
    :array_a6
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
    .end array-data
.end method

.method static synthetic access$2300(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 740
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassAll:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
    .param p1, "x1"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypassMode(I)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 740
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;Ljava/lang/Boolean;I)V
    .registers 3
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
    .param p1, "x1"    # Ljava/lang/Boolean;
    .param p2, "x2"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 740
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassToSet:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;

    .prologue
    .line 740
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;I)V
    .registers 2
    .param p0, "x0"    # Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;
    .param p1, "x1"    # I

    .prologue
    .line 740
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypass(I)V

    return-void
.end method

.method private getCurrentBypassMode()I
    .registers 8

    .prologue
    .line 865
    const/4 v0, 0x0

    .line 867
    .local v0, "bypassmode":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    :try_start_2
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    array-length v4, v4

    if-ge v3, v4, :cond_33

    .line 869
    const/4 v4, 0x2

    if-ne v3, v4, :cond_28

    .line 870
    const-string v4, "sys.cp.bypass.at"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 875
    .local v1, "code":Ljava/lang/String;
    :goto_12
    if-eqz v1, :cond_25

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 876
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v3

    or-int/2addr v0, v4

    .line 867
    :cond_25
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 872
    .end local v1    # "code":Ljava/lang/String;
    :cond_28
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "code":Ljava/lang/String;
    goto :goto_12

    .line 879
    .end local v1    # "code":Ljava/lang/String;
    :cond_33
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getCurrentBypassMode()="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_4d} :catch_4e

    .line 883
    :goto_4d
    return v0

    .line 880
    :catch_4e
    move-exception v2

    .line 881
    .local v2, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "failed to read bypass mode code!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4d
.end method

.method private notifySetBypassResult(Ljava/lang/Boolean;I)V
    .registers 5
    .param p1, "isset"    # Ljava/lang/Boolean;
    .param p2, "bypassCode"    # I

    .prologue
    .line 970
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mBootCompleted:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$2900(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 971
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.via.bypass.action.setbypass_result"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 972
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.via.bypass.isset_bypass"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 973
    const-string v1, "com.via.bypass.bypass_code"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 974
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 976
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_26
    return-void
.end method

.method private setBypass(I)V
    .registers 10
    .param p1, "bypassmode"    # I

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    .line 887
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBypass bypass = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    .line 889
    .local v0, "bypassResult":I
    if-ne p1, v0, :cond_33

    .line 890
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setBypass bypass == oldbypass!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    .line 921
    :goto_32
    return-void

    .line 896
    :cond_33
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    :try_start_34
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    array-length v3, v3

    if-ge v2, v3, :cond_be

    .line 897
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    and-int/2addr v3, p1

    if-eqz v3, :cond_9a

    .line 898
    if-ne v2, v7, :cond_79

    .line 899
    const-string v3, "sys.cp.bypass.at"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    :goto_49
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    or-int/2addr v0, v3

    .line 913
    :cond_4e
    :goto_4e
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Write \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' successsfully!"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 896
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 901
    :cond_79
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_86} :catch_87

    goto :goto_49

    .line 917
    :catch_87
    move-exception v1

    .line 918
    .local v1, "e":Ljava/io/IOException;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "failed to operate bypass!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    goto :goto_32

    .line 905
    .end local v1    # "e":Ljava/io/IOException;
    :cond_9a
    if-ne v2, v7, :cond_b0

    .line 906
    :try_start_9c
    const-string v3, "sys.cp.bypass.at"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    :goto_a3
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    and-int/2addr v3, v0

    if-eqz v3, :cond_4e

    .line 911
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v3, v3, v2

    xor-int/2addr v0, v3

    goto :goto_4e

    .line 908
    :cond_b0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassFiles:[Ljava/io/File;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a3

    .line 915
    :cond_be
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->notifySetBypassResult(Ljava/lang/Boolean;I)V

    .line 916
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setBypass success bypassResult = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_9c .. :try_end_e0} :catch_87

    goto/16 :goto_32
.end method

.method private setBypassMode(I)V
    .registers 6
    .param p1, "bypassmode"    # I

    .prologue
    .line 964
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setBypassMode()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 965
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->access$100(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 966
    .local v0, "m":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 967
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(Landroid/os/Message;)Z

    .line 968
    return-void
.end method

.method private setEtsDev(I)Z
    .registers 10
    .param p1, "bypass"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x3

    const/4 v2, 0x1

    .line 939
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->getCurrentBypassMode()I

    move-result v0

    .line 940
    .local v0, "oldBypass":I
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setEtsDev bypass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " oldBypass = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, p1

    if-eqz v4, :cond_5c

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, v0

    if-nez v4, :cond_5c

    .line 942
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "setEtsDev mEtsDevInUse = true"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 943
    new-instance v1, Landroid/content/Intent;

    const-string v3, "via.cdma.action.set.ets.dev"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 944
    .local v1, "reintent":Landroid/content/Intent;
    const-string v3, "via.cdma.extral.ets.dev"

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 945
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v3, v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 946
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    .line 958
    .end local v1    # "reintent":Landroid/content/Intent;
    :goto_5b
    return v2

    .line 948
    :cond_5c
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, p1

    if-nez v4, :cond_8d

    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassCodes:[I

    aget v4, v4, v7

    and-int/2addr v4, v0

    if-eqz v4, :cond_8d

    .line 950
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v4

    const-string v5, "setEtsDev mEtsDevInUse = false"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    new-instance v1, Landroid/content/Intent;

    const-string v4, "via.cdma.action.set.ets.dev"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 952
    .restart local v1    # "reintent":Landroid/content/Intent;
    const-string v4, "via.cdma.extral.ets.dev"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 953
    iget-object v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v4, v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    # getter for: Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/usb/UsbDeviceManager;->access$300(Lcom/android/server/usb/UsbDeviceManager;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 954
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mEtsDevInUse:Z

    goto :goto_5b

    .end local v1    # "reintent":Landroid/content/Intent;
    :cond_8d
    move v2, v3

    .line 958
    goto :goto_5b
.end method


# virtual methods
.method closeBypassFunction()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 997
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closeBypassFunction() CurrentFunctions = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",DefaultFunctions="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 999
    invoke-virtual {p0, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->updateBypassMode(I)V

    .line 1000
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "via_bypass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 1001
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mDefaultFunctions:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$700(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(Ljava/lang/String;Z)V
    invoke-static {v0, v1, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3100(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;Ljava/lang/String;Z)V

    .line 1003
    :cond_4d
    return-void
.end method

.method handleCTClinet()V
    .registers 5

    .prologue
    .line 978
    const-string v1, "net.ctclientd"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, "ctclientStatus":Ljava/lang/String;
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleCTClinet() mConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",mCurrentFunctions="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$3000(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",ctclientStatus="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->this$1:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    # getter for: Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z
    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->access$1800(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 984
    const-string v1, "disable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 985
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "enable ctclientd"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 986
    const-string v1, "net.ctclientd"

    const-string v2, "enable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    :cond_62
    :goto_62
    return-void

    .line 989
    :cond_63
    const-string v1, "enable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 990
    const-string v1, "net.ctclientd"

    const-string v2, "disable"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "disable ctclientd"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62
.end method

.method updateBypassMode(I)V
    .registers 5
    .param p1, "bypassmode"    # I

    .prologue
    .line 924
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "updateBypassMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 926
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setEtsDev(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 929
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->setBypass(I)V

    .line 936
    :goto_12
    return-void

    .line 933
    :cond_13
    # getter for: Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateBypassMode mBypassToSet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassToSet:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$Bypass;->mBypassToSet:I

    goto :goto_12
.end method
