.class Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
.super Ljava/lang/Object;
.source "UsbSettingsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usb/UsbSettingsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DeviceFilter"
.end annotation


# instance fields
.field public final mClass:I

.field public final mManufacturerName:Ljava/lang/String;

.field public final mProductId:I

.field public final mProductName:Ljava/lang/String;

.field public final mProtocol:I

.field public final mSerialNumber:Ljava/lang/String;

.field public final mSubclass:I

.field public final mVendorId:I


# direct methods
.method public constructor <init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "vid"    # I
    .param p2, "pid"    # I
    .param p3, "clasz"    # I
    .param p4, "subclass"    # I
    .param p5, "protocol"    # I
    .param p6, "manufacturer"    # Ljava/lang/String;
    .param p7, "product"    # Ljava/lang/String;
    .param p8, "serialnum"    # Ljava/lang/String;

    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput p1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    .line 123
    iput p2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    .line 124
    iput p3, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    .line 125
    iput p4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    .line 126
    iput p5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    .line 127
    iput-object p6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 128
    iput-object p7, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 129
    iput-object p8, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;)V
    .registers 3
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    .line 134
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    .line 135
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    .line 136
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    .line 137
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    .line 138
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    .line 139
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    .line 140
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    .line 141
    return-void
.end method

.method private matches(III)Z
    .registers 6
    .param p1, "clasz"    # I
    .param p2, "subclass"    # I
    .param p3, "protocol"    # I

    .prologue
    const/4 v1, -0x1

    .line 228
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v1, :cond_9

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne p1, v0, :cond_1b

    :cond_9
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v1, :cond_11

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne p2, v0, :cond_1b

    :cond_11
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v1, :cond_19

    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne p3, v0, :cond_1b

    :cond_19
    const/4 v0, 0x1

    :goto_1a
    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public static read(Lorg/xmlpull/v1/XmlPullParser;)Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    .registers 20
    .param p0, "parser"    # Lorg/xmlpull/v1/XmlPullParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 145
    const/4 v2, -0x1

    .line 146
    .local v2, "vendorId":I
    const/4 v3, -0x1

    .line 147
    .local v3, "productId":I
    const/4 v4, -0x1

    .line 148
    .local v4, "deviceClass":I
    const/4 v5, -0x1

    .line 149
    .local v5, "deviceSubclass":I
    const/4 v6, -0x1

    .line 150
    .local v6, "deviceProtocol":I
    const/4 v7, 0x0

    .line 151
    .local v7, "manufacturerName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 152
    .local v8, "productName":Ljava/lang/String;
    const/4 v9, 0x0

    .line 154
    .local v9, "serialNumber":Ljava/lang/String;
    invoke-interface/range {p0 .. p0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v10

    .line 155
    .local v10, "count":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_d
    if-ge v12, v10, :cond_d8

    .line 156
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 157
    .local v14, "name":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v16

    .line 159
    .local v16, "value":Ljava/lang/String;
    const-string v1, "manufacturer-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 160
    move-object/from16 v7, v16

    .line 155
    :cond_25
    :goto_25
    add-int/lit8 v12, v12, 0x1

    goto :goto_d

    .line 161
    :cond_28
    const-string v1, "product-name"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    .line 162
    move-object/from16 v8, v16

    goto :goto_25

    .line 163
    :cond_33
    const-string v1, "serial-number"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 164
    move-object/from16 v9, v16

    goto :goto_25

    .line 166
    :cond_3e
    const/4 v13, -0x1

    .line 167
    .local v13, "intValue":I
    const/16 v15, 0xa

    .line 168
    .local v15, "radix":I
    if-eqz v16, :cond_7d

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v17, 0x2

    move/from16 v0, v17

    if-le v1, v0, :cond_7d

    const/4 v1, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x30

    move/from16 v0, v17

    if-ne v1, v0, :cond_7d

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x78

    move/from16 v0, v17

    if-eq v1, v0, :cond_74

    const/4 v1, 0x1

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v17, 0x58

    move/from16 v0, v17

    if-ne v1, v0, :cond_7d

    .line 171
    :cond_74
    const/16 v15, 0x10

    .line 172
    const/4 v1, 0x2

    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v16

    .line 175
    :cond_7d
    :try_start_7d
    move-object/from16 v0, v16

    invoke-static {v0, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_82
    .catch Ljava/lang/NumberFormatException; {:try_start_7d .. :try_end_82} :catch_8d

    move-result v13

    .line 180
    const-string v1, "vendor-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_ac

    .line 181
    move v2, v13

    goto :goto_25

    .line 176
    :catch_8d
    move-exception v11

    .line 177
    .local v11, "e":Ljava/lang/NumberFormatException;
    const-string v1, "UsbSettingsManager"

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "invalid number for field "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-static {v1, v0, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_25

    .line 182
    .end local v11    # "e":Ljava/lang/NumberFormatException;
    :cond_ac
    const-string v1, "product-id"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b7

    .line 183
    move v3, v13

    goto/16 :goto_25

    .line 184
    :cond_b7
    const-string v1, "class"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c2

    .line 185
    move v4, v13

    goto/16 :goto_25

    .line 186
    :cond_c2
    const-string v1, "subclass"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_cd

    .line 187
    move v5, v13

    goto/16 :goto_25

    .line 188
    :cond_cd
    const-string v1, "protocol"

    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_25

    .line 189
    move v6, v13

    goto/16 :goto_25

    .line 193
    .end local v13    # "intValue":I
    .end local v14    # "name":Ljava/lang/String;
    .end local v15    # "radix":I
    .end local v16    # "value":Ljava/lang/String;
    :cond_d8
    new-instance v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    invoke-direct/range {v1 .. v9}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;-><init>(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v5, -0x1

    const/4 v3, 0x0

    .line 281
    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v4, v5, :cond_17

    iget v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-ne v4, v5, :cond_19

    :cond_17
    move v2, v3

    .line 349
    :cond_18
    :goto_18
    return v2

    .line 285
    :cond_19
    instance-of v4, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    if-eqz v4, :cond_ab

    move-object v1, p1

    .line 286
    check-cast v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .line 288
    .local v1, "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v4, v5, :cond_3e

    iget v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v4, v5, :cond_40

    :cond_3e
    move v2, v3

    .line 293
    goto :goto_18

    .line 295
    :cond_40
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v4, :cond_48

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v4, :cond_70

    :cond_48
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v4, :cond_50

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v4, :cond_70

    :cond_50
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v4, :cond_58

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v4, :cond_70

    :cond_58
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v4, :cond_60

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v4, :cond_70

    :cond_60
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_68

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_70

    :cond_68
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v4, :cond_72

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_72

    :cond_70
    move v2, v3

    .line 307
    goto :goto_18

    .line 309
    :cond_72
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v4, :cond_84

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v4, :cond_84

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_84
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v4, :cond_96

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a8

    :cond_96
    iget-object v4, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v5, v1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_a8
    move v2, v3

    .line 318
    goto/16 :goto_18

    .line 322
    .end local v1    # "filter":Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;
    :cond_ab
    instance-of v4, p1, Landroid/hardware/usb/UsbDevice;

    if-eqz v4, :cond_155

    move-object v0, p1

    .line 323
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 324
    .local v0, "device":Landroid/hardware/usb/UsbDevice;
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-ne v4, v5, :cond_da

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v4, v5, :cond_da

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-ne v4, v5, :cond_da

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-ne v4, v5, :cond_da

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v4

    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v4, v5, :cond_dd

    :cond_da
    move v2, v3

    .line 329
    goto/16 :goto_18

    .line 331
    :cond_dd
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v4, :cond_e7

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_119

    :cond_e7
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-nez v4, :cond_f1

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_119

    :cond_f1
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v4, :cond_fb

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_119

    :cond_fb
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-nez v4, :cond_105

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_119

    :cond_105
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v4, :cond_10f

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_119

    :cond_10f
    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-nez v4, :cond_11c

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_11c

    :cond_119
    move v2, v3

    .line 337
    goto/16 :goto_18

    .line 339
    :cond_11c
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12e

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_152

    :cond_12e
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_140

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_152

    :cond_140
    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    iget-object v4, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_18

    :cond_152
    move v2, v3

    .line 345
    goto/16 :goto_18

    .end local v0    # "device":Landroid/hardware/usb/UsbDevice;
    :cond_155
    move v2, v3

    .line 349
    goto/16 :goto_18
.end method

.method public hashCode()I
    .registers 4

    .prologue
    .line 354
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    shl-int/lit8 v0, v0, 0x10

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    or-int/2addr v0, v1

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    shl-int/lit8 v1, v1, 0x10

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    or-int/2addr v1, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public matches(Landroid/hardware/usb/UsbDevice;)Z
    .registers 10
    .param p1, "device"    # Landroid/hardware/usb/UsbDevice;

    .prologue
    const/4 v4, 0x1

    const/4 v7, -0x1

    const/4 v3, 0x0

    .line 234
    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v5, v7, :cond_10

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getVendorId()I

    move-result v5

    iget v6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v5, v6, :cond_10

    .line 258
    :cond_f
    :goto_f
    return v3

    .line 235
    :cond_10
    iget v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v5, v7, :cond_1c

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductId()I

    move-result v5

    iget v6, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v5, v6, :cond_f

    .line 236
    :cond_1c
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v5, :cond_26

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 237
    :cond_26
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v5, :cond_30

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 238
    :cond_30
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v5, :cond_3a

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_f

    .line 239
    :cond_3a
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v5, :cond_50

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_50

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 241
    :cond_50
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v5, :cond_66

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_66

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 243
    :cond_66
    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v5, :cond_7c

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_7c

    iget-object v5, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 247
    :cond_7c
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceClass()I

    move-result v5

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceSubclass()I

    move-result v6

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getDeviceProtocol()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_90

    move v3, v4

    .line 248
    goto :goto_f

    .line 251
    :cond_90
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getInterfaceCount()I

    move-result v0

    .line 252
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_95
    if-ge v1, v0, :cond_f

    .line 253
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v2

    .line 254
    .local v2, "intf":Landroid/hardware/usb/UsbInterface;
    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v6

    invoke-virtual {v2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v5

    if-eqz v5, :cond_b0

    move v3, v4

    .line 255
    goto/16 :goto_f

    .line 252
    :cond_b0
    add-int/lit8 v1, v1, 0x1

    goto :goto_95
.end method

.method public matches(Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;)Z
    .registers 6
    .param p1, "f"    # Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;

    .prologue
    const/4 v3, -0x1

    const/4 v0, 0x0

    .line 262
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v1, v3, :cond_d

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v1, v2, :cond_d

    .line 275
    :cond_c
    :goto_c
    return v0

    .line 263
    :cond_d
    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v1, v3, :cond_17

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    iget v2, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-ne v1, v2, :cond_c

    .line 264
    :cond_17
    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v1, :cond_1f

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 265
    :cond_1f
    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_27

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 266
    :cond_27
    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 267
    :cond_2f
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v1, :cond_41

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 269
    :cond_41
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_53

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v1, :cond_53

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 271
    :cond_53
    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v1, :cond_65

    iget-object v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v1, :cond_65

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 275
    :cond_65
    iget v0, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    iget v1, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    iget v2, p1, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->matches(III)Z

    move-result v0

    goto :goto_c
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 360
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DeviceFilter[mVendorId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSubclass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProtocol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mManufacturerName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mProductName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mSerialNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lorg/xmlpull/v1/XmlSerializer;)V
    .registers 6
    .param p1, "serializer"    # Lorg/xmlpull/v1/XmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 199
    const-string v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 200
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    if-eq v0, v3, :cond_16

    .line 201
    const-string v0, "vendor-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mVendorId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    :cond_16
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    if-eq v0, v3, :cond_25

    .line 204
    const-string v0, "product-id"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 206
    :cond_25
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    if-eq v0, v3, :cond_34

    .line 207
    const-string v0, "class"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mClass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 209
    :cond_34
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    if-eq v0, v3, :cond_43

    .line 210
    const-string v0, "subclass"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSubclass:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 212
    :cond_43
    iget v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    if-eq v0, v3, :cond_52

    .line 213
    const-string v0, "protocol"

    iget v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProtocol:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 215
    :cond_52
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    if-eqz v0, :cond_5d

    .line 216
    const-string v0, "manufacturer-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mManufacturerName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    :cond_5d
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    if-eqz v0, :cond_68

    .line 219
    const-string v0, "product-name"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mProductName:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 221
    :cond_68
    iget-object v0, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    if-eqz v0, :cond_73

    .line 222
    const-string v0, "serial-number"

    iget-object v1, p0, Lcom/android/server/usb/UsbSettingsManager$DeviceFilter;->mSerialNumber:Ljava/lang/String;

    invoke-interface {p1, v2, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 224
    :cond_73
    const-string v0, "usb-device"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 225
    return-void
.end method
