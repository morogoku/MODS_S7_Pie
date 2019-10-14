.class public abstract Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;
.super Landroid/os/HwBinder;
.source "IContexthubCallback.java"

# interfaces
.implements Landroid/hardware/contexthub/V1_0/IContexthubCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contexthub/V1_0/IContexthubCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/os/HwBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IHwBinder;
    .registers 1

    return-object p0
.end method

.method public final getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;
    .registers 4

    new-instance v0, Landroid/hidl/base/V1_0/DebugInfo;

    invoke-direct {v0}, Landroid/hidl/base/V1_0/DebugInfo;-><init>()V

    invoke-static {}, Landroid/os/HidlSupport;->getPidIfSharable()I

    move-result v1

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->pid:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->ptr:J

    const/4 v1, 0x0

    iput v1, v0, Landroid/hidl/base/V1_0/DebugInfo;->arch:I

    return-object v0
.end method

.method public final getHashChain()Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "[B>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v1, v1, [[B

    const/16 v2, 0x20

    new-array v3, v2, [B

    fill-array-data v3, :array_20

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-array v2, v2, [B

    fill-array-data v2, :array_34

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0

    nop

    :array_20
    .array-data 1
        0x2at
        -0x4dt
        0x5t
        0x4ct
        0x2dt
        -0x6dt
        0x2t
        -0x28t
        0x41t
        0x7et
        -0x19t
        0x49t
        0x53t
        0x53t
        -0x5et
        -0x78t
        0x7ft
        -0x1dt
        0x38t
        -0x7t
        0x13t
        0x27t
        0x6ft
        0x2et
        -0x4ct
        0x1et
        -0x80t
        -0xft
        0x13t
        -0x6bt
        -0x14t
        0x2et
    .end array-data

    :array_34
    .array-data 1
        -0x43t
        -0x26t
        -0x4at
        0x18t
        0x4dt
        0x7at
        0x34t
        0x6dt
        -0x5at
        -0x60t
        0x7dt
        -0x40t
        -0x7et
        -0x74t
        -0xft
        -0x66t
        0x69t
        0x6ft
        0x4ct
        -0x56t
        0x36t
        0x11t
        -0x3bt
        0x1ft
        0x2et
        0x14t
        0x56t
        0x5at
        0x14t
        -0x4ct
        0xft
        -0x27t
    .end array-data
.end method

.method public final interfaceChain()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "android.hardware.contexthub@1.0::IContexthubCallback"

    const-string v2, "android.hidl.base@1.0::IBase"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final interfaceDescriptor()Ljava/lang/String;
    .registers 2

    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    return-object v0
.end method

.method public final linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    .registers 5

    const/4 v0, 0x1

    return v0
.end method

.method public final notifySyspropsChanged()V
    .registers 1

    invoke-static {}, Landroid/os/HwBinder;->enableInstrumentation()V

    return-void
.end method

.method public onTransact(ILandroid/os/HwParcel;Landroid/os/HwParcel;I)V
    .registers 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/high16 v0, -0x80000000

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_21c

    sparse-switch p1, :sswitch_data_22a

    goto/16 :goto_21b

    :sswitch_c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_12

    move v1, v2

    nop

    :cond_12
    if-eqz v1, :cond_21b

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :sswitch_1c
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_22

    move v1, v2

    nop

    :cond_22
    if-eq v1, v2, :cond_2c

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_2c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->notifySyspropsChanged()V

    goto/16 :goto_21b

    :sswitch_36
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_3b

    goto :goto_3c

    :cond_3b
    move v2, v1

    :goto_3c
    if-eqz v2, :cond_46

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_46
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getDebugInfo()Landroid/hidl/base/V1_0/DebugInfo;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {v0, p3}, Landroid/hidl/base/V1_0/DebugInfo;->writeToParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :sswitch_5a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_5f

    goto :goto_60

    :cond_5f
    move v2, v1

    :goto_60
    if-eqz v2, :cond_6a

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_6a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->ping()V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :sswitch_7a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_80

    move v1, v2

    nop

    :cond_80
    if-eqz v1, :cond_21b

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :sswitch_8a
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_90

    move v1, v2

    nop

    :cond_90
    if-eq v1, v2, :cond_9a

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_9a
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->setHALInstrumentation()V

    goto/16 :goto_21b

    :sswitch_a4
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_a9

    goto :goto_aa

    :cond_a9
    move v2, v1

    :goto_aa
    if-eqz v2, :cond_b4

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_b4
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->getHashChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    new-instance v3, Landroid/os/HwBlob;

    const/16 v4, 0x10

    invoke-direct {v3, v4}, Landroid/os/HwBlob;-><init>(I)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    const-wide/16 v5, 0x8

    invoke-virtual {v3, v5, v6, v4}, Landroid/os/HwBlob;->putInt32(JI)V

    const-wide/16 v5, 0xc

    invoke-virtual {v3, v5, v6, v1}, Landroid/os/HwBlob;->putBool(JZ)V

    new-instance v5, Landroid/os/HwBlob;

    mul-int/lit8 v6, v4, 0x20

    invoke-direct {v5, v6}, Landroid/os/HwBlob;-><init>(I)V

    nop

    :goto_dd
    if-ge v1, v4, :cond_ef

    mul-int/lit8 v6, v1, 0x20

    int-to-long v6, v6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [B

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/HwBlob;->putInt8Array(J[B)V

    nop

    add-int/lit8 v1, v1, 0x1

    goto :goto_dd

    :cond_ef
    const-wide/16 v6, 0x0

    invoke-virtual {v3, v6, v7, v5}, Landroid/os/HwBlob;->putBlob(JLandroid/os/HwBlob;)V

    invoke-virtual {p3, v3}, Landroid/os/HwParcel;->writeBuffer(Landroid/os/HwBlob;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :sswitch_fc
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_101

    goto :goto_102

    :cond_101
    move v2, v1

    :goto_102
    if-eqz v2, :cond_10c

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_10c
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :sswitch_120
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_125

    goto :goto_126

    :cond_125
    move v2, v1

    :goto_126
    if-eqz v2, :cond_130

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_130
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :sswitch_13d
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_142

    goto :goto_143

    :cond_142
    move v2, v1

    :goto_143
    if-eqz v2, :cond_14d

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_14d
    const-string v0, "android.hidl.base@1.0::IBase"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceChain()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStringVector(Ljava/util/ArrayList;)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :pswitch_161
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_166

    goto :goto_167

    :cond_166
    move v2, v1

    :goto_167
    if-eqz v2, :cond_171

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_171
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-static {p2}, Landroid/hardware/contexthub/V1_0/HubAppInfo;->readVectorFromParcel(Landroid/os/HwParcel;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppsInfo(Ljava/util/ArrayList;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :pswitch_185
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_18a

    goto :goto_18b

    :cond_18a
    move v2, v1

    :goto_18b
    if-eqz v2, :cond_195

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :cond_195
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt64()J

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p0, v3, v4, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleAppAbort(JI)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto/16 :goto_21b

    :pswitch_1ad
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1b2

    goto :goto_1b3

    :cond_1b2
    move v2, v1

    :goto_1b3
    if-eqz v2, :cond_1bc

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_21b

    :cond_1bc
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleHubEvent(I)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_21b

    :pswitch_1cf
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1d4

    goto :goto_1d5

    :cond_1d4
    move v2, v1

    :goto_1d5
    if-eqz v2, :cond_1de

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_21b

    :cond_1de
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v0

    invoke-virtual {p2}, Landroid/os/HwParcel;->readInt32()I

    move-result v3

    invoke-virtual {p0, v0, v3}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleTxnResult(II)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_21b

    :pswitch_1f5
    and-int/lit8 v3, p4, 0x1

    if-eqz v3, :cond_1fa

    goto :goto_1fb

    :cond_1fa
    move v2, v1

    :goto_1fb
    if-eqz v2, :cond_204

    invoke-virtual {p3, v0}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    goto :goto_21b

    :cond_204
    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {p2, v0}, Landroid/os/HwParcel;->enforceInterface(Ljava/lang/String;)V

    new-instance v0, Landroid/hardware/contexthub/V1_0/ContextHubMsg;

    invoke-direct {v0}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;-><init>()V

    invoke-virtual {v0, p2}, Landroid/hardware/contexthub/V1_0/ContextHubMsg;->readFromParcel(Landroid/os/HwParcel;)V

    invoke-virtual {p0, v0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->handleClientMsg(Landroid/hardware/contexthub/V1_0/ContextHubMsg;)V

    invoke-virtual {p3, v1}, Landroid/os/HwParcel;->writeStatus(I)V

    invoke-virtual {p3}, Landroid/os/HwParcel;->send()V

    nop

    :cond_21b
    :goto_21b
    return-void

    :pswitch_data_21c
    .packed-switch 0x1
        :pswitch_1f5
        :pswitch_1cf
        :pswitch_1ad
        :pswitch_185
        :pswitch_161
    .end packed-switch

    :sswitch_data_22a
    .sparse-switch
        0xf43484e -> :sswitch_13d
        0xf444247 -> :sswitch_120
        0xf445343 -> :sswitch_fc
        0xf485348 -> :sswitch_a4
        0xf494e54 -> :sswitch_8a
        0xf4c5444 -> :sswitch_7a
        0xf504e47 -> :sswitch_5a
        0xf524546 -> :sswitch_36
        0xf535953 -> :sswitch_1c
        0xf555444 -> :sswitch_c
    .end sparse-switch
.end method

.method public final ping()V
    .registers 1

    return-void
.end method

.method public queryLocalInterface(Ljava/lang/String;)Landroid/os/IHwInterface;
    .registers 3

    const-string v0, "android.hardware.contexthub@1.0::IContexthubCallback"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerAsService(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->registerService(Ljava/lang/String;)V

    return-void
.end method

.method public final setHALInstrumentation()V
    .registers 1

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/hardware/contexthub/V1_0/IContexthubCallback$Stub;->interfaceDescriptor()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "@Stub"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final unlinkToDeath(Landroid/os/IHwBinder$DeathRecipient;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method
