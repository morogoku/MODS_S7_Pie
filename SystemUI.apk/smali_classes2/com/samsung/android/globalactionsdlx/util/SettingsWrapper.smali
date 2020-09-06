.class public Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;
.super Ljava/lang/Object;
.source "SettingsWrapper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SettingsWrapper"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

.field private final mResolver:Landroid/content/ContentResolver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/globalactionsdlx/util/LogWrapper;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method


# virtual methods
.method public getCurrentBixbySettings()I
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "power_key_mapping"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isAirplaneMode()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_11

    const/4 v2, 0x1

    nop

    :cond_11
    return v2
.end method

.method public isBikeMode()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "isBikeMode"

    sget v2, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "SettingsWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(isBikeMode)current value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->ON:I

    if-ne v0, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public isBugReportMode()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "bugreport_in_power_menu"

    sget v2, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "SettingsWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(BUGREPORT_IN_POWER_MENU)current value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->ON:I

    if-ne v0, v1, :cond_28

    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    :goto_29
    return v1
.end method

.method public isEmergencyModeUserAgreement()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "safety_care_user_agree"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v3, 0x1

    nop

    :cond_16
    return v3
.end method

.method public isLockDownInPowerMenu()Z
    .registers 5

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lockdown_in_power_menu"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v3, 0x1

    nop

    :cond_16
    return v3
.end method

.method public isLockNetworkAndSecurityOn()Z
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "lock_function_val"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_12

    const/4 v2, 0x1

    nop

    :cond_12
    return v2
.end method

.method public isMissingPhoneLock()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "missing_phone_lock"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "SettingsWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(missing_phone_lock)current value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_2e

    const-string/jumbo v1, "lock"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2e

    const/4 v1, 0x1

    goto :goto_2f

    :cond_2e
    const/4 v1, 0x0

    :goto_2f
    return v1
.end method

.method public isPasswordChangeEnforced()Z
    .registers 8

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "content://com.sec.knox.provider/PasswordPolicy2"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v4, "isChangeRequested"

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_13
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    const-string v3, "isChangeRequested"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_20} :catch_2a

    nop

    nop

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    if-lt v3, v0, :cond_29

    const/4 v2, 0x1

    nop

    :cond_29
    return v2

    :catch_2a
    move-exception v3

    return v2
.end method

.method public isShopDemo()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "shopdemo"

    sget v2, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "SettingsWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(isShopDemo)current value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->ON:I

    if-ne v0, v1, :cond_2d

    const/4 v1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    :goto_2e
    return v1
.end method

.method public isUltraPowerSavingMode()Z
    .registers 6

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "ultra_powersaving_mode"

    sget v2, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->OFF:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mLogWrapper:Lcom/samsung/android/globalactionsdlx/util/LogWrapper;

    const-string v2, "SettingsWrapper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(SEM_ULTRA_POWERSAVING_MODE)current value : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/samsung/android/globalactionsdlx/util/LogWrapper;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget v1, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper$State;->ON:I

    if-ne v0, v1, :cond_29

    const/4 v1, 0x1

    goto :goto_2a

    :cond_29
    const/4 v1, 0x0

    :goto_2a
    return v1
.end method

.method public setBixbySettings(I)V
    .registers 4

    iget-object v0, p0, Lcom/samsung/android/globalactionsdlx/util/SettingsWrapper;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "power_key_mapping"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method
