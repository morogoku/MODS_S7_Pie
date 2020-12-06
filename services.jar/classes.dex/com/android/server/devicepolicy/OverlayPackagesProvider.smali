.class public Lcom/android/server/devicepolicy/OverlayPackagesProvider;
.super Ljava/lang/Object;
.source "OverlayPackagesProvider.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "OverlayPackagesProvider"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

.field private final mPm:Landroid/content/pm/PackageManager;

.field private salesCode:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;-><init>(Landroid/content/Context;Lcom/android/internal/view/IInputMethodManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/view/IInputMethodManager;)V
    .registers 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/view/IInputMethodManager;

    iput-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-static {}, Lcom/samsung/android/feature/SemCscFeature;->getInstance()Lcom/samsung/android/feature/SemCscFeature;

    move-result-object v0

    const-string v1, "SalesCode"

    invoke-virtual {v0, v1}, Lcom/samsung/android/feature/SemCscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    return-void
.end method

.method private getCarrierDisallowedAppsListArrayforManagedDevice()I
    .registers 3

    const-string v0, "ATT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    const-string v0, "AIO"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_aa

    :cond_16
    const-string v0, "SPR"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "XAS"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "BST"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "VMU"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_a6

    :cond_40
    const-string v0, "TMB"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const v0, 0x107000e

    goto :goto_ad

    :cond_4e
    const-string v0, "VZW"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const v0, 0x1070010

    goto :goto_ad

    :cond_5c
    const-string v0, "USC"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const v0, 0x107000f

    goto :goto_ad

    :cond_6a
    const-string v0, "DCM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const v0, 0x1070009

    goto :goto_ad

    :cond_78
    const-string v0, "SBM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const v0, 0x107000c

    goto :goto_ad

    :cond_86
    const-string v0, "KDI"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    const v0, 0x107000b

    goto :goto_ad

    :cond_94
    const-string v0, "CCT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const v0, 0x1070008

    goto :goto_ad

    :cond_a2
    const v0, 0x107000a

    goto :goto_ad

    :cond_a6
    :goto_a6
    const v0, 0x107000d

    goto :goto_ad

    :cond_aa
    :goto_aa
    const v0, 0x1070007

    :goto_ad
    nop

    return v0
.end method

.method private getCarrierDisallowedAppsListArrayforManagedProfile()I
    .registers 3

    const-string v0, "ATT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    const-string v0, "AIO"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_aa

    :cond_16
    const-string v0, "SPR"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "XAS"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "BST"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "VMU"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_a6

    :cond_40
    const-string v0, "TMB"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const v0, 0x1070018

    goto :goto_ad

    :cond_4e
    const-string v0, "VZW"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const v0, 0x107001a

    goto :goto_ad

    :cond_5c
    const-string v0, "USC"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const v0, 0x1070019

    goto :goto_ad

    :cond_6a
    const-string v0, "DCM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const v0, 0x1070013

    goto :goto_ad

    :cond_78
    const-string v0, "SBM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const v0, 0x1070016

    goto :goto_ad

    :cond_86
    const-string v0, "KDI"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    const v0, 0x1070015

    goto :goto_ad

    :cond_94
    const-string v0, "CCT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const v0, 0x1070012

    goto :goto_ad

    :cond_a2
    const v0, 0x1070014

    goto :goto_ad

    :cond_a6
    :goto_a6
    const v0, 0x1070017

    goto :goto_ad

    :cond_aa
    :goto_aa
    const v0, 0x1070011

    :goto_ad
    nop

    return v0
.end method

.method private getCarrierDisallowedAppsListArrayforManagedUser()I
    .registers 2

    const v0, 0x107001b

    return v0
.end method

.method private getCarrierDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x36de2734    # -662924.75f

    if-eq v0, v1, :cond_28

    const v1, -0x1ea9303f

    if-eq v0, v1, :cond_1e

    const v1, -0x1450e22d

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_1e
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_28
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_76

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_52
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsListArrayforManagedDevice()I

    move-result v0

    goto :goto_61

    :pswitch_57
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsListArrayforManagedProfile()I

    move-result v0

    goto :goto_61

    :pswitch_5c
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsListArrayforManagedUser()I

    move-result v0

    nop

    :goto_61
    nop

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method

