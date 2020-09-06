.class Lcom/android/server/desktopmode/HardwareManager$DockState;
.super Ljava/lang/Object;
.source "HardwareManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/desktopmode/HardwareManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DockState"
.end annotation


# static fields
.field static final TYPE_DEX_CABLE:I = 0x271a

.field static final TYPE_DEX_PAD:I = 0x2714

.field static final TYPE_DEX_PAD_RECOVERY:I = 0x2716

.field static final TYPE_DEX_RESERVED:I = 0x2715

.field static final TYPE_DEX_STATION:I = 0x2711

.field static final TYPE_HDMI_ADAPTER:I = 0x2719

.field static final TYPE_INTERNAL_SCREEN:I = 0x2713

.field static final TYPE_MULTIPORT_ADAPTER_1:I = 0x2717

.field static final TYPE_MULTIPORT_ADAPTER_2:I = 0x2718

.field static final TYPE_UNDOCKED:I = 0x2710

.field static final TYPE_UNOFFICIAL_ADAPTER:I = 0x2712


# instance fields
.field private final mDesktopModeSupported:Z

.field private final mRawDockUsbpdIds:Ljava/lang/String;

.field private final mType:I


# direct methods
.method constructor <init>()V
    .registers 4

    const-string v0, ""

    const/16 v1, 0x2710

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2, v0}, Lcom/android/server/desktopmode/HardwareManager$DockState;-><init>(IZLjava/lang/String;)V

    return-void
.end method

.method constructor <init>(IZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    iput-boolean p2, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    iput-object p3, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    return-void
.end method

.method static dockTypeToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p0, :pswitch_data_36

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :pswitch_15
    const-string v0, "TYPE_DEX_CABLE"

    return-object v0

    :pswitch_18
    const-string v0, "TYPE_HDMI_ADAPTER"

    return-object v0

    :pswitch_1b
    const-string v0, "TYPE_MULTIPORT_ADAPTER_2"

    return-object v0

    :pswitch_1e
    const-string v0, "TYPE_MULTIPORT_ADAPTER_1"

    return-object v0

    :pswitch_21
    const-string v0, "TYPE_DEX_PAD_RECOVERY"

    return-object v0

    :pswitch_24
    const-string v0, "TYPE_DEX_RESERVED"

    return-object v0

    :pswitch_27
    const-string v0, "TYPE_DEX_PAD"

    return-object v0

    :pswitch_2a
    const-string v0, "TYPE_INTERNAL_SCREEN"

    return-object v0

    :pswitch_2d
    const-string v0, "TYPE_UNOFFICIAL_ADAPTER"

    return-object v0

    :pswitch_30
    const-string v0, "TYPE_DEX_STATION"

    return-object v0

    :pswitch_33
    const-string v0, "TYPE_UNDOCKED"

    return-object v0

    :pswitch_data_36
    .packed-switch 0x2710
        :pswitch_33
        :pswitch_30
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method


# virtual methods
.method getType()I
    .registers 2

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    return v0
.end method

.method isAdapter()Z
    .registers 3

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2712

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2717

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2718

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2719

    if-eq v0, v1, :cond_21

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x271a

    if-ne v0, v1, :cond_1f

    goto :goto_21

    :cond_1f
    const/4 v0, 0x0

    goto :goto_22

    :cond_21
    :goto_21
    const/4 v0, 0x1

    :goto_22
    return v0
.end method

.method isDesktopModeSupported()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    return v0
.end method

.method isDexPad()Z
    .registers 3

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2714

    if-eq v0, v1, :cond_f

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2716

    if-ne v0, v1, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method isDexStation()Z
    .registers 3

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2711

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isGenuine()Z
    .registers 6

    sget-boolean v0, Lcom/samsung/android/desktopmode/DesktopModeFeature;->IS_TABLET:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x2717

    if-eqz v0, :cond_28

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v4, 0x2714

    if-eq v0, v4, :cond_26

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    if-eq v0, v3, :cond_26

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v3, 0x2711

    if-eq v0, v3, :cond_26

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v3, 0x2716

    if-eq v0, v3, :cond_26

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isRawDockUsbpdIdSupported()Z

    move-result v0

    if-eqz v0, :cond_26

    move v1, v2

    goto :goto_27

    :cond_26
    nop

    :goto_27
    return v1

    :cond_28
    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    if-eq v0, v3, :cond_34

    invoke-virtual {p0}, Lcom/android/server/desktopmode/HardwareManager$DockState;->isRawDockUsbpdIdSupported()Z

    move-result v0

    if-eqz v0, :cond_34

    move v1, v2

    nop

    :cond_34
    return v1
.end method

.method isRawDockUsbpdIdSupported()Z
    .registers 3

    # getter for: Lcom/android/server/desktopmode/HardwareManager;->sSupportedDockUsbpdIds:Landroid/util/ArrayMap;
    invoke-static {}, Lcom/android/server/desktopmode/HardwareManager;->access$1900()Landroid/util/ArrayMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method isUndocked()Z
    .registers 3

    iget v0, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    const/16 v1, 0x2710

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DockState(mType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mType:I

    invoke-static {v1}, Lcom/android/server/desktopmode/HardwareManager$DockState;->dockTypeToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mDesktopModeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mDesktopModeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mRawDockUsbpdIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/desktopmode/HardwareManager$DockState;->mRawDockUsbpdIds:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
