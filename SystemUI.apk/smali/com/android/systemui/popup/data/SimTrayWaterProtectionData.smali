.class public Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;
.super Ljava/lang/Object;
.source "SimTrayWaterProtectionData.java"


# instance fields
.field private final mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/popup/util/DisplayManagerWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/popup/data/SimTrayWaterProtectionData;->mDisplayManagerWrapper:Lcom/android/systemui/popup/util/DisplayManagerWrapper;

    return-void
.end method


# virtual methods
.method public getBodyImage()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->SYSUI_IS_TABLET_DEVICE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f080627

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SIM_CARD_TRAY_ON_RIGHT_WATER_PROTECTION_POPUP:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08061d

    return v0

    :cond_1
    const v0, 0x7f080626

    return v0
.end method

.method public getBodyMessage(I)I
    .locals 2

    sget-boolean v0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SD_CARD_STORAGE:Z

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    if-eqz v0, :cond_0

    const v1, 0x7f120b9e

    goto :goto_0

    :cond_0
    const v1, 0x7f120b9b

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    const v1, 0x7f120b9d

    goto :goto_0

    :cond_2
    const v1, 0x7f120b9a

    :goto_0
    return v1
.end method

.method public getTitleMessage()I
    .locals 1

    sget-boolean v0, Lcom/android/systemui/Rune;->POPUP_SUPPORT_SD_CARD_STORAGE:Z

    if-eqz v0, :cond_0

    const v0, 0x7f120b9f

    goto :goto_0

    :cond_0
    const v0, 0x7f120b9c

    :goto_0
    return v0
.end method
