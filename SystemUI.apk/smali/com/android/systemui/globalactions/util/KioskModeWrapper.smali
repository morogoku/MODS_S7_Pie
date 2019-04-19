.class public Lcom/android/systemui/globalactions/util/KioskModeWrapper;
.super Ljava/lang/Object;
.source "KioskModeWrapper.java"


# instance fields
.field mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/samsung/android/knox/kiosk/KioskMode;->getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/kiosk/KioskMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    return-void
.end method


# virtual methods
.method public isKioskMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KioskModeWrapper;->mKioskMode:Lcom/samsung/android/knox/kiosk/KioskMode;

    invoke-virtual {v0}, Lcom/samsung/android/knox/kiosk/KioskMode;->isKioskModeEnabled()Z

    move-result v0

    return v0
.end method
