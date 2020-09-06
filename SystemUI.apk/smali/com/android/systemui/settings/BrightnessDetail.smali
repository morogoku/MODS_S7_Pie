.class public Lcom/android/systemui/settings/BrightnessDetail;
.super Landroid/widget/FrameLayout;
.source "BrightnessDetail.java"

# interfaces
.implements Lcom/android/systemui/coloring/QSColoringServiceObject;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;
    }
.end annotation


# instance fields
.field private brightnessEditor:Landroid/content/SharedPreferences$Editor;

.field private brightnessPref:Landroid/content/SharedPreferences;

.field private mAutoBrightnessContainer:Landroid/view/View;

.field private mAutoBrightnessSwitch:Landroid/widget/Switch;

.field private mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

.field protected mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

.field private mBrightnessDetailView:Landroid/view/View;

.field private mBrightnessPrefInitialized:Z

.field private mContext:Landroid/content/Context;

.field private mControlOnTopContainer:Landroid/view/View;

.field private mControlOnTopSwitch:Landroid/widget/Switch;

.field private mDetailCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mQSPanel:Lcom/android/systemui/qs/QSPanel;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/qs/QSPanel;)V
    .locals 6

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    new-instance v0, Lcom/android/systemui/settings/BrightnessDetail$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/settings/BrightnessDetail$1;-><init>(Lcom/android/systemui/settings/BrightnessDetail;)V

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    const-string v1, "brightness_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessPref:Landroid/content/SharedPreferences;

    const-string v1, "initialized"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "initialized"

    const/4 v3, 0x1

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iput-boolean v3, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessPrefInitialized:Z

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "4006"

    iget-object v3, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "screen_brightness_mode"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    const-string v1, "4007"

    const-class v3, Lcom/android/systemui/tuner/TunerService;

    invoke-static {v3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/systemui/tuner/TunerService;

    const-string v4, "brightness_on_top"

    invoke-virtual {v3, v4, v2}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;I)I

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/settings/BrightnessDetail;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDetail;->isAutoBrightnessAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$1302(Lcom/android/systemui/settings/BrightnessDetail;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessController;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/systemui/settings/BrightnessController;)Lcom/android/systemui/settings/BrightnessController;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessController:Lcom/android/systemui/settings/BrightnessController;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/systemui/settings/BrightnessDetail;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/widget/Switch;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/systemui/settings/BrightnessDetail;Landroid/widget/Switch;)Landroid/widget/Switch;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    return-object p1
.end method

.method static synthetic access$500(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/content/SharedPreferences$Editor;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->brightnessEditor:Landroid/content/SharedPreferences$Editor;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/settings/BrightnessDetail;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/systemui/settings/BrightnessDetail;Landroid/view/View;)Landroid/view/View;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessContainer:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/systemui/settings/BrightnessDetail;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/settings/BrightnessDetail;->isBrightnessOpationsAvailable()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/systemui/settings/BrightnessDetail;)Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDetailCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    return-object v0
.end method

.method private isAutoBrightnessAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isUltraPowerSavingMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/systemui/util/SettingsHelper;->getInstance()Lcom/android/systemui/util/SettingsHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/util/SettingsHelper;->isEmergencyMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/systemui/util/DeviceState;->isLightSensorAvailable(Landroid/content/Context;)Z

    const/4 v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private isBrightnessOpationsAvailable()Z
    .locals 2

    const-class v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/KnoxStateMonitor;

    invoke-virtual {v0}, Lcom/android/systemui/KnoxStateMonitor;->isBrightnessBlocked()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BrightnessDetail"

    const-string v1, "Brightness options are not available."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static synthetic lambda$updateQSColoringResources$0(Lcom/android/systemui/settings/BrightnessDetail;Landroid/widget/CompoundButton;Z)V
    .locals 5

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method

.method public static synthetic lambda$updateQSColoringResources$1(Lcom/android/systemui/settings/BrightnessDetail;Landroid/widget/CompoundButton;Z)V
    .locals 5

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v0

    const-class v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/coloring/QSColoringServiceManager;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz p2, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    return-void
.end method


# virtual methods
.method public setBrightnessDetailCallback(Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mDetailCallback:Lcom/android/systemui/settings/BrightnessDetail$BrightnessDetailCallback;

    return-void
.end method

.method public showDetail(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/settings/BrightnessDetail;->mQSPanel:Lcom/android/systemui/qs/QSPanel;

    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    const/4 v2, 0x2

    new-array v2, v2, [I

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    :cond_0
    return-void
.end method

.method public updateQSColoringResources(Landroid/view/View;)V
    .locals 9

    const-class v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/coloring/QSColoringServiceManager;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->isQSColoringEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    if-nez v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    const v2, 0x7f0a00c1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/settings/ToggleSliderView;

    invoke-virtual {v1, p1}, Lcom/android/systemui/settings/ToggleSliderView;->updateQSColoringResources(Landroid/view/View;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    const v5, 0x7f0a00c2

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    const v5, 0x7f0a0080

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    const v5, 0x7f0a0124

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v4, 0x6

    invoke-virtual {v0, v4}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/systemui/settings/BrightnessDetail;->mBrightnessDetailView:Landroid/view/View;

    const v5, 0x7f0a0122

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :try_start_0
    const-class v4, Landroid/widget/Switch;

    const-string v5, "mIsSupportSemSwitchVI"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringBackgroundColor()I

    move-result v2

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v5

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    const/4 v5, 0x5

    invoke-virtual {v0, v5}, Lcom/android/systemui/coloring/QSColoringServiceManager;->getQSColoringColor(I)I

    move-result v5

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_2

    move v7, v5

    goto :goto_1

    :cond_2
    move v7, v3

    :goto_1
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mAutoBrightnessSwitch:Landroid/widget/Switch;

    new-instance v7, Lcom/android/systemui/settings/-$$Lambda$BrightnessDetail$jwqeGiueUBqSGA9rStgn5LWDm20;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessDetail$jwqeGiueUBqSGA9rStgn5LWDm20;-><init>(Lcom/android/systemui/settings/BrightnessDetail;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_3
    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    if-eqz v6, :cond_5

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->getThumbDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    sget-object v7, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v4, v7}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    invoke-virtual {v7}, Landroid/widget/Switch;->isChecked()Z

    move-result v7

    if-eqz v7, :cond_4

    move v7, v5

    goto :goto_2

    :cond_4
    move v7, v3

    :goto_2
    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    iget-object v6, p0, Lcom/android/systemui/settings/BrightnessDetail;->mControlOnTopSwitch:Landroid/widget/Switch;

    new-instance v7, Lcom/android/systemui/settings/-$$Lambda$BrightnessDetail$eH_PUyANAh-_9TMRJrG72D2qlBg;

    invoke-direct {v7, p0}, Lcom/android/systemui/settings/-$$Lambda$BrightnessDetail$eH_PUyANAh-_9TMRJrG72D2qlBg;-><init>(Lcom/android/systemui/settings/BrightnessDetail;)V

    invoke-virtual {v6, v7}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :cond_5
    return-void

    :cond_6
    :goto_3
    return-void
.end method