.method private getCarrierRequiredAppsListArrayforManagedDevice()I
    .registers 3

    const-string v0, "ATT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b5

    const-string v0, "AIO"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_b5

    :cond_16
    const-string v0, "SPR"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "XAS"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "BST"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b1

    const-string v0, "VMU"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_b1

    :cond_40
    const-string v0, "TMB"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_ad

    const-string v0, "TMK"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    goto :goto_ad

    :cond_55
    const-string v0, "VZW"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    const v0, 0x1070026

    goto :goto_b8

    :cond_63
    const-string v0, "USC"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_71

    const v0, 0x1070025

    goto :goto_b8

    :cond_71
    const-string v0, "DCM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const v0, 0x107001f

    goto :goto_b8

    :cond_7f
    const-string v0, "SBM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8d

    const v0, 0x1070022

    goto :goto_b8

    :cond_8d
    const-string v0, "KDI"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    const v0, 0x1070021

    goto :goto_b8

    :cond_9b
    const-string v0, "CCT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a9

    const v0, 0x107001e

    goto :goto_b8

    :cond_a9
    const v0, 0x1070020

    goto :goto_b8

    :cond_ad
    :goto_ad
    const v0, 0x1070024

    goto :goto_b8

    :cond_b1
    :goto_b1
    const v0, 0x1070023

    goto :goto_b8

    :cond_b5
    :goto_b5
    const v0, 0x107001d

    :goto_b8
    nop

    return v0
.end method

.method private getCarrierRequiredAppsListArrayforManagedProfile()I
    .registers 3

    const-string v0, "ATT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_aa

    const-string v0, "AIO"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    goto/16 :goto_aa

    :cond_16
    const-string v0, "SPR"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "XAS"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "BST"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a6

    const-string v0, "VMU"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_40

    goto/16 :goto_a6

    :cond_40
    const-string v0, "TMB"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    const v0, 0x107002e

    goto :goto_ad

    :cond_4e
    const-string v0, "VZW"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5c

    const v0, 0x1070030

    goto :goto_ad

    :cond_5c
    const-string v0, "USC"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6a

    const v0, 0x107002f

    goto :goto_ad

    :cond_6a
    const-string v0, "DCM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_78

    const v0, 0x1070029

    goto :goto_ad

    :cond_78
    const-string v0, "SBM"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_86

    const v0, 0x107002c

    goto :goto_ad

    :cond_86
    const-string v0, "KDI"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_94

    const v0, 0x107002b

    goto :goto_ad

    :cond_94
    const-string v0, "CCT"

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->salesCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a2

    const v0, 0x1070028

    goto :goto_ad

    :cond_a2
    const v0, 0x107002a

    goto :goto_ad

    :cond_a6
    :goto_a6
    const v0, 0x107002d

    goto :goto_ad

    :cond_aa
    :goto_aa
    const v0, 0x1070027

    :goto_ad
    nop

    return v0
.end method

.method private getCarrierRequiredAppsListArrayforManagedUser()I
    .registers 2

    const v0, 0x1070031

    return v0
.end method

.method private getCarrierRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x36de2734    # -662924.75f

    if-eq v0, v1, :cond_28

    const v1, -0x1ea9303f

    if-eq v0, v1, :cond_1e

    const v1, -0x1450e22d

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_1e
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_28
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_76

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_52
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsListArrayforManagedDevice()I

    move-result v0

    goto :goto_61

    :pswitch_57
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsListArrayforManagedProfile()I

    move-result v0

    goto :goto_61

    :pswitch_5c
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsListArrayforManagedUser()I

    move-result v0

    nop

    :goto_61
    nop

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_57
        :pswitch_52
    .end packed-switch
.end method

.method private getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method

