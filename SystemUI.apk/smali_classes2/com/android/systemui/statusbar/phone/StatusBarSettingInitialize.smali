.class public Lcom/android/systemui/statusbar/phone/StatusBarSettingInitialize;
.super Ljava/lang/Object;
.source "StatusBarSettingInitialize.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/StatusBarSetupModule;


# instance fields
.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private isForceInitialize(Landroid/content/Context;)Z
    .locals 3

    if-nez p1, :cond_0

    const-string v0, "StatusBarSettingInitializer"

    const-string v1, "StatusBar context is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "pref_name_statusbar_force_initialize"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "pref_key_statusbar_force_initialize"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method private setForceInitialize()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingInitialize;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;->getStatusBarContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusBarSettingInitialize;->isForceInitialize(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "StatusBarSettingInitializer"

    const-string v2, "StatusBar setting already forced"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lockscreen_minimizing_notification"

    invoke-static {}, Lcom/android/systemui/Rune;->getNotificationStyleOnLockscreenDefaultValue()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v2, "pref_name_statusbar_force_initialize"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "pref_key_statusbar_force_initialize"

    const/4 v5, 0x1

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public init(Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarSettingInitialize;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBarObjectProvider;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusBarSettingInitialize;->setForceInitialize()V

    return-void
.end method
