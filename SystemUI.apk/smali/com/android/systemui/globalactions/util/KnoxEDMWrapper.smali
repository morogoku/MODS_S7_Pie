.class public Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;
.super Ljava/lang/Object;
.source "KnoxEDMWrapper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy_new"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/knox/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    return-void
.end method


# virtual methods
.method public isCellularDataAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isCellularDataAllowed()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getPhoneRestrictionPolicy()Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/PhoneRestrictionPolicy;->checkEnableUseOfPacketData(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isPowerOffAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isPowerOffAllowed(Z)Z

    move-result v0

    return v0
.end method

.method public isSafeModeAllowed()Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSafeModeAllowed()Z

    move-result v0

    return v0
.end method

.method public isSettingsChangesAllowed()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/globalactions/util/KnoxEDMWrapper;->mEDM:Lcom/samsung/android/knox/EnterpriseDeviceManager;

    invoke-virtual {v0}, Lcom/samsung/android/knox/EnterpriseDeviceManager;->getRestrictionPolicy()Lcom/samsung/android/knox/restriction/RestrictionPolicy;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Z)Z

    move-result v0

    return v0
.end method