.method private getDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x36de2734    # -662924.75f

    if-eq v0, v1, :cond_28

    const v1, -0x1ea9303f

    if-eq v0, v1, :cond_1e

    const v1, -0x1450e22d

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_1e
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_28
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_52
    const v0, 0x10700db

    goto :goto_5e

    :pswitch_56
    const v0, 0x10700dc

    goto :goto_5e

    :pswitch_5a
    const v0, 0x10700dd

    nop

    :goto_5e
    nop

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method

.method private static getIInputMethodManager()Lcom/android/internal/view/IInputMethodManager;
    .registers 2

    const-string/jumbo v0, "input_method"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/IInputMethodManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputMethodManager;

    move-result-object v1

    return-object v1
.end method

.method private getLaunchableApps(I)Ljava/util/Set;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mPm:Landroid/content/pm/PackageManager;

    const v2, 0xc2200

    invoke-virtual {v1, v0, v2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v2, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1e

    :cond_32
    return-object v2
.end method

.method private getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0, p1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getCarrierRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private getRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x36de2734    # -662924.75f

    if-eq v0, v1, :cond_28

    const v1, -0x1ea9303f

    if-eq v0, v1, :cond_1e

    const v1, -0x1450e22d

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_1e
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_28
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_52
    const v0, 0x10700ed

    goto :goto_5e

    :pswitch_56
    const v0, 0x10700ee

    goto :goto_5e

    :pswitch_5a
    const v0, 0x10700ef

    nop

    :goto_5e
    nop

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method

.method private getSystemInputMethods()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mIInputMethodManager:Lcom/android/internal/view/IInputMethodManager;

    invoke-interface {v0}, Lcom/android/internal/view/IInputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v0
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_6} :catch_32

    nop

    nop

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    if-eqz v5, :cond_30

    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_30
    goto :goto_11

    :cond_31
    return-object v1

    :catch_32
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getVendorDisallowedAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x36de2734    # -662924.75f

    if-eq v0, v1, :cond_28

    const v1, -0x1ea9303f

    if-eq v0, v1, :cond_1e

    const v1, -0x1450e22d

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_1e
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_28
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_52
    const v0, 0x10700fa

    goto :goto_5e

    :pswitch_56
    const v0, 0x10700fb

    goto :goto_5e

    :pswitch_5a
    const v0, 0x10700fc

    nop

    :goto_5e
    nop

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method

.method private getVendorRequiredAppsSet(Ljava/lang/String;)Ljava/util/Set;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x36de2734    # -662924.75f

    if-eq v0, v1, :cond_28

    const v1, -0x1ea9303f

    if-eq v0, v1, :cond_1e

    const v1, -0x1450e22d

    if-eq v0, v1, :cond_14

    goto :goto_32

    :cond_14
    const-string v0, "android.app.action.PROVISION_MANAGED_PROFILE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x1

    goto :goto_33

    :cond_1e
    const-string v0, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    goto :goto_33

    :cond_28
    const-string v0, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    const/4 v0, 0x2

    goto :goto_33

    :cond_32
    :goto_32
    const/4 v0, -0x1

    :goto_33
    packed-switch v0, :pswitch_data_74

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Provisioning type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " not supported."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_52
    const v0, 0x10700fd

    goto :goto_5e

    :pswitch_56
    const v0, 0x10700fe

    goto :goto_5e

    :pswitch_5a
    const v0, 0x10700ff

    nop

    :goto_5e
    nop

    new-instance v1, Landroid/util/ArraySet;

    iget-object v2, p0, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v1

    nop

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_5a
        :pswitch_56
        :pswitch_52
    .end packed-switch
.end method


# virtual methods
.method public getNonRequiredApps(Landroid/content/ComponentName;ILjava/lang/String;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getLaunchableApps(I)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p3, v1}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getRequiredApps(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    const-string v1, "android.app.action.PROVISION_MANAGED_DEVICE"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1f

    const-string v1, "android.app.action.PROVISION_MANAGED_USER"

    invoke-virtual {v1, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    :cond_1f
    invoke-direct {p0}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getSystemInputMethods()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    :cond_26
    invoke-direct {p0, p3}, Lcom/android/server/devicepolicy/OverlayPackagesProvider;->getDisallowedApps(Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
