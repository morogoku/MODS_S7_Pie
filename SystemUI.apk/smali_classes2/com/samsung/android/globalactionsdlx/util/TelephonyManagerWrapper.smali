.class public Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;
.super Ljava/lang/Object;
.source "TelephonyManagerWrapper.java"


# instance fields
.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private isMultiSim()Z
    .registers 3

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_c

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method


# virtual methods
.method public hasAnySim()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_8
    if-ge v2, v0, :cond_19

    iget-object v3, p0, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_16

    if-eqz v3, :cond_16

    return v4

    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_19
    return v1
.end method

.method public isFirstnetSIM()Z
    .registers 3

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    const-string v1, "312670"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "313100"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_17

    goto :goto_19

    :cond_17
    const/4 v1, 0x0

    return v1

    :cond_19
    :goto_19
    const/4 v1, 0x1

    return v1
.end method

.method public isSimLock()Z
    .registers 12

    const/4 v0, 0x0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    new-array v3, v2, [I

    invoke-direct {p0}, Lcom/samsung/android/globalactionsdlx/util/TelephonyManagerWrapper;->isMultiSim()Z

    move-result v4

    const/16 v5, 0xb

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eqz v4, :cond_41

    move v4, v0

    move v0, v9

    :goto_21
    if-ge v0, v2, :cond_4b

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v10

    aput v10, v3, v0

    aget v10, v3, v0

    if-eq v10, v7, :cond_3c

    aget v10, v3, v0

    if-eq v10, v6, :cond_3c

    aget v10, v3, v0

    if-ne v10, v5, :cond_3a

    goto :goto_3c

    :cond_3a
    move v10, v9

    goto :goto_3d

    :cond_3c
    :goto_3c
    move v10, v8

    :goto_3d
    or-int/2addr v4, v10

    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_41
    if-eq v1, v7, :cond_4a

    if-eq v1, v6, :cond_4a

    if-ne v1, v5, :cond_48

    goto :goto_4a

    :cond_48
    move v8, v9

    nop

    :cond_4a
    :goto_4a
    move v4, v8

    :cond_4b
    return v4
.end method
