.class public final Lcom/android/server/net/NetworkStatsAccess;
.super Ljava/lang/Object;
.source "NetworkStatsAccess.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/net/NetworkStatsAccess$Level;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkAccessLevel(Landroid/content/Context;ILjava/lang/String;)I
    .registers 11

    const-class v0, Landroid/app/admin/DevicePolicyManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManagerInternal;

    const-string/jumbo v1, "phone"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1d

    invoke-virtual {v1, p2}, Landroid/telephony/TelephonyManager;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I

    move-result v4

    if-ne v4, v3, :cond_1d

    move v4, v3

    goto :goto_1e

    :cond_1d
    move v4, v2

    :goto_1e
    if-eqz v0, :cond_29

    const/4 v5, -0x2

    invoke-virtual {v0, p1, v5}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v5

    if-eqz v5, :cond_29

    move v5, v3

    goto :goto_2a

    :cond_29
    move v5, v2

    :goto_2a
    if-nez v4, :cond_58

    if-nez v5, :cond_58

    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/16 v7, 0x3e8

    if-ne v6, v7, :cond_37

    goto :goto_58

    :cond_37
    invoke-static {p0, p1, p2}, Lcom/android/server/net/NetworkStatsAccess;->hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56

    const-string v7, "android.permission.READ_NETWORK_USAGE_HISTORY"

    invoke-virtual {p0, v7}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v7

    if-nez v7, :cond_46

    goto :goto_56

    :cond_46
    if-eqz v0, :cond_51

    const/4 v7, -0x1

    invoke-virtual {v0, p1, v7}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveAdminWithPolicy(II)Z

    move-result v7

    if-eqz v7, :cond_51

    move v7, v3

    goto :goto_52

    :cond_51
    move v7, v2

    :goto_52
    if-eqz v7, :cond_55

    return v3

    :cond_55
    return v2

    :cond_56
    :goto_56
    const/4 v2, 0x2

    return v2

    :cond_58
    :goto_58
    const/4 v2, 0x3

    return v2
.end method

.method private static hasAppOpsPermission(Landroid/content/Context;ILjava/lang/String;)Z
    .registers 8

    const/4 v0, 0x0

    if-eqz p2, :cond_25

    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    const/16 v2, 0x2b

    invoke-virtual {v1, v2, p1, p2}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x1

    if-ne v2, v3, :cond_20

    const-string v3, "android.permission.PACKAGE_USAGE_STATS"

    invoke-virtual {p0, v3}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_1f

    move v0, v4

    nop

    :cond_1f
    return v0

    :cond_20
    if-nez v2, :cond_24

    move v0, v4

    nop

    :cond_24
    return v0

    :cond_25
    return v0
.end method

.method public static isAccessibleToUser(III)Z
    .registers 8

    const/4 v0, -0x5

    const/4 v1, -0x4

    const/16 v2, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch p2, :pswitch_data_44

    if-ne p0, p1, :cond_43

    move v3, v4

    goto :goto_43

    :pswitch_d
    return v4

    :pswitch_e
    if-eq p0, v2, :cond_2d

    if-eq p0, v1, :cond_2d

    if-eq p0, v0, :cond_2d

    const/4 v0, -0x1

    if-eq p0, v0, :cond_2d

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_2d

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/net/NetworkStatsAccess;->isSecureFolderId(I)Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_2d

    :cond_2c
    goto :goto_2e

    :cond_2d
    :goto_2d
    move v3, v4

    :goto_2e
    return v3

    :pswitch_2f
    if-eq p0, v2, :cond_41

    if-eq p0, v1, :cond_41

    if-eq p0, v0, :cond_41

    invoke-static {p0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v0, v1, :cond_40

    goto :goto_41

    :cond_40
    goto :goto_42

    :cond_41
    :goto_41
    move v3, v4

    :goto_42
    return v3

    :cond_43
    :goto_43
    return v3

    :pswitch_data_44
    .packed-switch 0x1
        :pswitch_2f
        :pswitch_e
        :pswitch_d
    .end packed-switch
.end method

.method private static isSecureFolderId(I)Z
    .registers 2

    const/16 v0, 0x96

    if-lt p0, v0, :cond_a

    const/16 v0, 0xa0

    if-gt p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method
