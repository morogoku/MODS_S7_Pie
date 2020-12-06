.class public Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;
.super Ljava/lang/Object;
.source "SettingsUtil.java"


# static fields
.field private static final FLOATING_NOTI_OFF_REASON:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string v0, "SWITCH_OFF"

    const-string v1, "REMOVE_GOODLOCK"

    const-string v2, "LOST_NOTI_RECEIVE_PER"

    const-string v3, "LOST_DRAW_OVER_OTHER_APPS_WHEN_RECEIVE_NOTI"

    const-string v4, "LOST_DRAW_OVER_OTHER_APPS_WHEN_OFF"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->FLOATING_NOTI_OFF_REASON:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->getPackageListFromSharedPreferences()Ljava/lang/String;

    return-void
.end method

.method public static synthetic lambda$clearPackageListDataAtDB$0(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "floating_noti_package_list"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static synthetic lambda$clearPackageListDataAtSharedPreference$1(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    const-string v1, "floating_noti_package_list_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic lambda$enableEdgeLighting$2(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "floating_noti_allow_edge_lighting"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static synthetic lambda$saveFloatingNotificationModeToSharedPreferences$4(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    const-string v1, "activate_only_when_app_using_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "activate_only_when_app_using_pref"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public static synthetic lambda$saveHunEnableToSharedPreferences$5(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    const-string v1, "preference_hun_enable_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "preference_hun_enable_state"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public clearPackageListDataAtDB()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$jOmbus_T_Qeew_s80JODdaiP4ms;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$jOmbus_T_Qeew_s80JODdaiP4ms;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public clearPackageListDataAtSharedPreference()V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$z8RxDvzmKw2katvAQ1x0mOS7FKw;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$z8RxDvzmKw2katvAQ1x0mOS7FKw;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public enableEdgeLighting()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->isEdgeLightingDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$KtjLKACn9v-2CVWQuBNVqisTCBU;

    invoke-direct {v1, p0}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$KtjLKACn9v-2CVWQuBNVqisTCBU;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public getActivateOnlyWhenAppUsingState()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    const-string v1, "activate_only_when_app_using_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "activate_only_when_app_using_pref"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getHeadUpNotificationDisableState()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    const-string v1, "preference_hun_enable_state"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "preference_hun_enable_state"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public getPackageListFromSharedPreferences()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    const-string v1, "floating_noti_package_list_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "floating_noti_package_list_pref"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public hasPackageList()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "floating_noti_package_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public isEdgeLightingDisabled()Z
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "floating_noti_allow_edge_lighting"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public saveFloatingNotificationModeToSharedPreferences(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$iWf6RScAkIC1BxbESXzrK3H2Q8Q;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$iWf6RScAkIC1BxbESXzrK3H2Q8Q;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public saveHunEnableToSharedPreferences(Z)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$CFdKa3ZLeO1y8WEx-dVRVBqEfLs;

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/-$$Lambda$SettingsUtil$CFdKa3ZLeO1y8WEx-dVRVBqEfLs;-><init>(Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;Z)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public writeCurrentEnabledListListToSharedPreferences(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    const-string v1, "floating_noti_package_list_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "floating_noti_package_list_pref"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public writeCurrentEnabledListToSetting(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mLogWrapper:Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;

    const-string v1, "SettingsUtil"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "writeCurrentEnabledListToSetting : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/LogWrapper;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/systemui/smartpopupview/floatingactivity/util/SettingsUtil;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "floating_noti_package_list"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
