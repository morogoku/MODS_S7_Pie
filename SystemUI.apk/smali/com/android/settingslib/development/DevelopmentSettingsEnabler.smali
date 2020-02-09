.class public Lcom/android/settingslib/development/DevelopmentSettingsEnabler;
.super Ljava/lang/Object;
.source "DevelopmentSettingsEnabler.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDevelopmentSettingsEnabled(Landroid/content/Context;)Z
    .locals 8

    const/4 v0, 0x0

    invoke-static {}, Lcom/samsung/android/knox/custom/SettingsManager;->getInstance()Lcom/samsung/android/knox/custom/SettingsManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/samsung/android/knox/custom/SettingsManager;->getSettingsHiddenState()I

    move-result v0

    :cond_0
    and-int/lit16 v2, v0, 0x100

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    :cond_1
    const-string/jumbo v2, "user"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "development_settings_enabled"

    sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v7, "eng"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    move v4, v5

    goto :goto_0

    :cond_2
    move v4, v3

    :goto_0
    const-string v6, "no_debugging_features"

    invoke-virtual {v2, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v7

    if-nez v7, :cond_4

    invoke-virtual {v2}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v7, v5

    :goto_2
    if-eqz v7, :cond_5

    if-nez v6, :cond_5

    if-eqz v4, :cond_5

    move v3, v5

    nop

    :cond_5
    return v3
.end method
